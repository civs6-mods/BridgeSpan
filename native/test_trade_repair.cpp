// Independent cached-route contracts. Engine ABI and real income require live tests.
#include <cassert>
#include <cstdlib>
#include <initializer_list>
#include "axis_runtime.cpp"

alignas(8) static unsigned char mapBytes[64];
static std::vector<int> answer;
static bool reachable=true;
static int pathCalls=0, stepCalls=0, indexCalls=0, allocated=0;
static const void* mapStub(){return mapBytes;}
static int stepStub(void*){++stepCalls;return 777;}
static void freeStub(void* p){if(p){--allocated;std::free(p);}}
static void pushStub(void* v,const int* position,const int* value){
    auto* p=static_cast<PlotVector*>(v);
    assert(position==p->end);
    int n=p->begin?static_cast<int>(p->end-p->begin):0;
    int x=*value;
    if(!p->begin)++allocated;
    auto* q=static_cast<int*>(std::realloc(p->begin,sizeof(int)*(n+4)));
    assert(q);p->begin=q;p->end=q+n;p->capacity=q+n+4;*p->end++=x;
}
static void indexStub(void* p,const int* value,unsigned char byte){
    assert(byte==static_cast<unsigned char>(*value));
    *reinterpret_cast<int*>(static_cast<char*>(p)+0x10)=*value;++indexCalls;
}
static unsigned char pathStub(int owner,const int* start,const int* end,int flags,void* result){
    assert(owner==0 && flags==0);assert(start && end);++pathCalls;
    auto* nodes=static_cast<NodeVector*>(result);
    if(!reachable)return 0;
    nodes->count=static_cast<unsigned>(answer.size());
    nodes->data=static_cast<char*>(std::calloc(answer.size(),16));++allocated;
    for(size_t i=0;i<answer.size();++i){
        auto* xy=reinterpret_cast<short*>(nodes->data+i*16+12);
        xy[0]=static_cast<short>(answer[i]%100);xy[1]=static_cast<short>(answer[i]/100);
    }
    return 1;
}
struct Edge {
    alignas(8) unsigned char bytes[512]{};
    PlotVector& plots(){return *reinterpret_cast<PlotVector*>(bytes+0x180);}
    int& index(){return *reinterpret_cast<int*>(bytes+0x1b0);}
    Edge(std::initializer_list<int> p,int i,bool forward){
        for(int x:p)append_plot(&plots(),&x);
        index()=i;bytes[0x1c8]=forward;*reinterpret_cast<short*>(bytes+0x1e0)=0;
    }
    ~Edge(){freeStub(plots().begin);}
    std::vector<int> values(){return {plots().begin,plots().end};}
};
int main(){
    logLine=[](const char*,const wchar_t*){};
    *reinterpret_cast<int*>(mapBytes+0x28)=100;
    current_map=mapStub;original_trade_step=stepStub;find_trade_path=pathStub;
    free_path=freeStub;push_plot=pushStub;set_index=indexStub;
    assert(publishPayload("5,10,4,10,6,10;6,10,5,10,7,10;7,10,6,10,8,10"));
    {
        Edge e({1004,1005,1105,1106,1107,1108},1,true);
        auto original=e.values();reachable=false;
        for(int retry=0;retry<3;++retry){
            assert(check_trade_step(e.bytes)==1005);
            assert(e.values()==original && e.index()==1 && stepCalls==0);
        }
        // A legal route becomes available: preserve travelled prefix and current position.
        reachable=true;answer={1108,1008,1007,1006,1005};
        assert(check_trade_step(e.bytes)==777 && stepCalls==1);
        assert((e.values()==std::vector<int>{1004,1005,1006,1007,1008,1108}));
        assert(e.index()==1 && indexCalls==0);
        int calls=pathCalls;
        assert(check_trade_step(e.bytes)==777 && pathCalls==calls);
    }
    assert(allocated==0);
    {
        Edge e({1104,1105,1106,1107,1007,1006,1005,1004},5,false);
        answer={1104,1004,1005,1006};
        assert(check_trade_step(e.bytes)==777);
        assert((e.values()==std::vector<int>{1104,1004,1005,1006,1005,1004}));
        assert(e.index()==3 && indexCalls==1);
    }
    assert(allocated==0);
    {
        Edge e({1004,1005,1105,1106,1107,1108},1,true);
        auto original=e.values();int calls=stepCalls;
        // Finder claims success with a forbidden edge; do not adopt its route.
        answer={1108,1107,1106,1105,1005};
        assert(check_trade_step(e.bytes)==1005);
        assert(e.values()==original && e.index()==1 && stepCalls==calls);
        // Nor adopt a route with the wrong endpoint.
        answer={1008,1007,1006,1005};
        assert(check_trade_step(e.bytes)==1005 && e.values()==original);
    }
    assert(allocated==0);
    puts("PASS cached trader: repeated unreachable holds; recovery preserves prefix/index; reverse repair reindexes; invalid finder result rejected; native step retained; no test allocation leaks");
}
