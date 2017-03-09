/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.ActivityInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.ResolveInfo
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.Parcelable
 */
package com.buzzfeed.toolkit.util;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.Iterator;
import java.util.List;

public final class ProcessPhoenix
extends Activity {
    public static final String INTENT_ACTION_RESTART = "com.buzzfeed.intent.RESTART";
    private static final String KEY_BROADCAST_INTENT = "phoenix_broadcast_intent";
    public static final String KEY_EXTRA_PACKAGE = "phoenix_extra_package";
    private static final String KEY_RESTART_INTENT = "phoenix_restart_intent";

    private static Intent getBroadcastIntent(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.buzzfeed.intent.RESTART");
        intent.putExtra("phoenix_extra_package", context.getPackageName());
        return intent;
    }

    private static Intent getRestartIntent(Context object) {
        Intent intent = new Intent("android.intent.action.MAIN", null);
        intent.addFlags(268468224);
        intent.addCategory("android.intent.category.DEFAULT");
        String string2 = object.getPackageName();
        object = object.getPackageManager().queryIntentActivities(intent, 0).iterator();
        while (object.hasNext()) {
            ActivityInfo activityInfo = ((ResolveInfo)object.next()).activityInfo;
            if (!activityInfo.packageName.equals(string2)) continue;
            intent.setComponent(new ComponentName(string2, activityInfo.name));
            return intent;
        }
        throw new IllegalStateException("Unable to determine default activity for " + string2 + ". Does an activity specify the DEFAULT category in its intent filter?");
    }

    public static void triggerRebirth(Context context) {
        ProcessPhoenix.triggerRebirth(context, ProcessPhoenix.getRestartIntent(context));
    }

    public static void triggerRebirth(Context context, Intent intent) {
        Intent intent2 = new Intent(context, (Class)ProcessPhoenix.class);
        intent2.addFlags(268468224);
        intent2.putExtra("phoenix_restart_intent", (Parcelable)intent);
        intent2.putExtra("phoenix_broadcast_intent", (Parcelable)ProcessPhoenix.getBroadcastIntent(context));
        context.startActivity(intent2);
        if (context instanceof Activity) {
            ((Activity)context).finish();
        }
        Runtime.getRuntime().exit(0);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.startActivity((Intent)this.getIntent().getParcelableExtra("phoenix_restart_intent"));
        this.sendBroadcast((Intent)this.getIntent().getParcelableExtra("phoenix_broadcast_intent"));
        this.finish();
        Runtime.getRuntime().exit(0);
    }
}

