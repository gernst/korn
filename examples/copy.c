void main() {
    int n;
    assume(n > 0);
    int a[n];
    int b[n];
    int i;

    for(i=0; i<n; i++) {
        b[i] = a[i];
    }

    assert(i == n);

    int k;
    assume(0 <= k && k < n);
    assert(a[k] == b[k]);
}