/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.BroadcastReceiver
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.content.pm.ActivityInfo
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.content.pm.ResolveInfo
 *  android.location.Location
 *  android.media.AudioManager
 *  android.net.ConnectivityManager
 *  android.net.NetworkInfo
 *  android.net.Uri
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.provider.Settings
 *  android.provider.Settings$Secure
 *  android.util.DisplayMetrics
 *  android.view.Display
 *  android.view.WindowManager
 *  android.webkit.WebSettings
 *  android.webkit.WebView
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.google.ads.util;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.util.b;
import com.google.ads.util.c;
import com.google.ads.util.d;
import com.google.ads.util.e;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.nio.Buffer;
import java.nio.CharBuffer;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class AdUtil {
    public static final int a = AdUtil.a(Build.VERSION.SDK);
    private static Boolean b = null;
    private static String c = null;
    private static String d;
    private static String e;
    private static AudioManager f;
    private static boolean g;
    private static boolean h;
    private static String i;

    static {
        e = null;
        g = true;
        h = false;
        i = null;
    }

    public static int a() {
        if (a >= 9) {
            return 6;
        }
        return 0;
    }

    public static int a(Context context, DisplayMetrics displayMetrics) {
        if (a >= 4) {
            return e.a(context, displayMetrics);
        }
        return displayMetrics.heightPixels;
    }

    public static int a(String string2) {
        try {
            int n2 = Integer.parseInt(string2);
            return n2;
        }
        catch (NumberFormatException var0_1) {
            b.e("The Android SDK version couldn't be parsed to an int: " + Build.VERSION.SDK);
            b.e("Defaulting to Android SDK version 3.");
            return 3;
        }
    }

    public static DisplayMetrics a(Activity activity) {
        if (activity.getWindowManager() == null) {
            return null;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String a(Context object) {
        if (c == null) {
            object = (object = Settings.Secure.getString((ContentResolver)object.getContentResolver(), (String)"android_id")) == null || AdUtil.c() ? AdUtil.b("emulator") : AdUtil.b((String)object);
            if (object == null) {
                return null;
            }
            c = object.toUpperCase(Locale.US);
        }
        return c;
    }

    public static String a(Location object) {
        if (object == null) {
            return null;
        }
        object = AdUtil.c(AdUtil.b((Location)object));
        return "e1+" + (String)object;
    }

    public static String a(Readable readable) throws IOException {
        int n2;
        StringBuilder stringBuilder = new StringBuilder();
        CharBuffer charBuffer = CharBuffer.allocate(2048);
        while ((n2 = readable.read(charBuffer)) != -1) {
            charBuffer.flip();
            stringBuilder.append(charBuffer, 0, n2);
        }
        return stringBuilder.toString();
    }

    public static String a(Map<String, Object> object) {
        try {
            object = AdUtil.b(object).toString();
            return object;
        }
        catch (JSONException var0_1) {
            b.d("JsonException in serialization: ", (Throwable)var0_1);
            return null;
        }
    }

    public static JSONArray a(Set<Object> object) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        if (object == null || object.isEmpty()) {
            return jSONArray;
        }
        object = object.iterator();
        while (object.hasNext()) {
            Object e2 = object.next();
            if (e2 instanceof String || e2 instanceof Integer || e2 instanceof Double || e2 instanceof Long || e2 instanceof Float) {
                jSONArray.put(e2);
                continue;
            }
            if (e2 instanceof Map) {
                try {
                    jSONArray.put((Object)AdUtil.b((Map)e2));
                }
                catch (ClassCastException var2_3) {
                    b.d("Unknown map type in json serialization: ", var2_3);
                }
                continue;
            }
            if (e2 instanceof Set) {
                try {
                    jSONArray.put((Object)AdUtil.a((Set)e2));
                }
                catch (ClassCastException var2_4) {
                    b.d("Unknown map type in json serialization: ", var2_4);
                }
                continue;
            }
            b.e("Unknown value in json serialization: " + e2);
        }
        return jSONArray;
    }

    public static void a(WebView webView) {
        String string2 = AdUtil.i(webView.getContext().getApplicationContext());
        webView.getSettings().setUserAgentString(string2);
    }

    public static void a(HttpURLConnection httpURLConnection, Context context) {
        httpURLConnection.setRequestProperty("User-Agent", AdUtil.i(context));
    }

    public static void a(boolean bl) {
        g = bl;
    }

    public static boolean a(int n2, int n3, String string2) {
        if ((n2 & n3) == 0) {
            b.b("The android:configChanges value of the com.google.ads.AdActivity must include " + string2 + ".");
            return false;
        }
        return true;
    }

    public static boolean a(Intent intent, Context context) {
        if (context.getPackageManager().resolveActivity(intent, 65536) != null) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean a(Uri object) {
        if (object == null || !"http".equalsIgnoreCase((String)(object = object.getScheme())) && !"https".equalsIgnoreCase((String)object)) {
            return false;
        }
        return true;
    }

    static boolean a(d d2) {
        d d3 = d2;
        if (d2 == null) {
            d3 = d.d;
        }
        return d3.equals(d.e);
    }

    public static int b() {
        if (a >= 9) {
            return 7;
        }
        return 1;
    }

    public static int b(Context context, DisplayMetrics displayMetrics) {
        if (a >= 4) {
            return e.b(context, displayMetrics);
        }
        return displayMetrics.widthPixels;
    }

    private static String b(Location location) {
        return String.format(Locale.US, "role: 6 producer: 24 historical_role: 1 historical_producer: 12 timestamp: %d latlng < latitude_e7: %d longitude_e7: %d> radius: %d", location.getTime() * 1000, (long)(location.getLatitude() * 1.0E7), (long)(location.getLongitude() * 1.0E7), (long)(location.getAccuracy() * 1000.0f));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String b(String string2) {
        MessageDigest messageDigest;
        Object object = messageDigest = null;
        if (string2 == null) return object;
        object = messageDigest;
        if (string2.length() <= 0) return object;
        try {
            object = MessageDigest.getInstance("MD5");
            object.update(string2.getBytes(), 0, string2.length());
            return String.format(Locale.US, "%032X", new BigInteger(1, object.digest()));
        }
        catch (NoSuchAlgorithmException noSuchAlgorithmException) {
            return string2.substring(0, 32);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static HashMap<String, String> b(Uri arrstring) {
        if (arrstring == null) {
            return null;
        }
        HashMap<String, String> hashMap = new HashMap<String, String>();
        if ((arrstring = arrstring.getEncodedQuery()) == null) {
            return hashMap;
        }
        arrstring = arrstring.split("&");
        int n2 = arrstring.length;
        int n3 = 0;
        while (n3 < n2) {
            String string2 = arrstring[n3];
            int n4 = string2.indexOf("=");
            if (n4 < 0) {
                hashMap.put(Uri.decode((String)string2), null);
            } else {
                hashMap.put(Uri.decode((String)string2.substring(0, n4)), Uri.decode((String)string2.substring(n4 + 1, string2.length())));
            }
            ++n3;
        }
        return hashMap;
    }

    public static JSONObject b(Map<String, Object> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (map == null || map.isEmpty()) {
            return jSONObject;
        }
        for (String string2 : map.keySet()) {
            Object object = map.get(string2);
            if (object instanceof String || object instanceof Integer || object instanceof Double || object instanceof Long || object instanceof Float) {
                jSONObject.put(string2, object);
                continue;
            }
            if (object instanceof Map) {
                try {
                    jSONObject.put(string2, (Object)AdUtil.b((Map)object));
                }
                catch (ClassCastException var3_4) {
                    b.d("Unknown map type in json serialization: ", var3_4);
                }
                continue;
            }
            if (object instanceof Set) {
                try {
                    jSONObject.put(string2, (Object)AdUtil.a((Set)object));
                }
                catch (ClassCastException var3_5) {
                    b.d("Unknown map type in json serialization: ", var3_5);
                }
                continue;
            }
            b.e("Unknown value in json serialization: " + object);
        }
        return jSONObject;
    }

    public static boolean b(Context object) {
        PackageManager packageManager = object.getPackageManager();
        if (packageManager.checkPermission("android.permission.INTERNET", (String)(object = object.getPackageName())) == -1) {
            b.b("INTERNET permissions must be enabled in AndroidManifest.xml.");
            return false;
        }
        if (packageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", (String)object) == -1) {
            b.b("ACCESS_NETWORK_STATE permissions must be enabled in AndroidManifest.xml.");
            return false;
        }
        return true;
    }

    private static String c(String object) {
        try {
            byte[] arrby = Cipher.getInstance("AES/CBC/PKCS5Padding");
            arrby.init(1, new SecretKeySpec(new byte[]{10, 55, -112, -47, -6, 7, 11, 75, -7, -121, 121, 69, 80, -61, 15, 5}, "AES"));
            byte[] arrby2 = arrby.getIV();
            object = arrby.doFinal(object.getBytes());
            arrby = new byte[arrby2.length + object.length];
            System.arraycopy(arrby2, 0, arrby, 0, arrby2.length);
            System.arraycopy(object, 0, arrby, arrby2.length, object.length);
            object = c.b(arrby, 11);
            return object;
        }
        catch (GeneralSecurityException var0_1) {
            return null;
        }
    }

    public static boolean c() {
        return AdUtil.a(null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean c(Context context) {
        if (b != null) {
            return b;
        }
        context = context.getPackageManager().resolveActivity(new Intent(context, (Class)AdActivity.class), 65536);
        b = true;
        if (context == null || context.activityInfo == null) {
            b.b("Could not find com.google.ads.AdActivity, please make sure it is registered in AndroidManifest.xml.");
            b = false;
            return b;
        }
        if (!AdUtil.a(context.activityInfo.configChanges, 16, "keyboard")) {
            b = false;
        }
        if (!AdUtil.a(context.activityInfo.configChanges, 32, "keyboardHidden")) {
            b = false;
        }
        if (!AdUtil.a(context.activityInfo.configChanges, 128, "orientation")) {
            b = false;
        }
        if (!AdUtil.a(context.activityInfo.configChanges, 256, "screenLayout")) {
            b = false;
        }
        if (!AdUtil.a(context.activityInfo.configChanges, 512, "uiMode")) {
            b = false;
        }
        if (!AdUtil.a(context.activityInfo.configChanges, 1024, "screenSize")) {
            b = false;
        }
        if (AdUtil.a(context.activityInfo.configChanges, 2048, "smallestScreenSize")) return b;
        b = false;
        return b;
    }

    public static String d(Context context) {
        if ((context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
            return null;
        }
        switch (context.getType()) {
            default: {
                return "unknown";
            }
            case 0: {
                return "ed";
            }
            case 1: 
        }
        return "wi";
    }

    public static boolean d() {
        return g;
    }

    public static String e(Context object) {
        if (d == null) {
            StringBuilder stringBuilder = new StringBuilder();
            List list = (object = object.getPackageManager()).queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse((String)"geo:0,0?q=donuts")), 65536);
            if (list == null || list.size() == 0) {
                stringBuilder.append("m");
            }
            if ((list = object.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse((String)"market://search?q=pname:com.google")), 65536)) == null || list.size() == 0) {
                if (stringBuilder.length() > 0) {
                    stringBuilder.append(",");
                }
                stringBuilder.append("a");
            }
            if ((object = object.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse((String)"tel://6509313940")), 65536)) == null || object.size() == 0) {
                if (stringBuilder.length() > 0) {
                    stringBuilder.append(",");
                }
                stringBuilder.append("t");
            }
            d = stringBuilder.toString();
        }
        return d;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String f(Context object) {
        PackageManager packageManager;
        ResolveInfo resolveInfo;
        Object var1_2 = null;
        if (e != null) {
            return e;
        }
        try {
            packageManager = object.getPackageManager();
            resolveInfo = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse((String)"market://details?id=com.google.ads")), 65536);
            object = var1_2;
            if (resolveInfo == null) return object;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            return null;
        }
        resolveInfo = resolveInfo.activityInfo;
        object = var1_2;
        if (resolveInfo == null) return object;
        packageManager = packageManager.getPackageInfo(resolveInfo.packageName, 0);
        object = var1_2;
        if (packageManager == null) return object;
        e = "" + packageManager.versionCode + "." + resolveInfo.packageName;
        return e;
    }

    public static a g(Context object) {
        if (f == null) {
            f = (AudioManager)object.getSystemService("audio");
        }
        object = a.f;
        int n2 = f.getMode();
        if (AdUtil.c()) {
            return a.e;
        }
        if (f.isMusicActive() || f.isSpeakerphoneOn() || n2 == 2 || n2 == 1) {
            return a.d;
        }
        n2 = f.getRingerMode();
        if (n2 == 0 || n2 == 1) {
            return a.d;
        }
        return a.b;
    }

    public static void h(Context context) {
        if (h) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.registerReceiver((BroadcastReceiver)new UserActivityReceiver(), intentFilter);
        h = true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static String i(Context var0) {
        if (AdUtil.i != null) return AdUtil.i;
        var1_1 = new WebView((Context)var0).getSettings().getUserAgentString();
        if (var1_1 == null || var1_1.length() == 0) ** GOTO lbl-1000
        var0 = var1_1;
        if (var1_1.equals("Java0")) lbl-1000: // 2 sources:
        {
            var2_2 = System.getProperty("os.name", "Linux");
            var3_3 = "Android " + Build.VERSION.RELEASE;
            var4_4 = Locale.getDefault();
            var0 = var1_1 = var4_4.getLanguage().toLowerCase(Locale.US);
            if (var1_1.length() == 0) {
                var0 = "en";
            }
            var4_4 = var4_4.getCountry().toLowerCase(Locale.US);
            var1_1 = var0;
            if (var4_4.length() > 0) {
                var1_1 = (String)var0 + "-" + (String)var4_4;
            }
            var0 = Build.MODEL + " Build/" + Build.ID;
            var0 = "Mozilla/5.0 (" + var2_2 + "; U; " + var3_3 + "; " + (String)var1_1 + "; " + (String)var0 + ") AppleWebKit/0.0 (KHTML, like " + "Gecko) Version/0.0 Mobile Safari/0.0";
        }
        AdUtil.i = (String)var0 + " (Mobile; " + "afma-sdk-a-v" + "6.2.1" + ")";
        return AdUtil.i;
    }

    public static class UserActivityReceiver
    extends BroadcastReceiver {
        /*
         * Enabled aggressive block sorting
         */
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.USER_PRESENT")) {
                AdUtil.a(true);
                return;
            } else {
                if (!intent.getAction().equals("android.intent.action.SCREEN_OFF")) return;
                {
                    AdUtil.a(false);
                    return;
                }
            }
        }
    }

    public static enum a {
        a,
        b,
        c,
        d,
        e,
        f;
        

        private a() {
        }
    }

}

