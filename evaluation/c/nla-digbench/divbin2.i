extern void abort(void);
void reach_error(){}
extern unsigned __VERIFIER_nondet_unsigned_int(void);
extern void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) {
    if (!(cond)) {
    ERROR:
        {reach_error();}
    }
    return;
}
int main() {
  unsigned A, B;
  unsigned q, r, b;
    A = __VERIFIER_nondet_unsigned_int();
    B = 1;
    q = 0;
    r = A;
    b = B;
    while (1) {
        if (!(r >= b)) break;
        b = 2 * b;
    }
    while (1) {
        __VERIFIER_assert(A == q * b + r);
        if (!(b != B)) break;
        q = 2 * q;
        b = b / 2;
        if (r >= b) {
            q = q + 1;
            r = r - b;
        }
    }
    __VERIFIER_assert(A == q * b + r);
    return 0;
}
