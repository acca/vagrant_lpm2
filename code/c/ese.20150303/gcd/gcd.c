#include "gcd.h"
#include <stdio.h>

/*
 * gcd(a, 0) = a
 * b != 0 => gcd(a. b) = gcd(b, a % b)
 */

unsigned int gcd(unsigned int a, unsigned int b)
{
	int cnt = 0;
  while (b != 0) {
    unsigned int tmp;

    tmp = b;
    b = a % b;
    a = tmp;
    cnt++;
  }
  printf("entrato: %d volte\n", cnt);
  return a;
}
