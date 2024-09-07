extern unsigned short __VERIFIER_nondet_ushort(void);
extern void assert(int);

int main(void) {
  unsigned int x = 0;
  unsigned short N = __VERIFIER_nondet_ushort();

  while (x < N) {
    x += 2;
  }

  assert(x % 2);
}