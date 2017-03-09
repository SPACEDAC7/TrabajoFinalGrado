/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core;

import com.crashlytics.android.core.ByteString;

interface FileLogStore {
    public void closeLogFile();

    public void deleteLogFile();

    public ByteString getLogAsByteString();

    public void writeToLog(long var1, String var3);
}

