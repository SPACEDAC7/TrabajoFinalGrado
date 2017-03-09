/*
 * Decompiled with CFR 0_115.
 */
package com.facebook.internal;

import com.facebook.FacebookSdk;
import java.util.concurrent.Executor;

public class WorkQueue {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final int DEFAULT_MAX_CONCURRENT = 8;
    private final Executor executor;
    private final int maxConcurrent;
    private WorkNode pendingJobs;
    private int runningCount = 0;
    private WorkNode runningJobs = null;
    private final Object workLock = new Object();

    /*
     * Enabled aggressive block sorting
     */
    static {
        boolean bl = !WorkQueue.class.desiredAssertionStatus();
        $assertionsDisabled = bl;
    }

    public WorkQueue() {
        this(8);
    }

    public WorkQueue(int n2) {
        this(n2, FacebookSdk.getExecutor());
    }

    public WorkQueue(int n2, Executor executor) {
        this.maxConcurrent = n2;
        this.executor = executor;
    }

    private void execute(final WorkNode workNode) {
        this.executor.execute(new Runnable(){

            @Override
            public void run() {
                try {
                    workNode.getCallback().run();
                    return;
                }
                finally {
                    WorkQueue.this.finishItemAndStartNew(workNode);
                }
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private void finishItemAndStartNew(WorkNode workNode) {
        WorkNode workNode2 = null;
        Object object = this.workLock;
        // MONITORENTER : object
        if (workNode != null) {
            this.runningJobs = workNode.removeFromList(this.runningJobs);
            --this.runningCount;
        }
        workNode = workNode2;
        if (this.runningCount < this.maxConcurrent) {
            workNode = workNode2 = this.pendingJobs;
            if (workNode2 != null) {
                this.pendingJobs = workNode2.removeFromList(this.pendingJobs);
                this.runningJobs = workNode2.addToList(this.runningJobs, false);
                ++this.runningCount;
                workNode2.setIsRunning(true);
                workNode = workNode2;
            }
        }
        // MONITOREXIT : object
        if (workNode == null) return;
        this.execute(workNode);
    }

    private void startItem() {
        this.finishItemAndStartNew(null);
    }

    public WorkItem addActiveWorkItem(Runnable runnable) {
        return this.addActiveWorkItem(runnable, true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public WorkItem addActiveWorkItem(Runnable object, boolean bl) {
        WorkNode workNode = new WorkNode((Runnable)object);
        object = this.workLock;
        synchronized (object) {
            this.pendingJobs = workNode.addToList(this.pendingJobs, bl);
        }
        this.startItem();
        return workNode;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void validate() {
        Object object = this.workLock;
        synchronized (object) {
            int n2 = 0;
            int n3 = 0;
            if (this.runningJobs != null) {
                WorkNode workNode;
                WorkNode workNode2 = this.runningJobs;
                do {
                    workNode2.verify(true);
                    n2 = n3 + 1;
                    workNode = workNode2.getNext();
                    n3 = n2;
                    workNode2 = workNode;
                } while (workNode != this.runningJobs);
            }
            if (!$assertionsDisabled && this.runningCount != n2) {
                throw new AssertionError();
            }
            return;
        }
    }

    static interface WorkItem {
        public boolean cancel();

        public boolean isRunning();

        public void moveToFront();
    }

    private class WorkNode
    implements WorkItem {
        static final /* synthetic */ boolean $assertionsDisabled;
        private final Runnable callback;
        private boolean isRunning;
        private WorkNode next;
        private WorkNode prev;

        /*
         * Enabled aggressive block sorting
         */
        static {
            boolean bl = !WorkQueue.class.desiredAssertionStatus();
            $assertionsDisabled = bl;
        }

        WorkNode(Runnable runnable) {
            this.callback = runnable;
        }

        /*
         * Enabled aggressive block sorting
         */
        WorkNode addToList(WorkNode workNode, boolean bl) {
            if (!$assertionsDisabled && this.next != null) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && this.prev != null) {
                throw new AssertionError();
            }
            if (workNode == null) {
                this.prev = this;
                this.next = this;
                workNode = this;
            } else {
                this.next = workNode;
                this.prev = workNode.prev;
                WorkNode workNode2 = this.next;
                this.prev.next = this;
                workNode2.prev = this;
            }
            if (bl) {
                return this;
            }
            return workNode;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        @Override
        public boolean cancel() {
            Object object = WorkQueue.this.workLock;
            synchronized (object) {
                if (!this.isRunning()) {
                    WorkQueue.this.pendingJobs = this.removeFromList(WorkQueue.this.pendingJobs);
                    return true;
                }
                return false;
            }
        }

        Runnable getCallback() {
            return this.callback;
        }

        WorkNode getNext() {
            return this.next;
        }

        @Override
        public boolean isRunning() {
            return this.isRunning;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        @Override
        public void moveToFront() {
            Object object = WorkQueue.this.workLock;
            synchronized (object) {
                if (!this.isRunning()) {
                    WorkQueue.this.pendingJobs = this.removeFromList(WorkQueue.this.pendingJobs);
                    WorkQueue.this.pendingJobs = this.addToList(WorkQueue.this.pendingJobs, true);
                }
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        WorkNode removeFromList(WorkNode workNode) {
            if (!$assertionsDisabled && this.next == null) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && this.prev == null) {
                throw new AssertionError();
            }
            WorkNode workNode2 = workNode;
            if (workNode == this) {
                workNode2 = this.next == this ? null : this.next;
            }
            this.next.prev = this.prev;
            this.prev.next = this.next;
            this.prev = null;
            this.next = null;
            return workNode2;
        }

        void setIsRunning(boolean bl) {
            this.isRunning = bl;
        }

        void verify(boolean bl) {
            if (!$assertionsDisabled && this.prev.next != this) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && this.next.prev != this) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && this.isRunning() != bl) {
                throw new AssertionError();
            }
        }
    }

}

