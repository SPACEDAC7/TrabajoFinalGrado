/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.dustbuster;

import com.buzzfeed.toolkit.dustbuster.DustbusterEvent;
import java.util.Map;

public interface DustbusterInterface {
    public DustbusterEvent trackEvent(String var1, Map<String, Object> var2);

    @Deprecated
    public DustbusterEvent trackEvent(String var1, Map<String, Object> var2, boolean var3);
}

