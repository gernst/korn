extern void abort(void);
void reach_error(){}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }
extern int __VERIFIER_nondet_int();

int main( ) {
  int a[100000];
  int b[100000];
  int i = 0;
  int c [100000];
  int rv = 1;
	
	for (int j = 0; j < 100000 ; j++ ) {
    a[j] = __VERIFIER_nondet_int();
		b[j] = __VERIFIER_nondet_int();
  }
	
  while ( i < 100000 ) {
    if ( a[i] != b[i] ) {
      rv = 0;
    }
    c[i] = a[i];
    i = i+1;
  }
  int x;
  if ( rv ) {
    for ( x = 0 ; x < 100000 ; x++ ) {
      __VERIFIER_assert( a[x] == b[x] );
    }
  }
  for ( x = 0 ; x < 100000 ; x++ ) {
    __VERIFIER_assert( a[x] == c[x] );
  }
  return 0;
}
