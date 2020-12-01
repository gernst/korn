void __VERIFIER_assume(_Bool cond);

void main() {
    int n;
    int k;
    assume(n > 0);
    assume(0 <= k && k < n);
    int a[n];
    int b[n];
    int i=0;

    while(i<n) {
        b[i] = a[i];
        i++;
    }

    if(i != n)
        reach_error();

    if(a[k] != b[k])
        reach_error();
}