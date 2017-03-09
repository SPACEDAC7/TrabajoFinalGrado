/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package android.support.v4.os;

import android.os.Build;
import android.support.v4.os.CancellationSignalCompatJellybean;
import android.support.v4.os.OperationCanceledException;

public final class CancellationSignal {
    private boolean mCancelInProgress;
    private Object mCancellationSignalObj;
    private boolean mIsCanceled;
    private OnCancelListener mOnCancelListener;

    private void waitForCancelFinishedLocked() {
        while (this.mCancelInProgress) {
            try {
                this.wait();
            }
            catch (InterruptedException var1_1) {}
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void cancel() {
        // MONITORENTER : this
        if (this.mIsCanceled) {
            // MONITOREXIT : this
            return;
        }
        this.mIsCanceled = true;
        this.mCancelInProgress = true;
        var1_1 = this.mOnCancelListener;
        var2_3 = this.mCancellationSignalObj;
        // MONITOREXIT : this
        if (var1_1 == null) ** GOTO lbl13
        try {
            var1_1.onCancel();
lbl13: // 2 sources:
            if (var2_3 == null) return;
            CancellationSignalCompatJellybean.cancel(var2_3);
            return;
        }
        finally {
            // MONITORENTER : this
            this.mCancelInProgress = false;
            this.notifyAll();
            // MONITOREXIT : this
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Object getCancellationSignalObject() {
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        synchronized (this) {
            if (this.mCancellationSignalObj != null) return this.mCancellationSignalObj;
            this.mCancellationSignalObj = CancellationSignalCompatJellybean.create();
            if (!this.mIsCanceled) return this.mCancellationSignalObj;
            CancellationSignalCompatJellybean.cancel(this.mCancellationSignalObj);
            return this.mCancellationSignalObj;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean isCanceled() {
        synchronized (this) {
            return this.mIsCanceled;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void setOnCancelListener(OnCancelListener onCancelListener) {
        synchronized (this) {
            this.waitForCancelFinishedLocked();
            if (this.mOnCancelListener == onCancelListener) {
                return;
            }
            this.mOnCancelListener = onCancelListener;
            if (this.mIsCanceled && onCancelListener != null) {
                // MONITOREXIT [2, 3] lbl8 : MonitorExitStatement: MONITOREXIT : this
                onCancelListener.onCancel();
                return;
            }
            return;
        }
    }

    public void throwIfCanceled() {
        if (this.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public static interface OnCancelListener {
        public void onCancel();
    }

}

