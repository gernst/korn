extern void abort(void);
void reach_error(){}
extern int __VERIFIER_nondet_int(void);
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }
void printEven( int i ) {
  __VERIFIER_assert( ( i % 2 ) == 0 );
}
void printOdd( int i ) {
  __VERIFIER_assert( ( i % 2 ) != 0 );
}
int main()
{
    int array[100000];
    int i;
    int num = __VERIFIER_nondet_int();
		
		for(i = 0; i < num; i++) 
		{
		  array[i] = __VERIFIER_nondet_int();
		}
		
    for (i = 0; i < num; i++)
    {
        if (array[i] % 2 == 0)
        {
            printEven( array[i] );
        }
    }
    for (i = 0; i < num; i++)
    {
        if (array[i] % 2 != 0)
        {
            printOdd( array[i] );
        }
    }
  return 0;
}
