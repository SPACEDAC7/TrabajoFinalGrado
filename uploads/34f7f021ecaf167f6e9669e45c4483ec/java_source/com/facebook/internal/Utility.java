/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.os.AsyncTask
 *  android.os.Bundle
 *  android.os.Parcel
 *  android.text.TextUtils
 *  android.util.Log
 *  android.webkit.CookieManager
 *  android.webkit.CookieSyncManager
 *  com.facebook.internal.ImageDownloader
 *  com.facebook.internal.ProfileInformationCache
 *  com.facebook.internal.Utility$1
 *  com.facebook.internal.Utility$2
 *  com.facebook.internal.Utility$DialogFeatureConfig
 *  com.facebook.internal.Utility$Mapper
 *  com.facebook.internal.Utility$Predicate
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 *  org.json.JSONTokener
 */
package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestAsyncTask;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.ImageDownloader;
import com.facebook.internal.ProfileInformationCache;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/*
 * Exception performing whole class analysis ignored.
 */
public final class Utility {
    private static final String APPLICATION_FIELDS = "fields";
    private static final String APP_SETTINGS_PREFS_KEY_FORMAT = "com.facebook.internal.APP_SETTINGS.%s";
    private static final String APP_SETTINGS_PREFS_STORE = "com.facebook.internal.preferences.APP_SETTINGS";
    private static final String APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES = "android_sdk_error_categories";
    private static final String APP_SETTING_DIALOG_CONFIGS = "android_dialog_configs";
    private static final String[] APP_SETTING_FIELDS = new String[]{"supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories"};
    private static final String APP_SETTING_NUX_CONTENT = "gdpv4_nux_content";
    private static final String APP_SETTING_NUX_ENABLED = "gdpv4_nux_enabled";
    private static final String APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING = "supports_implicit_sdk_logging";
    public static final int DEFAULT_STREAM_BUFFER_SIZE = 8192;
    private static final String DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR = "\\|";
    private static final String DIALOG_CONFIG_NAME_KEY = "name";
    private static final String DIALOG_CONFIG_URL_KEY = "url";
    private static final String DIALOG_CONFIG_VERSIONS_KEY = "versions";
    private static final String EXTRA_APP_EVENTS_INFO_FORMAT_VERSION = "a1";
    private static final String HASH_ALGORITHM_MD5 = "MD5";
    private static final String HASH_ALGORITHM_SHA1 = "SHA-1";
    static final String LOG_TAG = "FacebookSDK";
    private static final String URL_SCHEME = "https";
    private static final String UTF8 = "UTF-8";
    private static Map<String, FetchedAppSettings> fetchedAppSettings = new ConcurrentHashMap<String, FetchedAppSettings>();
    private static AsyncTask<Void, Void, JSONObject> initialAppSettingsLoadTask;

    static {
    }

    public Utility() {
    }

    static /* synthetic */ JSONObject access$000(String string2) {
        return Utility.getAppSettingsQueryResponse(string2);
    }

    static /* synthetic */ FetchedAppSettings access$100(String string2, JSONObject jSONObject) {
        return Utility.parseAppSettingsFromJSON(string2, jSONObject);
    }

    static /* synthetic */ AsyncTask access$202(AsyncTask asyncTask) {
        initialAppSettingsLoadTask = asyncTask;
        return asyncTask;
    }

    public static <T> boolean areObjectsEqual(T t2, T t3) {
        if (t2 == null) {
            if (t3 == null) {
                return true;
            }
            return false;
        }
        return t2.equals(t3);
    }

