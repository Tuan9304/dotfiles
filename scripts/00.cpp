#include <bits/stdc++.h>
#define vt vector
using namespace std;
using ll = long long;
using vi = vt<int>;
using vvi = vt<vi>;
using ii = pair<int, int>;
using vii = vt<ii>;
#define sqr(x) (x)*(x)
#define all(x) begin(x), end(x)
#define sz(x) (int)(x).size()
#define debug(x) cout << #x << " -> " << x << '\n'
#define F first
#define S second
#define mp make_pair
#define pb push_back
const int inf = 1e9 + 7;
const ll infll = 1e18 + 10;

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
