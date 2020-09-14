int  __VERIFIER_assume(_Bool test);
void __VERIFIER_error();
int  __VERIFIER_nondet_int();

void  __VERIFIER_assert(_Bool test) {
    if(!test)
        __VERIFIER_error();
}

/*
int main() {
    int x = __VERIFIER_nondet_int();
    __VERIFIER_assume(x >= 0);
    while(x > 0) { x--; }
    if(x != 0) __VERIFIER_error();
    return 0;
}

} */

int main() {
    int x = __VERIFIER_nondet_int();
    int y = __VERIFIER_nondet_int();
    __VERIFIER_assume(x >= 0);
    int x0 = x;
    int y0 = y;
    while(x > 0) {
        x --; y++;
    }
    __VERIFIER_assert(x0 + y0 == y);
    return y;
}