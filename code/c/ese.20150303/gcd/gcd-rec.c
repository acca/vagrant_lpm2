#include "gcd.h"
#include <stdio.h>

/*
 * gcd(a, 0) = 0
 * b != 0 => gcd(b, a % b)
 */

unsigned int gcd(unsigned int a, unsigned int b)
{
  if (b == 0) {
    return a;
  }
  printf("Entrato. a=%d e b=%d \n",a,b);
  return gcd(b, a % b);
}
