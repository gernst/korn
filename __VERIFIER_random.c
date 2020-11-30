#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <signal.h>

static int initialized = 0;

void exit0(int signal) {
    exit(0);
}

static void initialize() {
    if(!initialized) {
        srand(time(0));
        signal(SIGALRM, exit0);
        alarm(1);
        initialized = 1;
    }
}

/*
 * Construct non-uniformly distributed small values centering around 0
 */
unsigned long long __VERIFIER_next_nondet() {
    initialize();

    switch(rand()%4) {
        case 0: return (unsigned long long)  0;
        case 1: return (unsigned long long) (rand() %   2 -   1);
        case 3: return (unsigned long long) (rand() %  32 -  16);
        case 4: return (unsigned long long) (rand() %1024 - 512);
    }   
}
