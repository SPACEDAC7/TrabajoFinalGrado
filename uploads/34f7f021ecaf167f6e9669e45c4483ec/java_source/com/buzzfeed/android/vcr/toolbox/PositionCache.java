/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.vcr.toolbox;

public interface PositionCache {
    public void clearCache();

    public long getPosition(String var1);

    public void putPosition(String var1, long var2);

    public void removePosition(String var1);
}

