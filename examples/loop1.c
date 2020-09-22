int main() {
    int i=0,n;
    assume(0 <= n);
    while(i < n) i++;
    assert(i == n);
    while(i > 0) i--;
    assert(i == 0);
}