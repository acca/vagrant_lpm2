#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
 
struct tower {
  unsigned int *x;
  unsigned int n;
};

struct tower *new_tower(int cap)
{
  struct tower *t;

  t = malloc(sizeof(struct tower) + sizeof(unsigned int) * cap);
  memset(t, 0, sizeof(struct tower) + sizeof(unsigned int) * cap);
  t->x = (unsigned int *)(t + 1);

  return t;
}
 
void printme(struct tower *t[])
{
  unsigned int i;

  for (i = 0; i < 3; i++) {
    unsigned int j;

    printf("Tower %u: ", i);
    for (j = 0; j < t[i]->n; j++) {
      printf("%d ", t[i]->x[j]);
    }
    printf("\n");
  }
  printf("\n");

  //sleep(1);
}

void add_disk(struct tower *t, unsigned int d)
{
  t->x[t->n++] = d;
}
 
void move_disk(struct tower *from, struct tower *to)
{
  to->x[to->n++] = from->x[--from->n];
}

void move(struct tower *t[], unsigned int n, unsigned int from, unsigned int to, unsigned int via)
{
  if (n == 0) {
    return;
  }
 
  move(t, n - 1, from, via, to);
  move_disk(t[from], t[to]);
  printme(t);
  move(t, n - 1, via, to, from);
}
 
int main(int argc, char *argv[])
{
  static unsigned int height;
  unsigned int i;
  struct tower *t[3];

  if (argc > 1) {
    height = atoi(argv[1]);
  }
  if (height <= 0) {
    height = 8;
  }

  for (i = 0; i < 3; i++) {
    t[i] = new_tower(height);
  }
  for (i = height; i; i--) {
    add_disk(t[0], i);
  }
  printme(t);
 
  move(t, height, 0, 2, 1);
 
  return 0;
}
