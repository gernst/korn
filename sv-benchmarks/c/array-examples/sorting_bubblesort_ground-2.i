extern void abort(void);
void reach_error(){}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }
extern int __VERIFIER_nondet_int();

int main( ) {
  int a[ 100000 ];
	
	for(int j = 0; j < 100000; j++)
	{
	  a[j] = __VERIFIER_nondet_int();
	}
	
  int swapped = 1;
  while ( swapped ) {
    swapped = 0;
    int i = 1;
    while ( i < 100000 ) {
      if ( a[i - 1] < a[i] ) {
        int t = a[i];
        a[i] = a[i - 1];
        a[i-1] = t;
        swapped = 1;
      }
      i = i + 1;
    }
  }
  int x;
  int y;
  for ( x = 0 ; x < 100000 ; x++ ) {
    for ( y = x+1 ; y < 100000 ; y++ ) {
      __VERIFIER_assert( a[x] <= a[y] );
    }
  }
  return 0;
}
