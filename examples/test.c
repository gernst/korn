#include <assert.h>
#include <stdio.h>

int main() {
    unsigned int z = 0, k = 0;
    long long x, y, c;

    x = 1;
    y = z;
    c = 1;

    while (c < k) {
        // printf("invariant %d\n", x*z - x - y + 1);
        // assert(x*z - x - y + 1 == 0);

        c = c + 1;
        x = x * z + 1;
        y = y * z;

    }  //geo1 */

    x = x * (z - 1);
    
    printf("x = %d\n", x);
    printf("y = %d\n", y);
    printf("finally %lld\n", 1 + x - y);
    assert(1 + x - y == 0);
    return 0;
}
