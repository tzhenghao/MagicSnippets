<?php
// Author: Zheng Hao Tan
// Email: tanzhao@umich.edu
// This file is used for testing the pbkdf2 password generation functions.

$iterations = 2048;

$password = "12345678901234567890123456789012";
// Generate a random IV using mcrypt_create_iv(),
// openssl_random_pseudo_bytes() or another suitable source of randomness
$salt = hex2bin("78578e5a5d63cb06");
$salt = hex2bin("000000000535");
$salt = ("1333");

echo "authKey\n";
$hash = hash_pbkdf2("sha256", $password, $salt, $iterations, 64);
echo $hash;

echo "\n";

echo "tagKey\n";

$password = "22222222222222222222222222222222";
$hash = hash_pbkdf2("sha256", $password, $salt, $iterations, 64);
echo $hash;
echo "\n";

echo "dataKey\n";

$password = "33333333333333333333333333333333";
$hash = hash_pbkdf2("sha256", $password, $salt, $iterations, 64);
echo $hash;
echo "\n";

$salt = hex2bin("78578e5a5d63cb06");
$password = "passwordpassword";
$hash = hash_pbkdf2("sha256", $password, $salt, $iterations, 64);
echo $hash;
echo "\n";
?>
