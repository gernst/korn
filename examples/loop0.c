int main() {
    int i=0,n;
    assume(0 <= n);
    while(1) {
        if(i >= n) break;
        i++;
    }
    assert(i == n);
}