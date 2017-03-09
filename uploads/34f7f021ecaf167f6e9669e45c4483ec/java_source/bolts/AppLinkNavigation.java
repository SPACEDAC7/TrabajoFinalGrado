/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.ApplicationInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.ResolveInfo
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.os.Bundle
 *  android.util.SparseArray
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package bolts;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.util.SparseArray;
import bolts.AppLink;
import bolts.AppLinkResolver;
import bolts.Continuation;
import bolts.MeasurementEvent;
import bolts.Task;
import bolts.WebViewAppLinkResolver;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AppLinkNavigation {
    private static final String KEY_NAME_REFERER_APP_LINK = "referer_app_link";
    private static final String KEY_NAME_REFERER_APP_LINK_APP_NAME = "app_name";
    private static final String KEY_NAME_REFERER_APP_LINK_PACKAGE = "package";
    private static final String KEY_NAME_USER_AGENT = "user_agent";
    private static final String KEY_NAME_VERSION = "version";
    private static final String VERSION = "1.0";
    private static AppLinkResolver defaultResolver;
    private final AppLink appLink;
    private final Bundle appLinkData;
    private final Bundle extras;

    public AppLinkNavigation(AppLink appLink, Bundle bundle, Bundle bundle2) {
        if (appLink == null) {
            throw new IllegalArgumentException("appLink must not be null.");
        }
        Bundle bundle3 = bundle;
        if (bundle == null) {
            bundle3 = new Bundle();
        }
        bundle = bundle2;
        if (bundle2 == null) {
            bundle = new Bundle();
        }
        this.appLink = appLink;
        this.extras = bundle3;
        this.appLinkData = bundle;
    }

    private Bundle buildAppLinkDataForNavigation(Context object) {
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        if (object != null) {
            String string2 = object.getPackageName();
            if (string2 != null) {
                bundle2.putString("package", string2);
            }
            if ((string2 = object.getApplicationInfo()) != null && (object = object.getString(string2.labelRes)) != null) {
                bundle2.putString("app_name", (String)object);
            }
        }
        bundle.putAll(this.getAppLinkData());
        bundle.putString("target_url", this.getAppLink().getSourceUrl().toString());
        bundle.putString("version", "1.0");
        bundle.putString("user_agent", "Bolts Android 1.1.4");
        bundle.putBundle("referer_app_link", bundle2);
        bundle.putBundle("extras", this.getExtras());
        return bundle;
    }

    public static AppLinkResolver getDefaultResolver() {
        return defaultResolver;
    }

    private JSONObject getJSONForBundle(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String string2 : bundle.keySet()) {
            jSONObject.put(string2, this.getJSONValue(bundle.get(string2)));
        }
        return jSONObject;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Object getJSONValue(Object object) throws JSONException {
        if (object instanceof Bundle) {
            return this.getJSONForBundle((Bundle)object);
        }
        if (object instanceof CharSequence) {
            return object.toString();
        }
        if (object instanceof List) {
            JSONArray jSONArray = new JSONArray();
            Iterator iterator = ((List)object).iterator();
            do {
                object = jSONArray;
                if (!iterator.hasNext()) return object;
                jSONArray.put(this.getJSONValue(iterator.next()));
            } while (true);
        }
        if (object instanceof SparseArray) {
            JSONArray jSONArray = new JSONArray();
            SparseArray sparseArray = (SparseArray)object;
            int n2 = 0;
            do {
                object = jSONArray;
                if (n2 >= sparseArray.size()) return object;
                jSONArray.put(sparseArray.keyAt(n2), this.getJSONValue(sparseArray.valueAt(n2)));
                ++n2;
            } while (true);
        }
        if (object instanceof Character) {
            return object.toString();
        }
        if (object instanceof Boolean) {
            return object;
        }
        if (object instanceof Number) {
            if (object instanceof Double) return ((Number)object).doubleValue();
            if (!(object instanceof Float)) return ((Number)object).longValue();
            return ((Number)object).doubleValue();
        }
        if (object instanceof boolean[]) {
            JSONArray jSONArray = new JSONArray();
            boolean[] arrbl = (boolean[])object;
            int n3 = arrbl.length;
            int n4 = 0;
            do {
                object = jSONArray;
                if (n4 >= n3) return object;
                jSONArray.put(this.getJSONValue(arrbl[n4]));
                ++n4;
            } while (true);
        }
        if (object instanceof char[]) {
            JSONArray jSONArray = new JSONArray();
            char[] arrc = (char[])object;
            int n5 = arrc.length;
            int n6 = 0;
            do {
                object = jSONArray;
                if (n6 >= n5) return object;
                jSONArray.put(this.getJSONValue(Character.valueOf(arrc[n6])));
                ++n6;
            } while (true);
        }
        if (object instanceof CharSequence[]) {
            JSONArray jSONArray = new JSONArray();
            CharSequence[] arrcharSequence = (CharSequence[])object;
            int n7 = arrcharSequence.length;
            int n8 = 0;
            do {
                object = jSONArray;
                if (n8 >= n7) return object;
                jSONArray.put(this.getJSONValue(arrcharSequence[n8]));
                ++n8;
            } while (true);
        }
        if (object instanceof double[]) {
            JSONArray jSONArray = new JSONArray();
            double[] arrd = (double[])object;
            int n9 = arrd.length;
            int n10 = 0;
            do {
                object = jSONArray;
                if (n10 >= n9) return object;
                jSONArray.put(this.getJSONValue(arrd[n10]));
                ++n10;
            } while (true);
        }
        if (object instanceof float[]) {
            JSONArray jSONArray = new JSONArray();
            float[] arrf = (float[])object;
            int n11 = arrf.length;
            int n12 = 0;
            do {
                object = jSONArray;
                if (n12 >= n11) return object;
                jSONArray.put(this.getJSONValue(Float.valueOf(arrf[n12])));
                ++n12;
            } while (true);
        }
        if (object instanceof int[]) {
            JSONArray jSONArray = new JSONArray();
            int[] arrn = (int[])object;
            int n13 = arrn.length;
            int n14 = 0;
            do {
                object = jSONArray;
                if (n14 >= n13) return object;
                jSONArray.put(this.getJSONValue(arrn[n14]));
                ++n14;
            } while (true);
        }
        if (object instanceof long[]) {
            JSONArray jSONArray = new JSONArray();
            long[] arrl = (long[])object;
            int n15 = arrl.length;
            int n16 = 0;
            do {
                object = jSONArray;
                if (n16 >= n15) return object;
                jSONArray.put(this.getJSONValue(arrl[n16]));
                ++n16;
            } while (true);
        }
        if (object instanceof short[]) {
            JSONArray jSONArray = new JSONArray();
            short[] arrs = (short[])object;
            int n17 = arrs.length;
            int n18 = 0;
            do {
                object = jSONArray;
                if (n18 >= n17) return object;
                jSONArray.put(this.getJSONValue(arrs[n18]));
                ++n18;
            } while (true);
        }
        if (!(object instanceof String[])) return null;
        JSONArray jSONArray = new JSONArray();
        String[] arrstring = (String[])object;
        int n19 = arrstring.length;
        int n20 = 0;
        do {
            object = jSONArray;
            if (n20 >= n19) return object;
            jSONArray.put(this.getJSONValue(arrstring[n20]));
            ++n20;
        } while (true);
    }

    private static AppLinkResolver getResolver(Context context) {
        if (AppLinkNavigation.getDefaultResolver() != null) {
            return AppLinkNavigation.getDefaultResolver();
        }
        return new WebViewAppLinkResolver(context);
    }

    public static NavigationResult navigate(Context context, AppLink appLink) {
        return new AppLinkNavigation(appLink, null, null).navigate(context);
    }

    public static Task<NavigationResult> navigateInBackground(Context context, Uri uri) {
        return AppLinkNavigation.navigateInBackground(context, uri, AppLinkNavigation.getResolver(context));
    }

    public static Task<NavigationResult> navigateInBackground(final Context context, Uri uri, AppLinkResolver appLinkResolver) {
        return appLinkResolver.getAppLinkFromUrlInBackground(uri).onSuccess(new Continuation<AppLink, NavigationResult>(){

            @Override
            public NavigationResult then(Task<AppLink> task) throws Exception {
                return AppLinkNavigation.navigate(context, task.getResult());
            }
        }, Task.UI_THREAD_EXECUTOR);
    }

    public static Task<NavigationResult> navigateInBackground(Context context, String string2) {
        return AppLinkNavigation.navigateInBackground(context, string2, AppLinkNavigation.getResolver(context));
    }

    public static Task<NavigationResult> navigateInBackground(Context context, String string2, AppLinkResolver appLinkResolver) {
        return AppLinkNavigation.navigateInBackground(context, Uri.parse((String)string2), appLinkResolver);
    }

    public static Task<NavigationResult> navigateInBackground(Context context, URL uRL) {
        return AppLinkNavigation.navigateInBackground(context, uRL, AppLinkNavigation.getResolver(context));
    }

    public static Task<NavigationResult> navigateInBackground(Context context, URL uRL, AppLinkResolver appLinkResolver) {
        return AppLinkNavigation.navigateInBackground(context, Uri.parse((String)uRL.toString()), appLinkResolver);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void sendAppLinkNavigateEventBroadcast(Context context, Intent intent, NavigationResult navigationResult, JSONException object) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        if (object != null) {
            hashMap.put("error", object.getLocalizedMessage());
        }
        object = navigationResult.isSucceeded() ? "1" : "0";
        hashMap.put("success", (String)object);
        hashMap.put("type", navigationResult.getCode());
        MeasurementEvent.sendBroadcastEvent(context, "al_nav_out", intent, hashMap);
    }

    public static void setDefaultResolver(AppLinkResolver appLinkResolver) {
        defaultResolver = appLinkResolver;
    }

    public AppLink getAppLink() {
        return this.appLink;
    }

    public Bundle getAppLinkData() {
        return this.appLinkData;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public NavigationResult navigate(Context context) {
        Intent intent;
        Object object = context.getPackageManager();
        Bundle bundle = this.buildAppLinkDataForNavigation(context);
        Intent intent2 = null;
        Uri uri = this.getAppLink().getTargets().iterator();
        do {
            intent = intent2;
            if (!uri.hasNext()) break;
            AppLink.Target target = uri.next();
            intent = new Intent("android.intent.action.VIEW");
            if (target.getUrl() != null) {
                intent.setData(target.getUrl());
            } else {
                intent.setData(this.appLink.getSourceUrl());
            }
            intent.setPackage(target.getPackageName());
            if (target.getClassName() != null) {
                intent.setClassName(target.getPackageName(), target.getClassName());
            }
            intent.putExtra("al_applink_data", bundle);
        } while (object.resolveActivity(intent, 65536) == null);
        intent2 = null;
        object = NavigationResult.FAILED;
        if (intent != null) {
            object = NavigationResult.APP;
            intent2 = intent;
        } else {
            uri = this.getAppLink().getWebUrl();
            if (uri != null) {
                intent2 = this.getJSONForBundle(bundle);
                intent2 = new Intent("android.intent.action.VIEW", uri.buildUpon().appendQueryParameter("al_applink_data", intent2.toString()).build());
                object = NavigationResult.WEB;
            }
        }
        this.sendAppLinkNavigateEventBroadcast(context, intent2, (NavigationResult)((Object)object), null);
        if (intent2 == null) return object;
        context.startActivity(intent2);
        return object;
        catch (JSONException jSONException) {
            this.sendAppLinkNavigateEventBroadcast(context, intent, NavigationResult.FAILED, jSONException);
            throw new RuntimeException((Throwable)jSONException);
        }
    }

    public static enum NavigationResult {
        FAILED("failed", false),
        WEB("web", true),
        APP("app", true);
        
        private String code;
        private boolean succeeded;

        private NavigationResult(String string3, boolean bl) {
            this.code = string3;
            this.succeeded = bl;
        }

        public String getCode() {
            return this.code;
        }

        public boolean isSucceeded() {
            return this.succeeded;
        }
    }

}

