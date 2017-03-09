/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.provider;

import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.provider.EmptyDataLoadProvider;
import com.bumptech.glide.util.MultiClassKey;
import java.util.HashMap;
import java.util.Map;

public class DataLoadProviderRegistry {
    private static final MultiClassKey GET_KEY = new MultiClassKey();
    private final Map<MultiClassKey, DataLoadProvider<?, ?>> providers = new HashMap();

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public <T, Z> DataLoadProvider<T, Z> get(Class<T> dataLoadProvider, Class<Z> object) {
        MultiClassKey multiClassKey = GET_KEY;
        synchronized (multiClassKey) {
            GET_KEY.set(dataLoadProvider, object);
            object = this.providers.get(GET_KEY);
        }
        dataLoadProvider = object;
        if (object != null) return dataLoadProvider;
        return EmptyDataLoadProvider.get();
    }

    public <T, Z> void register(Class<T> class_, Class<Z> class_2, DataLoadProvider<T, Z> dataLoadProvider) {
        this.providers.put(new MultiClassKey(class_, class_2), dataLoadProvider);
    }
}

