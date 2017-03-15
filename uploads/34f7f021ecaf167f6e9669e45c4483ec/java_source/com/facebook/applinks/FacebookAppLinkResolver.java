/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.os.Bundle
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.applinks;

import android.net.Uri;
import android.os.Bundle;
import bolts.AppLink;
import bolts.AppLinkResolver;
import bolts.Continuation;
import bolts.Task;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestAsyncTask;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class FacebookAppLinkResolver
implements AppLinkResolver {
    private static final String APP_LINK_ANDROID_TARGET_KEY = "android";
    private static final String APP_LINK_KEY = "app_links";
    private static final String APP_LINK_TARGET_APP_NAME_KEY = "app_name";
    private static final String APP_LINK_TARGET_CLASS_KEY = "class";
    private static final String APP_LINK_TARGET_PACKAGE_KEY = "package";
    private static final String APP_LINK_TARGET_SHOULD_FALLBACK_KEY = "should_fallback";
    private static final String APP_LINK_TARGET_URL_KEY = "url";
    private static final String APP_LINK_WEB_TARGET_KEY = "web";
    private final HashMap<Uri, AppLink> cachedAppLinks = new HashMap();

    private static AppLink.Target getAndroidTargetFromJson(JSONObject jSONObject) {
        String string2 = FacebookAppLinkResolver.tryGetStringFromJson(jSONObject, "package", null);
        if (string2 == null) {
            return null;
        }
        String string3 = FacebookAppLinkResolver.tryGetStringFromJson(jSONObject, "class", null);
        String string4 = FacebookAppLinkResolver.tryGetStringFromJson(jSONObject, "app_name", null);
        String string5 = FacebookAppLinkResolver.tryGetStringFromJson(jSONObject, "url", null);
        jSONObject = null;
        if (string5 != null) {
            jSONObject = Uri.parse((String)string5);
        }
        return new AppLink.Target(string2, string3, (Uri)jSONObject, string4);
    }

    private static Uri getWebFallbackUriFromJson(Uri uri, JSONObject jSONObject) {
        Object object;
        block6 : {
            block5 : {
                jSONObject = jSONObject.getJSONObject("web");
                if (FacebookAppLinkResolver.tryGetBooleanFromJson(jSONObject, "should_fallback", true)) break block5;
                return null;
            }
            object = FacebookAppLinkResolver.tryGetStringFromJson(jSONObject, "url", null);
            jSONObject = null;
            if (object == null) break block6;
            try {
                jSONObject = Uri.parse((String)object);
            }
            catch (JSONException var1_2) {
                object = uri;
            }
        }
        object = jSONObject;
        if (jSONObject == null) {
            return uri;
        }
        return object;
    }

    private static boolean tryGetBooleanFromJson(JSONObject jSONObject, String string2, boolean bl) {
        try {
            boolean bl2 = jSONObject.getBoolean(string2);
            return bl2;
        }
        catch (JSONException var0_1) {
            return bl;
        }
    }

    private static String tryGetStringFromJson(JSONObject object, String string2, String string3) {
        try {
            object = object.getString(string2);
            return object;
        }
        catch (JSONException var0_1) {
            return string3;
        }
    }

    @Override
    public Task<AppLink> getAppLinkFromUrlInBackground(final Uri uri) {
        ArrayList<Uri> arrayList = new ArrayList<Uri>();
        arrayList.add(uri);
        return this.getAppLinkFromUrlsInBackground(arrayList).onSuccess(new Continuation<Map<Uri, AppLink>, AppLink>(){

            @Override
            public AppLink then(Task<Map<Uri, AppLink>> task) throws Exception {
                return task.getResult().get((Object)uri);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public Task<Map<Uri, AppLink>> getAppLinkFromUrlsInBackground(List<Uri> hashMap) {
        HashMap<Uri, AppLink> hashMap2 = new HashMap<Uri, AppLink>();
        HashSet<Uri> hashSet = new HashSet<Uri>();
        StringBuilder stringBuilder = new StringBuilder();
        Bundle bundle = hashMap.iterator();
        while (bundle.hasNext()) {
            Uri uri = (Uri)bundle.next();
            hashMap = this.cachedAppLinks;
            // MONITORENTER : hashMap
            AppLink appLink = this.cachedAppLinks.get((Object)uri);
            // MONITOREXIT : hashMap
            if (appLink != null) {
                hashMap2.put(uri, appLink);
                continue;
            }
            if (!hashSet.isEmpty()) {
                stringBuilder.append(',');
            }
            stringBuilder.append(uri.toString());
            hashSet.add(uri);
        }
        if (hashSet.isEmpty()) {
            return Task.forResult(hashMap2);
        }
        hashMap = Task.create();
        bundle = new Bundle();
        bundle.putString("ids", stringBuilder.toString());
        bundle.putString("fields", String.format("%s.fields(%s,%s)", "app_links", "android", "web"));
        new GraphRequest(null, "", bundle, null, new GraphRequest.Callback((Task.TaskCompletionSource)((Object)hashMap), hashMap2, hashSet){
            final /* synthetic */ Map val$appLinkResults;
            final /* synthetic */ Task.TaskCompletionSource val$taskCompletionSource;
            final /* synthetic */ HashSet val$urisToRequest;

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public void onCompleted(GraphResponse graphResponse) {
                Object object = graphResponse.getError();
                if (object != null) {
                    this.val$taskCompletionSource.setError(object.getException());
                    return;
                }
                if ((graphResponse = graphResponse.getJSONObject()) == null) {
                    this.val$taskCompletionSource.setResult(this.val$appLinkResults);
                    return;
                }
                object = this.val$urisToRequest.iterator();
                block5 : do {
                    Object object2;
                    int n2;
                    Object object3;
                    int n3;
                    ArrayList<AppLink.Target> arrayList;
                    if (!object.hasNext()) {
                        this.val$taskCompletionSource.setResult(this.val$appLinkResults);
                        return;
                    }
                    Uri uri = (Uri)object.next();
                    if (!graphResponse.has(uri.toString())) continue;
                    try {
                        object3 = graphResponse.getJSONObject(uri.toString()).getJSONObject("app_links");
                        object2 = object3.getJSONArray("android");
                        n2 = object2.length();
                        arrayList = new ArrayList<AppLink.Target>(n2);
                        n3 = 0;
                    }
                    catch (JSONException var3_4) {
                        continue;
                    }
                    do {
                        if (n3 < n2) {
                            AppLink.Target target = FacebookAppLinkResolver.getAndroidTargetFromJson(object2.getJSONObject(n3));
                            if (target != null) {
                                arrayList.add(target);
                            }
                        } else {
                            object2 = new AppLink(uri, arrayList, FacebookAppLinkResolver.getWebFallbackUriFromJson(uri, (JSONObject)object3));
                            this.val$appLinkResults.put(uri, object2);
                            object3 = FacebookAppLinkResolver.this.cachedAppLinks;
                            synchronized (object3) {
                                FacebookAppLinkResolver.this.cachedAppLinks.put(uri, object2);
                                continue block5;
                            }
                        }
                        ++n3;
                    } while (true);
                    break;
                } while (true);
            }
        }).executeAsync();
        return hashMap.getTask();
    }

}

