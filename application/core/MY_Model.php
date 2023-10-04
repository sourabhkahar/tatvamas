<?php

class MY_Model extends CI_Model {

    var $encrypted;
    var $keySize = 128;
    var $iterationCount = 1000;

    public function encyrpt($salt, $iv, $password, $text) {
        $salt1 = hex2bin($salt);
        $IVbytes = hex2bin($iv);
        $hash = openssl_pbkdf2($password, $salt1, $this->keySize, $this->iterationCount, 'sha1');
        $encrypted = openssl_encrypt($text, 'AES-128-CBC', $hash, OPENSSL_RAW_DATA, substr($IVbytes, 0, ($this->keySize / 8)));
        return base64_encode($encrypted);
    }

    public function decrypt($salt, $iv, $password, $text) {
        $salt1 = hex2bin($salt);
        $IVbytes = hex2bin($iv);
        $hash = openssl_pbkdf2($password, $salt1, $this->keySize, $this->iterationCount, 'sha1');
        $decrypted = openssl_decrypt(base64_decode($text), 'AES-128-CBC', $hash, OPENSSL_RAW_DATA, substr($IVbytes, 0, ($this->keySize / 8)));
        return $decrypted;
    }

    public function generateKey16Bit() {
        return bin2hex(openssl_random_pseudo_bytes(16));
    }

    public function generateKey32Bit() {
        return bin2hex(openssl_random_pseudo_bytes(32));
    }

    public function generatePasswordKey($key) {
        return bin2hex($key);
    }

    public function displayDayMonthYearString($string) {
        $result = "";
        $yearMonthDay = explode(",", $string);
        if ($yearMonthDay[0] > 0) {
            $result = $yearMonthDay[0] > 1 ? $yearMonthDay[0] . " Years" : $yearMonthDay[0] . "Year";
        } else if ($yearMonthDay[1] > 0) {
            $result = $yearMonthDay[1] > 1 ? $yearMonthDay[1] . " Months" : $yearMonthDay[1] . "Month";
        } else {
            $result = $yearMonthDay[2] > 1 ? $yearMonthDay[2] . " Days" : $yearMonthDay[2] . "Day";
        }
        return $result;
    }

}
