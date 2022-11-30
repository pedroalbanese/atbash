<?php
include 'atbash.php';
$text = "abcdefghijklmnopqrstuvwxyz";
$cipher = new AtbashCipher($text);
$cipherText = $cipher->encode($text);
$plainText = $cipher->decode($cipherText);

echo $cipherText . "<BR>";
echo $plainText;
?>