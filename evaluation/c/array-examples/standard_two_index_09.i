extern void abort(void);
void reach_error(){}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }
extern int __VERIFIER_nondet_int();
int main( )
{
  int a[100000];
  int b[100000];
  int i = 0;
  int j = 0;
  while( i < 100000 )
  {
	b[i] = __VERIFIER_nondet_int();
    i = i+1;
  }
  i = 1;
  while( i < 100000 )
  {
 a[j] = b[i];
        i = i+9;
        j = j+1;
  }
  i = 1;
  j = 0;
  while( i < 100000 )
  {
 __VERIFIER_assert( a[j] == b[9*j+1] );
        i = i+9;
        j = j+1;
  }
  return 0;
}
