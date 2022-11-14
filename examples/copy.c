void main() {
    int n;
    int a[n];
    int b[n];
    int i=0;
    int k;
    
    assume(0 <= n);
    assume(0 <= k && k < n);

    while(i<n)
      // invariant $main_inv1
    {
        b[i] = a[i];
        i++;
    }
    // assert $main_sum1
    assert(i == n);
    assert(a[k] == b[k]);
}
