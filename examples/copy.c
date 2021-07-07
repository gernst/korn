void main() {
    int n;
    int a[n];
    int b[n];
    int i=0;

    while(i<n)
      // invariant $main_inv1
    {
        b[i] = a[i];
        i++;
    }
    // assert $main_sum1

    int k;
    assume(n > 0);
    assume(0 <= k && k < n);
    assert(i == n);
    assert(a[k] == b[k]);
}
