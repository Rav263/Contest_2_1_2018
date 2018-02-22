#include <stdio.h>

int main(void){
  int v1, v2, a1, a2, t;

  scanf("%d %d %d %d %d", &v1, &v2, &a1, &a2, &t);


  int x = v1 * t + a1 * t * t;
  int y = v2 * t + a2 * t * t;

  printf("%d, %d\n", x, y);
  return 0;
}
