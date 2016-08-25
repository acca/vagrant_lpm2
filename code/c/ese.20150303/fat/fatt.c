#include "fatt.h"

unsigned int fattoriale(unsigned int n)
{
  if (n == 0) return 1;
  return n * fattoriale(n - 1);
}
