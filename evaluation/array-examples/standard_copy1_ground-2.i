extern void abort(void);
void reach_error(){}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }
extern int __VERIFIER_nondet_int();
int main( ) {
  int a1[100000];
  int a2[100000];
  int a;
  for ( a = 0 ; a < 100000 ; a++ ) {
      a1[a] = __VERIFIER_nondet_int();
      a2[a] = __VERIFIER_nondet_int();
  }
  int i;
  for ( i = 0 ; i < 100000 ; i++ ) {
    a1[i] = a1[i];
  }
  int x;
  for ( x = 0 ; x < 100000 ; x++ ) {
    __VERIFIER_assert( a1[x] == a2[x] );
  }
  return 0;
}
