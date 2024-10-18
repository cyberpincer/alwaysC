#include <stdio.h>
#include <stdlib.h>

int main(){
    FILE *ftor = fopen("File-1.txt", "r"); /*File to read*/
    FILE *ftow = fopen("Output-2.txt", "w"); /*File to write*/

    if(ftor == NULL || ftow==NULL){
        printf("One file wouldn't open!\n");
        return -1;
    }

    char c;
    while((c=fgetc(ftor)) != EOF) {
        if(c == '.'){
            c = '!';
        }
        fputc(c, ftow);
    }

    fclose(ftor);
    fclose(ftow);
}