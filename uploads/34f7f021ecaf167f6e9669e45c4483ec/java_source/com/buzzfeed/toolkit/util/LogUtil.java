/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.buzzfeed.toolkit.util;

import android.util.Log;
import com.crashlytics.android.Crashlytics;
import java.util.AbstractList;
import java.util.Map;
import java.util.Set;

public class LogUtil {
    private static boolean CRASHLYTICS_ACTIVE = false;
    private static final int LOG_PREFIX_LENGTH = 0;
    public static final int MAX_LOG_LENGTH = 4000;
    private static final int MAX_LOG_TAG_LENGTH = 23;
    private static final String TAG;
    private static boolean debug;

    static {
        debug = true;
        TAG = LogUtil.makeLogTag(LogUtil.class);
        CRASHLYTICS_ACTIVE = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void d(String string2, String string3) {
        if (debug) {
            if (string3.length() > 4000) {
                LogUtil.separateLongLogMessages(string2, new StringBuilder(string3), 3);
            } else {
                Log.d((String)string2, (String)string3);
            }
        }
        if (CRASHLYTICS_ACTIVE) {
            Crashlytics.log(string3);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void d(String string2, StringBuilder stringBuilder) {
        if (debug) {
            if (stringBuilder.length() > 4000) {
                LogUtil.separateLongLogMessages(string2, stringBuilder, 3);
            } else {
                Log.d((String)string2, (String)stringBuilder.toString());
            }
        }
        if (CRASHLYTICS_ACTIVE) {
            Crashlytics.log(stringBuilder.toString());
        }
    }

    public static void e(String string2, String string3) {
        Log.e((String)string2, (String)string3);
        if (CRASHLYTICS_ACTIVE) {
            Crashlytics.log(string3);
        }
    }

    public static void e(String string2, String string3, Throwable throwable) {
        Log.e((String)string2, (String)string3, (Throwable)throwable);
        if (CRASHLYTICS_ACTIVE) {
            Crashlytics.log(string3);
            Crashlytics.logException(throwable);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void i(String string2, String string3) {
        if (string3.length() > 4000) {
            LogUtil.separateLongLogMessages(string2, new StringBuilder(string3), 4);
        } else {
            Log.i((String)string2, (String)string3);
        }
        if (CRASHLYTICS_ACTIVE) {
            Crashlytics.log(string3);
        }
    }

    private static void log(String string2, String string3, int n2) {
        Log.println((int)n2, (String)string2, (String)string3);
    }

    public static String makeLogTag(Class class_) {
        return LogUtil.makeLogTag(class_.getSimpleName());
    }

    private static String makeLogTag(String string2) {
        String string3 = string2;
        if (string2.length() > 23) {
            string3 = string2.substring(0, 22);
        }
        return string3;
    }

    public static <T extends AbstractList> String printList(T t2) {
        return LogUtil.printList(t2, ", ");
    }

    public static <T extends AbstractList> String printList(T t2, String string2) {
        if (t2 == null) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (int i2 = 0; i2 < t2.size(); ++i2) {
            stringBuilder.append(t2.get(i2).toString());
            if (i2 >= t2.size() - 1) continue;
            stringBuilder.append(string2);
        }
        return stringBuilder.toString();
    }

    public static String printMap(Map<String, String> map, String string2) {
        if (map == null) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        int n2 = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            stringBuilder.append(entry.getKey()).append("=").append(entry.getValue());
            if (n2 < map.size()) {
                stringBuilder.append(string2);
            }
            ++n2;
        }
        return stringBuilder.toString();
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void separateLongLogMessages(String string2, StringBuilder stringBuilder, int n2) {
        LogUtil.log(string2, "Message Length " + stringBuilder.length(), n2);
        int n3 = stringBuilder.length() / 4000;
        int n4 = 0;
        while (n4 <= n3) {
            int n5 = (n4 + 1) * 4000;
            if (n5 >= stringBuilder.length()) {
                LogUtil.log(string2, stringBuilder.substring(n4 * 4000), n2);
            } else {
                LogUtil.log(string2, stringBuilder.substring(n4 * 4000, n5), n2);
            }
            ++n4;
        }
    }

    public static void setCrashlyticsActive(boolean bl) {
        CRASHLYTICS_ACTIVE = bl;
    }

    public static void setDebug(boolean bl) {
        debug = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void v(String string2, String string3) {
        if (debug) {
            if (string3.length() > 4000) {
                LogUtil.separateLongLogMessages(string2, new StringBuilder(string3), 2);
            } else {
                Log.v((String)string2, (String)string3);
            }
        }
        if (CRASHLYTICS_ACTIVE) {
            Crashlytics.log(string3);
        }
    }

    public static void w(String string2, String string3) {
        Log.w((String)string2, (String)string3);
        if (CRASHLYTICS_ACTIVE) {
            Crashlytics.log(string3);
        }
    }
}

