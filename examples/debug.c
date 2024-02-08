int a(int x);
int b(int x);

int main() {
    int x;
  if(a(x) && b(x)) {
    assert(0);
  }
  return 0;
}