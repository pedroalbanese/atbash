import sys

def atbash(c):
    if c.isalpha():
        if c.islower():
            return chr(ord('a') + ord('z') - ord(c))
        else:
            return chr(ord('A') + ord('Z') - ord(c))
    return c

def main():
    while True:
        c = sys.stdin.read(1)
        if not c:
            break
        sys.stdout.write(atbash(c))

if __name__ == '__main__':
    main()
