#include <stdio.h>
#include <stdlib.h>

extern int variable;


int
main(void)
{
    printf("variable: %d\n", variable);
    return EXIT_SUCCESS;
}
