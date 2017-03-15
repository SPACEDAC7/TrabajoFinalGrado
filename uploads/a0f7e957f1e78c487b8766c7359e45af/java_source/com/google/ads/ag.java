/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.database.Cursor
 *  android.net.Uri
 *  android.preference.PreferenceManager
 *  android.text.TextUtils
 *  android.webkit.WebView
 */
package com.google.ads;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.webkit.WebView;
import com.google.ads.af;
import com.google.ads.ah;
import com.google.ads.util.f;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.Locale;

public final class ag {
    private static final com.google.ads.internal.a a = com.google.ads.internal.a.a.b();

    public static void a(Activity activity) {
        new Thread(new a(activity)).start();
    }

    public static void a(Activity activity, WebView webView, String string2) {
        new Thread(new b(activity, webView, string2)).start();
    }

    public static void a(WebView webView, String string2) {
        a.a(webView, String.format(Locale.US, "(G_resizeIframe(%s))", string2));
    }

    public static void a(WebView webView, boolean bl) {
        a.a(webView, String.format(Locale.US, "(G_updatePlusOne(%b))", bl));
    }

    public static boolean a(Context context, long l2) {
        return ag.a(context, l2, PreferenceManager.getDefaultSharedPreferences((Context)context.getApplicationContext()));
    }

    static boolean a(Context context, long l2, SharedPreferences sharedPreferences) {
        if (!(!ah.a(context) || sharedPreferences.contains("drt") && sharedPreferences.contains("drt_ts") && sharedPreferences.getLong("drt_ts", 0) >= new Date().getTime() - l2)) {
            return true;
        }
        return false;
    }

    private static class a
    implements Runnable {
        private final WeakReference<Activity> a;
        private final SharedPreferences.Editor b;

        public a(Activity activity) {
            this(activity, null);
        }

        a(Activity activity, SharedPreferences.Editor editor) {
            this.a = new WeakReference<Activity>(activity);
            this.b = editor;
        }

        private SharedPreferences.Editor a(Activity activity) {
            if (this.b == null) {
                return PreferenceManager.getDefaultSharedPreferences((Context)activity.getApplicationContext()).edit();
            }
            return this.b;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        @Override
        public void run() {
            Activity activity;
            block7 : {
                block6 : {
                    try {
                        activity = this.a.get();
                        if (activity == null) {
                            com.google.ads.util.b.a("Activity was null while making a doritos cookie request.");
                            return;
                        }
                        Object object = activity.getContentResolver().query(af.b, af.d, null, null, null);
                        if (object != null && object.moveToFirst() && object.getColumnNames().length > 0) {
                            object = object.getString(object.getColumnIndex(object.getColumnName(0)));
                        } else {
                            com.google.ads.util.b.a("Google+ app not installed, not storing doritos cookie");
                            object = null;
                        }
                        activity = this.a(activity);
                        if (TextUtils.isEmpty((CharSequence)object)) break block6;
                        activity.putString("drt", (String)object);
                        activity.putLong("drt_ts", new Date().getTime());
                        break block7;
                    }
                    catch (Throwable var1_3) {
                        com.google.ads.util.b.b("An unknown error occurred while sending a doritos request.", var1_3);
                        return;
                    }
                }
                activity.putString("drt", "");
                activity.putLong("drt_ts", 0);
            }
            activity.commit();
        }
    }

    private static class b
    implements Runnable {
        private final WeakReference<Activity> a;
        private final WebView b;
        private final String c;

        public b(Activity activity, WebView webView, String string2) {
            this.a = new WeakReference<Activity>(activity);
            this.c = string2;
            this.b = webView;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        @Override
        public void run() {
            try {
                boolean bl;
                Uri uri = Uri.withAppendedPath((Uri)af.a, (String)this.c);
                Activity activity = this.a.get();
                if (activity == null) {
                    com.google.ads.util.b.a("Activity was null while getting the +1 button state.");
                    return;
                }
                uri = activity.getContentResolver().query(uri, af.c, null, null, null);
                if (uri != null && uri.moveToFirst()) {
                    bl = uri.getInt(uri.getColumnIndex("has_plus1")) == 1;
                } else {
                    com.google.ads.util.b.a("Google+ app not installed, showing ad as not +1'd");
                    bl = false;
                }
                this.b.post((Runnable)new c(this.b, bl));
                return;
            }
            catch (Throwable var2_2) {
                com.google.ads.util.b.b("An unknown error occurred while updating the +1 state.", var2_2);
                return;
            }
        }
    }

    static class c
    implements Runnable {
        private final boolean a;
        private final WebView b;

        public c(WebView webView, boolean bl) {
            this.b = webView;
            this.a = bl;
        }

        @Override
        public void run() {
            ag.a(this.b, this.a);
        }
    }

}

