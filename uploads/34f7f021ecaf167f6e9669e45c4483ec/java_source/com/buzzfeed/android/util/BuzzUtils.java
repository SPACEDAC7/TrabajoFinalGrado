/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ActivityNotFoundException
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.ActivityInfo
 *  android.content.pm.ApplicationInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.content.pm.ResolveInfo
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.os.AsyncTask
 *  android.os.Looper
 *  android.os.Parcelable
 *  android.provider.SearchRecentSuggestions
 *  android.text.TextUtils
 *  android.view.View
 *  android.view.ViewGroup
 *  android.webkit.URLUtil
 *  android.widget.TextView
 *  android.widget.Toast
 *  okhttp3.ResponseBody
 *  org.json.JSONException
 *  org.json.JSONObject
 *  retrofit2.Response
 *  uk.co.chrisjenx.calligraphy.CalligraphyUtils
 */
package com.buzzfeed.android.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Looper;
import android.os.Parcelable;
import android.provider.SearchRecentSuggestions;
import android.support.design.widget.Snackbar;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.TextView;
import android.widget.Toast;
import com.buzzfeed.ads.utils.AdConfig;
import com.buzzfeed.android.data.BuzzFeedApplication;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.preferences.PoundPreference;
import com.buzzfeed.android.util.BuzzApiClient;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.NetworkService;
import com.buzzfeed.toolkit.networking.helpers.ReactionsServiceHelper;
import com.buzzfeed.toolkit.util.DeviceUtil;
import com.buzzfeed.toolkit.util.HttpException;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.ResponseBody;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Response;
import uk.co.chrisjenx.calligraphy.CalligraphyConfig;
import uk.co.chrisjenx.calligraphy.CalligraphyUtils;

public class BuzzUtils {
    private static final String BUZZFEED_DOMAIN_BASE = "buzzfeed.com";
    private static String BUZZFEED_MOBILE_PARAM;
    public static final String BUZZFEED_STATIC_IMAGE_URL = "https://img.buzzfeed.com";
    public static final String ERROR_INVALID_SESSION = "invalid_session";
    public static String FEEDBACK_EMAIL;
    private static String MOBILE_APP_PARAM_KEY;
    private static String MOBILE_APP_PARAM_VALUE;
    private static final String TAG;
    private static final ArrayList<String> standardizeBuzzFeedUriReplacementList;

