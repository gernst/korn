extern void abort(void);
void reach_error(){}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }
extern int __VERIFIER_nondet_int();

int main( ) {
  int aa[100000];
  int a = 0;
  int b = 0;
  int c = 0;
  int bb[100000];
  int cc[100000];
	
  for(int i = 0 ; i < 100000 ; i++ ) {
    aa[i] = __VERIFIER_nondet_int();
  }
	
  while( a < 100000 ) {
    if( aa[ a ] >= 0 ) {
      bb[ b ] = aa[ a ];
      b = b + 1;
    }
    a = a + 1;
  }
  a = 0;
  while( a < 100000 ) {
    if( aa[ a ] < 0 ) {
      cc[ c ] = aa[ a ];
      c = c + 1;
    }
    a = a + 1;
  }
  int x;
  for ( x = 0 ; x < b ; x++ ) {
    __VERIFIER_assert( bb[ x ] >= 0 );
  }
  return 0;
}
