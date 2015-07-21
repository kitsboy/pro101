#include <stdio.h>
#include <unistd.h>

int main(int argc, char **argv)
{
    int number;
    number = 1;
    while ( number <= 10 ) {
        fprintf(stderr, "%d\n", number++);
    }
    printf("\n");
    return 0;
}