    public static /* varargs */ <T> ArrayList<T> arrayList(T ... arrT) {
        ArrayList<T> arrayList = new ArrayList<T>(arrT.length);
        int n2 = arrT.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            arrayList.add(arrT[i2]);
        }
        return arrayList;
    }

    public static /* varargs */ <T> List<T> asListNoNulls(T ... arrT) {
        ArrayList<T> arrayList = new ArrayList<T>();
        for (T t2 : arrT) {
            if (t2 == null) continue;
            arrayList.add(t2);
        }
        return arrayList;
    }

    public static JSONObject awaitGetGraphMeRequestWithCache(String object) {
        JSONObject jSONObject = ProfileInformationCache.getProfileInformation((String)object);
        if (jSONObject != null) {
            return jSONObject;
        }
        if ((object = Utility.getGraphMeRequestWithCache((String)object).executeAndWait()).getError() != null) {
            return null;
        }
        return object.getJSONObject();
    }

    public static Uri buildUri(String object, String string22, Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority((String)object);
        builder.path(string22);
        if (bundle != null) {
            for (String string22 : bundle.keySet()) {
                Object object2 = bundle.get(string22);
                if (!(object2 instanceof String)) continue;
                builder.appendQueryParameter(string22, (String)object2);
            }
        }
        return builder.build();
    }

    public static void clearCaches(Context context) {
        ImageDownloader.clearCache((Context)context);
    }

    private static void clearCookiesForDomain(Context context, String string2) {
        CookieSyncManager.createInstance((Context)context).sync();
        context = CookieManager.getInstance();
        String[] arrstring = context.getCookie(string2);
        if (arrstring == null) {
            return;
        }
        arrstring = arrstring.split(";");
        int n2 = arrstring.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            String[] arrstring2 = arrstring[i2].split("=");
            if (arrstring2.length <= 0) continue;
            context.setCookie(string2, arrstring2[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
        }
        context.removeExpiredCookie();
    }

    public static void clearFacebookCookies(Context context) {
        Utility.clearCookiesForDomain(context, "facebook.com");
        Utility.clearCookiesForDomain(context, ".facebook.com");
        Utility.clearCookiesForDomain(context, "https://facebook.com");
        Utility.clearCookiesForDomain(context, "https://.facebook.com");
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
        catch (IOException var0_1) {
            return;
        }
    }

    public static String coerceValueIfNullOrEmpty(String string2, String string3) {
        if (Utility.isNullOrEmpty(string2)) {
            return string3;
        }
        return string2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static Map<String, Object> convertJSONObjectToHashMap(JSONObject jSONObject) {
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        JSONArray jSONArray = jSONObject.names();
        int n2 = 0;
        while (n2 < jSONArray.length()) {
            try {
                Map<String, Object> map;
                String string2 = jSONArray.getString(n2);
                Map<String, Object> map2 = map = jSONObject.get(string2);
                if (map instanceof JSONObject) {
                    map2 = Utility.convertJSONObjectToHashMap((JSONObject)map);
                }
                hashMap.put(string2, map2);
            }
            catch (JSONException var1_5) {}
            ++n2;
        }
        return hashMap;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static int copyAndCloseInputStream(InputStream var0, OutputStream var1_1) throws IOException {
        block7 : {
            var3_2 = null;
            var4_4 = 0;
            var2_5 = new BufferedInputStream(var0);
            var3_2 = new byte[8192];
            break block7;
            catch (Throwable var2_6) {
                var1_1 = var3_2;
                ** GOTO lbl14
                catch (Throwable var3_3) {
                    var1_1 = var2_5;
                    var2_5 = var3_3;
                }
lbl14: // 2 sources:
                if (var1_1 != null) {
                    var1_1.close();
                }
                if (var0 == null) throw var2_5;
                var0.close();
                throw var2_5;
            }
        }
        while ((var5_7 = var2_5.read(var3_2)) != -1) {
            var1_1.write(var3_2, 0, var5_7);
            var4_4 += var5_7;
        }
        if (var2_5 != null) {
            var2_5.close();
        }
        if (var0 == null) return var4_4;
        var0.close();
        return var4_4;
    }

    public static void deleteDirectory(File file) {
        if (!file.exists()) {
            return;
        }
        if (file.isDirectory()) {
            File[] arrfile = file.listFiles();
            int n2 = arrfile.length;
            for (int i2 = 0; i2 < n2; ++i2) {
                Utility.deleteDirectory(arrfile[i2]);
            }
        }
        file.delete();
    }

    public static void disconnectQuietly(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection)uRLConnection).disconnect();
        }
    }

    public static <T> List<T> filter(List<T> arrayList, Predicate<T> predicate) {
        if (arrayList == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object e2 : arrayList) {
            if (!predicate.apply(e2)) continue;
            arrayList2.add(e2);
        }
        arrayList = arrayList2;
        if (arrayList2.size() == 0) {
            arrayList = null;
        }
        return arrayList;
    }

    public static String getActivityName(Context context) {
        if (context == null) {
            return "null";
        }
        if (context == context.getApplicationContext()) {
            return "unknown";
        }
        return context.getClass().getSimpleName();
    }

    private static JSONObject getAppSettingsQueryResponse(String object) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", TextUtils.join((CharSequence)",", (Object[])APP_SETTING_FIELDS));
        object = GraphRequest.newGraphPathRequest(null, (String)object, null);
        object.setSkipClientToken(true);
        object.setParameters(bundle);
        return object.executeAndWait().getJSONObject();
    }

    public static FetchedAppSettings getAppSettingsWithoutQuery(String string2) {
        if (string2 != null) {
            return fetchedAppSettings.get(string2);
        }
        return null;
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static Date getBundleLongAsDate(Bundle object, String string2, Date date) {
        long l2;
        if (object == null) {
            return null;
        }
        if ((object = object.get(string2)) instanceof Long) {
            l2 = (Long)object;
        } else {
            if (!(object instanceof String)) return null;
            l2 = Long.parseLong((String)object);
        }
        if (l2 != 0) return new Date(date.getTime() + 1000 * l2);
        return new Date(Long.MAX_VALUE);
        catch (NumberFormatException numberFormatException) {
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static DialogFeatureConfig getDialogFeatureConfig(String map, String string2, String string3) {
        if (Utility.isNullOrEmpty(string2) || Utility.isNullOrEmpty(string3) || (map = fetchedAppSettings.get(map)) == null || (map = map.getDialogConfigurations().get(string2)) == null) {
            return null;
        }
        return map.get(string3);
    }

    private static GraphRequest getGraphMeRequestWithCache(String string2) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,name,first_name,middle_name,last_name,link");
        bundle.putString("access_token", string2);
        return new GraphRequest(null, "me", bundle, HttpMethod.GET, null);
    }

    public static void getGraphMeRequestWithCacheAsync(String object, GraphMeRequestWithCacheCallback graphMeRequestWithCacheCallback) {
        JSONObject jSONObject = ProfileInformationCache.getProfileInformation((String)object);
        if (jSONObject != null) {
            graphMeRequestWithCacheCallback.onSuccess(jSONObject);
            return;
        }
        graphMeRequestWithCacheCallback = new /* Unavailable Anonymous Inner Class!! */;
        object = Utility.getGraphMeRequestWithCache((String)object);
        object.setCallback((GraphRequest.Callback)((Object)graphMeRequestWithCacheCallback));
        object.executeAsync();
    }

    public static String getMetadataApplicationId(Context context) {
        Validate.notNull((Object)context, "context");
        FacebookSdk.sdkInitialize(context);
        return FacebookSdk.getApplicationId();
    }

    public static /* varargs */ Method getMethodQuietly(Class<?> genericDeclaration, String string2, Class<?> ... arrclass) {
        try {
            genericDeclaration = genericDeclaration.getMethod(string2, arrclass);
            return genericDeclaration;
        }
        catch (NoSuchMethodException var0_1) {
            return null;
        }
    }

    public static /* varargs */ Method getMethodQuietly(String object, String string2, Class<?> ... arrclass) {
        try {
            object = Utility.getMethodQuietly(Class.forName((String)object), string2, arrclass);
            return object;
        }
        catch (ClassNotFoundException var0_1) {
            return null;
        }
    }

    public static Object getStringPropertyAsJSON(JSONObject object, String object2, String string2) throws JSONException {
        object = object2 = object.opt((String)object2);
        if (object2 != null) {
            object = object2;
            if (object2 instanceof String) {
                object = new JSONTokener((String)object2).nextValue();
            }
        }
        if (object != null && !(object instanceof JSONObject) && !(object instanceof JSONArray)) {
            if (string2 != null) {
                object2 = new JSONObject();
                object2.putOpt(string2, object);
                return object2;
            }
            throw new FacebookException("Got an unexpected non-JSON object.");
        }
        return object;
    }

    public static String getUriString(Uri uri) {
        if (uri == null) {
            return null;
        }
        return uri.toString();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean hasSameId(JSONObject object, JSONObject object2) {
        if (object == null) return false;
        if (object2 == null) return false;
        if (!object.has("id")) return false;
        if (!object2.has("id")) {
            return false;
        }
        if (object.equals(object2)) {
            return true;
        }
        object = object.optString("id");
        object2 = object2.optString("id");
        if (object == null) return false;
        if (object2 == null) return false;
        return object.equals(object2);
    }

    private static String hashBytes(MessageDigest arrby, byte[] object) {
        arrby.update((byte[])object);
        arrby = arrby.digest();
        object = new StringBuilder();
        for (byte by : arrby) {
            object.append(Integer.toHexString(by >> 4 & 15));
            object.append(Integer.toHexString(by >> 0 & 15));
        }
        return object.toString();
    }

    public static /* varargs */ <T> HashSet<T> hashSet(T ... arrT) {
        HashSet<T> hashSet = new HashSet<T>(arrT.length);
        int n2 = arrT.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            hashSet.add(arrT[i2]);
        }
        return hashSet;
    }

    private static String hashWithAlgorithm(String string2, String string3) {
        return Utility.hashWithAlgorithm(string2, string3.getBytes());
    }

    private static String hashWithAlgorithm(String object, byte[] arrby) {
        try {
            object = MessageDigest.getInstance((String)object);
        }
        catch (NoSuchAlgorithmException var0_1) {
            return null;
        }
        return Utility.hashBytes((MessageDigest)object, arrby);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int[] intersectRanges(int[] arrn, int[] arrn2) {
        int[] arrn3;
        int n2;
        block15 : {
            if (arrn == null) {
                return arrn2;
            }
            if (arrn2 == null) {
                return arrn;
            }
            arrn3 = new int[arrn.length + arrn2.length];
            int n3 = 0;
            int n4 = 0;
            int n5 = 0;
            do {
                n2 = n3;
                if (n4 >= arrn.length) break block15;
                n2 = n3;
                if (n5 >= arrn2.length) break block15;
                int n6 = Integer.MIN_VALUE;
                int n7 = Integer.MAX_VALUE;
                int n8 = arrn[n4];
                n2 = Integer.MAX_VALUE;
                int n9 = arrn2[n5];
                int n10 = Integer.MAX_VALUE;
                if (n4 < arrn.length - 1) {
                    n2 = arrn[n4 + 1];
                }
                if (n5 < arrn2.length - 1) {
                    n10 = arrn2[n5 + 1];
                }
                if (n8 < n9) {
                    if (n2 > n9) {
                        n6 = n9;
                        if (n2 > n10) {
                            n2 = n10;
                            n8 = n5 + 2;
                            n10 = n4;
                        } else {
                            n10 = n4 + 2;
                            n8 = n5;
                        }
                    } else {
                        n10 = n4 + 2;
                        n8 = n5;
                        n2 = n7;
                    }
                } else if (n10 > n8) {
                    n6 = n8;
                    if (n10 > n2) {
                        n10 = n4 + 2;
                        n8 = n5;
                    } else {
                        n2 = n10;
                        n8 = n5 + 2;
                        n10 = n4;
                    }
                } else {
                    n8 = n5 + 2;
                    n10 = n4;
                    n2 = n7;
                }
                n4 = n10;
                n5 = n8;
                if (n6 == Integer.MIN_VALUE) continue;
                n5 = n3 + 1;
                arrn3[n3] = n6;
                if (n2 == Integer.MAX_VALUE) break;
                n3 = n5 + 1;
                arrn3[n5] = n2;
                n4 = n10;
                n5 = n8;
            } while (true);
            n2 = n5;
        }
        return Arrays.copyOf(arrn3, n2);
    }

    public static /* varargs */ Object invokeMethodQuietly(Object object, Method method, Object ... arrobject) {
        try {
            object = method.invoke(object, arrobject);
            return object;
        }
        catch (IllegalAccessException var0_1) {
            return null;
        }
        catch (InvocationTargetException var0_2) {
            return null;
        }
    }

    public static boolean isContentUri(Uri uri) {
        if (uri != null && "content".equalsIgnoreCase(uri.getScheme())) {
            return true;
        }
        return false;
    }

    public static boolean isCurrentAccessToken(AccessToken accessToken) {
        if (accessToken != null) {
            return accessToken.equals(AccessToken.getCurrentAccessToken());
        }
        return false;
    }

    public static boolean isFileUri(Uri uri) {
        if (uri != null && "file".equalsIgnoreCase(uri.getScheme())) {
            return true;
        }
        return false;
    }

    public static boolean isNullOrEmpty(String string2) {
        if (string2 == null || string2.length() == 0) {
            return true;
        }
        return false;
    }

    public static <T> boolean isNullOrEmpty(Collection<T> collection) {
        if (collection == null || collection.size() == 0) {
            return true;
        }
        return false;
    }

    public static <T> boolean isSubset(Collection<T> object, Collection<T> collection) {
        boolean bl = false;
        if (collection == null || collection.size() == 0) {
            if (object == null || object.size() == 0) {
                bl = true;
            }
            return bl;
        }
        collection = new HashSet<T>(collection);
        object = object.iterator();
        while (object.hasNext()) {
            if (collection.contains(object.next())) continue;
            return false;
        }
        return true;
    }

    public static boolean isWebUri(Uri uri) {
        if (uri != null && ("http".equalsIgnoreCase(uri.getScheme()) || "https".equalsIgnoreCase(uri.getScheme()))) {
            return true;
        }
        return false;
    }

    public static List<String> jsonArrayToStringList(JSONArray jSONArray) throws JSONException {
        ArrayList<String> arrayList = new ArrayList<String>();
        for (int i2 = 0; i2 < jSONArray.length(); ++i2) {
            arrayList.add(jSONArray.getString(i2));
        }
        return arrayList;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static void loadAppSettingsAsync(Context object, String string2) {
        if (Utility.isNullOrEmpty(string2)) return;
        if (fetchedAppSettings.containsKey(string2)) return;
        if (initialAppSettingsLoadTask != null) {
            return;
        }
        String string3 = String.format("com.facebook.internal.APP_SETTINGS.%s", string2);
        initialAppSettingsLoadTask = new /* Unavailable Anonymous Inner Class!! */;
        initialAppSettingsLoadTask.execute((Object[])null);
        string3 = object.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).getString(string3, null);
        if (Utility.isNullOrEmpty(string3)) return;
        object = null;
        try {
            object = string3 = new JSONObject(string3);
        }
        catch (JSONException var2_3) {
            Utility.logd("FacebookSDK", (Exception)var2_3);
        }
        if (object == null) return;
        Utility.parseAppSettingsFromJSON(string2, (JSONObject)object);
    }

    public static void logd(String string2, Exception exception) {
        if (FacebookSdk.isDebugEnabled() && string2 != null && exception != null) {
            Log.d((String)string2, (String)(exception.getClass().getSimpleName() + ": " + exception.getMessage()));
        }
    }

    public static void logd(String string2, String string3) {
        if (FacebookSdk.isDebugEnabled() && string2 != null && string3 != null) {
            Log.d((String)string2, (String)string3);
        }
    }

    public static void logd(String string2, String string3, Throwable throwable) {
        if (FacebookSdk.isDebugEnabled() && !Utility.isNullOrEmpty(string2)) {
            Log.d((String)string2, (String)string3, (Throwable)throwable);
        }
    }

    public static <T, K> List<K> map(List<T> arrayList, Mapper<T, K> mapper) {
        if (arrayList == null) {
            return null;
        }
        ArrayList<Object> arrayList2 = new ArrayList<Object>();
        arrayList = arrayList.iterator();
        while (arrayList.hasNext()) {
            Object object = mapper.apply(arrayList.next());
            if (object == null) continue;
            arrayList2.add(object);
        }
        arrayList = arrayList2;
        if (arrayList2.size() == 0) {
            arrayList = null;
        }
        return arrayList;
    }

    public static String md5hash(String string2) {
        return Utility.hashWithAlgorithm("MD5", string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static FetchedAppSettings parseAppSettingsFromJSON(String string2, JSONObject object) {
        Object object2 = object.optJSONArray("android_sdk_error_categories");
        object2 = object2 == null ? FacebookRequestErrorClassification.getDefaultErrorClassification() : FacebookRequestErrorClassification.createFromJSON((JSONArray)object2);
        object = new FetchedAppSettings(object.optBoolean("supports_implicit_sdk_logging", false), object.optString("gdpv4_nux_content", ""), object.optBoolean("gdpv4_nux_enabled", false), Utility.parseDialogConfigurations(object.optJSONObject("android_dialog_configs")), (FacebookRequestErrorClassification)object2);
        fetchedAppSettings.put(string2, (FetchedAppSettings)object);
        return object;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static Map<String, Map<String, DialogFeatureConfig>> parseDialogConfigurations(JSONObject map) {
        JSONArray jSONArray;
        HashMap<String, Map<String, DialogFeatureConfig>> hashMap = new HashMap<String, Map<String, DialogFeatureConfig>>();
        if (map == null || (jSONArray = map.optJSONArray("data")) == null) {
            return hashMap;
        }
        int n2 = 0;
        while (n2 < jSONArray.length()) {
            DialogFeatureConfig dialogFeatureConfig = DialogFeatureConfig.access$400((JSONObject)jSONArray.optJSONObject(n2));
            if (dialogFeatureConfig != null) {
                void var0_4;
                Map<String, DialogFeatureConfig> map2;
                String string2 = dialogFeatureConfig.getDialogName();
                Map<String, DialogFeatureConfig> map3 = map2 = hashMap.get(string2);
                if (map2 == null) {
                    HashMap hashMap2 = new HashMap();
                    hashMap.put(string2, hashMap2);
                }
                var0_4.put(dialogFeatureConfig.getFeatureName(), dialogFeatureConfig);
            }
            ++n2;
        }
        return hashMap;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Bundle parseUrlQueryString(String arrstring) {
        Bundle bundle = new Bundle();
        if (Utility.isNullOrEmpty((String)arrstring)) {
            return bundle;
        }
        arrstring = arrstring.split("&");
        int n2 = arrstring.length;
        int n3 = 0;
        while (n3 < n2) {
            String[] arrstring2 = arrstring[n3].split("=");
            try {
                if (arrstring2.length == 2) {
                    bundle.putString(URLDecoder.decode(arrstring2[0], "UTF-8"), URLDecoder.decode(arrstring2[1], "UTF-8"));
                } else if (arrstring2.length == 1) {
                    bundle.putString(URLDecoder.decode(arrstring2[0], "UTF-8"), "");
                }
            }
            catch (UnsupportedEncodingException var2_5) {
                Utility.logd("FacebookSDK", var2_5);
            }
            ++n3;
        }
        return bundle;
    }

    public static void putCommaSeparatedStringList(Bundle bundle, String string2, ArrayList<String> object) {
        if (object != null) {
            StringBuilder stringBuilder = new StringBuilder();
            object = object.iterator();
            while (object.hasNext()) {
                stringBuilder.append((String)object.next());
                stringBuilder.append(",");
            }
            object = "";
            if (stringBuilder.length() > 0) {
                object = stringBuilder.substring(0, stringBuilder.length() - 1);
            }
            bundle.putString(string2, (String)object);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean putJSONValueInBundle(Bundle bundle, String string2, Object object) {
        if (object == null) {
            bundle.remove(string2);
            do {
                return true;
                break;
            } while (true);
        }
        if (object instanceof Boolean) {
            bundle.putBoolean(string2, ((Boolean)object).booleanValue());
            return true;
        }
        if (object instanceof boolean[]) {
            bundle.putBooleanArray(string2, (boolean[])object);
            return true;
        }
        if (object instanceof Double) {
            bundle.putDouble(string2, ((Double)object).doubleValue());
            return true;
        }
        if (object instanceof double[]) {
            bundle.putDoubleArray(string2, (double[])object);
            return true;
        }
        if (object instanceof Integer) {
            bundle.putInt(string2, ((Integer)object).intValue());
            return true;
        }
        if (object instanceof int[]) {
            bundle.putIntArray(string2, (int[])object);
            return true;
        }
        if (object instanceof Long) {
            bundle.putLong(string2, ((Long)object).longValue());
            return true;
        }
        if (object instanceof long[]) {
            bundle.putLongArray(string2, (long[])object);
            return true;
        }
        if (object instanceof String) {
            bundle.putString(string2, (String)object);
            return true;
        }
        if (object instanceof JSONArray) {
            bundle.putString(string2, ((JSONArray)object).toString());
            return true;
        }
        if (!(object instanceof JSONObject)) return false;
        bundle.putString(string2, ((JSONObject)object).toString());
        return true;
    }

    public static void putNonEmptyString(Bundle bundle, String string2, String string3) {
        if (!Utility.isNullOrEmpty(string3)) {
            bundle.putString(string2, string3);
        }
    }

    public static void putUri(Bundle bundle, String string2, Uri uri) {
        if (uri != null) {
            Utility.putNonEmptyString(bundle, string2, uri.toString());
        }
    }

    public static FetchedAppSettings queryAppSettings(String string2, boolean bl) {
        if (!bl && fetchedAppSettings.containsKey(string2)) {
            return fetchedAppSettings.get(string2);
        }
        JSONObject jSONObject = Utility.getAppSettingsQueryResponse(string2);
        if (jSONObject == null) {
            return null;
        }
        return Utility.parseAppSettingsFromJSON(string2, jSONObject);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static String readStreamToString(InputStream var0) throws IOException {
        var1_1 = null;
        var2_3 = null;
        var0 = new BufferedInputStream(var0);
        var1_1 = new InputStreamReader(var0);
        try {
            var2_3 = new StringBuilder();
            var3_4 = new char[2048];
            while ((var4_7 = var1_1.read(var3_4)) != -1) {
                var2_3.append(var3_4, 0, var4_7);
            }
            var2_3 = var2_3.toString();
            ** GOTO lbl19
        }
        catch (Throwable var3_5) {
            block8 : {
                var2_3 = var1_1;
                var1_1 = var3_5;
                ** GOTO lbl27
lbl19: // 1 sources:
                Utility.closeQuietly(var0);
                Utility.closeQuietly((Closeable)var1_1);
                return var2_3;
                catch (Throwable var3_6) {
                    var0 = var1_1;
                    var1_1 = var3_6;
                    break block8;
                }
                catch (Throwable var1_2) {}
            }
            Utility.closeQuietly(var0);
            Utility.closeQuietly((Closeable)var2_3);
            throw var1_1;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Map<String, String> readStringMapFromParcel(Parcel parcel) {
        int n2 = parcel.readInt();
        if (n2 < 0) {
            return null;
        }
        HashMap<String, String> hashMap = new HashMap<String, String>();
        int n3 = 0;
        do {
            HashMap<String, String> hashMap2 = hashMap;
            if (n3 >= n2) return hashMap2;
            hashMap.put(parcel.readString(), parcel.readString());
            ++n3;
        } while (true);
    }

    public static String safeGetStringFromResponse(JSONObject jSONObject, String string2) {
        if (jSONObject != null) {
            return jSONObject.optString(string2, "");
        }
        return "";
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void setAppEventAttributionParameters(JSONObject jSONObject, AttributionIdentifiers attributionIdentifiers, String string2, boolean bl) throws JSONException {
        boolean bl2 = true;
        if (attributionIdentifiers != null && attributionIdentifiers.getAttributionId() != null) {
            jSONObject.put("attribution", (Object)attributionIdentifiers.getAttributionId());
        }
        if (attributionIdentifiers != null && attributionIdentifiers.getAndroidAdvertiserId() != null) {
            jSONObject.put("advertiser_id", (Object)attributionIdentifiers.getAndroidAdvertiserId());
            boolean bl3 = !attributionIdentifiers.isTrackingLimited();
            jSONObject.put("advertiser_tracking_enabled", bl3);
        }
        jSONObject.put("anon_id", (Object)string2);
        bl = !bl ? bl2 : false;
        jSONObject.put("application_tracking_enabled", bl);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void setAppEventExtendedDeviceInfoParameters(JSONObject jSONObject, Context object) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put((Object)"a1");
        String string2 = object.getPackageName();
        int n2 = -1;
        String string3 = "";
        int n3 = n2;
        try {
            object = object.getPackageManager().getPackageInfo(string2, 0);
            n3 = n2;
            n3 = n2 = object.versionCode;
            object = object.versionName;
            n3 = n2;
        }
        catch (PackageManager.NameNotFoundException var1_2) {
            object = string3;
        }
        jSONArray.put((Object)string2);
        jSONArray.put(n3);
        jSONArray.put(object);
        jSONObject.put("extinfo", (Object)jSONArray.toString());
    }

    public static String sha1hash(String string2) {
        return Utility.hashWithAlgorithm("SHA-1", string2);
    }

    public static String sha1hash(byte[] arrby) {
        return Utility.hashWithAlgorithm("SHA-1", arrby);
    }

    public static boolean stringsEqualOrEmpty(String string2, String string3) {
        boolean bl = TextUtils.isEmpty((CharSequence)string2);
        boolean bl2 = TextUtils.isEmpty((CharSequence)string3);
        if (bl && bl2) {
            return true;
        }
        if (!bl && !bl2) {
            return string2.equals(string3);
        }
        return false;
    }

    public static JSONArray tryGetJSONArrayFromResponse(JSONObject jSONObject, String string2) {
        if (jSONObject != null) {
            return jSONObject.optJSONArray(string2);
        }
        return null;
    }

    public static JSONObject tryGetJSONObjectFromResponse(JSONObject jSONObject, String string2) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(string2);
        }
        return null;
    }

    public static /* varargs */ <T> Collection<T> unmodifiableCollection(T ... arrT) {
        return Collections.unmodifiableCollection(Arrays.asList(arrT));
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void writeStringMapToParcel(Parcel parcel, Map<String, String> iterator) {
        if (iterator == null) {
            parcel.writeInt(-1);
            return;
        } else {
            parcel.writeInt(iterator.size());
            for (Map.Entry entry : iterator.entrySet()) {
                parcel.writeString((String)entry.getKey());
                parcel.writeString((String)entry.getValue());
            }
        }
    }

    public static class FetchedAppSettings {
        private Map<String, Map<String, DialogFeatureConfig>> dialogConfigMap;
        private FacebookRequestErrorClassification errorClassification;
        private String nuxContent;
        private boolean nuxEnabled;
        private boolean supportsImplicitLogging;

        private FetchedAppSettings(boolean bl, String string2, boolean bl2, Map<String, Map<String, DialogFeatureConfig>> map, FacebookRequestErrorClassification facebookRequestErrorClassification) {
            this.supportsImplicitLogging = bl;
            this.nuxContent = string2;
            this.nuxEnabled = bl2;
            this.dialogConfigMap = map;
            this.errorClassification = facebookRequestErrorClassification;
        }

        public Map<String, Map<String, DialogFeatureConfig>> getDialogConfigurations() {
            return this.dialogConfigMap;
        }

        public FacebookRequestErrorClassification getErrorClassification() {
            return this.errorClassification;
        }

        public String getNuxContent() {
            return this.nuxContent;
        }

        public boolean getNuxEnabled() {
            return this.nuxEnabled;
        }

        public boolean supportsImplicitLogging() {
            return this.supportsImplicitLogging;
        }
    }

    public static interface GraphMeRequestWithCacheCallback {
        public void onFailure(FacebookException var1);

        public void onSuccess(JSONObject var1);
    }

}

