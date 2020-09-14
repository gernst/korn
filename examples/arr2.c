int main() {
    int n;
    assume(n > 0);
    int a[n];

    for(int i=0; i<n; i++) {
        a[i] = 0;
    }

    int k;
    assume(0 <= k && k < n);
    assert(a[k] == 0);
}