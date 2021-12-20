////////////////////////////////////////////////////////////////////
//                          _ooOoo_                               //
//                         o8888888o                              //
//                         88" . "88                              //
//                         (| ^_^ |)                              //
//                         O\  =  /O                              //
//                      ____/`---'\____                           //
//                    .'  \\|     |//  `.                         //
//                   /  \\|||  :  |||//  \                        //
//                  /  _||||| -:- |||||-  \                       //
//                  |   | \\\  -  /// |   |                       //
//                  | \_|  ''\---/''  |   |                       //
//                  \  .-\__  `-`  ___/-. /                       //
//                ___`. .'  /--.--\  `. . ___                     //
//             ."" '<  `.___\_<|>_/___.'  >'"".                   //
//            | | :  `- \`.;`\ _ /`;.`/ - ` : | |                 //
//            \  \ `-.   \_ __\ /__ _/   .-` /  /                 //
//      ========`-.____`-.___\_____/___.-`____.-'========         //
//                           `=---='                              //
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        //
//             佛祖保佑       永不宕机     永无BUG                   //
////////////////////////////////////////////////////////////////////

#include <bits/stdc++.h>
/* #include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp> */
using namespace std;
// using namespace __gnu_pbds;
using ll = long long;
// using lll = __int128;
template<typename T> using vt = vector<T>;
using vi = vt<int>;
using vvi = vt<vi>;
using ii = pair<int, int>;
using vii = vt<ii>;
/* template<typename T>
using indexed_set = tree<T,null_type,less<T>,rb_tree_tag,tree_order_statistics_node_update>; */
/* struct chash {
    static ull hash_f(ull x) {x += 0x9e3779b97f4a7c15; x = (x ^ (x >> 30)) * 0xbf58476d1ce4e5b9; x = (x ^ (x >> 27)) * 0x94d049bb133111eb; return x ^ (x >> 31);}
    size_t operator()(ull x) const {static const ull RANDOM = chrono::steady_clock::now().time_since_epoch().count();returnash_f(x + RANDOM);}
};
struct iihash {
    template <class T1, class T2>
    size_t operator () (const pair<T1,T2> &p) const {auto h1 = hash<T1>{}(p.first);auto h2 = hash<T2>{}(p.second);return h1 ^ h2;}
};
template<class T1, class T2, class T3> using ii_umap = gp_hash_table<pair<T1,T2>,T3,iihash>;
template<class T1, class T2> using f_umap = gp_hash_table<T1,T2,chash>;
template<class T1, class T2> using o_umap = gp_hash_table<T1,T2>; */
#define sqr(x) (x)*(x)
#define all(x) begin(x), end(x)
#define rall(x) (x).rbegin(), (x).rend()
#define sz(x) (int)(x).size()
#define debug(x) cerr << #x << " -> " << x << '\n'
#define F first
#define S second
#define mp make_pair
#define pb push_back
#define eb emplace_back
const int inf = 1e9 + 7;
const ll infll = 1e18 + 10;
// template <typename T> inline T fgcd(T a, T b) {while(b) swap(b, a %= b); return a;}
// ll fpow(ll a, ll b) {ll o = 1; for(;b;b >>= 1) {if(b & 1) o = o * a;a = a * a;} return o;}
// ll fpow(ll a, ll b, ll m) {ll o = 1; a %= m; for(;b;b >>= 1) {if(b & 1) o = o * a % m;a = a * a % m;} return o;}
// template<class T> void uniq(vt<T> &a) {sort(all(a));a.resize(unique(all(a)) - a.begin());}
void setIO(string name = "", string inp = "inp", string out = "out") {
    cin.tie(0)->sync_with_stdio(0);
    if(sz(name)) {
        if(sz(inp)) freopen((name+"."+inp).c_str(), "r", stdin);
        if(sz(out)) freopen((name+"."+out).c_str(), "w", stdout);
    }
}
int main() {
    setIO();

    return 0;
}
