/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  android.webkit.JavascriptInterface
 *  android.webkit.WebSettings
 *  android.webkit.WebView
 *  android.webkit.WebViewClient
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package bolts;

import android.content.Context;
import android.net.Uri;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import bolts.AppLink;
import bolts.AppLinkResolver;
import bolts.Capture;
import bolts.Continuation;
import bolts.Task;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class WebViewAppLinkResolver
implements AppLinkResolver {
    private static final String KEY_AL_VALUE = "value";
    private static final String KEY_ANDROID = "android";
    private static final String KEY_APP_NAME = "app_name";
    private static final String KEY_CLASS = "class";
    private static final String KEY_PACKAGE = "package";
    private static final String KEY_SHOULD_FALLBACK = "should_fallback";
    private static final String KEY_URL = "url";
    private static final String KEY_WEB = "web";
    private static final String KEY_WEB_URL = "url";
    private static final String META_TAG_PREFIX = "al";
    private static final String PREFER_HEADER = "Prefer-Html-Meta-Tags";
    private static final String TAG_EXTRACTION_JAVASCRIPT = "javascript:boltsWebViewAppLinkResolverResult.setValue((function() {  var metaTags = document.getElementsByTagName('meta');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute('property');    if (property && property.substring(0, 'al:'.length) === 'al:') {      var tag = { \"property\": metaTags[i].getAttribute('property') };      if (metaTags[i].hasAttribute('content')) {        tag['content'] = metaTags[i].getAttribute('content');      }      results.push(tag);    }  }  return JSON.stringify(results);})())";
    private final Context context;

    public WebViewAppLinkResolver(Context context) {
        this.context = context;
    }

    private static List<Map<String, Object>> getAlList(Map<String, Object> object, String object2) {
        object = object2 = (List)object.get(object2);
        if (object2 == null) {
            object = Collections.emptyList();
        }
        return object;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static AppLink makeAppLinkFromAlData(Map<String, Object> object, Uri uri) {
        Object object2;
        ArrayList<AppLink.Target> arrayList = new ArrayList<AppLink.Target>();
        Object object3 = object2 = (Uri)object.get("android");
        if (object2 == null) {
            object3 = Collections.emptyList();
        }
        object2 = object3.iterator();
        block0 : do {
            List list;
            if (!object2.hasNext()) {
                object3 = uri;
                object = (List)object.get("web");
                object2 = object3;
                if (object != null) {
                    object2 = object3;
                    if (object.size() > 0) {
                        object = (Map)object.get(0);
                        list = (List)object.get("url");
                        object2 = (List)object.get("should_fallback");
                        object = object3;
                        if (object2 != null) {
                            object = object3;
                            if (object2.size() > 0) {
                                object2 = (String)((Map)object2.get(0)).get("value");
                                object = object3;
                                if (Arrays.asList("no", "false", "0").contains(object2.toLowerCase())) {
                                    object = null;
                                }
                            }
                        }
                        object2 = object;
                        if (object != null) {
                            object2 = object;
                            if (list != null) {
                                object2 = object;
                                if (list.size() > 0) {
                                    object2 = WebViewAppLinkResolver.tryCreateUrl((String)((Map)list.get(0)).get("value"));
                                }
                            }
                        }
                    }
                }
                return new AppLink(uri, arrayList, (Uri)object2);
            }
            object3 = (Map)object2.next();
            list = WebViewAppLinkResolver.getAlList(object3, "url");
            List<Map<String, Object>> list2 = WebViewAppLinkResolver.getAlList(object3, "package");
            List<Map<String, Object>> list3 = WebViewAppLinkResolver.getAlList(object3, "class");
            List<Map<String, Object>> list4 = WebViewAppLinkResolver.getAlList(object3, "app_name");
            int n2 = Math.max(list.size(), Math.max(list2.size(), Math.max(list3.size(), list4.size())));
            int n3 = 0;
            do {
                if (n3 >= n2) continue block0;
                object3 = list.size() > n3 ? ((Map)list.get(n3)).get("value") : null;
                Uri uri2 = WebViewAppLinkResolver.tryCreateUrl((String)object3);
                object3 = list2.size() > n3 ? list2.get(n3).get("value") : null;
                String string2 = (String)object3;
                object3 = list3.size() > n3 ? list3.get(n3).get("value") : null;
                String string3 = (String)object3;
                object3 = list4.size() > n3 ? list4.get(n3).get("value") : null;
                arrayList.add(new AppLink.Target(string2, string3, uri2, (String)object3));
                ++n3;
            } while (true);
            break;
        } while (true);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static Map<String, Object> parseAlData(JSONArray var0) throws JSONException {
        block7 : {
            var3_1 = new HashMap<String, Object>();
            var7_2 = 0;
            block0 : while (var7_2 < var0.length()) {
                var5_12 = var0.getJSONObject(var7_2);
                var6_13 = var5_12.getString("property").split(":");
                if (var6_13[0].equals("al")) {
                    var1_4 = var3_1;
                    break block7;
                }
lbl9: // 5 sources:
                do {
                    ++var7_2;
                    continue block0;
                    break;
                } while (true);
            }
            return var3_1;
        }
        for (var8_14 = 1; var8_14 < var6_13.length; ++var8_14) {
            var2_10 = var4_11 = (ArrayList<HashMap<K, V>>)var1_3.get(var6_13[var8_14]);
            if (var4_11 == null) {
                var2_10 = new ArrayList<HashMap<K, V>>();
                var1_3.put(var6_13[var8_14], var2_10);
            }
            if (var2_10.size() > 0) {
                var1_5 = (Map)var2_10.get(var2_10.size() - 1);
            } else {
                var1_9 = null;
            }
            if (var1_6 != null && var8_14 != var6_13.length - 1) continue;
            var1_7 = new HashMap<K, V>();
            var2_10.add(var1_7);
        }
        if (!var5_12.has("content")) ** GOTO lbl9
        if (!var5_12.isNull("content")) ** GOTO lbl31
        var1_3.put("value", null);
        ** GOTO lbl9
lbl31: // 1 sources:
        var1_3.put("value", var5_12.getString("content"));
        ** while (true)
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static String readFromConnection(URLConnection object) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        Object object2;
        InputStream inputStream;
        block11 : {
            int n2;
            int n3;
            String string2;
            if (object instanceof HttpURLConnection) {
                object2 = (byte[])object;
                try {
                    inputStream = object.getInputStream();
                }
                catch (Exception var1_4) {
                    inputStream = object2.getErrorStream();
                }
            } else {
                inputStream = object.getInputStream();
            }
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                object2 = new byte[1024];
                while ((n3 = inputStream.read((byte[])object2)) != -1) {
                    byteArrayOutputStream.write((byte[])object2, 0, n3);
                }
                object2 = string2 = object.getContentEncoding();
                if (string2 != null) break block11;
                object2 = object.getContentType().split(";");
                n2 = object2.length;
                n3 = 0;
            }
            catch (Throwable var0_1) {
                inputStream.close();
                throw var0_1;
            }
            do {
                object = string2;
                if (n3 >= n2) break;
                object = object2[n3].trim();
                if (object.startsWith("charset=")) {
                    object = object.substring("charset=".length());
                    break;
                }
                ++n3;
            } while (true);
            object2 = object;
            if (object == null) {
                object2 = "UTF-8";
            }
        }
        object = new String(byteArrayOutputStream.toByteArray(), (String)object2);
        inputStream.close();
        return object;
    }

    private static Uri tryCreateUrl(String string2) {
        if (string2 == null) {
            return null;
        }
        return Uri.parse((String)string2);
    }

    @Override
    public Task<AppLink> getAppLinkFromUrlInBackground(final Uri uri) {
        final Capture capture = new Capture();
        final Capture capture2 = new Capture();
        return Task.callInBackground(new Callable<Void>(){

            @Override
            public Void call() throws Exception {
                URL uRL = new URL(uri.toString());
                URLConnection uRLConnection = null;
                while (uRL != null) {
                    uRLConnection = uRL.openConnection();
                    if (uRLConnection instanceof HttpURLConnection) {
                        ((HttpURLConnection)uRLConnection).setInstanceFollowRedirects(true);
                    }
                    uRLConnection.setRequestProperty("Prefer-Html-Meta-Tags", "al");
                    uRLConnection.connect();
                    if (uRLConnection instanceof HttpURLConnection) {
                        HttpURLConnection httpURLConnection = (HttpURLConnection)uRLConnection;
                        if (httpURLConnection.getResponseCode() >= 300 && httpURLConnection.getResponseCode() < 400) {
                            uRL = new URL(httpURLConnection.getHeaderField("Location"));
                            httpURLConnection.disconnect();
                            continue;
                        }
                        uRL = null;
                        continue;
                    }
                    uRL = null;
                }
                try {
                    capture.set(WebViewAppLinkResolver.readFromConnection(uRLConnection));
                    capture2.set(uRLConnection.getContentType());
                    return null;
                }
                finally {
                    if (uRLConnection instanceof HttpURLConnection) {
                        ((HttpURLConnection)uRLConnection).disconnect();
                    }
                }
            }
        }).onSuccessTask(new Continuation<Void, Task<JSONArray>>(){

            @Override
            public Task<JSONArray> then(Task<Void> object) throws Exception {
                final Task.TaskCompletionSource taskCompletionSource = Task.create();
                WebView webView = new WebView(WebViewAppLinkResolver.this.context);
                webView.getSettings().setJavaScriptEnabled(true);
                webView.setNetworkAvailable(false);
                webView.setWebViewClient(new WebViewClient(){
                    private boolean loaded;

                    private void runJavaScript(WebView webView) {
                        if (!this.loaded) {
                            this.loaded = true;
                            webView.loadUrl("javascript:boltsWebViewAppLinkResolverResult.setValue((function() {  var metaTags = document.getElementsByTagName('meta');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute('property');    if (property && property.substring(0, 'al:'.length) === 'al:') {      var tag = { \"property\": metaTags[i].getAttribute('property') };      if (metaTags[i].hasAttribute('content')) {        tag['content'] = metaTags[i].getAttribute('content');      }      results.push(tag);    }  }  return JSON.stringify(results);})())");
                        }
                    }

                    public void onLoadResource(WebView webView, String string2) {
                        super.onLoadResource(webView, string2);
                        this.runJavaScript(webView);
                    }

                    public void onPageFinished(WebView webView, String string2) {
                        super.onPageFinished(webView, string2);
                        this.runJavaScript(webView);
                    }
                });
                webView.addJavascriptInterface((Object)new Object(){

                    @JavascriptInterface
                    public void setValue(String string2) {
                        try {
                            taskCompletionSource.trySetResult(new JSONArray(string2));
                            return;
                        }
                        catch (JSONException var1_2) {
                            taskCompletionSource.trySetError((Exception)var1_2);
                            return;
                        }
                    }
                }, "boltsWebViewAppLinkResolverResult");
                object = null;
                if (capture2.get() != null) {
                    object = ((String)capture2.get()).split(";")[0];
                }
                webView.loadDataWithBaseURL(uri.toString(), (String)capture.get(), (String)object, null, null);
                return taskCompletionSource.getTask();
            }

        }, Task.UI_THREAD_EXECUTOR).onSuccess(new Continuation<JSONArray, AppLink>(){

            @Override
            public AppLink then(Task<JSONArray> task) throws Exception {
                return WebViewAppLinkResolver.makeAppLinkFromAlData(WebViewAppLinkResolver.parseAlData(task.getResult()), uri);
            }
        });
    }

}

