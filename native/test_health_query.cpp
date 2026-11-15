#include <cassert>
#include <stdexcept>
#include "axis_runtime.cpp"

struct Value { int type; std::string text; int number=0; };
struct Stack { std::vector<Value> values; int pushes=0; int failAt=0; };
static int ordinaryCalls=0;
static void quiet(const char*,const wchar_t*) {}
static int top(void* s) { return static_cast<int>(static_cast<Stack*>(s)->values.size()); }
static int type(void* s,int i) { return static_cast<Stack*>(s)->values.at(i-1).type; }
static const char* string(void* s,int i) { return static_cast<Stack*>(s)->values.at(i-1).text.c_str(); }
static int ordinary(void*) { ++ordinaryCalls; return 17; }
static void push(void* s,Value v) { auto& q=*static_cast<Stack*>(s); if(++q.pushes==q.failAt) throw std::runtime_error("push failed"); q.values.push_back(v); }
static void pushValue(void* s,int i) { push(s,static_cast<Stack*>(s)->values.at(i-1)); }
static void pushInteger(void* s,int n) { push(s,{3,"",n}); }
static void setTop(void* s,int n) { static_cast<Stack*>(s)->values.resize(n); }
static Stack query(std::string nonce="nonce-42") { return {{{4,HEALTH_QUERY_KEY},{4,nonce}}}; }
int wmain(int argc, wchar_t** argv) {
    assert(argc == 2);
    logLine=quiet;
    // Real export-name resolution, without running the game's DllMain.
    HMODULE core=LoadLibraryExW(argv[1],nullptr,DONT_RESOLVE_DLL_REFERENCES);
    assert(core); resolveHealthQuery(reinterpret_cast<unsigned char*>(core)); assert(healthQueryReady); FreeLibrary(core);
    getTop=top; getType=type; getString=string; baseSetProperty=ordinary;
    queryGetTop=top; querySetTop=setTop; queryPushValue=pushValue; queryPushInteger=pushInteger;
    healthQueryReady=true; hooksReady=true;
    assert(publishPayload("5,10,4,10,6,10;6,10,5,10,7,10"));
    auto s=query(); assert(setProperty(&s)==6); assert(s.values.size()==8);
    assert(s.values[2].text=="nonce-42");
    assert(s.values[3].number==1 && s.values[4].number==1 && s.values[5].number==1 && s.values[6].number==2);
    assert(ordinaryCalls==0);
    for(int fail=1;fail<=6;++fail) { s=query(); s.failAt=fail; assert(setProperty(&s)==0); assert(s.values.size()==2); }
    for(const auto& nonce: {std::string(),std::string(129,'x')}) { s=query(nonce); assert(setProperty(&s)==0 && s.values.size()==2); }
    s=query(std::string(128,'x')); assert(setProperty(&s)==6);
    s=query(); s.values[1].type=3; assert(setProperty(&s)==0 && s.values.size()==2);
    s=query(); s.values.pop_back(); assert(setProperty(&s)==0 && s.values.size()==1);
    s=query(); s.values.push_back({3,"",5}); assert(setProperty(&s)==0 && s.values.size()==3);
    healthQueryReady=false; s=query(); assert(setProperty(&s)==0 && ordinaryCalls==0);
    healthQueryReady=true; hooksReady=false; s=query(); assert(setProperty(&s)==6 && s.values[4].number==2);
    hooksReady=true; assert(!publishPayload("bad")); s=query(); assert(setProperty(&s)==6 && s.values[5].number==0 && s.values[6].number==2);
    assert(publishPayload("5,10,4,10,6,10;6,10,5,10,7,10")); s=query(); assert(setProperty(&s)==6 && s.values[5].number==1);
    s=query(); s.values[0].text="ordinary"; assert(setProperty(&s)==17 && ordinaryCalls==1 && s.values.size()==2);
    s.values[1].type=3; assert(setProperty(&s)==17 && ordinaryCalls==2 && s.values.size()==2);
    std::puts("PASS: real export names; immediate nonce+six-value contract; stack restoration at every push; bounds/types/arity; no persisted queries; missing interface; inactive hooks; rejection and recovery; unrelated setter preserved");
}
