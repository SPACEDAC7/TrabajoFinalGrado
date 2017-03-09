/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.resource.transcode;

import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.load.resource.transcode.UnitTranscoder;
import com.bumptech.glide.util.MultiClassKey;
import java.util.HashMap;
import java.util.Map;

public class TranscoderRegistry {
    private static final MultiClassKey GET_KEY = new MultiClassKey();
    private final Map<MultiClassKey, ResourceTranscoder<?, ?>> factories = new HashMap();

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public <Z, R> ResourceTranscoder<Z, R> get(Class<Z> class_, Class<R> class_2) {
        ResourceTranscoder resourceTranscoder;
        if (class_.equals(class_2)) {
            return UnitTranscoder.get();
        }
        ResourceTranscoder resourceTranscoder2 = GET_KEY;
        synchronized (resourceTranscoder2) {
            GET_KEY.set(class_, class_2);
            resourceTranscoder = this.factories.get(GET_KEY);
        }
        resourceTranscoder2 = resourceTranscoder;
        if (resourceTranscoder != null) return resourceTranscoder2;
        throw new IllegalArgumentException("No transcoder registered for " + class_ + " and " + class_2);
    }

    public <Z, R> void register(Class<Z> class_, Class<R> class_2, ResourceTranscoder<Z, R> resourceTranscoder) {
        this.factories.put(new MultiClassKey(class_, class_2), resourceTranscoder);
    }
}

