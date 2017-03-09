/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.manager;

import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.util.Util;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

class ActivityFragmentLifecycle
implements Lifecycle {
    private boolean isDestroyed;
    private boolean isStarted;
    private final Set<LifecycleListener> lifecycleListeners = Collections.newSetFromMap(new WeakHashMap());

    ActivityFragmentLifecycle() {
    }

    @Override
    public void addListener(LifecycleListener lifecycleListener) {
        this.lifecycleListeners.add(lifecycleListener);
        if (this.isDestroyed) {
            lifecycleListener.onDestroy();
            return;
        }
        if (this.isStarted) {
            lifecycleListener.onStart();
            return;
        }
        lifecycleListener.onStop();
    }

    void onDestroy() {
        this.isDestroyed = true;
        Iterator<LifecycleListener> iterator = Util.getSnapshot(this.lifecycleListeners).iterator();
        while (iterator.hasNext()) {
            iterator.next().onDestroy();
        }
    }

    void onStart() {
        this.isStarted = true;
        Iterator<LifecycleListener> iterator = Util.getSnapshot(this.lifecycleListeners).iterator();
        while (iterator.hasNext()) {
            iterator.next().onStart();
        }
    }

    void onStop() {
        this.isStarted = false;
        Iterator<LifecycleListener> iterator = Util.getSnapshot(this.lifecycleListeners).iterator();
        while (iterator.hasNext()) {
            iterator.next().onStop();
        }
    }
}

