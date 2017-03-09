/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.SystemClock
 *  android.util.Log
 */
package com.android.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class VolleyLog {
    public static boolean DEBUG;
    public static String TAG;

    static {
        TAG = "Volley";
        DEBUG = Log.isLoggable((String)TAG, (int)2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static /* varargs */ String buildMessage(String string2, Object ... object) {
        if (object != null) {
            string2 = String.format(Locale.US, string2, (Object[])object);
        }
        StackTraceElement[] arrstackTraceElement = new Throwable().fillInStackTrace().getStackTrace();
        String string3 = "<unknown>";
        int n2 = 2;
        do {
            object = string3;
            if (n2 >= arrstackTraceElement.length) return String.format(Locale.US, "[%d] %s: %s", Thread.currentThread().getId(), object, string2);
            if (!arrstackTraceElement[n2].getClass().equals(VolleyLog.class)) {
                object = arrstackTraceElement[n2].getClassName();
                object = object.substring(object.lastIndexOf(46) + 1);
                object = String.valueOf(String.valueOf(object.substring(object.lastIndexOf(36) + 1)));
                string3 = String.valueOf(String.valueOf(arrstackTraceElement[n2].getMethodName()));
                object = new StringBuilder(object.length() + 1 + string3.length()).append((String)object).append(".").append(string3).toString();
                return String.format(Locale.US, "[%d] %s: %s", Thread.currentThread().getId(), object, string2);
            }
            ++n2;
        } while (true);
    }

    public static /* varargs */ void d(String string2, Object ... arrobject) {
        Log.d((String)TAG, (String)VolleyLog.buildMessage(string2, arrobject));
    }

    public static /* varargs */ void e(String string2, Object ... arrobject) {
        Log.e((String)TAG, (String)VolleyLog.buildMessage(string2, arrobject));
    }

    public static /* varargs */ void e(Throwable throwable, String string2, Object ... arrobject) {
        Log.e((String)TAG, (String)VolleyLog.buildMessage(string2, arrobject), (Throwable)throwable);
    }

    public static void setTag(String string2) {
        VolleyLog.d("Changing log tag to %s", string2);
        TAG = string2;
        DEBUG = Log.isLoggable((String)TAG, (int)2);
    }

    public static /* varargs */ void v(String string2, Object ... arrobject) {
        if (DEBUG) {
            Log.v((String)TAG, (String)VolleyLog.buildMessage(string2, arrobject));
        }
    }

    public static /* varargs */ void wtf(String string2, Object ... arrobject) {
        Log.wtf((String)TAG, (String)VolleyLog.buildMessage(string2, arrobject));
    }

    public static /* varargs */ void wtf(Throwable throwable, String string2, Object ... arrobject) {
        Log.wtf((String)TAG, (String)VolleyLog.buildMessage(string2, arrobject), (Throwable)throwable);
    }

    static class MarkerLog {
        public static final boolean ENABLED = VolleyLog.DEBUG;
        private static final long MIN_DURATION_FOR_LOGGING_MS = 0;
        private boolean mFinished = false;
        private final List<Marker> mMarkers = new ArrayList<Marker>();

        MarkerLog() {
        }

        private long getTotalDuration() {
            if (this.mMarkers.size() == 0) {
                return 0;
            }
            long l2 = this.mMarkers.get((int)0).time;
            return this.mMarkers.get((int)(this.mMarkers.size() - 1)).time - l2;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public void add(String string2, long l2) {
            synchronized (this) {
                if (this.mFinished) {
                    throw new IllegalStateException("Marker added to finished log");
                }
                this.mMarkers.add(new Marker(string2, l2, SystemClock.elapsedRealtime()));
                return;
            }
        }

        protected void finalize() throws Throwable {
            if (!this.mFinished) {
                this.finish("Request on the loose");
                VolleyLog.e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public void finish(String iterator) {
            synchronized (this) {
                this.mFinished = true;
                long l2 = this.getTotalDuration();
                if (l2 > 0) {
                    long l3 = this.mMarkers.get((int)0).time;
                    VolleyLog.d("(%-4d ms) %s", l2, iterator);
                    for (Marker marker : this.mMarkers) {
                        l2 = marker.time;
                        VolleyLog.d("(+%-4d) [%2d] %s", l2 - l3, marker.thread, marker.name);
                        l3 = l2;
                    }
                }
                return;
            }
        }

        private static class Marker {
            public final String name;
            public final long thread;
            public final long time;

            public Marker(String string2, long l2, long l3) {
                this.name = string2;
                this.thread = l2;
                this.time = l3;
            }
        }

    }

}

