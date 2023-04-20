#include <stdio.h>
#include <ctype.h>

char atbash(char c) {
    if (isalpha(c)) {
        if (islower(c)) {
            return 'a' + 'z' - c;
        } else {
            return 'A' + 'Z' - c;
        }
    }
    return c;
}

int main() {
    int c;
    while ((c = getchar()) != EOF) {
        putchar(atbash(c));
    }
    return 0;
}