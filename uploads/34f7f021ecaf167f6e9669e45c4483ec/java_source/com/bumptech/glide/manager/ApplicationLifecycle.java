/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.manager;

import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;

class ApplicationLifecycle
implements Lifecycle {
    ApplicationLifecycle() {
    }

    @Override
    public void addListener(LifecycleListener lifecycleListener) {
        lifecycleListener.onStart();
    }
}

