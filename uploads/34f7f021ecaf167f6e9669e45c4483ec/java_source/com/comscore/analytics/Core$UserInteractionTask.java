/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import com.comscore.utils.task.TaskExecutor;

public class Core$UserInteractionTask
implements Runnable {
    final /* synthetic */ Core a;

    public Core$UserInteractionTask(Core core) {
        this.a = core;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void run() {
        if (!Core.b(this.a) || this.a.Y == null) {
            return;
        }
        this.a.f.removeEnqueuedTask(this.a.Y);
        this.a.Y = null;
        this.a.n();
    }
}

