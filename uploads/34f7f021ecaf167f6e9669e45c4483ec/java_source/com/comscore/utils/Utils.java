/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.utils;

import com.comscore.utils.Base64Coder;
import com.comscore.utils.CSLog;
import com.comscore.utils.Constants;
import java.security.Key;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.PublicKey;
import java.security.spec.KeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;

public class Utils {
    public static List<String> arrayOfStrings(List object) {
        ArrayList<String> arrayList = new ArrayList<String>();
        if (object != null) {
            object = object.iterator();
            while (object.hasNext()) {
                Object e2 = object.next();
                if (e2 == null) continue;
                arrayList.add(e2.toString());
            }
        }
        return arrayList;
    }

    public static String encrypt(String string2) {
        Object object = new X509EncodedKeySpec(Constants.RSA_PUBLIC_KEY);
        object = KeyFactory.getInstance("RSA").generatePublic((KeySpec)object);
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1PADDING");
        cipher.init(1, (Key)object);
        object = new String(Base64Coder.encode(cipher.doFinal(string2.getBytes())));
        CSLog.d(Utils.class, "encrypt(" + string2 + ")=" + (String)object);
        return object;
    }

    public static boolean getBoolean(String string2) {
        return Utils.getBoolean(string2, false);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean getBoolean(String string2, boolean bl) {
        boolean bl2 = bl;
        if (string2 == null) return bl2;
        if (string2.equalsIgnoreCase("yes")) return true;
        if (string2.equalsIgnoreCase("true")) {
            return true;
        }
        if (string2.equalsIgnoreCase("no")) return false;
        bl2 = bl;
        if (!string2.equalsIgnoreCase("false")) return bl2;
        return false;
    }

    public static int getInteger(String string2) {
        return Utils.getInteger(string2, 0);
    }

    public static int getInteger(String string2, int n2) {
        try {
            int n3 = Integer.parseInt(string2);
            return n3;
        }
        catch (NumberFormatException var0_1) {
            return n2;
        }
    }

    public static long getLong(String string2) {
        return Utils.getLong(string2, 0);
    }

    public static long getLong(String string2, long l2) {
        try {
            long l3 = Long.parseLong(string2);
            return l3;
        }
        catch (NumberFormatException var0_1) {
            return l2;
        }
    }

    public static boolean isEmpty(String string2) {
        if (string2 == null || string2.length() == 0) {
            return true;
        }
        return false;
    }

    public static boolean isNotEmpty(String string2) {
        if (string2 != null && string2.length() > 0) {
            return true;
        }
        return false;
    }

    public static HashMap<String, String> mapOfStrings(Map map) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        if (map != null) {
            for (Object k2 : map.keySet()) {
                String string2;
                if (k2 == null || map.get(k2) == null || (string2 = k2.toString()).length() <= 0) continue;
                hashMap.put(string2, map.get(k2).toString());
            }
        }
        return hashMap;
    }

    public static String md5(String object) {
        object = object.getBytes();
        Object object2 = MessageDigest.getInstance("MD5");
        object2.reset();
        object2.update((byte[])object);
        object = object2.digest();
        object2 = new StringBuffer();
        int n2 = 0;
        do {
            if (n2 >= object.length) break;
            String string2 = Integer.toHexString(object[n2] & 255);
            if (string2.length() == 1) {
                object2.append('0');
            }
            object2.append(string2);
            ++n2;
        } while (true);
        try {
            object = object2 + "";
            return object;
        }
        catch (Exception var0_1) {
            return null;
        }
    }
}

