#include <stdio.h>

int f(int v)
{
  static int acc;

  acc = acc + 1;

  return v + acc;
}

int main()
{
  printf("Risultato: %d\n", (1 + f(2)) * (2 + f(2)));

  return 0;
}
