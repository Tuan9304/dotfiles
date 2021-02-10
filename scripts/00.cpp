#include <iostream>
#include <vector>

#define vt vector
#define sqr(x) (x)*(x)
#define debug(x) std::cout << #x << " -> " << x << '\n'
#define F first
#define S second

typedef std::vt<int> vi;
typedef std::vt<vi> vvi;
typedef std::pair<int, int> ii;
typedef std::vt<ii> vii;

const int inf = 1e9 + 7;
const int64_t infll = 1e18 + 10;

void fast() {
    std::ios_base::sync_with_stdio(0);
    std::cin.tie(NULL); std::cout.tie(NULL);
}
void file() {
    freopen("", "r", stdin);
    freopen("", "w", stdout);
}
int main() {
    fast();
    return 0;
}
