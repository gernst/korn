extern void abort(void);
void reach_error(){}

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: {reach_error();abort();}
  }
  return;
}

extern unsigned int __VERIFIER_nondet_uint();
int main() {
  int i, j=10, n=__VERIFIER_nondet_uint(), sn=0;
  for(i=1; i<=n; i++) {
    if (i<j)
    sn = sn + (2);
    j--;
  }
  __VERIFIER_assert(sn==n*(2) || sn == 0);
}
