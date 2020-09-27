int main() {
    int x;
    int y = x;
    y ++;
    goto label;
    assert(0);

label:
    if(x < 0) {
        x = -x;
    }

    assert(x >= 0);
}