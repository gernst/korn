





extern void abort(void);
void reach_error(){}
void __VERIFIER_assert(int cond)
{
  if (!(cond)) {
    ERROR: {reach_error();abort();}
  }
  return;
}

int main()
{
  unsigned int array[1000];
  unsigned int index;

  for (index = 0; index < 1000; index++) {
    array[index] = (index % 2);
  }

  for (index = 0; index < 1000; index++) {
    if (index % 2 == 0) {
      __VERIFIER_assert(array[index] == 0);
    } else {
      __VERIFIER_assert(array[index] != 0);
    }
  }

}
