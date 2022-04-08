int main() {
    int x, y;

    assume(x >= 0);
    int x0 = x;
    int y0 = y;
    
    while(x > 0) {
        x --; y++;
    }

    assert(x0 + y0 == y);
    return y;
}