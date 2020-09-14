int main() {
    int x = 0;
    
    goto two;
        return 0;

    one:
        assert(x == 2);
        return 1;

    two:
        x = 2;
        goto one;
        return 2;

    three:
        int y = 0;
        return 3;
}