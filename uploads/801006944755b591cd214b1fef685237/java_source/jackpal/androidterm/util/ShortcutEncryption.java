/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.preference.PreferenceManager
 */
package jackpal.androidterm.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import jackpal.androidterm.compat.Base64;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class ShortcutEncryption {
    public static final int BASE64_DFLAGS = 0;
    public static final int BASE64_EFLAGS = 3;
    private static final Pattern COLON = Pattern.compile(":");
    public static final String ENC_ALGORITHM = "AES";
    public static final int ENC_BLOCKSIZE = 16;
    public static final String ENC_SYSTEM = "AES/CBC/PKCS5Padding";
    public static final int KEYLEN = 128;
    public static final String MAC_ALGORITHM = "HmacSHA256";
    private static final String SHORTCUT_KEYS_PREF = "shortcut_keys";

    private ShortcutEncryption() {
        throw new UnsupportedOperationException();
    }

    private static String computeMac(String string2, SecretKey secretKey) throws GeneralSecurityException {
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(secretKey);
        return ShortcutEncryption.encodeToBase64(mac.doFinal(string2.getBytes()));
    }

    private static byte[] decodeBase64(String string2) {
        return Base64.decode(string2, 0);
    }

    public static String decrypt(String arrby, Keys object) throws GeneralSecurityException {
        Object object2 = Cipher.getInstance("AES/CBC/PKCS5Padding");
        String[] arrstring = COLON.split((CharSequence)arrby);
        if (arrstring.length != 3) {
            throw new GeneralSecurityException("Invalid encrypted data!");
        }
        arrby = arrstring[0];
        String string2 = arrstring[1];
        arrstring = arrstring[2];
        if (!ShortcutEncryption.computeMac(string2 + ":" + (String)arrstring, object.getMacKey()).equals(arrby)) {
            throw new GeneralSecurityException("Incorrect MAC!");
        }
        arrby = ShortcutEncryption.decodeBase64(string2);
        object2.init(2, (Key)object.getEncKey(), new IvParameterSpec(arrby));
        arrby = object2.doFinal(ShortcutEncryption.decodeBase64((String)arrstring));
        object = Charset.defaultCharset().newDecoder();
        object.onMalformedInput(CodingErrorAction.REPORT);
        object.onUnmappableCharacter(CodingErrorAction.REPORT);
        object2 = CharBuffer.allocate(arrby.length);
        if (object.decode(ByteBuffer.wrap(arrby), (CharBuffer)object2, true).isError()) {
            throw new GeneralSecurityException("Corrupt decrypted data!");
        }
        object.flush((CharBuffer)object2);
        return object2.flip().toString();
    }

    private static String encodeToBase64(byte[] arrby) {
        return Base64.encodeToString(arrby, 3);
    }

    public static String encrypt(String string2, Keys object) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        Object object2 = new SecureRandom();
        byte[] arrby = new byte[16];
        object2.nextBytes(arrby);
        object2 = ShortcutEncryption.encodeToBase64(arrby);
        cipher.init(1, (Key)object.getEncKey(), new IvParameterSpec(arrby));
        string2 = ShortcutEncryption.encodeToBase64(cipher.doFinal(string2.getBytes()));
        string2 = (String)object2 + ":" + string2;
        object = ShortcutEncryption.computeMac(string2, object.getMacKey());
        return (String)object + ":" + string2;
    }

    public static Keys generateKeys() throws GeneralSecurityException {
        Object object = KeyGenerator.getInstance("AES");
        object.init(128);
        object = object.generateKey();
        KeyGenerator keyGenerator = KeyGenerator.getInstance("HmacSHA256");
        keyGenerator.init(128);
        return new Keys((SecretKey)object, keyGenerator.generateKey());
    }

    public static Keys getKeys(Context object) {
        if ((object = PreferenceManager.getDefaultSharedPreferences((Context)object).getString("shortcut_keys", null)) == null) {
            return null;
        }
        try {
            object = Keys.decode((String)object);
            return object;
        }
        catch (IllegalArgumentException var0_1) {
            return null;
        }
    }

    public static void saveKeys(Context context, Keys keys) {
        context = PreferenceManager.getDefaultSharedPreferences((Context)context).edit();
        context.putString("shortcut_keys", keys.encode());
        context.commit();
    }

    public static final class Keys {
        private final SecretKey encKey;
        private final SecretKey macKey;

        public Keys(SecretKey secretKey, SecretKey secretKey2) {
            this.encKey = secretKey;
            this.macKey = secretKey2;
        }

        public static Keys decode(String arrstring) {
            arrstring = COLON.split((CharSequence)arrstring);
            if (arrstring.length != 2) {
                throw new IllegalArgumentException("Invalid encoded keys!");
            }
            return new Keys(new SecretKeySpec(ShortcutEncryption.decodeBase64(arrstring[0]), "AES"), new SecretKeySpec(ShortcutEncryption.decodeBase64(arrstring[1]), "HmacSHA256"));
        }

        public String encode() {
            return ShortcutEncryption.encodeToBase64(this.encKey.getEncoded()) + ":" + ShortcutEncryption.encodeToBase64(this.macKey.getEncoded());
        }

        public SecretKey getEncKey() {
            return this.encKey;
        }

        public SecretKey getMacKey() {
            return this.macKey;
        }
    }

}

