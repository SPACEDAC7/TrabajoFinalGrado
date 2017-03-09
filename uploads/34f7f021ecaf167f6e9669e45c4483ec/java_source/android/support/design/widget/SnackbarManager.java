/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.Handler$Callback
 *  android.os.Looper
 *  android.os.Message
 */
package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

class SnackbarManager {
    private static final int LONG_DURATION_MS = 2750;
    static final int MSG_TIMEOUT = 0;
    private static final int SHORT_DURATION_MS = 1500;
    private static SnackbarManager sSnackbarManager;
    private SnackbarRecord mCurrentSnackbar;
    private final Handler mHandler;
    private final Object mLock = new Object();
    private SnackbarRecord mNextSnackbar;

    private SnackbarManager() {
        this.mHandler = new Handler(Looper.getMainLooper(), new Handler.Callback(){

            public boolean handleMessage(Message message) {
                switch (message.what) {
                    default: {
                        return false;
                    }
                    case 0: 
                }
                SnackbarManager.this.handleTimeout((SnackbarRecord)message.obj);
                return true;
            }
        });
    }

    private boolean cancelSnackbarLocked(SnackbarRecord snackbarRecord, int n2) {
        Callback callback = snackbarRecord.callback.get();
        if (callback != null) {
            this.mHandler.removeCallbacksAndMessages((Object)snackbarRecord);
            callback.dismiss(n2);
            return true;
        }
        return false;
    }

    static SnackbarManager getInstance() {
        if (sSnackbarManager == null) {
            sSnackbarManager = new SnackbarManager();
        }
        return sSnackbarManager;
    }

    private boolean isCurrentSnackbarLocked(Callback callback) {
        if (this.mCurrentSnackbar != null && this.mCurrentSnackbar.isSnackbar(callback)) {
            return true;
        }
        return false;
    }

    private boolean isNextSnackbarLocked(Callback callback) {
        if (this.mNextSnackbar != null && this.mNextSnackbar.isSnackbar(callback)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void scheduleTimeoutLocked(SnackbarRecord snackbarRecord) {
        if (snackbarRecord.duration == -2) {
            return;
        }
        int n2 = 2750;
        if (snackbarRecord.duration > 0) {
            n2 = snackbarRecord.duration;
        } else if (snackbarRecord.duration == -1) {
            n2 = 1500;
        }
        this.mHandler.removeCallbacksAndMessages((Object)snackbarRecord);
        this.mHandler.sendMessageDelayed(Message.obtain((Handler)this.mHandler, (int)0, (Object)snackbarRecord), (long)n2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void showNextSnackbarLocked() {
        if (this.mNextSnackbar == null) return;
        this.mCurrentSnackbar = this.mNextSnackbar;
        this.mNextSnackbar = null;
        Callback callback = this.mCurrentSnackbar.callback.get();
        if (callback != null) {
            callback.show();
            return;
        }
        this.mCurrentSnackbar = null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void cancelTimeout(Callback callback) {
        Object object = this.mLock;
        synchronized (object) {
            if (this.isCurrentSnackbarLocked(callback)) {
                this.mHandler.removeCallbacksAndMessages((Object)this.mCurrentSnackbar);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void dismiss(Callback callback, int n2) {
        Object object = this.mLock;
        synchronized (object) {
            if (this.isCurrentSnackbarLocked(callback)) {
                this.cancelSnackbarLocked(this.mCurrentSnackbar, n2);
            } else if (this.isNextSnackbarLocked(callback)) {
                this.cancelSnackbarLocked(this.mNextSnackbar, n2);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    void handleTimeout(SnackbarRecord snackbarRecord) {
        Object object = this.mLock;
        synchronized (object) {
            if (this.mCurrentSnackbar == snackbarRecord || this.mNextSnackbar == snackbarRecord) {
                this.cancelSnackbarLocked(snackbarRecord, 2);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean isCurrent(Callback callback) {
        Object object = this.mLock;
        synchronized (object) {
            return this.isCurrentSnackbarLocked(callback);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean isCurrentOrNext(Callback callback) {
        Object object = this.mLock;
        synchronized (object) {
            if (this.isCurrentSnackbarLocked(callback)) return true;
            if (!this.isNextSnackbarLocked(callback)) return false;
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void onDismissed(Callback callback) {
        Object object = this.mLock;
        synchronized (object) {
            if (this.isCurrentSnackbarLocked(callback)) {
                this.mCurrentSnackbar = null;
                if (this.mNextSnackbar != null) {
                    this.showNextSnackbarLocked();
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void onShown(Callback callback) {
        Object object = this.mLock;
        synchronized (object) {
            if (this.isCurrentSnackbarLocked(callback)) {
                this.scheduleTimeoutLocked(this.mCurrentSnackbar);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void restoreTimeout(Callback callback) {
        Object object = this.mLock;
        synchronized (object) {
            if (this.isCurrentSnackbarLocked(callback)) {
                this.scheduleTimeoutLocked(this.mCurrentSnackbar);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void show(int n2, Callback callback) {
        Object object = this.mLock;
        synchronized (object) {
            if (this.isCurrentSnackbarLocked(callback)) {
                this.mCurrentSnackbar.duration = n2;
                this.mHandler.removeCallbacksAndMessages((Object)this.mCurrentSnackbar);
                this.scheduleTimeoutLocked(this.mCurrentSnackbar);
                return;
            }
            if (this.isNextSnackbarLocked(callback)) {
                this.mNextSnackbar.duration = n2;
            } else {
                this.mNextSnackbar = new SnackbarRecord(n2, callback);
            }
            if (this.mCurrentSnackbar != null && this.cancelSnackbarLocked(this.mCurrentSnackbar, 4)) {
                return;
            }
            this.mCurrentSnackbar = null;
            this.showNextSnackbarLocked();
            return;
        }
    }

    static interface Callback {
        public void dismiss(int var1);

        public void show();
    }

    private static class SnackbarRecord {
        final WeakReference<Callback> callback;
        int duration;

        SnackbarRecord(int n2, Callback callback) {
            this.callback = new WeakReference<Callback>(callback);
            this.duration = n2;
        }

        boolean isSnackbar(Callback callback) {
            if (callback != null && this.callback.get() == callback) {
                return true;
            }
            return false;
        }
    }

}

