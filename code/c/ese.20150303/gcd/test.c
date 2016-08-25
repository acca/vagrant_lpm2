#include <stdio.h>

#include "gcd.h"

int main()
{
  unsigned int a, b;

  printf("a = ");
  scanf("%u", &a);
  printf("b = ");
  scanf("%u", &b);

  printf("gcd(%u, %u) = %u\n", a, b, gcd(a, b));

  return 0;
}
