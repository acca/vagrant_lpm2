#include <cstdlib>
#include <iostream>
#include <string>

std::string move(int n, std::string from, std::string to, std::string via)
{
  return (n == 0) ? "\n" : move(n - 1, from, via, to) + "Move disk from " + from+ " to " + to + move(n - 1, via, to, from);
}
 
int main(int argc, char *argv[])
{
  int height;
  std::string res;

  if (argc > 1) {
    height = atoi(argv[1]);
  }
  if (height <= 0) {
    height = 8;
  }

  res = move(height, "Left", "Right", "Center");

  std::cout << res;
 
  return 0;
}
