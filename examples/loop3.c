int P(int x, int y);
int t(int x, int y);
int B(int x, int y);
int Q(int x, int y);

int main() {
    int x,y;
    assume(P(x,y));
    while(t(x,y)) {
        y = B(x,y);
        if(0) break;
        if(1) return;
    }
    assert(Q(x,y));
}