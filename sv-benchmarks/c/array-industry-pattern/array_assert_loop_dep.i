extern void abort(void);
void reach_error(){}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }
int main()
{
 int i;
 int a[100000];
 for(i = 0; i < 100000; i++)
 {
  a[i] = 10;
 }
 for(i = 0; i < 100000; i++)
 {
  __VERIFIER_assert(a[i] == 10 );
  if(i+1 != 15000)
   a[i+1] = 20;
 }
 return 0;
}
