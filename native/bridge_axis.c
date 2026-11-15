typedef unsigned int Key;

typedef struct {
    Key plot;
    Key previous;
    Key next;
} Deck;

typedef struct {
    unsigned int count;
    Deck decks[];
} Snapshot;

typedef int (*PathCheck)(void *, void *, void *, int, void *, void *);
typedef int (*MoveCheck)(void *, void *, unsigned int);
typedef unsigned char (*IncludesDomain)(void *, int);
typedef const void *(*FirstPathPlot)(void *);
typedef void (*ClearPath)(void *);
typedef const void *(*CurrentMap)(void);
typedef int (*TradeStep)(void *);
typedef unsigned char (*FindTradePath)(int, const int *, const int *, int, void *);
/* The engine helper is vector::insert(position, value), not push_back. */
typedef void (*PushPlot)(void *, const int *, const int *);
typedef void (*FreePath)(void *);
typedef void (*SetIndex)(void *, const int *, unsigned char);

extern const Snapshot * volatile active_snapshot;
extern PathCheck original_path;
extern PathCheck original_breadth_first;
extern PathCheck original_trade;
extern MoveCheck original_move;
extern IncludesDomain includes_domain;
extern FirstPathPlot first_path_plot;
extern ClearPath clear_path;
extern CurrentMap current_map;
extern TradeStep original_trade_step;
extern FindTradePath find_trade_path;
extern PushPlot push_plot;
extern FreePath free_path;
extern SetIndex set_index;

static Key plot_key(int x, int y)
{
    return (Key)y * 32768u + (Key)x;
}

static Key node_key(const void *node)
{
    const short *coords = (const short *)((const char *)node + 0x30);
    return plot_key(coords[0], coords[1]);
}

static const Deck *find_deck(const Snapshot *snapshot, Key plot)
{
    unsigned int left = 0;
    unsigned int right = snapshot->count;
    while (left < right) {
        unsigned int middle = left + (right - left) / 2;
        const Deck *deck = &snapshot->decks[middle];
        if (deck->plot == plot)
            return deck;
        if (deck->plot < plot)
            left = middle + 1;
        else
            right = middle;
    }
    return 0;
}

static int closes_edge(const Snapshot *snapshot, Key from, Key to)
{
    if (from == to)
        return 0;
    const Deck *start = find_deck(snapshot, from);
    const Deck *end = find_deck(snapshot, to);
    return (start && to != start->previous && to != start->next)
        || (end && from != end->previous && from != end->next);
}

static int blocked_path(void *parent, void *node, void *formation)
{
    const Snapshot *snapshot = active_snapshot;
    return snapshot && parent && node && formation
        && closes_edge(snapshot, node_key(parent), node_key(node))
        && includes_domain(formation, 2);
}

int check_path(void *movement, void *parent, void *node, int data, void *formation, void *finder)
{
    if (!original_path) return 0;
    if (blocked_path(parent, node, formation))
        return 0;
    return original_path(movement, parent, node, data, formation, finder);
}

int check_breadth_first(void *movement, void *parent, void *node, int data, void *formation, void *finder)
{
    if (!original_breadth_first) return 0;
    if (blocked_path(parent, node, formation))
        return 0;
    return original_breadth_first(movement, parent, node, data, formation, finder);
}

/* Trade::Movement uses its own callback; its context is not a unit formation.
 * Restrict every trader edge at a bridge, while ordinary naval unit movement
 * continues through the domain-filtered unit callbacks above. */
int check_trade(void *movement, void *parent, void *node, int data, void *context, void *finder)
{
    if (!original_trade) return 0;
    int allowed = original_trade(movement, parent, node, data, context, finder);
    const Snapshot *snapshot = active_snapshot;
    if (allowed && snapshot && parent && node
        && closes_edge(snapshot, node_key(parent), node_key(node)))
        return 0;
    return allowed;
}

typedef struct { int *begin; int *end; int *capacity; } PlotVector;
static void append_plot(PlotVector *plots, const int *plot)
{
    /* The engine's insert helper handles reallocation. Its spare-capacity
     * branch shifts an existing element, so append directly when space exists. */
    if (plots->end != plots->capacity) {
        *plots->end++ = *plot;
    } else {
        push_plot(plots, plots->end, plot);
    }
}
typedef struct {
    char *data;
    unsigned int capacity;
    unsigned int unused;
    unsigned int count;
    unsigned int unused2;
} NodeVector;

/* Keep the travelled prefix and the merchant's current index. Rebuild only
 * the remaining leg using the native, axis-filtered trade pathfinder. */
