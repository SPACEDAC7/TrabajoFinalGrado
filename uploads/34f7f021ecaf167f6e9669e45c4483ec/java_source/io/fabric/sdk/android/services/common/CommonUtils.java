/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.Activity
 *  android.app.ActivityManager
 *  android.app.ActivityManager$MemoryInfo
 *  android.app.ActivityManager$RunningAppProcessInfo
 *  android.content.BroadcastReceiver
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.content.SharedPreferences
 *  android.content.pm.ApplicationInfo
 *  android.content.res.Resources
 *  android.hardware.Sensor
 *  android.hardware.SensorManager
 *  android.net.ConnectivityManager
 *  android.net.NetworkInfo
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Debug
 *  android.os.IBinder
 *  android.os.StatFs
 *  android.provider.Settings
 *  android.provider.Settings$Secure
 *  android.text.TextUtils
 *  android.view.View
 *  android.view.inputmethod.InputMethodManager
 *  io.fabric.sdk.android.services.common.CommonUtils$1
 *  io.fabric.sdk.android.services.common.CommonUtils$Architecture
 */
package io.fabric.sdk.android.services.common;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.IBinder;
import android.os.StatFs;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;
import java.util.regex.Pattern;
import javax.crypto.Cipher;

/*
 * Exception performing whole class analysis ignored.
 */
public class CommonUtils {
    static final int BYTES_IN_A_GIGABYTE = 1073741824;
    static final int BYTES_IN_A_KILOBYTE = 1024;
    static final int BYTES_IN_A_MEGABYTE = 1048576;
    private static final String CLS_SHARED_PREFERENCES_NAME = "com.crashlytics.prefs";
    static final boolean CLS_TRACE_DEFAULT = false;
    static final String CLS_TRACE_PREFERENCE_NAME = "com.crashlytics.Trace";
    static final String CRASHLYTICS_BUILD_ID = "com.crashlytics.android.build_id";
    public static final int DEVICE_STATE_BETAOS = 8;
    public static final int DEVICE_STATE_COMPROMISEDLIBRARIES = 32;
    public static final int DEVICE_STATE_DEBUGGERATTACHED = 4;
    public static final int DEVICE_STATE_ISSIMULATOR = 1;
    public static final int DEVICE_STATE_JAILBROKEN = 2;
    public static final int DEVICE_STATE_VENDORINTERNAL = 16;
    static final String FABRIC_BUILD_ID = "io.fabric.android.build_id";
    public static final Comparator<File> FILE_MODIFIED_COMPARATOR;
    public static final String GOOGLE_SDK = "google_sdk";
    private static final char[] HEX_VALUES;
    private static final String LOG_PRIORITY_NAME_ASSERT = "A";
    private static final String LOG_PRIORITY_NAME_DEBUG = "D";
    private static final String LOG_PRIORITY_NAME_ERROR = "E";
    private static final String LOG_PRIORITY_NAME_INFO = "I";
    private static final String LOG_PRIORITY_NAME_UNKNOWN = "?";
    private static final String LOG_PRIORITY_NAME_VERBOSE = "V";
    private static final String LOG_PRIORITY_NAME_WARN = "W";
    public static final String MD5_INSTANCE = "MD5";
    public static final String SDK = "sdk";
    public static final String SHA1_INSTANCE = "SHA-1";
    private static final long UNCALCULATED_TOTAL_RAM = -1;
    private static Boolean clsTrace;
    private static long totalRamInBytes;

    static {
        clsTrace = null;
        HEX_VALUES = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        totalRamInBytes = -1;
        FILE_MODIFIED_COMPARATOR = new 1();
    }

    public CommonUtils() {
    }

    public static long calculateFreeRamInBytes(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager)context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    public static long calculateUsedDiskSpaceInBytes(String string2) {
        string2 = new StatFs(string2);
        long l2 = string2.getBlockSize();
        return l2 * (long)string2.getBlockCount() - l2 * (long)string2.getAvailableBlocks();
    }

    public static boolean canTryConnection(Context context) {
        if (!CommonUtils.checkPermission(context, "android.permission.ACCESS_NETWORK_STATE") || (context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo()) != null && context.isConnectedOrConnecting()) {
            return true;
        }
        return false;
    }

