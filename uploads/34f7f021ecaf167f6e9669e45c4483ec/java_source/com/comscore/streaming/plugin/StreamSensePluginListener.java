/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming.plugin;

import com.comscore.streaming.StreamSenseEventType;
import com.comscore.streaming.StreamSenseState;
import java.util.HashMap;

public interface StreamSensePluginListener {
    public void onGetLabels(StreamSenseEventType var1, HashMap<String, String> var2);

    public void onPostStateChange(StreamSenseState var1);

    public boolean onPreStateChange(StreamSenseState var1, StreamSenseEventType var2, boolean var3);
}

