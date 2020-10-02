void main() {
    int x;
    int y;
    int z = __VERIFIER_nondet_uchar();

    if(z) {
        x = y;
        z ++;
        goto out;
    } else {
        x = y + 2;
        y = y + 1;
        goto out;
    }

out:
    assert(x >= y);
    assert(z >= 0);
}