/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.database.Cursor
 *  android.net.Uri
 *  android.os.Looper
 *  android.util.Log
 */
package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Looper;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.internal.Utility;
import java.lang.reflect.Method;

public class AttributionIdentifiers {
    private static final String ANDROID_ID_COLUMN_NAME = "androidid";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final Uri ATTRIBUTION_ID_CONTENT_URI;
    private static final int CONNECTION_RESULT_SUCCESS = 0;
    private static final long IDENTIFIER_REFRESH_INTERVAL_MILLIS = 3600000;
    private static final String LIMIT_TRACKING_COLUMN_NAME = "limit_tracking";
    private static final String TAG;
    private static AttributionIdentifiers recentlyFetchedIdentifiers;
    private String androidAdvertiserId;
    private String attributionId;
    private long fetchTime;
    private boolean limitTracking;

    static {
        TAG = AttributionIdentifiers.class.getCanonicalName();
        ATTRIBUTION_ID_CONTENT_URI = Uri.parse((String)"content://com.facebook.katana.provider.AttributionIdProvider");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static AttributionIdentifiers getAndroidId(Context object) {
        AttributionIdentifiers attributionIdentifiers = new AttributionIdentifiers();
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new FacebookException("getAndroidId cannot be called on the main thread.");
            }
            Object object2 = Utility.getMethodQuietly("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
            if (object2 == null || !((object2 = Utility.invokeMethodQuietly(null, (Method)object2, object)) instanceof Integer) || (Integer)object2 != 0 || (object2 = Utility.getMethodQuietly("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", Context.class)) == null) return attributionIdentifiers;
            {
                Object[] arrobject = new Object[]{object};
                object = Utility.invokeMethodQuietly(null, (Method)object2, arrobject);
                if (object == null) return attributionIdentifiers;
                {
                    object2 = Utility.getMethodQuietly(object.getClass(), "getId", new Class[0]);
                    Method method = Utility.getMethodQuietly(object.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
                    if (object2 == null || method == null) return attributionIdentifiers;
                    {
                        attributionIdentifiers.androidAdvertiserId = (String)Utility.invokeMethodQuietly(object, (Method)object2, new Object[0]);
                        attributionIdentifiers.limitTracking = (Boolean)Utility.invokeMethodQuietly(object, method, new Object[0]);
                        return attributionIdentifiers;
                    }
                }
            }
        }
        catch (Exception var0_1) {
            Utility.logd("android_id", var0_1);
            return attributionIdentifiers;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static AttributionIdentifiers getAttributionIdentifiers(Context context) {
        AttributionIdentifiers attributionIdentifiers;
        block16 : {
            AttributionIdentifiers attributionIdentifiers2;
            AttributionIdentifiers attributionIdentifiers3;
            block15 : {
                block14 : {
                    if (recentlyFetchedIdentifiers != null && System.currentTimeMillis() - AttributionIdentifiers.recentlyFetchedIdentifiers.fetchTime < 3600000) {
                        return recentlyFetchedIdentifiers;
                    }
                    attributionIdentifiers = AttributionIdentifiers.getAndroidId(context);
                    attributionIdentifiers2 = null;
                    attributionIdentifiers3 = null;
                    context = context.getContentResolver().query(ATTRIBUTION_ID_CONTENT_URI, new String[]{"aid", "androidid", "limit_tracking"}, null, null, null);
                    if (context == null) break block14;
                    attributionIdentifiers3 = context;
                    attributionIdentifiers2 = context;
                    boolean bl = context.moveToFirst();
                    if (bl) break block15;
                }
                attributionIdentifiers3 = attributionIdentifiers;
                if (context == null) return attributionIdentifiers3;
                context.close();
                return attributionIdentifiers;
            }
            attributionIdentifiers3 = context;
            attributionIdentifiers2 = context;
            int n2 = context.getColumnIndex("aid");
            attributionIdentifiers3 = context;
            attributionIdentifiers2 = context;
            int n3 = context.getColumnIndex("androidid");
            attributionIdentifiers3 = context;
            attributionIdentifiers2 = context;
            int n4 = context.getColumnIndex("limit_tracking");
            attributionIdentifiers3 = context;
            attributionIdentifiers2 = context;
            attributionIdentifiers.attributionId = context.getString(n2);
            if (n3 <= 0 || n4 <= 0) break block16;
            attributionIdentifiers3 = context;
            attributionIdentifiers2 = context;
            if (attributionIdentifiers.getAndroidAdvertiserId() != null) break block16;
            attributionIdentifiers3 = context;
            attributionIdentifiers2 = context;
            attributionIdentifiers.androidAdvertiserId = context.getString(n3);
            attributionIdentifiers3 = context;
            attributionIdentifiers2 = context;
            try {
                attributionIdentifiers.limitTracking = Boolean.parseBoolean(context.getString(n4));
            }
            catch (Exception var0_1) {
                attributionIdentifiers2 = attributionIdentifiers3;
                try {
                    Log.d((String)TAG, (String)("Caught unexpected exception in getAttributionId(): " + var0_1.toString()));
                    if (attributionIdentifiers3 == null) return null;
                }
                catch (Throwable var0_2) {
                    if (attributionIdentifiers2 == null) throw var0_2;
                    attributionIdentifiers2.close();
                    throw var0_2;
                }
                attributionIdentifiers3.close();
                return null;
            }
        }
        if (context != null) {
            context.close();
        }
        attributionIdentifiers.fetchTime = System.currentTimeMillis();
        recentlyFetchedIdentifiers = attributionIdentifiers;
        return attributionIdentifiers;
    }

    public String getAndroidAdvertiserId() {
        return this.androidAdvertiserId;
    }

    public String getAttributionId() {
        return this.attributionId;
    }

    public boolean isTrackingLimited() {
        return this.limitTracking;
    }
}

