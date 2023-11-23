extern int __VERIFIER_nondet_int();

int main() {
    int x = __VERIFIER_nondet_int();
    int y;

    if(x == 42) {
        y = 0;
    } else {
        y = 1;
    }

    assert(y);
}