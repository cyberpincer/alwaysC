#include <stdio.h>

int y=2;

void dumb_func(int *x1, int x2){

    *x1 = *x1 + 1;
    x2 = x2 - 1;
}


int main(){
    int x=1;
    
    dumb_func(&x,y);
    printf("x=%d, y=%d\n",x,y);
}