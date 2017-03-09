/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.net.Uri
 *  android.os.Bundle
 */
package bolts;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import bolts.MeasurementEvent;

public final class AppLinks {
    static final String KEY_NAME_APPLINK_DATA = "al_applink_data";
    static final String KEY_NAME_EXTRAS = "extras";
    static final String KEY_NAME_TARGET = "target_url";

    public static Bundle getAppLinkData(Intent intent) {
        return intent.getBundleExtra("al_applink_data");
    }

    public static Bundle getAppLinkExtras(Intent intent) {
        if ((intent = AppLinks.getAppLinkData(intent)) == null) {
            return null;
        }
        return intent.getBundle("extras");
    }

    public static Uri getTargetUrl(Intent intent) {
        Object object = AppLinks.getAppLinkData(intent);
        if (object != null && (object = object.getString("target_url")) != null) {
            return Uri.parse((String)object);
        }
        return intent.getData();
    }

    public static Uri getTargetUrlFromInboundIntent(Context context, Intent intent) {
        Uri uri = null;
        Object object = AppLinks.getAppLinkData(intent);
        Uri uri2 = uri;
        if (object != null) {
            object = object.getString("target_url");
            uri2 = uri;
            if (object != null) {
                MeasurementEvent.sendBroadcastEvent(context, "al_nav_in", intent, null);
                uri2 = Uri.parse((String)object);
            }
        }
        return uri2;
    }
}

