#include <stdlib.h>
#include <stdio.h>
#include <string.h>

const char *concat(const char *a, const char *b)
{
  char *res;

  res = malloc(strlen(a) + strlen(b) + 1);
  memcpy(res, a, strlen(a));
  memcpy(res + strlen(a), b, strlen(b));
  res[strlen(a) + strlen(b)] = 0;

  return res;
}
 
const char *move(int n, const char *from, const char *to, const char *via)
{
  return (n == 0) ? "\n" : concat(concat(concat(concat(concat(move(n - 1, from, via, to), "Move disk from "), from), " to "), to), move(n - 1, via, to, from));
}
 
int main(int argc, char *argv[])
{
  int height;
  const char *res;

  if (argc > 1) {
    height = atoi(argv[1]);
  }
  if (height <= 0) {
    height = 8;
  }

  res = move(height, "Left", "Right", "Center");

  printf("%s", res);
 
  return 0;
}
