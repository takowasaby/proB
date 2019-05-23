#include <stdio.h>

int main(int argc, char *argv[]) {
    if (argc > 2) {
        sprintf(argv[argc - 2], "%d", atoi(argv[argc - 2]) + atoi(argv[argc - 1]));
        main(--argc, argv);
    }
    else {
        printf("%d\n", atoi(argv[1]));
        return 0;
    }
}
