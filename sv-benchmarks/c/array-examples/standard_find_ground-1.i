extern void abort(void);
void reach_error(){}
extern int __VERIFIER_nondet_int(void);
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }
int main ( ) {
  int a[100000]; int e = __VERIFIER_nondet_int();
  int i = 0;
  int j;

  for ( j = 0 ; j < 100000; j++) {
    a[j] = __VERIFIER_nondet_int();
  }

  while( i < 100000 && a[i] != e ) {
    i = i + 1;
  }
  int x;
  for ( x = 0 ; x < i ; x++ ) {
    __VERIFIER_assert( a[x] != e );
  }
  return 0;
}
