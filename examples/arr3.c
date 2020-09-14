int main() {
    int n,m;
    assume(m > 0 && n > 0);
    int a[m][n];

    for(int i=0; i<m; i++) {
        for(int j=0; j<n; j++) {
            a[i][j] = 0;
        }
    }

    int i0,j0;
    assume(0 <= i0 && i0 < m);
    assume(0 <= j0 && j0 < n);
    assert(a[i0][j0] == 0);
}