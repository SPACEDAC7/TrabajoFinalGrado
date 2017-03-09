/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.PackageManager
 *  android.net.Uri
 *  android.os.Bundle
 *  android.util.Log
 *  org.json.JSONArray
 *  org.json.JSONObject
 */
package bolts;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import bolts.AppLinks;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class MeasurementEvent {
    public static final String APP_LINK_NAVIGATE_IN_EVENT_NAME = "al_nav_in";
    public static final String APP_LINK_NAVIGATE_OUT_EVENT_NAME = "al_nav_out";
    public static final String MEASUREMENT_EVENT_ARGS_KEY = "event_args";
    public static final String MEASUREMENT_EVENT_NAME_KEY = "event_name";
    public static final String MEASUREMENT_EVENT_NOTIFICATION_NAME = "com.parse.bolts.measurement_event";
    private Context appContext;
    private Bundle args;
    private String name;

    private MeasurementEvent(Context context, String string2, Bundle bundle) {
        this.appContext = context.getApplicationContext();
        this.name = string2;
        this.args = bundle;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static Bundle getApplinkLogData(Context var0, String var1_1, Bundle var2_2, Intent var3_3) {
        var4_4 = new Bundle();
        if ((var0 = var3_3.resolveActivity(var0.getPackageManager())) != null) {
            var4_4.putString("class", var0.getShortClassName());
        }
        if ("al_nav_out".equals(var1_1)) {
            if (var0 != null) {
                var4_4.putString("package", var0.getPackageName());
            }
            if (var3_3.getData() != null) {
                var4_4.putString("outputURL", var3_3.getData().toString());
            }
            if (var3_3.getScheme() != null) {
                var4_4.putString("outputURLScheme", var3_3.getScheme());
            }
        } else if ("al_nav_in".equals(var1_1)) {
            if (var3_3.getData() != null) {
                var4_4.putString("inputURL", var3_3.getData().toString());
            }
            if (var3_3.getScheme() != null) {
                var4_4.putString("inputURLScheme", var3_3.getScheme());
            }
        }
        var0 = var2_2.keySet().iterator();
        do {
            if (var0.hasNext() == false) return var4_4;
            var1_1 = (String)var0.next();
            var3_3 = var2_2.get(var1_1);
            if (!(var3_3 instanceof Bundle)) {
                var3_3 = MeasurementEvent.objectToJSONString(var3_3);
                if (var1_1.equals("target_url")) {
                    var1_1 = Uri.parse((String)var3_3);
                    var4_4.putString("targetURL", var1_1.toString());
                    var4_4.putString("targetURLHost", var1_1.getHost());
                    continue;
                }
                var4_4.putString(var1_1, (String)var3_3);
                continue;
            }
            var5_5 = ((Bundle)var3_3).keySet().iterator();
            do {
                if (!var5_5.hasNext()) ** break;
                var6_6 = (String)var5_5.next();
                var7_7 = MeasurementEvent.objectToJSONString(((Bundle)var3_3).get(var6_6));
                if (var1_1.equals("referer_app_link")) {
                    if (var6_6.equalsIgnoreCase("url")) {
                        var4_4.putString("refererURL", var7_7);
                        continue;
                    }
                    if (var6_6.equalsIgnoreCase("app_name")) {
                        var4_4.putString("refererAppName", var7_7);
                        continue;
                    }
                    if (var6_6.equalsIgnoreCase("package")) {
                        var4_4.putString("sourceApplication", var7_7);
                        continue;
                    }
                }
                var4_4.putString(var1_1 + "/" + var6_6, var7_7);
            } while (true);
            break;
        } while (true);
    }

    private static String objectToJSONString(Object object) {
        if (object == null) {
            return null;
        }
        if (object instanceof JSONArray || object instanceof JSONObject) {
            return object.toString();
        }
        try {
            if (object instanceof Collection) {
                return new JSONArray((Collection)object).toString();
            }
            if (object instanceof Map) {
                return new JSONObject((Map)object).toString();
            }
            object = object.toString();
            return object;
        }
        catch (Exception var0_1) {
            return null;
        }
    }

    private void sendBroadcast() {
        if (this.name == null) {
            Log.d((String)this.getClass().getName(), (String)"Event name is required");
        }
        try {
            Class class_ = Class.forName("android.support.v4.content.LocalBroadcastManager");
            Object object = class_.getMethod("getInstance", Context.class);
            class_ = class_.getMethod("sendBroadcast", Intent.class);
            object = object.invoke(null, new Object[]{this.appContext});
            Intent intent = new Intent("com.parse.bolts.measurement_event");
            intent.putExtra("event_name", this.name);
            intent.putExtra("event_args", this.args);
            class_.invoke(object, new Object[]{intent});
            return;
        }
        catch (Exception var1_2) {
            Log.d((String)this.getClass().getName(), (String)"LocalBroadcastManager in android support library is required to raise bolts event.");
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    static void sendBroadcastEvent(Context context, String string2, Intent bundle, Map<String, String> map) {
        Bundle bundle2;
        Object object = bundle2 = new Bundle();
        if (bundle != null) {
            object = AppLinks.getAppLinkData((Intent)bundle);
            if (object != null) {
                object = MeasurementEvent.getApplinkLogData(context, string2, (Bundle)object, bundle);
            } else {
                object = bundle.getData();
                if (object != null) {
                    bundle2.putString("intentData", object.toString());
                }
                bundle = bundle.getExtras();
                object = bundle2;
                if (bundle != null) {
                    Iterator iterator = bundle.keySet().iterator();
                    do {
                        object = bundle2;
                        if (!iterator.hasNext()) break;
                        object = (String)iterator.next();
                        bundle2.putString((String)object, MeasurementEvent.objectToJSONString(bundle.get((String)object)));
                    } while (true);
                }
            }
        }
        if (map != null) {
            for (String string3 : map.keySet()) {
                object.putString(string3, map.get(string3));
            }
        }
        new MeasurementEvent(context, string2, (Bundle)object).sendBroadcast();
    }
}

