/*Modulus operations*/

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <assert.h>

#define ARR_LEN 5
#define BUFSIZE 40

int getmean(int *arr, int len){
    assert(len > 0);
    int sum=0;
    for(int i=0; i<len; i++){
        sum += arr[i];
    }
    return sum/len;
}


int main(){
    int val[ARR_LEN] = {0};
    char buf[BUFSIZE];
    int index = 0;
    
    while(true){
        /*get input*/
        printf("Type a number: ");
        if(fgets(buf, BUFSIZE, stdin) == NULL);

        /*store new int the array*/
        val[index] = atoi(buf);

        /*transition the index to the next element and loop back if neccessary*/
        index++;
        if(index >= ARR_LEN){
            index = 0;
        }

        /*o|p the arr and mean of its elements*/
        printf("[");
        for(int i=0; i < ARR_LEN; i++){
            printf("%i,", val[i]);
        }
        printf("] - mean = %i\n", getmean(val, ARR_LEN));
    }
}