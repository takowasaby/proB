#include <stdio.h>

int main(int argc, char *argv[]) {
    if (argc > 2) {
        sprintf(argv[argc - 2], "%c", (*(argv[argc - 2])) + (*(argv[argc - 1])) - 48);
        main(--argc, argv);
    }
    else {
        printf("%d\n", *(argv[1]) - 48);
        return 0;
    }
}
