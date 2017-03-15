/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.utils.task;

import com.comscore.analytics.Core;
import com.comscore.utils.CSLog;
import com.comscore.utils.task.TaskThread;
import com.comscore.utils.task.a;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class TaskExecutor {
    private static final long b = 50000;
    Core a;
    private TaskThread c;
    private BlockingQueue<a> d;

    public TaskExecutor(Core core) {
        this.a = core;
        this.d = new LinkedBlockingQueue<a>();
        this.c = new TaskThread(this);
        this.c.start();
    }

    long a() {
        Iterator<a> iterator = this.d.iterator();
        long l2 = 50000;
        while (iterator.hasNext()) {
            l2 = Math.min(l2, iterator.next().a());
        }
        return l2;
    }

    void a(a a2) {
        this.d.remove(a2);
    }

    a b() {
        for (a a2 : this.d) {
            if (a2.f() > System.currentTimeMillis()) continue;
            return a2;
        }
        return null;
    }

    public boolean containsTask(Runnable runnable) {
        for (a a2 : this.d) {
            if (a2.i() != runnable && (!(runnable instanceof a) || a2 != runnable)) continue;
            return true;
        }
        return false;
    }

    public boolean execute(Runnable runnable, long l2) {
        return this.execute(runnable, l2, false, 0);
    }

    public boolean execute(Runnable runnable, long l2, boolean bl, long l3) {
        for (a a2 : this.d) {
            if (a2 == null || a2.i() != runnable) continue;
            return false;
        }
        this.d.add(new a(runnable, this.a, l2, bl, l3));
        this.c.c();
        return true;
    }

    public boolean execute(Runnable runnable, boolean bl) {
        if (!this.a.isEnabled()) {
            return false;
        }
        if (!bl) {
            try {
                runnable.run();
                return true;
            }
            catch (Exception var1_2) {
                CSLog.e(this.getClass(), "Unexpected error: ");
                CSLog.printStackTrace(var1_2);
                return true;
            }
        }
        this.execute(runnable, 0);
        return true;
    }

    public void removeAllEnqueuedTasks() {
        this.d.clear();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void removeEnqueuedTask(Runnable runnable) {
        a a2;
        if (runnable == null) {
            return;
        }
        Iterator<a> iterator = this.d.iterator();
        do {
            if (!iterator.hasNext()) return;
        } while ((a2 = iterator.next()).i() != runnable);
        this.d.remove(a2);
    }

    public int size() {
        return this.d.size();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void waitForLastNonDelayedTaskToFinish() {
        var2_1 = null;
        var3_2 = new a[this.d.size()];
        this.d.toArray(var3_2);
        var4_3 = var3_2.length - 1;
        do {
            var1_4 = var2_1;
            if (var4_3 < 0) ** GOTO lbl10
            if (var3_2[var4_3] != null && !var3_2[var4_3].d()) {
                var1_4 = var3_2[var4_3];
lbl10: // 2 sources:
                this.waitForTaskToFinish(var1_4, 0);
                return;
            }
            --var4_3;
        } while (true);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void waitForTaskToFinish(Runnable runnable, long l2) {
        a a2;
        if (!(runnable instanceof a)) {
            Iterator<a> iterator = this.d.iterator();
            a a3 = null;
            do {
                a2 = a3;
                if (!iterator.hasNext()) return;
                a2 = iterator.next();
                if (a2.i() != runnable) continue;
                a3 = a2;
            } while (true);
        }
        a2 = (a)runnable;
        if (a2 == null) return;
        long l3 = System.currentTimeMillis();
        while (this.d.contains(a2) && (l2 <= 0 || System.currentTimeMillis() < l3 + l2)) {
            try {
                Thread.sleep(100);
            }
            catch (InterruptedException var1_2) {
            }
        }
        return;
    }

    public void waitForTasks() {
        while (this.d.size() != 0) {
            try {
                Thread.sleep(100);
            }
            catch (InterruptedException var1_1) {
            }
        }
        return;
    }
}

