extern void abort(void);
void reach_error(){}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }

int main()
{
	int x = 0;
	int y = 500000;
	while(x < 1000000) {
		if (x < 500000) {
			x = x + 1;
		} else {
			x = x + 1;
			y = y + 1;
		}
	}
	__VERIFIER_assert(y==x);
	return 0;
}
