/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.ServiceConnection
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.IBinder
 *  android.os.Looper
 *  android.provider.Settings
 *  android.provider.Settings$Secure
 */
package com.comscore.android.id;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.IBinder;
import android.os.Looper;
import android.provider.Settings;
import com.comscore.android.id.API4;
import com.comscore.android.id.API9;
import com.comscore.android.id.DeviceId;
import com.comscore.android.id.a;
import com.comscore.android.id.b;
import com.comscore.android.id.c;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class IdHelperAndroid {
    public static final String[] INVALID_ID_VALUES = new String[]{"0123456789ABCDEF", "0123456789abcdef", "9774d56d682e549c", "9774D56D682E549C", "unknown", "UNKNOWN", "android_id", "ANDROID_ID"};
    public static final String NO_ID_AVAILABLE = "none";
    private static final String a;
    private static final String b;
    private static boolean c;
    private static final boolean d;

    static {
        c = false;
        a = "com.google.android.gms";
        b = "com.google.android.gms.ads.identifier.service.START";
        d = false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static String a(Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        String string2 = "";
        b b2 = new b(null);
        Intent intent = new Intent(b);
        intent.setPackage(a);
        if (!context.bindService(intent, (ServiceConnection)b2, 1)) return string2;
        try {
            string2 = new c(b2.getBinder()).getId();
        }
        catch (Exception exception) {
            return "";
        }
        finally {
            context.unbindService((ServiceConnection)b2);
        }
        return string2;
    }

    private static boolean b(Context context) {
        if (Build.VERSION.SDK_INT > 4) {
            if (d) {
                return true;
            }
            return API4.isPackageInstalledFromGooglePlayStore(context);
        }
        return false;
    }

    public static boolean checkAndroidId(String string2) {
        for (int i2 = 0; i2 < INVALID_ID_VALUES.length; ++i2) {
            if (!INVALID_ID_VALUES[i2].equals(string2)) continue;
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean checkAndroidSerial(String string2) {
        if (string2 == null) return false;
        for (int i2 = 0; i2 < INVALID_ID_VALUES.length; ++i2) {
            if (INVALID_ID_VALUES[i2].equals(string2)) return false;
            {
                continue;
            }
        }
        if (string2.length() > 3 && !string2.substring(0, 3).equals("***") && !string2.substring(0, 3).equals("000")) return true;
        return false;
    }

    public static final DeviceId getAdvertisingDeviceId(Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        if (IdHelperAndroid.b(context)) {
            return IdHelperAndroid.getGooglePlayAdvertisingDeviceId(context);
        }
        return IdHelperAndroid.getDeviceId(context);
    }

    public static final DeviceId getAndroidId(Context object) {
        if (Integer.valueOf(Build.VERSION.SDK_INT) >= 3 && (object = Settings.Secure.getString((ContentResolver)object.getContentResolver(), (String)"android_id")) != null && object.length() > 0) {
            return new DeviceId("AndroidId", (String)object, 7, 2);
        }
        return null;
    }

    public static final DeviceId getAndroidSerial() {
        if (Integer.valueOf(Build.VERSION.SDK_INT) >= 9) {
            return new DeviceId("AndroidSerial", API9.getAndroidSerial(), 3, 1);
        }
        return null;
    }

    public static DeviceId getDeviceId(Context object) {
        DeviceId deviceId;
        Object object2 = deviceId = IdHelperAndroid.getAndroidSerial();
        if (!IdHelperAndroid.checkAndroidSerial(deviceId.getId())) {
            object2 = object = IdHelperAndroid.getAndroidId((Context)object);
            if (!IdHelperAndroid.checkAndroidId(object.getId())) {
                object2 = null;
            }
        }
        return object2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static final DeviceId getGooglePlayAdvertisingDeviceId(Context object) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        boolean bl = IdHelperAndroid.isGooglePlayServicesAvailable((Context)object);
        if (!bl) return null;
        if (IdHelperAndroid.isAdvertisingIdEnabled((Context)object)) {
            object = IdHelperAndroid.a((Context)object);
            do {
                return new DeviceId((String)object);
                break;
            } while (true);
        }
        object = "none";
        return new DeviceId((String)object);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static boolean isAdvertisingIdEnabled(Context context) {
        boolean bl = false;
        boolean bl2 = false;
        boolean bl3 = false;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        if (c) {
            return bl3;
        }
        b b2 = new b(null);
        Intent intent = new Intent(b);
        intent.setPackage(a);
        bl3 = bl2;
        if (context.bindService(intent, (ServiceConnection)b2, 1)) {
            try {
                boolean bl4 = new c(b2.getBinder()).isLimitAdTrackingEnabled(true);
                bl3 = bl;
                if (!bl4) {
                    bl3 = true;
                }
            }
            catch (Exception var6_6) {
                bl3 = bl2;
            }
        }
        bl = bl3;
        if (bl3) return bl;
        c = true;
        return bl3;
        finally {
            context.unbindService((ServiceConnection)b2);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static boolean isGooglePlayServicesAvailable(Context context) {
        b b2;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        if (Build.VERSION.SDK_INT <= 8) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            b2 = new b(null);
        }
        catch (Exception var0_1) {
            return false;
        }
        Intent intent = new Intent(b);
        intent.setPackage(a);
        if (!context.bindService(intent, (ServiceConnection)b2, 1)) return false;
        context.unbindService((ServiceConnection)b2);
        return true;
    }

    public static String md5(String arrby) {
        StringBuilder stringBuilder;
        try {
            arrby = MessageDigest.getInstance("MD5").digest(arrby.getBytes("UTF-8"));
            stringBuilder = new StringBuilder(arrby.length * 2);
        }
        catch (NoSuchAlgorithmException var0_1) {
            throw new RuntimeException("Huh, MD5 should be supported?", var0_1);
        }
        catch (UnsupportedEncodingException var0_2) {
            throw new RuntimeException("Huh, UTF-8 should be supported?", var0_2);
        }
        int n2 = arrby.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            int n3 = arrby[i2] & 255;
            if (n3 < 16) {
                stringBuilder.append('0');
            }
            stringBuilder.append(Integer.toHexString(n3));
        }
        return stringBuilder.toString();
    }
}

