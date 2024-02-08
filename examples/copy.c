void main() {
    int n;
    int a[n];
    int b[n];
    int i=0;
    
    assume(0 <= n);

    while(i<n)
    {
        b[i] = a[i];
        i++;
    }

    int k;
    assert(i == n);
    assume(0 <= k && k < n);
    assert(a[k] == b[k]);
}