static int repair_trade_path(void *edge)
{
    const Snapshot *snapshot = active_snapshot;
    if (!snapshot || !edge) return 1;
    const void *map = current_map();
    const int width = map ? *(const int *)((const char *)map + 0x28) : 0;
    PlotVector *plots = (PlotVector *)((char *)edge + 0x180);
    const int count = (int)(plots->end - plots->begin);
    const int index = *(const int *)((const char *)edge + 0x1b0);
    if (width <= 0 || width >= 32768 || !plots->begin || count < 2 || count >= 100000
        || index < 0 || index >= count) return 1;
    const int forward = index == 0 || (index != count - 1
        && *(const unsigned char *)((const char *)edge + 0x1c8));
    const int delta = forward ? 1 : -1;
    int bad = 0;
    for (int i = index; i + delta >= 0 && i + delta < count; i += delta) {
        const int from = plots->begin[i], to = plots->begin[i + delta];
        if (closes_edge(snapshot, plot_key(from % width, from / width), plot_key(to % width, to / width))) {
            bad = 1; break;
        }
    }
    if (!bad) return 1;
    const int here = plots->begin[index];
    const int goal = plots->begin[forward ? count - 1 : 0];
    const int start[2] = { here % width, here / width };
    const int finish[2] = { goal % width, goal / width };
    NodeVector nodes = {0};
    const int owner = *(const short *)((const char *)edge + 0x1e0);
    const int found = find_trade_path(owner, start, finish, 0, &nodes);
    if (!found || !nodes.data || nodes.count < 2 || nodes.count >= 100000) {
        if (nodes.data) free_path(nodes.data);
        return 0;
    }
    const short *last = (const short *)(nodes.data + ((int)nodes.count - 1) * 16 + 12);
    const short *first = (const short *)(nodes.data + 12);
    int valid = last[0] == start[0] && last[1] == start[1]
        && first[0] == finish[0] && first[1] == finish[1];
    for (unsigned int i = 1; valid && i < nodes.count; ++i) {
        const short *a = (const short *)(nodes.data + (i - 1) * 16 + 12);
        const short *b = (const short *)(nodes.data + i * 16 + 12);
        valid = !closes_edge(snapshot, plot_key(a[0], a[1]), plot_key(b[0], b[1]));
    }
    if (!valid) { free_path(nodes.data); return 0; }
    /* Native path nodes are returned destination-first, 16 bytes per node. */
    PlotVector replacement = {0};
    if (forward) {
        for (int i = 0; i <= index; ++i) append_plot(&replacement, &plots->begin[i]);
        for (int i = (int)nodes.count - 2; i >= 0; --i) {
            const short *xy = (const short *)(nodes.data + i * 16 + 12);
            const int plot = xy[1] * width + xy[0];
            append_plot(&replacement, &plot);
        }
    } else {
        for (unsigned int i = 0; i < nodes.count; ++i) {
            const short *xy = (const short *)(nodes.data + i * 16 + 12);
            const int plot = xy[1] * width + xy[0];
            append_plot(&replacement, &plot);
        }
        for (int i = index + 1; i < count; ++i) append_plot(&replacement, &plots->begin[i]);
    }
    free_path(nodes.data);
    int *old = plots->begin;
    *plots = replacement;
    if (old) free_path(old);
    const int new_index = forward ? index : (int)nodes.count - 1;
    if (new_index != index) set_index((char *)edge + 0x1a0, &new_index, (unsigned char)new_index);
    return 1;
}

int check_trade_step(void *edge)
{
    if (!original_trade_step) return -1;
    if (!repair_trade_path(edge)) {
        const int index = *(const int *)((const char *)edge + 0x1b0);
        const PlotVector *plots = (const PlotVector *)((const char *)edge + 0x180);
        if (plots->begin && index >= 0 && plots->begin + index < plots->end)
            return plots->begin[index];
        return -1;
    }
    return original_trade_step(edge);
}

int check_move(void *formation, void *destination, unsigned int flags)
{
    if (!original_move) return 0;
    int allowed = original_move(formation, destination, flags);
    const Snapshot *snapshot = active_snapshot;
    if (allowed && snapshot) {
        const void *next = first_path_plot(formation);
        if (next) {
            const int *origin = (const int *)((const char *)formation + 0xc0);
            const short *step = (const short *)((const char *)next + 0x28);
            if (closes_edge(snapshot, plot_key(origin[0], origin[1]), plot_key(step[0], step[1]))
                && includes_domain(formation, 2)) {
                clear_path(formation);
                return 0;
            }
        }
    }
    return allowed;
}
