extern void abort(void);
void reach_error(){}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }
int __VERIFIER_nondet_int();
int main()
{
 int i;
 int a[100000];
 int b[100000];
 for(i = 0; i < 100000; i = i + 2)
 {
  a[i] = __VERIFIER_nondet_int();
  if(a[i] == 10)
   b[i] = 20;
 }
 for(i = 0; i < 100000; i = i + 2)
 {
  if(a[i] == 10)
   __VERIFIER_assert(b[i] == 20);
 }
}
