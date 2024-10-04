 /*C Strings are null-terminated always....*/
 
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>


 int get_string_length(char *str) {
    int offset = 0;
    while (str[offset] != 0) {
        offset++;
    }
    return offset;
 }

 void copy_string(char *from, char *to) {
    int offset=0;
    while (from[offset] != 0) {
        to[offset] = from[offset];
        offset++;
    }
    to[offset] = 0; //its null termninated...
 }

 void rev0(char *str) {
    int length = strlen(str);       //sample  str = r a i z u
    for(int i=0; i<length/2; i++){  //indices   i = 0 1 2 3 4
        char temp = str[i];         //changed str:  u a i z r
        str[i] = str[length-1-i];   //changed str:  u z i a r
        str[length-1-i] = temp;
    }
 }

 
void rev0a(char* o_cad3a86d6ef12add7bfadd24521a2886){int o_e06904106da6e97616d9296cccf5af2a=strlen(o_cad3a86d6ef12add7bfadd24521a2886);for (int o_19dc2c9dc1a7e40386c772a2f8b5ea1b=(0x0000000000000000 + 0x0000000000000200 + 0x0000000000000800 - 0x0000000000000A00);(o_19dc2c9dc1a7e40386c772a2f8b5ea1b < o_e06904106da6e97616d9296cccf5af2a / (0x0000000000000004 + 0x0000000000000202 + 0x0000000000000802 - 0x0000000000000A06)) & !!(o_19dc2c9dc1a7e40386c772a2f8b5ea1b < o_e06904106da6e97616d9296cccf5af2a / (0x0000000000000004 + 0x0000000000000202 + 0x0000000000000802 - 0x0000000000000A06));o_19dc2c9dc1a7e40386c772a2f8b5ea1b++){char o_e8e0592af2ab9a2a745f140065e6d619=o_cad3a86d6ef12add7bfadd24521a2886[o_19dc2c9dc1a7e40386c772a2f8b5ea1b];o_cad3a86d6ef12add7bfadd24521a2886[o_19dc2c9dc1a7e40386c772a2f8b5ea1b] = o_cad3a86d6ef12add7bfadd24521a2886[o_e06904106da6e97616d9296cccf5af2a - (0x0000000000000002 + 0x0000000000000201 + 0x0000000000000801 - 0x0000000000000A03) - o_19dc2c9dc1a7e40386c772a2f8b5ea1b];o_cad3a86d6ef12add7bfadd24521a2886[o_e06904106da6e97616d9296cccf5af2a - (0x0000000000000002 + 0x0000000000000201 + 0x0000000000000801 - 0x0000000000000A03) - o_19dc2c9dc1a7e40386c772a2f8b5ea1b] = o_e8e0592af2ab9a2a745f140065e6d619;};};


void rev1(char *str) {
    int len = strlen(str);
    for(int i=0,j=len-1; i<j; i++,j--) {
        char temp = str[i];
        str[i] = str[j];
        str[j] = temp;
    }
}

void rev2(const char *s1, char *s2, size_t len) {
    int i,j;
    for(i = len - 1, j = 0; i>=0; i--,j++){
        s2[j] = s1[i];
    }
    s2[j] = '\0';
}

void rev3(char *str) {
    char *end = str+strlen(str)-1;

    while (str < end) {
        char temp = *str;
        *str = *end;
        *end = temp;
        str++;
        end--;
    }
}

void rev3a(char *str) {
    for(char *end = str + strlen(str)-1; str < end; str++,end--) {
        char temp = *str;
        *str = *end;
        *end = temp;
    }
}

/*Recursion*/

void rev4(char *str, int length){
    if(length <= 1) return;

    char temp = str[0];
    str[0] = str[length-1];
    str[length-1] = temp;
    rev4(str+1, length-2);
}

char * rev5(const char *str){
    int length = strlen(str);
    char *result = malloc(length+1);

    for(int i=0; i<length; i++) {
        result[i] = str[length-1-i];
    }
    result[length] = 0;
    return result;
}

char * rev6(const char *str) {
    char *result = malloc(strlen(str)+1);

    strcpy(result, str);
    rev3(result);
    return result;
}

char * rev7(const char *str) {
    int length = strlen(str);
    char *result = malloc(length+1);
    memset(result, 0, length);
    int leftToSwap = length/2;

    while(leftToSwap) {
        int ridx = rand() % (length/2);
        if (result[ridx] == 0) {
            result[ridx] = str[length-1-ridx];
            result[length-1-ridx] = str[ridx];
            leftToSwap--;
        }
    }
    result[length] = 0;
    return result;
}


int main(int argc, char **argv) {
    char *str1 = "Hello Earth!! How are you?";
    char str2[] = "Think Divergently";
    char newstring[500];
    printf("Hey Everyone!!\n");
    printf("%s\n",str1);
    printf("%s\n",str2);
    printf("Print a backslash \\ \n");
    printf("%s has length %d bytes\n", str1, get_string_length(str1));
    printf("%s has length %lu bytes\n", str1, strlen(str1));
    strcpy(newstring, str1); 

    rev0(newstring);
    printf("r0\t%s\n", newstring);

    rev0a(newstring);
    printf("r0a\t%s\n", newstring);

    rev1(newstring);
    printf("r1\t%s\n", newstring);

    char tmpstring[500];
    rev2(newstring, tmpstring, strlen(newstring));
    printf("r2\t%s\n", tmpstring);

    rev3(newstring);
    printf("r3\t%s\n", newstring);

    rev3a(newstring);
    printf("r3a\t%s\n", newstring);

    rev4(newstring, strlen(newstring));
    printf("r4\t%s\n", newstring);

    char *rev = rev5(newstring);
    printf("r5\t%s\n", rev);
    free(rev);

    rev = rev6(newstring);
    printf("r6\t%s\n", rev);
    free(rev);

    rev = rev7(newstring);
    printf("r7\t%s\n", rev);
    free(rev);

}




