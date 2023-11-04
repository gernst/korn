#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

static int initialized = 0;
static unsigned int seed;

enum {
     __VERIFIER_TRACE_LENGTH = 0x10000
};

static unsigned int __VERIFIER_index = 0;

typedef struct {
    unsigned int sign;
    unsigned long long sample;
    const char *fn;
} Sample;

static Sample __VERIFIER_counterexample[__VERIFIER_TRACE_LENGTH] = { 0 };

void store(unsigned int sign, unsigned long long sample, const char *fn) {
    if(__VERIFIER_index >= __VERIFIER_TRACE_LENGTH)
        exit(0);

    Sample *entry = &__VERIFIER_counterexample[__VERIFIER_index++];
    entry->sign   = sign;
    entry->sample = sample;
    entry->fn     = fn;
}

void output(unsigned int sign, unsigned long long sample, const char *fn) {
    if(sign) {
        printf("%s(%lld)\n", fn, sample);
    } else {
        printf("%s(%llu)\n", fn, sample);
    }
    fflush(stdout);
}

void __assert_fail(const char * assertion, const char * file, unsigned int line, const char * function) {
    alarm(0);
    printf("unsat\n");
    unsigned int i = __VERIFIER_index-1;
    /* print trace in reverse, like Eldarica */
    do {
        Sample *entry = &__VERIFIER_counterexample[i];
        output(entry->sign, entry->sample, entry->fn);
    } while(i-- > 0);
    printf("srand(%u)\n", seed);
    exit(0);
}

static void initialize() {
    if(!initialized) {
        struct timespec now;
        clock_gettime(CLOCK_MONOTONIC, &now);
        seed = now.tv_nsec;
        srand(seed);
        signal(SIGALRM, exit);
        alarm(1);
        initialized = 1;
    }
}

unsigned long long generate(unsigned int sign) {
    return 0; /* shut up compiler warning */
}

/*
 * Like the random sampler but returning 0 all of the time.
 */
unsigned long long __VERIFIER_next_nondet(unsigned int sign, unsigned int bits, const char *fn) {
    unsigned long long sample;

    initialize();
    sample = generate(sign);
    store(sign, sample, fn);
    return sample;
}
