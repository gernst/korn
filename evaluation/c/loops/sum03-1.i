extern void abort(void);
void reach_error(){}
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: {reach_error();abort();}
  }
  return;
}
extern unsigned int __VERIFIER_nondet_uint();
int main() {
  int sn=0;
  unsigned int loop1=__VERIFIER_nondet_uint(), n1=__VERIFIER_nondet_uint();
  unsigned int x=0;
  while(1){
      if (x<10) {
          sn = sn + (2);
      }
      x++;
      __VERIFIER_assert(sn==x*(2) || sn == 0);
  }
}
