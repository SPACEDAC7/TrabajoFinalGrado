/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.preference.PreferenceManager
 *  android.util.Base64
 */
package com.buzzfeed.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Base64;
import com.buzzfeed.toolkit.util.LogUtil;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class AESCryptUtils {
    private static final String AES_MODE = "AES/CBC/PKCS7Padding";
    private static final String CHARSET = "UTF-8";
    private static final String SETTINGS_KEY_SECRET_KEY = "secretKey";
    private static final String TAG = "AESCrypt";
    private static final byte[] ivBytes = new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    private AESCryptUtils() {
    }

    public static String decrypt(String string2, Context context) throws GeneralSecurityException {
        if (string2 != null && !string2.isEmpty()) {
            return AESCryptUtils.decrypt(new SecretKeySpec(AESCryptUtils.getSecretKey(context).getEncoded(), "AES"), string2);
        }
        return null;
    }

    public static String decrypt(SecretKeySpec object, String arrby) throws GeneralSecurityException {
        try {
            arrby = Base64.decode((String)arrby, (int)2);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(2, (Key)object, new IvParameterSpec(ivBytes));
            object = new String(cipher.doFinal(arrby), "UTF-8");
            return object;
        }
        catch (UnsupportedEncodingException var0_1) {
            LogUtil.e("AESCrypt", "UnsupportedEncodingException ", var0_1);
            throw new GeneralSecurityException(var0_1);
        }
    }

    public static String encrypt(String string2, Context context) throws GeneralSecurityException {
        return AESCryptUtils.encrypt(new SecretKeySpec(AESCryptUtils.getSecretKey(context).getEncoded(), "AES"), string2);
    }

    public static String encrypt(SecretKeySpec object, String string2) throws GeneralSecurityException {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(1, (Key)object, new IvParameterSpec(ivBytes));
            object = Base64.encodeToString((byte[])cipher.doFinal(string2.getBytes("UTF-8")), (int)2);
            return object;
        }
        catch (UnsupportedEncodingException var0_1) {
            LogUtil.e("AESCrypt", "UnsupportedEncodingException ", var0_1);
            throw new GeneralSecurityException(var0_1);
        }
    }

    public static SecretKey generateKey() {
        Serializable serializable = new SecureRandom();
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(256, (SecureRandom)serializable);
            serializable = keyGenerator.generateKey();
            return serializable;
        }
        catch (NoSuchAlgorithmException var0_1) {
            LogUtil.e("AESCrypt", "Error generating secret key", var0_1);
            return null;
        }
    }

    public static SecretKey getSecretKey(Context context) {
        Object object = (context = PreferenceManager.getDefaultSharedPreferences((Context)context)).getString("secretKey", null);
        if (object == null || object.isEmpty()) {
            object = AESCryptUtils.generateKey();
            String string2 = Base64.encodeToString((byte[])object.getEncoded(), (int)0);
            context.edit().putString("secretKey", string2).apply();
            return object;
        }
        return new SecretKeySpec(Base64.decode((String)object, (int)0), "AES");
    }
}

