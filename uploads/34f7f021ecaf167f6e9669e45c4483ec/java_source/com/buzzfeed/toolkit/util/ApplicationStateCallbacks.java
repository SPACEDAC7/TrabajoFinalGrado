/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.util;

import com.buzzfeed.toolkit.util.AbstractActivityLifecycleCallbacks;

public abstract class ApplicationStateCallbacks
extends AbstractActivityLifecycleCallbacks {
    public abstract void onApplicationEnterBackground();

    public abstract void onApplicationEnterForeground();
}

