extern void abort(void);
void reach_error(){}
extern int __VERIFIER_nondet_int(void);
extern int __VERIFIER_nondet_int();

void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }
int main( ) {
  int src[100000];
  int dst[100000];
  int i = 0;
  int j = 0;
  while ( j < 100000 ) {
    src[j] = __VERIFIER_nondet_int();
    j = j + 1;
  }
  while ( i < 100000 && src[i] != 0 ) {
    dst[i] = src[i];
    i = i + 1;
  }
  i = 0;
  while ( i < 100000 && src[i] != 0 ) {
    __VERIFIER_assert( dst[i] == src[i] );
    i = i + 1;
  }
  return 0;
}
