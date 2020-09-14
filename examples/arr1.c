int main() {
    int i=0,n;
    assume(n > 0);
    int a[n];
    a[0] = 0;

    while(i < n) i++;
    assert(i == n);
    assert(a[0] == 0);
}