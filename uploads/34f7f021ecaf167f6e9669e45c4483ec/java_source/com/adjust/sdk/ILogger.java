/*
 * Decompiled with CFR 0_115.
 */
package com.adjust.sdk;

import com.adjust.sdk.LogLevel;

public interface ILogger {
    public /* varargs */ void Assert(String var1, Object ... var2);

    public /* varargs */ void debug(String var1, Object ... var2);

    public /* varargs */ void error(String var1, Object ... var2);

    public /* varargs */ void info(String var1, Object ... var2);

    public void lockLogLevel();

    public void setLogLevel(LogLevel var1);

    public void setLogLevelString(String var1);

    public /* varargs */ void verbose(String var1, Object ... var2);

    public /* varargs */ void warn(String var1, Object ... var2);
}

