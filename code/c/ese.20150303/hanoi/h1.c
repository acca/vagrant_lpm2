#include <stdlib.h>
#include <stdio.h>
 
void move(int n, const char *from, const char *to, const char *via)
{
  if (!n) return;
 
  move(n - 1, from, via, to);
  printf("Move disk from %s to %s\n", from, to);
  move(n - 1, via, to, from);
}
 
int main(int argc, char *argv[])
{
  int height;

  if (argc > 1) {
    height = atoi(argv[1]);
  }
  if (height <= 0) {
    height = 8;
  }


  move(height, "Left", "Right", "Center");
 
  return 0;
}
