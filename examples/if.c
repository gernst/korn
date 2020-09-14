int main() {
    int x;

    if(x < 0) {
        x = -x;
    }

    assert(x >= 0);
}