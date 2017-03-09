/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.PendingIntent
 *  android.content.BroadcastReceiver
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.ActivityInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.ResolveInfo
 *  android.content.pm.ServiceInfo
 *  android.os.Parcelable
 *  android.util.Log
 *  android.view.KeyEvent
 */
package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Parcelable;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;

public class MediaButtonReceiver
extends BroadcastReceiver {
    private static final String TAG = "MediaButtonReceiver";

    public static PendingIntent buildMediaButtonPendingIntent(Context context, long l2) {
        ComponentName componentName = MediaButtonReceiver.getMediaButtonReceiverComponent(context);
        if (componentName == null) {
            Log.w((String)"MediaButtonReceiver", (String)"A unique media button receiver could not be found in the given context, so couldn't build a pending intent.");
            return null;
        }
        return MediaButtonReceiver.buildMediaButtonPendingIntent(context, componentName, l2);
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, ComponentName componentName, long l2) {
        if (componentName == null) {
            Log.w((String)"MediaButtonReceiver", (String)"The component name of media button receiver should be provided.");
            return null;
        }
        int n2 = PlaybackStateCompat.toKeyCode(l2);
        if (n2 == 0) {
            Log.w((String)"MediaButtonReceiver", (String)("Cannot build a media button pending intent with the given action: " + l2));
            return null;
        }
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        intent.putExtra("android.intent.extra.KEY_EVENT", (Parcelable)new KeyEvent(0, n2));
        return PendingIntent.getBroadcast((Context)context, (int)n2, (Intent)intent, (int)0);
    }

    static ComponentName getMediaButtonReceiverComponent(Context object) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(object.getPackageName());
        object = object.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (object.size() == 1) {
            object = (ResolveInfo)object.get(0);
            return new ComponentName(object.activityInfo.packageName, object.activityInfo.name);
        }
        if (object.size() > 1) {
            Log.w((String)"MediaButtonReceiver", (String)"More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
        }
        return null;
    }

    public static KeyEvent handleIntent(MediaSessionCompat mediaSessionCompat, Intent intent) {
        if (mediaSessionCompat == null || intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            return null;
        }
        intent = (KeyEvent)intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        mediaSessionCompat.getController().dispatchMediaButtonEvent((KeyEvent)intent);
        return intent;
    }

    public void onReceive(Context context, Intent intent) {
        List list;
        Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
        intent2.setPackage(context.getPackageName());
        PackageManager packageManager = context.getPackageManager();
        List list2 = list = packageManager.queryIntentServices(intent2, 0);
        if (list.isEmpty()) {
            intent2.setAction("android.media.browse.MediaBrowserService");
            list2 = packageManager.queryIntentServices(intent2, 0);
        }
        if (list2.isEmpty()) {
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or a media browser service implementation");
        }
        if (list2.size() != 1) {
            throw new IllegalStateException("Expected 1 Service that handles " + intent2.getAction() + ", found " + list2.size());
        }
        list2 = (ResolveInfo)list2.get(0);
        intent.setComponent(new ComponentName(list2.serviceInfo.packageName, list2.serviceInfo.name));
        context.startService(intent);
    }
}

