extern void abort(void);
void reach_error(){}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }

int main(void) {
  unsigned int x = 0;
  unsigned int y = 0;
  while (x < 1000000) {
    if (x<500000) {
	y++;
    } else {
	y--;
    }
	x++;
  }
  __VERIFIER_assert(y!=0) ;
}
