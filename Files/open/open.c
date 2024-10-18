#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    int fdtor = open("File-1.txt", O_RDONLY); /*File Descriptor to read*/
    int fdtow = open("Output-2.txt", O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR); /*File Descriptor to write*/

    if(fdtor == -1 || fdtow == -1) { 
        printf("One file wouldn't open!\n");
        return -1;
    }

    char c;
    int b;
    while ((b = read(fdtor, &c, sizeof(c))) > 0){
        if(c == '.'){
            c = '!';
        }
        write(fdtow, &c, sizeof(c));
    }

    close(fdtor);
    close(fdtow);
}