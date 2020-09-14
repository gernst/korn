void __VERIFIER_error();
void __VERIFIER_assume(_Bool cond);
void __VERIFIER_assert(_Bool cond) { if(!(cond)) { __VERIFIER_error(); } }
int __VERIFIER_nondet_int();

int main()
{
	int SIZE = __VERIFIER_nondet_int();

	if(SIZE > 1)
	{
		int i;
		int a[SIZE];
		int sum=0;
		
		for(i = 0; i < SIZE; i++) 
		{
		  a[i] = __VERIFIER_nondet_int();
		}

		for(i = 0; i < SIZE; i++ )
		{
			sum = sum + a[i];
		}

		for(i = 0; i < SIZE; i++ )
		{
			sum = sum + a[i];
		}

		for(i = 0; i < SIZE; i++ )
		{
			sum = sum + a[i];
		}

		for(i = 0; i < SIZE; i++)
		{
			sum = sum - a[i];
		}

		for(i = 0; i < SIZE; i++)
		{
			sum = sum - a[i];
		}

		for(i = 0; i < SIZE; i++)
		{
			sum = sum - a[i];
		}

		__VERIFIER_assert(sum == 0);
	}
	return 1;
}
