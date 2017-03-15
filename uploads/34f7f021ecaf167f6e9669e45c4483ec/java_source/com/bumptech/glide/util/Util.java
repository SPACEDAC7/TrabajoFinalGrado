/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Looper
 */
package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

public final class Util {
    private static final char[] HEX_CHAR_ARRAY = "0123456789abcdef".toCharArray();
    private static final char[] SHA_1_CHARS;
    private static final char[] SHA_256_CHARS;

    static {
        SHA_256_CHARS = new char[64];
        SHA_1_CHARS = new char[40];
    }

    private Util() {
    }

    public static void assertBackgroundThread() {
        if (!Util.isOnBackgroundThread()) {
            throw new IllegalArgumentException("YOu must call this method on a background thread");
        }
    }

    public static void assertMainThread() {
        if (!Util.isOnMainThread()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    private static String bytesToHex(byte[] arrby, char[] arrc) {
        for (int i2 = 0; i2 < arrby.length; ++i2) {
            int n2 = arrby[i2] & 255;
            arrc[i2 * 2] = HEX_CHAR_ARRAY[n2 >>> 4];
            arrc[i2 * 2 + 1] = HEX_CHAR_ARRAY[n2 & 15];
        }
        return new String(arrc);
    }

    public static <T> Queue<T> createQueue(int n2) {
        return new ArrayDeque(n2);
    }

    public static int getBitmapByteSize(int n2, int n3, Bitmap.Config config) {
        return n2 * n3 * Util.getBytesPerPixel(config);
    }

    @TargetApi(value=19)
    public static int getBitmapByteSize(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                int n2 = bitmap.getAllocationByteCount();
                return n2;
            }
            catch (NullPointerException var1_2) {
                // empty catch block
            }
        }
        return bitmap.getHeight() * bitmap.getRowBytes();
    }

    private static int getBytesPerPixel(Bitmap.Config config) {
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        switch (.$SwitchMap$android$graphics$Bitmap$Config[config2.ordinal()]) {
            default: {
                return 4;
            }
            case 1: {
                return 1;
            }
            case 2: 
            case 3: 
        }
        return 2;
    }

    @Deprecated
    public static int getSize(Bitmap bitmap) {
        return Util.getBitmapByteSize(bitmap);
    }

    public static <T> List<T> getSnapshot(Collection<T> object) {
        ArrayList arrayList = new ArrayList(object.size());
        object = object.iterator();
        while (object.hasNext()) {
            arrayList.add(object.next());
        }
        return arrayList;
    }

    public static boolean isOnBackgroundThread() {
        if (!Util.isOnMainThread()) {
            return true;
        }
        return false;
    }

    public static boolean isOnMainThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }

    private static boolean isValidDimension(int n2) {
        if (n2 > 0 || n2 == Integer.MIN_VALUE) {
            return true;
        }
        return false;
    }

    public static boolean isValidDimensions(int n2, int n3) {
        if (Util.isValidDimension(n2) && Util.isValidDimension(n3)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static String sha1BytesToHex(byte[] object) {
        char[] arrc = SHA_1_CHARS;
        synchronized (arrc) {
            return Util.bytesToHex((byte[])object, SHA_1_CHARS);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static String sha256BytesToHex(byte[] object) {
        char[] arrc = SHA_256_CHARS;
        synchronized (arrc) {
            return Util.bytesToHex((byte[])object, SHA_256_CHARS);
        }
    }

}

