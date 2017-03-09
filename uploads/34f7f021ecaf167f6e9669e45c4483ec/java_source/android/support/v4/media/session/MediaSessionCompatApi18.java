/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.PendingIntent
 *  android.content.ComponentName
 *  android.content.Context
 *  android.media.AudioManager
 *  android.media.RemoteControlClient
 *  android.media.RemoteControlClient$OnPlaybackPositionUpdateListener
 *  android.os.SystemClock
 *  android.util.Log
 */
package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.os.SystemClock;
import android.support.v4.media.session.MediaSessionCompatApi14;
import android.util.Log;

class MediaSessionCompatApi18 {
    private static final long ACTION_SEEK_TO = 256;
    private static final String TAG = "MediaSessionCompatApi18";
    private static boolean sIsMbrPendingIntentSupported = true;

    MediaSessionCompatApi18() {
    }

    public static Object createPlaybackPositionUpdateListener(Callback callback) {
        return new OnPlaybackPositionUpdateListener<Callback>(callback);
    }

    static int getRccTransportControlFlagsFromActions(long l2) {
        int n2;
        int n3 = n2 = MediaSessionCompatApi14.getRccTransportControlFlagsFromActions(l2);
        if ((256 & l2) != 0) {
            n3 = n2 | 256;
        }
        return n3;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void registerMediaButtonEventReceiver(Context context, PendingIntent pendingIntent, ComponentName componentName) {
        context = (AudioManager)context.getSystemService("audio");
        if (sIsMbrPendingIntentSupported) {
            try {
                context.registerMediaButtonEventReceiver(pendingIntent);
            }
            catch (NullPointerException var1_2) {
                Log.w((String)"MediaSessionCompatApi18", (String)"Unable to register media button event receiver with PendingIntent, falling back to ComponentName.");
                sIsMbrPendingIntentSupported = false;
            }
        }
        if (!sIsMbrPendingIntentSupported) {
            context.registerMediaButtonEventReceiver(componentName);
        }
    }

    public static void setOnPlaybackPositionUpdateListener(Object object, Object object2) {
        ((RemoteControlClient)object).setPlaybackPositionUpdateListener((RemoteControlClient.OnPlaybackPositionUpdateListener)object2);
    }

    public static void setState(Object object, int n2, long l2, float f2, long l3) {
        long l4 = SystemClock.elapsedRealtime();
        long l5 = l2;
        if (n2 == 3) {
            l5 = l2;
            if (l2 > 0) {
                l5 = 0;
                if (l3 > 0) {
                    l5 = l3 = l4 - l3;
                    if (f2 > 0.0f) {
                        l5 = l3;
                        if (f2 != 1.0f) {
                            l5 = (long)((float)l3 * f2);
                        }
                    }
                }
                l5 = l2 + l5;
            }
        }
        n2 = MediaSessionCompatApi14.getRccStateFromState(n2);
        ((RemoteControlClient)object).setPlaybackState(n2, l5, f2);
    }

    public static void setTransportControlFlags(Object object, long l2) {
        ((RemoteControlClient)object).setTransportControlFlags(MediaSessionCompatApi18.getRccTransportControlFlagsFromActions(l2));
    }

    public static void unregisterMediaButtonEventReceiver(Context context, PendingIntent pendingIntent, ComponentName componentName) {
        context = (AudioManager)context.getSystemService("audio");
        if (sIsMbrPendingIntentSupported) {
            context.unregisterMediaButtonEventReceiver(pendingIntent);
            return;
        }
        context.unregisterMediaButtonEventReceiver(componentName);
    }

    static interface Callback {
        public void onSeekTo(long var1);
    }

    static class OnPlaybackPositionUpdateListener<T extends Callback>
    implements RemoteControlClient.OnPlaybackPositionUpdateListener {
        protected final T mCallback;

        public OnPlaybackPositionUpdateListener(T t2) {
            this.mCallback = t2;
        }

        public void onPlaybackPositionUpdate(long l2) {
            this.mCallback.onSeekTo(l2);
        }
    }

}

