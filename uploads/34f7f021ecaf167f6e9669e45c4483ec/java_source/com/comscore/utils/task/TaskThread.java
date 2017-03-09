/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.utils.task;

import com.comscore.utils.task.TaskExecutor;
import com.comscore.utils.task.a;

public class TaskThread
extends Thread {
    private boolean a = false;
    private Object b;
    private TaskExecutor c;

    TaskThread(TaskExecutor taskExecutor) {
        this.c = taskExecutor;
        this.b = new Object();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void a(long l2) {
        Object object = this.b;
        synchronized (object) {
            try {
                this.b.wait(l2);
            }
            catch (InterruptedException var4_3) {
                var4_3.printStackTrace();
            }
            return;
        }
    }

    boolean a() {
        return this.a;
    }

    void b() {
        this.a = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    void c() {
        Object object = this.b;
        synchronized (object) {
            this.b.notify();
            return;
        }
    }

    void d() {
        long l2 = this.c.a();
        if (l2 > 0) {
            this.a(l2);
        }
    }

    @Override
    public void run() {
        while (!this.a()) {
            a a2 = this.c.b();
            if (a2 != null) {
                a2.run();
                this.c.a(a2);
                if (!a2.g()) continue;
                this.c.execute(a2.i(), a2.h(), a2.g(), a2.h());
                continue;
            }
            this.d();
        }
    }
}

