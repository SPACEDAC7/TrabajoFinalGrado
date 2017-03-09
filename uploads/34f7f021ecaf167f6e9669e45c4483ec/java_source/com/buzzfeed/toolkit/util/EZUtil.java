/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.AssetManager
 *  android.net.Uri
 *  android.os.BadParcelableException
 *  android.webkit.URLUtil
 */
package com.buzzfeed.toolkit.util;

import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.BadParcelableException;
import android.support.annotation.Nullable;
import android.webkit.URLUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EZUtil {
    private static final String TAG = LogUtil.makeLogTag(EZUtil.class);

    public static <T> T checkNotNull(T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        return t2;
    }

    public static <T> T checkNotNull(T t2, String string2) {
        if (t2 == null) {
            throw new NullPointerException(string2);
        }
        return t2;
    }

    public static String ellipsize(String string2, int n2, int n3) {
        if (n2 < 3) {
            throw new IllegalArgumentException("maxCharacters must be >= 3");
        }
        if (n3 > n2 - 3) {
            throw new IllegalArgumentException("charactersAfterEllipsis must be <= maxCharacters - 3");
        }
        if (string2 == null || string2.length() < n2) {
            return string2;
        }
        return string2.substring(0, n2 - 3 - n3) + "..." + string2.substring(string2.length() - n3);
    }

    public static String encodeURL(String string2) {
        try {
            String string3 = URLEncoder.encode(string2, "UTF-8");
            return string3;
        }
        catch (UnsupportedEncodingException var1_2) {
            return string2;
        }
    }

    public static boolean getBooleanExtra(Intent intent, String string2, boolean bl) {
        try {
            boolean bl2 = intent.getBooleanExtra(string2, bl);
            return bl2;
        }
        catch (BadParcelableException var0_1) {
            LogUtil.e(TAG, "Error getting boolean extra from intent; name=" + string2, (Throwable)var0_1);
            return bl;
        }
    }

    public static String getCenterCroppedImageUrl(String string2, int n2, int n3, float f2) {
        return EZUtil.getCenterCroppedImageUrl(string2, n2, n3, Math.round((float)n3 * f2));
    }

    public static String getCenterCroppedImageUrl(String charSequence, int n2, int n3, int n4) {
        charSequence = new StringBuilder((String)charSequence);
        charSequence.append("?output-format=webp&output-quality=88").append("&downsize=").append(n2).append(":").append("*").append("&crop=").append(n3).append(":").append(n4).append(";center,center");
        return charSequence.toString();
    }

    public static String getResizedImageUrl(String charSequence, int n2) {
        charSequence = new StringBuilder((String)charSequence);
        charSequence.append("?output-format=webp&output-quality=88").append("&downsize=").append(n2).append(":").append("*");
        return charSequence.toString();
    }

    public static String getStringExtra(Intent object, String string2) {
        try {
            object = object.getStringExtra(string2);
            return object;
        }
        catch (BadParcelableException var0_1) {
            LogUtil.e(TAG, "Error getting string extra from intent; name=" + string2, (Throwable)var0_1);
            return null;
        }
    }

    public static String getTopCroppedImageUrl(String string2, int n2, int n3, float f2) {
        return EZUtil.getTopCroppedImageUrl(string2, n2, n3, Math.round((float)n3 * f2));
    }

    public static String getTopCroppedImageUrl(String charSequence, int n2, int n3, int n4) {
        charSequence = new StringBuilder((String)charSequence);
        charSequence.append("?output-format=webp&output-quality=88").append("&downsize=").append(n2).append(":").append("*").append("&crop=").append(n3).append(":").append(n4).append(";center,top");
        return charSequence.toString();
    }

    public static boolean isBuzzFeedUrl(String string2) {
        if (!URLUtil.isValidUrl((String)string2)) {
            return false;
        }
        return Uri.parse((String)string2).getAuthority().endsWith("buzzfeed.com");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static /* varargs */ boolean isNull(Object ... arrobject) {
        boolean bl = false;
        int n2 = arrobject.length;
        int n3 = 0;
        do {
            boolean bl2 = bl;
            if (n3 >= n2) return bl2;
            if (arrobject[n3] == null) {
                return true;
            }
            ++n3;
        } while (true);
    }

    public static String join(List<String> object, String string2) {
        if (object == null || object.size() == 0 || string2 == null) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        object = object.iterator();
        while (object.hasNext()) {
            stringBuilder.append((String)object.next()).append(string2);
        }
        return stringBuilder.toString().substring(0, stringBuilder.length() - string2.length());
    }

    public static String nullToEmpty(@Nullable String string2) {
        String string3 = string2;
        if (string2 == null) {
            string3 = "";
        }
        return string3;
    }

    public static String readStringFromAsset(Context object, String arrby) throws IOException {
        object = object.getAssets().open((String)arrby);
        arrby = new byte[object.available()];
        object.read(arrby);
        object.close();
        return new String(arrby, "UTF-8");
    }

    public static int stringToInt(String string2) {
        try {
            int n2 = Integer.valueOf(string2);
            return n2;
        }
        catch (Exception var0_1) {
            LogUtil.d(TAG, "Unable to convert string to int: " + var0_1.getMessage());
            return 0;
        }
    }

    public static String trimWhitespace(String object) {
        object = Pattern.compile("\\s+").matcher((CharSequence)object);
        StringBuffer stringBuffer = new StringBuffer();
        boolean bl = object.find();
        while (bl) {
            object.appendReplacement(stringBuffer, " ");
            bl = object.find();
        }
        object.appendTail(stringBuffer);
        if (stringBuffer.length() > 0 && stringBuffer.charAt(0) == ' ') {
            stringBuffer.deleteCharAt(0);
        }
        if (stringBuffer.length() > 0 && stringBuffer.charAt(stringBuffer.length() - 1) == ' ') {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }

    public static void write(byte[] arrby, File object) throws IOException {
        object = new BufferedOutputStream(new FileOutputStream((File)object));
        object.write(arrby);
        object.flush();
        object.close();
    }
}

