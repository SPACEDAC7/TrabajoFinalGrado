/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSenseState;
import java.util.HashMap;

public interface StreamSenseListener {
    public void onStateChange(StreamSenseState var1, StreamSenseState var2, HashMap<String, String> var3, long var4);
}

