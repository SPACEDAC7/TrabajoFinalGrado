/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.adjust.sdk;

import android.util.Log;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.LogLevel;
import java.util.Arrays;
import java.util.Locale;

public class Logger
implements ILogger {
    private static String formatErrorMessage = "Error formating log message: %s, with params: %s";
    private LogLevel logLevel;
    private boolean logLevelLocked;

    public Logger() {
        this.setLogLevel(LogLevel.INFO);
        this.logLevelLocked = false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public /* varargs */ void Assert(String string2, Object ... arrobject) {
        if (this.logLevel.androidLogLevel > 7) return;
        try {
            Log.println((int)7, (String)"Adjust", (String)String.format(Locale.US, string2, arrobject));
            return;
        }
        catch (Exception var3_3) {
            Log.e((String)"Adjust", (String)String.format(Locale.US, formatErrorMessage, string2, Arrays.toString(arrobject)));
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public /* varargs */ void debug(String string2, Object ... arrobject) {
        if (this.logLevel.androidLogLevel > 3) return;
        try {
            Log.d((String)"Adjust", (String)String.format(Locale.US, string2, arrobject));
            return;
        }
        catch (Exception var3_3) {
            Log.e((String)"Adjust", (String)String.format(Locale.US, formatErrorMessage, string2, Arrays.toString(arrobject)));
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public /* varargs */ void error(String string2, Object ... arrobject) {
        if (this.logLevel.androidLogLevel > 6) return;
        try {
            Log.e((String)"Adjust", (String)String.format(Locale.US, string2, arrobject));
            return;
        }
        catch (Exception var3_3) {
            Log.e((String)"Adjust", (String)String.format(Locale.US, formatErrorMessage, string2, Arrays.toString(arrobject)));
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public /* varargs */ void info(String string2, Object ... arrobject) {
        if (this.logLevel.androidLogLevel > 4) return;
        try {
            Log.i((String)"Adjust", (String)String.format(Locale.US, string2, arrobject));
            return;
        }
        catch (Exception var3_3) {
            Log.e((String)"Adjust", (String)String.format(Locale.US, formatErrorMessage, string2, Arrays.toString(arrobject)));
            return;
        }
    }

    @Override
    public void lockLogLevel() {
        this.logLevelLocked = true;
    }

    @Override
    public void setLogLevel(LogLevel logLevel) {
        if (this.logLevelLocked) {
            return;
        }
        this.logLevel = logLevel;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void setLogLevelString(String string2) {
        if (string2 == null) return;
        try {
            this.setLogLevel(LogLevel.valueOf(string2.toUpperCase(Locale.US)));
            return;
        }
        catch (IllegalArgumentException var2_2) {
            this.error("Malformed logLevel '%s', falling back to 'info'", string2);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public /* varargs */ void verbose(String string2, Object ... arrobject) {
        if (this.logLevel.androidLogLevel > 2) return;
        try {
            Log.v((String)"Adjust", (String)String.format(Locale.US, string2, arrobject));
            return;
        }
        catch (Exception var3_3) {
            Log.e((String)"Adjust", (String)String.format(Locale.US, formatErrorMessage, string2, Arrays.toString(arrobject)));
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public /* varargs */ void warn(String string2, Object ... arrobject) {
        if (this.logLevel.androidLogLevel > 5) return;
        try {
            Log.w((String)"Adjust", (String)String.format(Locale.US, string2, arrobject));
            return;
        }
        catch (Exception var3_3) {
            Log.e((String)"Adjust", (String)String.format(Locale.US, formatErrorMessage, string2, Arrays.toString(arrobject)));
            return;
        }
    }
}

