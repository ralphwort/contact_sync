<?php
class Funambol_auth {

    private static $key = "Omnia Gallia in tres par";

    public static function encrypt($data) {
        $size = mcrypt_get_block_size('des', 'ecb');
        $data = self::pkcs5_pad($data, $size);
        $mcrypt_module = mcrypt_module_open(MCRYPT_TRIPLEDES, '', 'ecb', '');
        $mcrypt_iv     = mcrypt_create_iv(mcrypt_enc_get_iv_size($mcrypt_module), MCRYPT_RAND);
        $key_size      = mcrypt_enc_get_key_size($mcrypt_module);

        mcrypt_generic_init($mcrypt_module,self::$key,$mcrypt_iv);
        $encrypted = base64_encode(mcrypt_generic($mcrypt_module, $data));
        mcrypt_module_close($mcrypt_module);

        return $encrypted;
    }

    public static function decrypt($data) {
        $mcrypt_module = mcrypt_module_open(MCRYPT_TRIPLEDES, '', 'ecb', '');
        $mcrypt_iv     = mcrypt_create_iv(mcrypt_enc_get_iv_size($mcrypt_module), MCRYPT_RAND);
        $decrypted     = mcrypt_decrypt(MCRYPT_TRIPLEDES, self::$key, base64_decode($data), 'ecb', $mcrypt_iv);
        mcrypt_module_close($mcrypt_module);

        return self::pkcs5_unpad($decrypted);
    }

    private static function pkcs5_pad($text, $blocksize) {
        $pad = $blocksize - (strlen($text) % $blocksize);
        return $text . str_repeat(chr($pad), $pad);
    }

    private static function pkcs5_unpad($text) {
        $pad = ord($text{strlen($text)-1});
        if ($pad > strlen($text)) return false;
        if (strspn($text, chr($pad), strlen($text) - $pad) != $pad) return false;
        return substr($text, 0, -1 * $pad);
    }
}

$funambol_auth = new Funambol_auth();
echo $funambol_auth->decrypt($argv[1]);

?>
