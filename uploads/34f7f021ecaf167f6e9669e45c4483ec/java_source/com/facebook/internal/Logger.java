/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.facebook.internal;

import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Validate;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Logger {
    public static final String LOG_TAG_BASE = "FacebookSDK.";
    private static final HashMap<String, String> stringsToReplace = new HashMap();
    private final LoggingBehavior behavior;
    private StringBuilder contents;
    private int priority = 3;
    private final String tag;

    public Logger(LoggingBehavior loggingBehavior, String string2) {
        Validate.notNullOrEmpty(string2, "tag");
        this.behavior = loggingBehavior;
        this.tag = "FacebookSDK." + string2;
        this.contents = new StringBuilder();
    }

    public static void log(LoggingBehavior loggingBehavior, int n2, String string2, String string3) {
        if (FacebookSdk.isLoggingBehaviorEnabled(loggingBehavior)) {
            String string4 = Logger.replaceStrings(string3);
            string3 = string2;
            if (!string2.startsWith("FacebookSDK.")) {
                string3 = "FacebookSDK." + string2;
            }
            Log.println((int)n2, (String)string3, (String)string4);
            if (loggingBehavior == LoggingBehavior.DEVELOPER_ERRORS) {
                new Exception().printStackTrace();
            }
        }
    }

    public static void log(LoggingBehavior loggingBehavior, String string2, String string3) {
        Logger.log(loggingBehavior, 3, string2, string3);
    }

    public static /* varargs */ void log(LoggingBehavior loggingBehavior, String string2, String string3, Object ... arrobject) {
        if (FacebookSdk.isLoggingBehaviorEnabled(loggingBehavior)) {
            Logger.log(loggingBehavior, 3, string2, String.format(string3, arrobject));
        }
    }

    public static void registerAccessToken(String string2) {
        synchronized (Logger.class) {
            if (!FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
                Logger.registerStringToReplace(string2, "ACCESS_TOKEN_REMOVED");
            }
            return;
        }
    }

    public static void registerStringToReplace(String string2, String string3) {
        synchronized (Logger.class) {
            stringsToReplace.put(string2, string3);
            return;
        }
    }

    private static String replaceStrings(String string2) {
        synchronized (Logger.class) {
            for (Map.Entry<String, String> entry : stringsToReplace.entrySet()) {
                string2 = string2.replace(entry.getKey(), entry.getValue());
            }
            return string2;
        }
    }

    private boolean shouldLog() {
        return FacebookSdk.isLoggingBehaviorEnabled(this.behavior);
    }

    public void append(String string2) {
        if (this.shouldLog()) {
            this.contents.append(string2);
        }
    }

    public /* varargs */ void append(String string2, Object ... arrobject) {
        if (this.shouldLog()) {
            this.contents.append(String.format(string2, arrobject));
        }
    }

    public void append(StringBuilder stringBuilder) {
        if (this.shouldLog()) {
            this.contents.append((CharSequence)stringBuilder);
        }
    }

    public void appendKeyValue(String string2, Object object) {
        this.append("  %s:\t%s\n", string2, object);
    }

    public String getContents() {
        return Logger.replaceStrings(this.contents.toString());
    }

    public int getPriority() {
        return this.priority;
    }

    public void log() {
        this.logString(this.contents.toString());
        this.contents = new StringBuilder();
    }

    public void logString(String string2) {
        Logger.log(this.behavior, this.priority, this.tag, string2);
    }

    public void setPriority(int n2) {
        Validate.oneOf(n2, "value", 7, 3, 6, 4, 2, 5);
        this.priority = n2;
    }
}

