#include <stdio.h>
#include <stdlib.h>

int main(){
    char *val;

    val = getenv("HOME");
    printf("HOME= %s\n",val);
    val = getenv("USER");
    printf("USER= %s\n",val);
    val = getenv("PATH");
    printf("PATH= %s\n",val);
    val = getenv("SHELL");
    printf("SHELL= %s\n",val);
    val = getenv("PWD");
    printf("PWD= %s\n",val);

}