    static {
        TAG = BuzzUtils.class.getSimpleName();
        FEEDBACK_EMAIL = "support@buzzfeed.com";
        MOBILE_APP_PARAM_KEY = "s";
        MOBILE_APP_PARAM_VALUE = "mobile_app";
        BUZZFEED_MOBILE_PARAM = MOBILE_APP_PARAM_KEY + "=" + MOBILE_APP_PARAM_VALUE;
        standardizeBuzzFeedUriReplacementList = new ArrayList<String>(){};
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String appendMobileAppParam(String string2) {
        if (string2 == null) return "";
        if (string2.isEmpty()) {
            return "";
        }
        Uri uri = Uri.parse((String)string2);
        Object object = uri.getQueryParameter(MOBILE_APP_PARAM_KEY);
        if (object != null) {
            if (object.equals(BUZZFEED_MOBILE_PARAM)) return string2;
        }
        string2 = new Uri.Builder();
        string2.scheme(uri.getScheme()).authority(uri.getAuthority());
        object = uri.getPathSegments().iterator();
        while (object.hasNext()) {
            string2.appendPath((String)object.next());
        }
        if (uri.getQueryParameterNames().isEmpty()) {
            string2.appendQueryParameter(MOBILE_APP_PARAM_KEY, MOBILE_APP_PARAM_VALUE);
            return string2.build().toString();
        }
        object = uri.getQueryParameterNames().iterator();
        while (object.hasNext()) {
            String string3 = (String)object.next();
            if (string3.equals(MOBILE_APP_PARAM_KEY)) {
                string2.appendQueryParameter(MOBILE_APP_PARAM_KEY, MOBILE_APP_PARAM_VALUE);
                continue;
            }
            string2.appendQueryParameter(string3, uri.getQueryParameter(string3));
        }
        return string2.build().toString();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String baseUri(String string2) {
        int n2;
        int n3;
        Object object = Pattern.compile("\\?");
        Object object2 = Pattern.compile("#");
        object = object.matcher(string2);
        object2 = object2.matcher(string2);
        int n4 = n3 = (n2 = string2.length());
        if (object.find()) {
            n3 = object.start();
        }
        if (object2.find()) {
            n4 = object2.start();
        }
        if (n3 >= n2) {
            object2 = string2;
            if (n4 >= n2) return object2;
        }
        if (n3 >= n4) return string2.substring(0, n4);
        return string2.substring(0, n3);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void changeFont(ViewGroup viewGroup, String string2) {
        int n2 = 0;
        while (n2 < viewGroup.getChildCount()) {
            View view = viewGroup.getChildAt(n2);
            if (view instanceof ViewGroup) {
                BuzzUtils.changeFont((ViewGroup)view, string2);
            } else if (view instanceof TextView) {
                CalligraphyUtils.applyFontToTextView((Context)viewGroup.getContext(), (TextView)((TextView)view), (CalligraphyConfig)CalligraphyConfig.get(), (String)string2);
            }
            ++n2;
        }
    }

    public static void clearSearchSuggestions(Context context) {
        new SearchRecentSuggestions(context.getApplicationContext(), "com.buzzfeed.android.data.SearchSuggester", 1).clearHistory();
    }

    public static Intent createViewBuzzIntentExcludingBfApp(Context context, Uri uri) {
        ArrayList<Intent> arrayList = new ArrayList<Intent>();
        uri = new Intent("android.intent.action.VIEW", uri);
        Object object = context.getPackageManager().queryIntentActivities((Intent)uri, 0);
        if (!object.isEmpty()) {
            object = object.iterator();
            while (object.hasNext()) {
                ResolveInfo resolveInfo = (ResolveInfo)object.next();
                if (resolveInfo.activityInfo == null || resolveInfo.activityInfo.packageName.equalsIgnoreCase(context.getPackageName())) continue;
                Intent intent = new Intent((Intent)uri);
                intent.setPackage(resolveInfo.activityInfo.packageName);
                arrayList.add(intent);
            }
            if (!arrayList.isEmpty()) {
                context = Intent.createChooser((Intent)((Intent)arrayList.remove(0)), (CharSequence)context.getString(2131296435));
                context.putExtra("android.intent.extra.INITIAL_INTENTS", arrayList.toArray((T[])new Parcelable[0]));
                return context;
            }
        }
        return null;
    }

    public static Intent createViewBuzzIntentWithoutChooser(Context context, Uri uri) {
        uri = new Intent("android.intent.action.VIEW", uri);
        uri.setPackage(context.getPackageName());
        return uri;
    }

    public static BuzzFeedApplication getApplication(Context context) {
        return (BuzzFeedApplication)context.getApplicationContext();
    }

    public static String getBuzzFeedUserAgentSuffix(Context context) {
        return String.format(context.getString(2131296821), String.valueOf(502002));
    }

    public static String getCsrfToken(BuzzUser object) {
        String string2;
        object = string2 = BuzzUtils.getCsrfTokenInternal((BuzzUser)object);
        if (string2.equals("invalid_session")) {
            object = null;
        }
        return object;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static String getCsrfTokenInternal(BuzzUser var0) {
        var9_5 = BuzzUtils.TAG + ".getCsrfTokenInternal";
        var6_6 = null;
        var7_7 = null;
        var8_8 = null;
        var1_10 = var5_9 = null;
        if (var0 == null) return var1_10;
        var1_10 = var5_9;
        if (var0.isLogin() == false) return var1_10;
        var4_11 = var6_6;
        var2_12 = var7_7;
        var3_13 = var8_8;
        try {
            var0 = BuzzUtils.requestCsrfTokenInternal((BuzzUser)var0);
            var4_11 = var6_6;
            var2_12 = var7_7;
            var3_13 = var8_8;
            if (var0.code() == 401) {
                return "invalid_session";
            }
            var4_11 = var6_6;
            var2_12 = var7_7;
            var3_13 = var8_8;
            var0 = new JSONObject(((ResponseBody)var0.body()).string());
            var1_10 = var5_9;
            var4_11 = var6_6;
            var2_12 = var7_7;
            var3_13 = var8_8;
            if (var0.optInt("success") != 1) return var1_10;
            var4_11 = var6_6;
            var2_12 = var7_7;
            var3_13 = var8_8;
            var1_10 = var0 = var0.optString("token");
            if (var0 == null) return var1_10;
            var4_11 = var0;
            var2_12 = var0;
            var3_13 = var0;
            var10_14 = var0.length();
            var1_10 = var0;
            if (var10_14 != 0) return var1_10;
            return null;
        }
        catch (JSONException var0_1) {
            block5 : {
                var1_10 = var4_11;
                ** GOTO lbl48
                catch (IOException var0_3) {
                    var1_10 = var2_12;
                    break block5;
                }
                catch (HttpException var0_4) {
                    var1_10 = var3_13;
                }
            }
            LogUtil.e(var9_5, "Error getting CSRF token", (Throwable)var0_2);
            return var1_10;
        }
    }

    public static String getCsrfTokenOrInvalidSession(BuzzUser buzzUser, Context context) {
        String string2;
        String string3 = string2 = BuzzUtils.getCsrfTokenInternal(buzzUser);
        if (string2 != null) {
            string3 = string2;
            if (string2.equals("invalid_session")) {
                string3 = string2;
                if (BuzzApiClient.updateSessionToken(buzzUser, context)) {
                    buzzUser.saveToStorage(context);
                    string3 = BuzzUtils.getCsrfTokenInternal(buzzUser);
                }
            }
        }
        return string3;
    }

    public static String getLocale(Context object) {
        String string2 = object.getResources().getConfiguration().locale.getLanguage().toLowerCase();
        object = object.getResources().getConfiguration().locale.getCountry().toLowerCase();
        return string2 + "-" + (String)object;
    }

    public static boolean isBuzzFeedStaticImageUrl(String string2) {
        if (!URLUtil.isValidUrl((String)string2)) {
            return false;
        }
        return Uri.parse((String)string2).getAuthority().equals(Uri.parse((String)"https://img.buzzfeed.com").getAuthority());
    }

    public static boolean isBuzzFeedUrl(String string2) {
        if (!URLUtil.isValidUrl((String)string2)) {
            return false;
        }
        return Uri.parse((String)string2).getAuthority().endsWith("buzzfeed.com");
    }

    public static boolean isMainThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }

    public static Boolean isPlayStoreInstalled(Context context) {
        String string2 = TAG + ".isPlayStoreInstalled()";
        context = context.getPackageManager();
        try {
            context.getApplicationInfo("com.android.vending", 0);
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            LogUtil.e(string2, "Unable to find PackageManager", (Throwable)var0_1);
            return false;
        }
        return true;
    }

    public static boolean isPoundEnabled(Context context) {
        return new PoundPreference(context).getValue();
    }

    @Deprecated
    public static void loadAndSetAdvertisingData(Context context) {
        new AdvertisingIdFetcher().execute((Object[])new Context[]{context.getApplicationContext()});
    }

    public static void openFeedback(Activity activity) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("message/rfc822");
        intent.putExtra("android.intent.extra.EMAIL", new String[]{FEEDBACK_EMAIL});
        intent.putExtra("android.intent.extra.SUBJECT", "BuzzFeed Android (502002) Feedback");
        intent.putExtra("android.intent.extra.TEXT", DeviceUtil.buildFeedbackInfo((Context)activity));
        intent.setFlags(268435456);
        activity.startActivity(Intent.createChooser((Intent)intent, (CharSequence)"Email"));
    }

    public static void openLink(Activity activity, String string2) {
        String string3 = TAG + ".openLink";
        if (!URLUtil.isValidUrl((String)string2)) {
            LogUtil.e(string3, "Invalid URL. Unable to open link. url=" + string2);
            return;
        }
        string2 = new Intent("android.intent.action.VIEW", Uri.parse((String)string2));
        string2.setFlags(268435456);
        activity.startActivity((Intent)string2);
    }

    public static String removeCacheBuster(String object) {
        if (object != null) {
            object = Pattern.compile("&z=\\d+").matcher((CharSequence)object);
            StringBuffer stringBuffer = new StringBuffer();
            boolean bl = object.find();
            while (bl) {
                object.appendReplacement(stringBuffer, "");
                bl = object.find();
            }
            object.appendTail(stringBuffer);
            return stringBuffer.toString();
        }
        return null;
    }

    private static Response<ResponseBody> requestCsrfTokenInternal(BuzzUser object) throws IOException, HttpException {
        object = new ReactionsServiceHelper.CrsfTokenRequestParamBuilder().sessionKey(object.getSessionKey()).build();
        return NetworkService.getReactionsService().getCsrfTokenInternal((Map<String, String>)object).execute();
    }

    public static void setIsPoundEnabled(Context context, boolean bl) {
        new PoundPreference(context).setValue(bl);
    }

    public static void showSnackBarNotification(View view, String string2, int n2) {
        Snackbar.make(view, string2, n2).show();
    }

    public static void showToastNotification(final Activity activity, final String string2, final int n2) {
        if (BuzzUtils.isMainThread()) {
            Toast.makeText((Context)activity.getApplicationContext(), (CharSequence)string2, (int)n2).show();
            return;
        }
        activity.runOnUiThread(new Runnable(){

            @Override
            public void run() {
                Toast.makeText((Context)activity.getApplicationContext(), (CharSequence)string2, (int)n2).show();
            }
        });
    }

    public static String standardizeBuzzFeedUri(String string2) {
        TAG + ".standardizeBuzzFeedUri";
        String string3 = string2;
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            Iterator<String> iterator = standardizeBuzzFeedUriReplacementList.iterator();
            do {
                string3 = string2;
                if (!iterator.hasNext()) break;
                string3 = iterator.next();
                if (!string2.startsWith(string3)) continue;
                string2 = EnvironmentConfig.getEnvironment().BASE_URL + "/" + string2.substring(string3.length());
            } while (true);
        }
        return string3;
    }

    public static void startIntent(Activity activity, Intent intent) {
        String string2 = TAG + ".startIntent";
        try {
            activity.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException var0_1) {
            LogUtil.e(string2, "Couldn't start intent", (Throwable)var0_1);
            return;
        }
    }

    public static Uri stripSchemeAndHost(Uri uri) {
        if (uri == null) {
            return null;
        }
        Uri.Builder builder = new Uri.Builder();
        builder.encodedPath(uri.getPath());
        builder.encodedQuery(uri.getQuery());
        builder.encodedFragment(uri.getFragment());
        return builder.build();
    }

    @Deprecated
    private static class AdvertisingIdFetcher
    extends AsyncTask<Context, Void, AdvertisingIdClient.Info> {
        static final String TAG = AdvertisingIdFetcher.class.getSimpleName();
        Context c = null;

        private AdvertisingIdFetcher() {
        }

        private static AdvertisingIdClient.Info createDefault() {
            return new AdvertisingIdClient.Info("android_id", false);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        protected /* varargs */ AdvertisingIdClient.Info doInBackground(Context ... object) {
            Object object2;
            String string2 = TAG + ".doInBackground";
            this.c = object[0];
            object = object2 = null;
            if (this.c != null) {
                try {
                    object = AdvertisingIdClient.getAdvertisingIdInfo(this.c);
                }
                catch (IOException var1_2) {
                    LogUtil.e(string2, "network error", var1_2);
                    object = object2;
                }
                catch (IllegalStateException var1_3) {
                    LogUtil.e(string2, "getAdvertisingIdInfo called on main thread", var1_3);
                    object = object2;
                }
                catch (Exception var1_4) {
                    LogUtil.e(string2, "retrieving Google Play Services Advertising id failed. Reverting to ANDROID_ID", var1_4);
                    object = object2;
                }
            }
            object2 = object;
            if (object != null) return object2;
            return AdvertisingIdFetcher.createDefault();
        }

        protected void onPostExecute(AdvertisingIdClient.Info info) {
            AdConfig.setAdvertisingId(info.getId());
            AdConfig.setOptOutInterestAds(info.isLimitAdTrackingEnabled());
        }

        protected void onPreExecute() {
        }
    }

}

