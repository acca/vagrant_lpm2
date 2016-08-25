
unsigned int f1(unsigned int n, unsigned int res)
{
  if (n == 0) return res;
  return f1(n - 1, n * res);
}

unsigned int fattoriale(n)
{
  return f1(n, 1);
}
