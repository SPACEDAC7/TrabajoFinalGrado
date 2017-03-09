/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.res.Configuration
 *  android.os.AsyncTask
 *  android.os.Looper
 *  android.provider.Settings
 *  android.provider.Settings$Secure
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.os.AsyncTask;
import android.os.Looper;
import android.provider.Settings;
import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.BackoffStrategy;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.OnDeviceIdsRead;
import com.adjust.sdk.Reflection;
import com.adjust.sdk.ResponseData;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URL;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

public class Util {
    private static final String DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'Z";
    public static final DecimalFormat SecondsDisplayFormat = new DecimalFormat("0.0");
    public static final SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'Z", Locale.US);
    private static final String fieldReadErrorMessage = "Unable to read '%s' field in migration device with message (%s)";
    private static String userAgent;

    public static boolean checkPermission(Context context, String string2) {
        if (context.checkCallingOrSelfPermission(string2) == 0) {
            return true;
        }
        return false;
    }

    public static String convertToHex(byte[] object) {
        BigInteger bigInteger = new BigInteger(1, (byte[])object);
        object = "%0" + (object.length << 1) + "x";
        return String.format(Locale.US, (String)object, bigInteger);
    }

    public static AdjustFactory.URLGetConnection createGETHttpsURLConnection(String object, String string2) throws IOException {
        object = AdjustFactory.getHttpsURLGetConnection(new URL((String)object));
        HttpsURLConnection httpsURLConnection = object.httpsURLConnection;
        Util.setDefaultHttpsUrlConnectionProperties(httpsURLConnection, string2);
        httpsURLConnection.setRequestMethod("GET");
        return object;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static HttpsURLConnection createPOSTHttpsURLConnection(String var0, String var1_4, Map<String, String> var2_8, int var3_9) throws IOException {
        var6_10 = null;
        var5_11 = null;
        var4_12 = var6_10;
        var7_13 = AdjustFactory.getHttpsURLConnection(new URL((String)var0));
        var4_12 = var6_10;
        Util.setDefaultHttpsUrlConnectionProperties(var7_13, var1_4);
        var4_12 = var6_10;
        var7_13.setRequestMethod("POST");
        var4_12 = var6_10;
        var7_13.setUseCaches(false);
        var4_12 = var6_10;
        var7_13.setDoInput(true);
        var4_12 = var6_10;
        var7_13.setDoOutput(true);
        var4_12 = var6_10;
        var0 = new DataOutputStream(var7_13.getOutputStream());
        var0.writeBytes(Util.getPostDataString(var2_8, var3_9));
        if (var0 == null) return var7_13;
        try {
            var0.flush();
            var0.close();
            return var7_13;
        }
        catch (Exception var0_3) {
            return var7_13;
        }
        catch (IOException var0_1) {
            var4_12 = var5_11;
            ** GOTO lbl37
            catch (Throwable var1_6) {
                var4_12 = var0;
                var0 = var1_6;
                ** GOTO lbl-1000
            }
            catch (IOException var1_7) {
                var4_12 = var0;
                var0 = var1_7;
            }
lbl37: // 2 sources:
            try {
                throw var0;
            }
            catch (Throwable var0_2) lbl-1000: // 2 sources:
            {
                if (var4_12 == null) throw var0;
                try {
                    var4_12.flush();
                    var4_12.close();
                }
                catch (Exception var1_5) {
                    throw var0;
                }
                throw var0;
            }
        }
    }

    protected static String createUuid() {
        return UUID.randomUUID().toString();
    }

    public static boolean equalBoolean(Boolean bl, Boolean bl2) {
        return Util.equalObject(bl, bl2);
    }

    public static boolean equalEnum(Enum enum_, Enum enum_2) {
        return Util.equalObject(enum_, enum_2);
    }

    public static boolean equalInt(Integer n2, Integer n3) {
        return Util.equalObject(n2, n3);
    }

    public static boolean equalLong(Long l2, Long l3) {
        return Util.equalObject(l2, l3);
    }

    public static boolean equalObject(Object object, Object object2) {
        if (object == null || object2 == null) {
            if (object == null && object2 == null) {
                return true;
            }
            return false;
        }
        return object.equals(object2);
    }

    public static boolean equalString(String string2, String string3) {
        return Util.equalObject(string2, string3);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean equalsDouble(Double d2, Double d3) {
        if (d2 == null || d3 == null) {
            if (d2 == null && d3 == null) return true;
            return false;
        }
        if (Double.doubleToLongBits(d2) != Double.doubleToLongBits(d3)) return false;
        return true;
    }

    public static String getAndroidId(Context context) {
        return Reflection.getAndroidId(context);
    }

    public static String getCpuAbi() {
        return Reflection.getCpuAbi();
    }

    public static String getFireAdvertisingId(ContentResolver object) {
        if (object == null) {
            return null;
        }
        try {
            object = Settings.Secure.getString((ContentResolver)object, (String)"advertising_id");
            return object;
        }
        catch (Exception var0_1) {
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Boolean getFireTrackingEnabled(ContentResolver contentResolver) {
        boolean bl;
        block3 : {
            try {
                if (Settings.Secure.getInt((ContentResolver)contentResolver, (String)"limit_ad_tracking") != 0) break block3;
                bl = true;
            }
            catch (Exception var0_1) {
                return null;
            }
            do {
                return bl;
                break;
            } while (true);
        }
        bl = false;
        return bl;
    }

    public static void getGoogleAdId(Context object, final OnDeviceIdsRead onDeviceIdsRead) {
        ILogger iLogger = AdjustFactory.getLogger();
        if (Looper.myLooper() != Looper.getMainLooper()) {
            iLogger.debug("GoogleAdId being read in the background", new Object[0]);
            object = Util.getPlayAdId((Context)object);
            iLogger.debug("GoogleAdId read " + (String)object, new Object[0]);
            onDeviceIdsRead.onGoogleAdIdRead((String)object);
            return;
        }
        iLogger.debug("GoogleAdId being read in the foreground", new Object[0]);
        new AsyncTask<Context, Void, String>(){

            protected /* varargs */ String doInBackground(Context ... object) {
                ILogger iLogger = AdjustFactory.getLogger();
                object = Util.getPlayAdId(object[0]);
                iLogger.debug("GoogleAdId read " + (String)object, new Object[0]);
                return object;
            }

            protected void onPostExecute(String string2) {
                AdjustFactory.getLogger();
                onDeviceIdsRead.onGoogleAdIdRead(string2);
            }
        }.execute((Object[])new Context[]{object});
    }

    public static Locale getLocale(Configuration configuration) {
        Locale locale = Reflection.getLocaleFromLocaleList(configuration);
        if (locale != null) {
            return locale;
        }
        return Reflection.getLocaleFromField(configuration);
    }

    private static ILogger getLogger() {
        return AdjustFactory.getLogger();
    }

    public static String getMacAddress(Context context) {
        return Reflection.getMacAddress(context);
    }

    public static String getPlayAdId(Context context) {
        return Reflection.getPlayAdId(context);
    }

    public static Map<String, String> getPluginKeys(Context context) {
        return Reflection.getPluginKeys(context);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static String getPostDataString(Map<String, String> object, int n2) throws UnsupportedEncodingException {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator iterator = object.entrySet().iterator();
        while (iterator.hasNext()) {
            object = iterator.next();
            String string2 = URLEncoder.encode((String)object.getKey(), "UTF-8");
            object = (object = (String)object.getValue()) != null ? URLEncoder.encode((String)object, "UTF-8") : "";
            if (stringBuilder.length() > 0) {
                stringBuilder.append("&");
            }
            stringBuilder.append(string2);
            stringBuilder.append("=");
            stringBuilder.append((String)object);
        }
        long l2 = System.currentTimeMillis();
        object = dateFormatter.format(l2);
        stringBuilder.append("&");
        stringBuilder.append(URLEncoder.encode("sent_at", "UTF-8"));
        stringBuilder.append("=");
        stringBuilder.append(URLEncoder.encode((String)object, "UTF-8"));
        if (n2 > 0) {
            stringBuilder.append("&");
            stringBuilder.append(URLEncoder.encode("queue_size", "UTF-8"));
            stringBuilder.append("=");
            stringBuilder.append(URLEncoder.encode("" + n2, "UTF-8"));
        }
        return stringBuilder.toString();
    }

    public static String getReasonString(String string2, Throwable throwable) {
        if (throwable != null) {
            return String.format(Locale.US, "%s: %s", string2, throwable);
        }
        return String.format(Locale.US, "%s", string2);
    }

    public static String[] getSupportedAbis() {
        return Reflection.getSupportedAbis();
    }

    public static String getVmInstructionSet() {
        return Reflection.getVmInstructionSet();
    }

    public static long getWaitingTime(int n2, BackoffStrategy backoffStrategy) {
        if (n2 < backoffStrategy.minRetries) {
            return 0;
        }
        long l2 = Math.min((long)Math.pow(2.0, n2 - backoffStrategy.minRetries) * backoffStrategy.milliSecondMultiplier, backoffStrategy.maxWait);
        double d2 = Util.randomInRange(backoffStrategy.minRange, backoffStrategy.maxRange);
        return (long)((double)l2 * d2);
    }

    public static String hash(String object, String object2) {
        try {
            object = object.getBytes("UTF-8");
            object2 = MessageDigest.getInstance((String)object2);
            object2.update((byte[])object, 0, object.length);
            object = Util.convertToHex(object2.digest());
            return object;
        }
        catch (Exception var0_1) {
            return null;
        }
    }

    public static int hashBoolean(Boolean bl) {
        if (bl == null) {
            return 0;
        }
        return bl.hashCode();
    }

    public static int hashEnum(Enum enum_) {
        if (enum_ == null) {
            return 0;
        }
        return enum_.hashCode();
    }

    public static int hashLong(Long l2) {
        if (l2 == null) {
            return 0;
        }
        return l2.hashCode();
    }

    public static int hashObject(Object object) {
        if (object == null) {
            return 0;
        }
        return object.hashCode();
    }

    public static int hashString(String string2) {
        if (string2 == null) {
            return 0;
        }
        return string2.hashCode();
    }

    public static Boolean isPlayTrackingEnabled(Context context) {
        return Reflection.isPlayTrackingEnabled(context);
    }

    public static boolean isValidParameter(String string2, String string3, String string4) {
        if (string2 == null) {
            Util.getLogger().error("%s parameter %s is missing", string4, string3);
            return false;
        }
        if (string2.equals("")) {
            Util.getLogger().error("%s parameter %s is empty", string4, string3);
            return false;
        }
        return true;
    }

    public static String md5(String string2) {
        return Util.hash(string2, "MD5");
    }

    public static Map<String, String> mergeParameters(Map<String, String> map, Map<String, String> object, String string2) {
        if (map == null) {
            return object;
        }
        if (object == null) {
            return map;
        }
        map = new HashMap<String, String>(map);
        ILogger iLogger = Util.getLogger();
        for (Map.Entry entry : object.entrySet()) {
            String string3 = map.put((String)entry.getKey(), (String)entry.getValue());
            if (string3 == null) continue;
            iLogger.warn("Key %s with value %s from %s parameter was replaced by value %s", entry.getKey(), string3, string2, entry.getValue());
        }
        return map;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String quote(String string2) {
        if (string2 == null) {
            return null;
        }
        String string3 = string2;
        if (!Pattern.compile("\\s").matcher(string2).find()) return string3;
        return String.format(Locale.US, "'%s'", string2);
    }

    private static double randomInRange(double d2, double d3) {
        return new Random().nextDouble() * (d3 - d2) + d2;
    }

    public static boolean readBooleanField(ObjectInputStream.GetField getField, String string2, boolean bl) {
        try {
            boolean bl2 = getField.get(string2, bl);
            return bl2;
        }
        catch (Exception var0_1) {
            Util.getLogger().debug("Unable to read '%s' field in migration device with message (%s)", string2, var0_1.getMessage());
            return bl;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static ResponseData readHttpResponse(HttpsURLConnection object, ActivityPackage object2) throws Exception {
        Integer n2;
        StringBuffer stringBuffer;
        Object object3;
        ILogger iLogger;
        stringBuffer = new StringBuffer();
        iLogger = Util.getLogger();
        try {
            String string2;
            try {
                object.connect();
                n2 = object.getResponseCode();
                object3 = n2 >= 400 ? object.getErrorStream() : object.getInputStream();
            }
            catch (Exception var1_2) {
                iLogger.error("Failed to read response. (%s)", var1_2.getMessage());
                throw var1_2;
            }
            object3 = new BufferedReader(new InputStreamReader((InputStream)object3));
            while ((string2 = object3.readLine()) != null) {
                stringBuffer.append(string2);
            }
        }
        finally {
            if (object != null) {
                object.disconnect();
            }
        }
        object3 = ResponseData.buildResponseData((ActivityPackage)object2);
        object2 = stringBuffer.toString();
        iLogger.verbose("Response: %s", object2);
        if (object2 == null) return object3;
        if (object2.length() == 0) {
            return object3;
        }
        object = null;
        try {
            object = object2 = new JSONObject((String)object2);
        }
        catch (JSONException var1_4) {
            object2 = String.format("Failed to parse json response. (%s)", var1_4.getMessage());
            iLogger.error((String)object2, new Object[0]);
            object3.message = object2;
        }
        if (object == null) return object3;
        object3.jsonResponse = object;
        object3.message = object2 = object.optString("message", null);
        object3.timestamp = object.optString("timestamp", null);
        object3.adid = object.optString("adid", null);
        object = object2;
        if (object2 == null) {
            object = "No message found";
        }
        if (n2 != null && n2 == 200) {
            iLogger.info("%s", object);
            object3.success = true;
            return object3;
        }
        iLogger.error("%s", object);
        return object3;
    }

    public static int readIntField(ObjectInputStream.GetField getField, String string2, int n2) {
        try {
            int n3 = getField.get(string2, n2);
            return n3;
        }
        catch (Exception var0_1) {
            Util.getLogger().debug("Unable to read '%s' field in migration device with message (%s)", string2, var0_1.getMessage());
            return n2;
        }
    }

    public static long readLongField(ObjectInputStream.GetField getField, String string2, long l2) {
        try {
            long l3 = getField.get(string2, l2);
            return l3;
        }
        catch (Exception var0_1) {
            Util.getLogger().debug("Unable to read '%s' field in migration device with message (%s)", string2, var0_1.getMessage());
            return l2;
        }
    }

    /*
     * Exception decompiling
     */
    public static <T> T readObject(Context var0, String var1_6, String var2_8, Class<T> var3_9) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [0[TRYBLOCK]], but top level block is 11[CATCHBLOCK]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    public static <T> T readObjectField(ObjectInputStream.GetField object, String string2, T t2) {
        try {
            object = object.get(string2, t2);
        }
        catch (Exception var0_1) {
            Util.getLogger().debug("Unable to read '%s' field in migration device with message (%s)", string2, var0_1.getMessage());
            return t2;
        }
        return (T)object;
    }

    public static String readStringField(ObjectInputStream.GetField getField, String string2, String string3) {
        return Util.readObjectField(getField, string2, string3);
    }

    public static void setDefaultHttpsUrlConnectionProperties(HttpsURLConnection httpsURLConnection, String string2) {
        httpsURLConnection.setRequestProperty("Client-SDK", string2);
        httpsURLConnection.setConnectTimeout(60000);
        httpsURLConnection.setReadTimeout(60000);
        if (userAgent != null) {
            httpsURLConnection.setRequestProperty("User-Agent", userAgent);
        }
    }

    public static void setUserAgent(String string2) {
        userAgent = string2;
    }

    public static String sha1(String string2) {
        return Util.hash(string2, "SHA-1");
    }

    /*
     * Exception decompiling
     */
    public static <T> void writeObject(T var0, Context var1_4, String var2_5, String var3_6) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [0[TRYBLOCK]], but top level block is 4[CATCHBLOCK]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

}

