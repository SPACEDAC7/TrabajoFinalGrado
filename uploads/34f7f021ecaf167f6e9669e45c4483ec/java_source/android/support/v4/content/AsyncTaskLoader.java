/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Handler
 *  android.os.SystemClock
 */
package android.support.v4.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.annotation.RestrictTo;
import android.support.v4.content.Loader;
import android.support.v4.content.ModernAsyncTask;
import android.support.v4.os.OperationCanceledException;
import android.support.v4.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

public abstract class AsyncTaskLoader<D>
extends Loader<D> {
    static final boolean DEBUG = false;
    static final String TAG = "AsyncTaskLoader";
    volatile AsyncTaskLoader<D> mCancellingTask;
    private final Executor mExecutor;
    Handler mHandler;
    long mLastLoadCompleteTime = -10000;
    volatile AsyncTaskLoader<D> mTask;
    long mUpdateThrottle;

    public AsyncTaskLoader(Context context) {
        this(context, ModernAsyncTask.THREAD_POOL_EXECUTOR);
    }

    private AsyncTaskLoader(Context context, Executor executor) {
        super(context);
        this.mExecutor = executor;
    }

    public void cancelLoadInBackground() {
    }

    void dispatchOnCancelled(AsyncTaskLoader<D> asyncTaskLoader, D d2) {
        this.onCanceled(d2);
        if (this.mCancellingTask == asyncTaskLoader) {
            this.rollbackContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mCancellingTask = null;
            this.deliverCancellation();
            this.executePendingTask();
        }
    }

    void dispatchOnLoadComplete(AsyncTaskLoader<D> asyncTaskLoader, D d2) {
        if (this.mTask != asyncTaskLoader) {
            this.dispatchOnCancelled(asyncTaskLoader, d2);
            return;
        }
        if (this.isAbandoned()) {
            this.onCanceled(d2);
            return;
        }
        this.commitContentChanged();
        this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
        this.mTask = null;
        this.deliverResult(d2);
    }

    @Override
    public void dump(String string2, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
        super.dump(string2, fileDescriptor, printWriter, arrstring);
        if (this.mTask != null) {
            printWriter.print(string2);
            printWriter.print("mTask=");
            printWriter.print(this.mTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mTask.waiting);
        }
        if (this.mCancellingTask != null) {
            printWriter.print(string2);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.mCancellingTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mCancellingTask.waiting);
        }
        if (this.mUpdateThrottle != 0) {
            printWriter.print(string2);
            printWriter.print("mUpdateThrottle=");
            TimeUtils.formatDuration(this.mUpdateThrottle, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            TimeUtils.formatDuration(this.mLastLoadCompleteTime, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    void executePendingTask() {
        if (this.mCancellingTask != null || this.mTask == null) return;
        if (this.mTask.waiting) {
            this.mTask.waiting = false;
            this.mHandler.removeCallbacks(this.mTask);
        }
        if (this.mUpdateThrottle > 0 && SystemClock.uptimeMillis() < this.mLastLoadCompleteTime + this.mUpdateThrottle) {
            this.mTask.waiting = true;
            this.mHandler.postAtTime(this.mTask, this.mLastLoadCompleteTime + this.mUpdateThrottle);
            return;
        }
        this.mTask.executeOnExecutor(this.mExecutor, null);
    }

    public boolean isLoadInBackgroundCanceled() {
        if (this.mCancellingTask != null) {
            return true;
        }
        return false;
    }

    public abstract D loadInBackground();

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected boolean onCancelLoad() {
        if (this.mTask == null) return false;
        if (this.mCancellingTask != null) {
            if (this.mTask.waiting) {
                this.mTask.waiting = false;
                this.mHandler.removeCallbacks(this.mTask);
            }
            this.mTask = null;
            return false;
        }
        if (this.mTask.waiting) {
            this.mTask.waiting = false;
            this.mHandler.removeCallbacks(this.mTask);
            this.mTask = null;
            return false;
        }
        boolean bl = this.mTask.cancel(false);
        if (bl) {
            this.mCancellingTask = this.mTask;
            this.cancelLoadInBackground();
        }
        this.mTask = null;
        return bl;
    }

    public void onCanceled(D d2) {
    }

    @Override
    protected void onForceLoad() {
        super.onForceLoad();
        this.cancelLoad();
        this.mTask = new LoadTask();
        this.executePendingTask();
    }

    protected D onLoadInBackground() {
        return this.loadInBackground();
    }

    public void setUpdateThrottle(long l2) {
        this.mUpdateThrottle = l2;
        if (l2 != 0) {
            this.mHandler = new Handler();
        }
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void waitForLoader() {
        AsyncTaskLoader<D> asyncTaskLoader = this.mTask;
        if (asyncTaskLoader != null) {
            asyncTaskLoader.waitForLoader();
        }
    }

    final class LoadTask
    extends ModernAsyncTask<Void, Void, D>
    implements Runnable {
        private final CountDownLatch mDone;
        boolean waiting;

        LoadTask() {
            this.mDone = new CountDownLatch(1);
        }

        protected /* varargs */ D doInBackground(Void ... object) {
            try {
                object = AsyncTaskLoader.this.onLoadInBackground();
            }
            catch (OperationCanceledException var1_2) {
                if (!this.isCancelled()) {
                    throw var1_2;
                }
                return null;
            }
            return (D)object;
        }

        @Override
        protected void onCancelled(D d2) {
            try {
                AsyncTaskLoader.this.dispatchOnCancelled(this, d2);
                return;
            }
            finally {
                this.mDone.countDown();
            }
        }

        @Override
        protected void onPostExecute(D d2) {
            try {
                AsyncTaskLoader.this.dispatchOnLoadComplete(this, d2);
                return;
            }
            finally {
                this.mDone.countDown();
            }
        }

        @Override
        public void run() {
            this.waiting = false;
            AsyncTaskLoader.this.executePendingTask();
        }

        public void waitForLoader() {
            try {
                this.mDone.await();
                return;
            }
            catch (InterruptedException var1_1) {
                return;
            }
        }
    }

}

