/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.Parcelable
 *  android.util.Log
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.applinks;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AppLinkData {
    private static final String APPLINK_BRIDGE_ARGS_KEY = "bridge_args";
    private static final String APPLINK_METHOD_ARGS_KEY = "method_args";
    private static final String APPLINK_VERSION_KEY = "version";
    public static final String ARGUMENTS_NATIVE_CLASS_KEY = "com.facebook.platform.APPLINK_NATIVE_CLASS";
    public static final String ARGUMENTS_NATIVE_URL = "com.facebook.platform.APPLINK_NATIVE_URL";
    public static final String ARGUMENTS_REFERER_DATA_KEY = "referer_data";
    public static final String ARGUMENTS_TAPTIME_KEY = "com.facebook.platform.APPLINK_TAP_TIME_UTC";
    private static final String BRIDGE_ARGS_METHOD_KEY = "method";
    private static final String BUNDLE_AL_APPLINK_DATA_KEY = "al_applink_data";
    static final String BUNDLE_APPLINK_ARGS_KEY = "com.facebook.platform.APPLINK_ARGS";
    private static final String DEFERRED_APP_LINK_ARGS_FIELD = "applink_args";
    private static final String DEFERRED_APP_LINK_CLASS_FIELD = "applink_class";
    private static final String DEFERRED_APP_LINK_CLICK_TIME_FIELD = "click_time";
    private static final String DEFERRED_APP_LINK_EVENT = "DEFERRED_APP_LINK";
    private static final String DEFERRED_APP_LINK_PATH = "%s/activities";
    private static final String DEFERRED_APP_LINK_URL_FIELD = "applink_url";
    private static final String METHOD_ARGS_REF_KEY = "ref";
    private static final String METHOD_ARGS_TARGET_URL_KEY = "target_url";
    private static final String REFERER_DATA_REF_KEY = "fb_ref";
    private static final String TAG = AppLinkData.class.getCanonicalName();
    private Bundle argumentBundle;
    private JSONObject arguments;
    private String ref;
    private Uri targetUri;

    private AppLinkData() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static AppLinkData createFromActivity(Activity object) {
        Object object2;
        Validate.notNull(object, "activity");
        Intent intent = object.getIntent();
        if (intent == null) {
            return null;
        }
        object = object2 = AppLinkData.createFromAlApplinkData(intent);
        if (object2 == null) {
            object = AppLinkData.createFromJson(intent.getStringExtra("com.facebook.platform.APPLINK_ARGS"));
        }
        object2 = object;
        if (object != null) return object2;
        return AppLinkData.createFromUri(intent.getData());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static AppLinkData createFromAlApplinkData(Intent object) {
        Bundle bundle = object.getBundleExtra("al_applink_data");
        if (bundle == null) {
            return null;
        }
        AppLinkData appLinkData = new AppLinkData();
        appLinkData.targetUri = object.getData();
        if (appLinkData.targetUri == null && (object = bundle.getString("target_url")) != null) {
            appLinkData.targetUri = Uri.parse((String)object);
        }
        appLinkData.argumentBundle = bundle;
        appLinkData.arguments = null;
        bundle = bundle.getBundle("referer_data");
        object = appLinkData;
        if (bundle == null) return object;
        appLinkData.ref = bundle.getString("fb_ref");
        return appLinkData;
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static AppLinkData createFromJson(String string2) {
        if (string2 == null) {
            return null;
        }
        try {
            string2 = new JSONObject(string2);
            Object object = string2.getString("version");
            if (!string2.getJSONObject("bridge_args").getString("method").equals("applink")) return null;
            if (!object.equals("2")) return null;
            object = new AppLinkData();
            object.arguments = string2.getJSONObject("method_args");
            if (object.arguments.has("ref")) {
                object.ref = object.arguments.getString("ref");
            } else if (object.arguments.has("referer_data") && (string2 = object.arguments.getJSONObject("referer_data")).has("fb_ref")) {
                object.ref = string2.getString("fb_ref");
            }
            if (object.arguments.has("target_url")) {
                object.targetUri = Uri.parse((String)object.arguments.getString("target_url"));
            }
            object.argumentBundle = AppLinkData.toBundle(object.arguments);
            return object;
        }
        catch (JSONException var0_1) {
            Log.d((String)TAG, (String)"Unable to parse AppLink JSON", (Throwable)var0_1);
        }
        return null;
        catch (FacebookException facebookException) {
            Log.d((String)TAG, (String)"Unable to parse AppLink JSON", (Throwable)facebookException);
            return null;
        }
    }

    private static AppLinkData createFromUri(Uri uri) {
        if (uri == null) {
            return null;
        }
        AppLinkData appLinkData = new AppLinkData();
        appLinkData.targetUri = uri;
        return appLinkData;
    }

    public static void fetchDeferredAppLinkData(Context context, CompletionHandler completionHandler) {
        AppLinkData.fetchDeferredAppLinkData(context, null, completionHandler);
    }

    public static void fetchDeferredAppLinkData(final Context context, String string2, final CompletionHandler completionHandler) {
        Validate.notNull((Object)context, "context");
        Validate.notNull(completionHandler, "completionHandler");
        final String string3 = string2;
        if (string2 == null) {
            string3 = Utility.getMetadataApplicationId(context);
        }
        Validate.notNull(string3, "applicationId");
        context = context.getApplicationContext();
        FacebookSdk.getExecutor().execute(new Runnable(){

            @Override
            public void run() {
                AppLinkData.fetchDeferredAppLinkFromServer(context, string3, completionHandler);
            }
        });
    }

    /*
     * Exception decompiling
     */
    private static void fetchDeferredAppLinkFromServer(Context var0, String var1_6, CompletionHandler var2_8) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [1[TRYBLOCK]], but top level block is 10[CATCHBLOCK]
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

    private static Bundle toBundle(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator iterator = jSONObject.keys();
        while (iterator.hasNext()) {
            String string2 = (String)iterator.next();
            Object object = jSONObject.get(string2);
            if (object instanceof JSONObject) {
                bundle.putBundle(string2, AppLinkData.toBundle((JSONObject)object));
                continue;
            }
            if (object instanceof JSONArray) {
                int n2;
                if ((object = (JSONArray)object).length() == 0) {
                    bundle.putStringArray(string2, new String[0]);
                    continue;
                }
                Bundle[] arrbundle = object.get(0);
                if (arrbundle instanceof JSONObject) {
                    arrbundle = new Bundle[object.length()];
                    for (n2 = 0; n2 < object.length(); ++n2) {
                        arrbundle[n2] = AppLinkData.toBundle(object.getJSONObject(n2));
                    }
                    bundle.putParcelableArray(string2, (Parcelable[])arrbundle);
                    continue;
                }
                if (arrbundle instanceof JSONArray) {
                    throw new FacebookException("Nested arrays are not supported.");
                }
                arrbundle = new String[object.length()];
                for (n2 = 0; n2 < object.length(); ++n2) {
                    arrbundle[n2] = object.get(n2).toString();
                }
                bundle.putStringArray(string2, (String[])arrbundle);
                continue;
            }
            bundle.putString(string2, object.toString());
        }
        return bundle;
    }

    public Bundle getArgumentBundle() {
        return this.argumentBundle;
    }

    public String getRef() {
        return this.ref;
    }

    public Bundle getRefererData() {
        if (this.argumentBundle != null) {
            return this.argumentBundle.getBundle("referer_data");
        }
        return null;
    }

    public Uri getTargetUri() {
        return this.targetUri;
    }

    public static interface CompletionHandler {
        public void onDeferredAppLinkDataFetched(AppLinkData var1);
    }

}

