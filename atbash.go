package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"unicode"
)

func main() {
		data, _ := ioutil.ReadAll(os.Stdin)
		fmt.Print(atbash(string(data)))
}

func atbash(s string) string {
	res := ""
	for _, c := range s {
		var decodedChar rune
		if c < rune('a') && c < rune('A') || c > rune('z') && c > rune('Z') {
			decodedChar = c
		} else {
			if IsUpper(string(c)) {
				diff := c - 'A'
				decodedChar = 'Z' - diff
			} else {
				diff := c - 'a'
				decodedChar = 'z' - diff
			}
		}
		res = fmt.Sprintf("%s%c", res, decodedChar)
	}
	return res
}

func IsUpper(s string) bool {
	for _, r := range s {
		if !unicode.IsUpper(r) && unicode.IsLetter(r) {
			return false
		}
	}
	return true
}