    public static boolean checkPermission(Context context, String string2) {
        if (context.checkCallingOrSelfPermission(string2) == 0) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void closeOrLog(Closeable closeable, String string2) {
        if (closeable == null) return;
        try {
            closeable.close();
            return;
        }
        catch (IOException var0_1) {
            Fabric.getLogger().e("Fabric", string2, (Throwable)var0_1);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void closeQuietly(Closeable closeable) {
        if (closeable == null) return;
        try {
            closeable.close();
            return;
        }
        catch (RuntimeException var0_1) {
            throw var0_1;
        }
        catch (Exception var0_2) {
            return;
        }
    }

    static long convertMemInfoToBytes(String string2, String string3, int n2) {
        return Long.parseLong(string2.split(string3)[0].trim()) * (long)n2;
    }

    public static void copyStream(InputStream inputStream, OutputStream outputStream, byte[] arrby) throws IOException {
        int n2;
        while ((n2 = inputStream.read(arrby)) != -1) {
            outputStream.write(arrby, 0, n2);
        }
    }

    @Deprecated
    public static Cipher createCipher(int n2, String string2) throws InvalidKeyException {
        throw new InvalidKeyException("This method is deprecated");
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static /* varargs */ String createInstanceIdFrom(String ... object) {
        if (object == null) return null;
        if (object.length == 0) {
            return null;
        }
        Object object2 = new ArrayList<String>();
        for (Object object3 : object) {
            if (object3 == null) continue;
            object2.add((String)object3.replace("-", "").toLowerCase(Locale.US));
        }
        Collections.sort(object2);
        object = new StringBuilder();
        object2 = object2.iterator();
        do {
            if (!object2.hasNext()) {
                if ((object = object.toString()).length() <= 0) return null;
                return CommonUtils.sha1((String)object);
            }
            object.append((String)object2.next());
        } while (true);
    }

    public static byte[] dehexify(String string2) {
        int n2 = string2.length();
        byte[] arrby = new byte[n2 / 2];
        for (int i2 = 0; i2 < n2; i2 += 2) {
            arrby[i2 / 2] = (byte)((Character.digit(string2.charAt(i2), 16) << 4) + Character.digit(string2.charAt(i2 + 1), 16));
        }
        return arrby;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static String extractFieldFromSystemFile(File var0, String var1_4) {
        block8 : {
            var2_5 = null;
            var4_7 = null;
            if (var0.exists() == false) return var2_5;
            var2_5 = null;
            var5_8 = null;
            var3_9 = new BufferedReader(new FileReader(var0), 1024);
            do {
                var5_8 = var3_9.readLine();
                var2_5 = var4_7;
                if (var5_8 == null) break block8;
            } while ((var2_5 = Pattern.compile("\\s*:\\s*").split(var5_8, 2)).length <= 1 || !var2_5[0].equals(var1_4));
            var2_5 = var2_5[1];
        }
        CommonUtils.closeOrLog((Closeable)var3_9, "Failed to close system file reader.");
        return var2_5;
        catch (Exception var3_10) {
            var1_4 = var5_8;
            ** GOTO lbl27
            catch (Throwable var0_3) {
                var2_5 = var3_9;
                ** GOTO lbl-1000
            }
            catch (Exception var2_6) {
                var1_4 = var3_9;
                var3_9 = var2_6;
            }
lbl27: // 2 sources:
            var2_5 = var1_4;
            try {
                Fabric.getLogger().e("Fabric", "Error parsing " + var0, (Throwable)var3_9);
            }
            catch (Throwable var0_1) lbl-1000: // 2 sources:
            {
                CommonUtils.closeOrLog((Closeable)var2_5, "Failed to close system file reader.");
                throw var0_2;
            }
            CommonUtils.closeOrLog((Closeable)var1_4, "Failed to close system file reader.");
            return null;
        }
    }

    @TargetApi(value=16)
    public static void finishAffinity(Activity activity, int n2) {
        if (activity == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
            return;
        }
        activity.setResult(n2);
        activity.finish();
    }

    @TargetApi(value=16)
    public static void finishAffinity(Context context, int n2) {
        if (context instanceof Activity) {
            CommonUtils.finishAffinity((Activity)context, n2);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void flushOrLog(Flushable flushable, String string2) {
        if (flushable == null) return;
        try {
            flushable.flush();
            return;
        }
        catch (IOException var0_1) {
            Fabric.getLogger().e("Fabric", string2, (Throwable)var0_1);
            return;
        }
    }

    public static String getAppIconHashOrNull(Context object) {
        Object object2;
        block6 : {
            Object object3 = null;
            object2 = null;
            object2 = object = object.getResources().openRawResource(CommonUtils.getAppIconResourceId((Context)object));
            object3 = object;
            String string2 = CommonUtils.sha1((InputStream)object);
            object2 = object;
            object3 = object;
            try {
                boolean bl = CommonUtils.isNullOrEmpty(string2);
                object2 = string2;
                if (!bl) break block6;
                object2 = null;
            }
            catch (Exception var0_1) {
                object3 = object2;
                try {
                    Fabric.getLogger().e("Fabric", "Could not calculate hash for app icon.", (Throwable)var0_1);
                }
                catch (Throwable var0_2) {
                    CommonUtils.closeOrLog((Closeable)object3, "Failed to close icon input stream.");
                    throw var0_2;
                }
                CommonUtils.closeOrLog((Closeable)object2, "Failed to close icon input stream.");
                return null;
            }
        }
        CommonUtils.closeOrLog((Closeable)object, "Failed to close icon input stream.");
        return object2;
    }

    public static int getAppIconResourceId(Context context) {
        return context.getApplicationContext().getApplicationInfo().icon;
    }

    public static ActivityManager.RunningAppProcessInfo getAppProcessInfo(String string2, Context context) {
        Object var2_3;
        Object object = ((ActivityManager)context.getSystemService("activity")).getRunningAppProcesses();
        context = var2_3 = null;
        if (object != null) {
            object = object.iterator();
            do {
                context = var2_3;
                if (!object.hasNext()) break;
                context = (ActivityManager.RunningAppProcessInfo)object.next();
            } while (!context.processName.equals(string2));
        }
        return context;
    }

    public static float getBatteryLevel(Context context) {
        context = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int n2 = context.getIntExtra("level", -1);
        int n3 = context.getIntExtra("scale", -1);
        return (float)n2 / (float)n3;
    }

    public static int getBatteryVelocity(Context context, boolean bl) {
        float f2 = CommonUtils.getBatteryLevel(context);
        if (!bl) {
            return 1;
        }
        if (bl && (double)f2 >= 99.0) {
            return 3;
        }
        if (bl && (double)f2 < 99.0) {
            return 2;
        }
        return 0;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean getBooleanResourceValue(Context context, String string2, boolean bl) {
        boolean bl2 = bl;
        if (context == null) return bl2;
        Resources resources = context.getResources();
        bl2 = bl;
        if (resources == null) return bl2;
        int n2 = CommonUtils.getResourcesIdentifier(context, string2, "bool");
        if (n2 > 0) {
            return resources.getBoolean(n2);
        }
        n2 = CommonUtils.getResourcesIdentifier(context, string2, "string");
        bl2 = bl;
        if (n2 <= 0) return bl2;
        return Boolean.parseBoolean(context.getString(n2));
    }

    public static int getCpuArchitectureInt() {
        return .getValue().ordinal();
    }

    public static int getDeviceState(Context context) {
        int n2 = 0;
        if (CommonUtils.isEmulator(context)) {
            n2 = false | true;
        }
        int n3 = n2;
        if (CommonUtils.isRooted(context)) {
            n3 = n2 | 2;
        }
        n2 = n3;
        if (CommonUtils.isDebuggerAttached()) {
            n2 = n3 | 4;
        }
        return n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean getProximitySensorEnabled(Context context) {
        if (CommonUtils.isEmulator(context) || ((SensorManager)context.getSystemService("sensor")).getDefaultSensor(8) == null) {
            return false;
        }
        return true;
    }

    public static String getResourcePackageName(Context context) {
        int n2 = context.getApplicationContext().getApplicationInfo().icon;
        if (n2 > 0) {
            return context.getResources().getResourcePackageName(n2);
        }
        return context.getPackageName();
    }

    public static int getResourcesIdentifier(Context context, String string2, String string3) {
        return context.getResources().getIdentifier(string2, string3, CommonUtils.getResourcePackageName(context));
    }

    public static SharedPreferences getSharedPrefs(Context context) {
        return context.getSharedPreferences("com.crashlytics.prefs", 0);
    }

    public static String getStringsFileValue(Context context, String string2) {
        int n2 = CommonUtils.getResourcesIdentifier(context, string2, "string");
        if (n2 > 0) {
            return context.getString(n2);
        }
        return "";
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static long getTotalRamInBytes() {
        synchronized (CommonUtils.class) {
            if (totalRamInBytes != -1) return totalRamInBytes;
            long l2 = 0;
            String string2 = CommonUtils.extractFieldFromSystemFile(new File("/proc/meminfo"), "MemTotal");
            long l3 = l2;
            if (!TextUtils.isEmpty((CharSequence)string2)) {
                string2 = string2.toUpperCase(Locale.US);
                try {
                    if (string2.endsWith("KB")) {
                        l3 = CommonUtils.convertMemInfoToBytes(string2, "KB", 1024);
                    } else if (string2.endsWith("MB")) {
                        l3 = CommonUtils.convertMemInfoToBytes(string2, "MB", 1048576);
                    } else if (string2.endsWith("GB")) {
                        l3 = CommonUtils.convertMemInfoToBytes(string2, "GB", 1073741824);
                    } else {
                        Fabric.getLogger().d("Fabric", "Unexpected meminfo format while computing RAM: " + string2);
                        l3 = l2;
                    }
                }
                catch (NumberFormatException var1_3) {
                    Fabric.getLogger().e("Fabric", "Unexpected meminfo format while computing RAM: " + string2, (Throwable)var1_3);
                    l3 = l2;
                }
            }
            totalRamInBytes = l3;
            return totalRamInBytes;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static String hash(InputStream object, String object2) {
        try {
            int n2;
            object2 = MessageDigest.getInstance("SHA-1");
            byte[] arrby = new byte[1024];
            while ((n2 = object.read(arrby)) != -1) {
                object2.update(arrby, 0, n2);
            }
            return CommonUtils.hexify(object2.digest());
        }
        catch (Exception var0_1) {
            Fabric.getLogger().e("Fabric", "Could not calculate hash for app icon.", (Throwable)var0_1);
            return "";
        }
    }

    private static String hash(String string2, String string3) {
        return CommonUtils.hash(string2.getBytes(), string3);
    }

    private static String hash(byte[] arrby, String string2) {
        MessageDigest messageDigest;
        try {
            messageDigest = MessageDigest.getInstance(string2);
            messageDigest.update(arrby);
        }
        catch (NoSuchAlgorithmException var0_1) {
            Fabric.getLogger().e("Fabric", "Could not create hashing algorithm: " + string2 + ", returning empty string.", (Throwable)var0_1);
            return "";
        }
        return CommonUtils.hexify(messageDigest.digest());
    }

    public static String hexify(byte[] arrby) {
        char[] arrc = new char[arrby.length * 2];
        for (int i2 = 0; i2 < arrby.length; ++i2) {
            int n2 = arrby[i2] & 255;
            arrc[i2 * 2] = HEX_VALUES[n2 >>> 4];
            arrc[i2 * 2 + 1] = HEX_VALUES[n2 & 15];
        }
        return new String(arrc);
    }

    public static void hideKeyboard(Context context, View view) {
        if ((context = (InputMethodManager)context.getSystemService("input_method")) != null) {
            context.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static boolean isAppDebuggable(Context context) {
        if ((context.getApplicationInfo().flags & 2) != 0) {
            return true;
        }
        return false;
    }

    public static boolean isClsTrace(Context context) {
        if (clsTrace == null) {
            clsTrace = CommonUtils.getBooleanResourceValue(context, "com.crashlytics.Trace", false);
        }
        return clsTrace;
    }

    public static boolean isDebuggerAttached() {
        if (Debug.isDebuggerConnected() || Debug.waitingForDebugger()) {
            return true;
        }
        return false;
    }

    public static boolean isEmulator(Context object) {
        object = Settings.Secure.getString((ContentResolver)object.getContentResolver(), (String)"android_id");
        if ("sdk".equals(Build.PRODUCT) || "google_sdk".equals(Build.PRODUCT) || object == null) {
            return true;
        }
        return false;
    }

    @Deprecated
    public static boolean isLoggingEnabled(Context context) {
        return false;
    }

    public static boolean isNullOrEmpty(String string2) {
        if (string2 == null || string2.length() == 0) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean isRooted(Context object) {
        boolean bl = CommonUtils.isEmulator((Context)object);
        object = Build.TAGS;
        if (!bl && object != null && object.contains("test-keys")) {
            return true;
        }
        if (new File("/system/app/Superuser.apk").exists()) return true;
        object = new File("/system/xbin/su");
        if (bl) return false;
        if (object.exists()) return true;
        return false;
    }

    public static void logControlled(Context context, int n2, String string2, String string3) {
        if (CommonUtils.isClsTrace(context)) {
            Fabric.getLogger().log(n2, "Fabric", string3);
        }
    }

    public static void logControlled(Context context, String string2) {
        if (CommonUtils.isClsTrace(context)) {
            Fabric.getLogger().d("Fabric", string2);
        }
    }

    public static void logControlledError(Context context, String string2, Throwable throwable) {
        if (CommonUtils.isClsTrace(context)) {
            Fabric.getLogger().e("Fabric", string2);
        }
    }

    public static void logOrThrowIllegalArgumentException(String string2, String string3) {
        if (Fabric.isDebuggable()) {
            throw new IllegalArgumentException(string3);
        }
        Fabric.getLogger().w(string2, string3);
    }

    public static void logOrThrowIllegalStateException(String string2, String string3) {
        if (Fabric.isDebuggable()) {
            throw new IllegalStateException(string3);
        }
        Fabric.getLogger().w(string2, string3);
    }

    public static String logPriorityToString(int n2) {
        switch (n2) {
            default: {
                return "?";
            }
            case 7: {
                return "A";
            }
            case 3: {
                return "D";
            }
            case 6: {
                return "E";
            }
            case 4: {
                return "I";
            }
            case 2: {
                return "V";
            }
            case 5: 
        }
        return "W";
    }

    public static String md5(String string2) {
        return CommonUtils.hash(string2, "MD5");
    }

    public static String md5(byte[] arrby) {
        return CommonUtils.hash(arrby, "MD5");
    }

    public static void openKeyboard(Context context, View view) {
        if ((context = (InputMethodManager)context.getSystemService("input_method")) != null) {
            context.showSoftInputFromInputMethod(view.getWindowToken(), 0);
        }
    }

    public static String padWithZerosToMaxIntWidth(int n2) {
        if (n2 < 0) {
            throw new IllegalArgumentException("value must be zero or greater");
        }
        return String.format(Locale.US, "%1$10s", n2).replace(' ', '0');
    }

    public static String resolveBuildId(Context context) {
        int n2;
        String string2 = null;
        int n3 = n2 = CommonUtils.getResourcesIdentifier(context, "io.fabric.android.build_id", "string");
        if (n2 == 0) {
            n3 = CommonUtils.getResourcesIdentifier(context, "com.crashlytics.android.build_id", "string");
        }
        if (n3 != 0) {
            string2 = context.getResources().getString(n3);
            Fabric.getLogger().d("Fabric", "Build ID is: " + string2);
        }
        return string2;
    }

    public static String sha1(InputStream inputStream) {
        return CommonUtils.hash(inputStream, "SHA-1");
    }

    public static String sha1(String string2) {
        return CommonUtils.hash(string2, "SHA-1");
    }

    public static String sha1(byte[] arrby) {
        return CommonUtils.hash(arrby, "SHA-1");
    }

    public static String streamToString(InputStream closeable) throws IOException {
        if ((closeable = new Scanner((InputStream)closeable).useDelimiter("\\A")).hasNext()) {
            return closeable.next();
        }
        return "";
    }

    public static boolean stringsEqualIncludingNull(String string2, String string3) {
        if (string2 == string3) {
            return true;
        }
        if (string2 != null) {
            return string2.equals(string3);
        }
        return false;
    }
}

