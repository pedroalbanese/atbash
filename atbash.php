<?php
function atbash($text) {
    $alphabet = "abcdefghijklmnopqrstuvwxyz";
    $reverseAlphabet = strrev($alphabet);
    $result = "";
    for ($i = 0; $i < strlen($text); $i++) {
        $char = $text[$i];
        $lowerChar = strtolower($char);
        $isUpper = ($char !== $lowerChar);
        $index = strpos($alphabet, $lowerChar);
        if ($index !== false) {
            $newChar = $reverseAlphabet[$index];
            if ($isUpper) {
                $newChar = strtoupper($newChar);
            }
            $result .= $newChar;
        } else {
            $result .= $char;
        }
    }
    return $result;
}
