/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Rect
 *  android.os.Handler
 *  android.os.Handler$Callback
 *  android.os.Looper
 *  android.os.Message
 *  android.view.View
 *  android.view.ViewParent
 */
package com.buzzfeed.android.vcr.toolbox;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewParent;
import com.buzzfeed.android.vcr.toolbox.AutoFocusHelper;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class AutoFocusController {
    private static final float DRAG_DELTA_THRESHOLD = 100.0f;
    private static final float DRAG_DISPLACEMENT_THRESHOLD = 100.0f;
    private static final int MESSAGE_AUTO_FOCUS = 1;
    private static final int MESSAGE_AUTO_FOCUS_DELAY = 700;
    private static final String TAG = AutoFocusController.class.getSimpleName();
    protected static final float VISIBILITY_PERCENTAGE = 0.75f;
    protected AutoFocusHelper mAutoFocusHelper;
    private AutoFocusStrategy mAutoFocusStrategy;
    protected RecyclerView.ViewHolder mCurrentViewHolder;
    private CopyOnWriteArrayList<OnFocusChangeListener> mFocusChangeListeners;
    protected Handler mHandler;
    private boolean mIsAttached;
    private boolean mIsStarted;
    protected int mLastDy;
    protected boolean mNeedFocusOnIdle;
    protected RecyclerView mRecyclerView;
    private long mTimeStampOfLastAutoFocus = 0;
    private int mTotalDragDisplacement = 0;
    private InternalOnChildAttachStateChangeListener onChildAttachStateChangeListener;
    private InternalScrollListener onScrollListener;

    public AutoFocusController() {
        this.onChildAttachStateChangeListener = new InternalOnChildAttachStateChangeListener();
        this.onScrollListener = new InternalScrollListener();
        this.mNeedFocusOnIdle = false;
        this.mFocusChangeListeners = new CopyOnWriteArrayList();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void clearFocusIfOffscreen() {
        if (this.mCurrentViewHolder == null) {
            return;
        }
        View view = this.mCurrentViewHolder.itemView;
        if (this.mAutoFocusStrategy == null || this.mAutoFocusStrategy.isFocusable(this.mCurrentViewHolder)) {
            if (!this.mAutoFocusHelper.isViewCandidateForRemoval(view, this.mLastDy)) return;
        }
        this.clearFocusViewIfNeeded();
    }

    private void clearFocusViewIfNeeded() {
        if (this.mCurrentViewHolder == null) {
            return;
        }
        RecyclerView.ViewHolder viewHolder = this.mCurrentViewHolder;
        this.mCurrentViewHolder = null;
        this.onFocusChanged(viewHolder, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void findNextViewToFocus() {
        RecyclerView.ViewHolder viewHolder;
        int n2;
        int n3 = this.getCurrentChildPosition();
        if (this.mLastDy <= 0) {
            if (this.mCurrentViewHolder != null) {
                if (n3 != -1) {
                    --n3;
                    n2 = 0;
                } else {
                    n3 = 0;
                    n2 = this.mRecyclerView.getChildCount() - 1;
                }
            } else {
                n3 = 0;
                n2 = this.mRecyclerView.getChildCount() - 1;
            }
        } else if (this.mCurrentViewHolder != null) {
            if (n3 != -1) {
                ++n3;
                n2 = this.mRecyclerView.getChildCount() - 1;
            } else {
                n3 = this.mRecyclerView.getChildCount() - 1;
                n2 = 0;
            }
        } else {
            n3 = this.mRecyclerView.getChildCount() - 1;
            n2 = 0;
        }
        RecyclerView.ViewHolder viewHolder2 = viewHolder = this.mAutoFocusHelper.findViewHolderWithVisibilityRatio(n3, n2, 0.75f, this.mAutoFocusStrategy);
        if (viewHolder == null) {
            viewHolder2 = viewHolder;
            if (this.mCurrentViewHolder == null) {
                viewHolder2 = this.mAutoFocusHelper.findMostCenteredViewHolder(n3, n2, this.mAutoFocusStrategy);
            }
        }
        if (this.mCurrentViewHolder != viewHolder2) {
            if (viewHolder2 != null) {
                this.requestFocusInternal(viewHolder2);
                this.mTimeStampOfLastAutoFocus = System.currentTimeMillis();
            } else {
                this.clearFocusIfOffscreen();
            }
            this.mTotalDragDisplacement = 0;
        }
    }

    private int getCurrentChildPosition() {
        if (this.mCurrentViewHolder != null) {
            for (int i2 = 0; i2 < this.mRecyclerView.getChildCount(); ++i2) {
                if (this.mCurrentViewHolder.itemView != this.mRecyclerView.getChildAt(i2)) continue;
                return i2;
            }
        }
        return -1;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void postAutoFocus() {
        if (this.mHandler.hasMessages(1)) return;
        long l2 = System.currentTimeMillis() - this.mTimeStampOfLastAutoFocus;
        if (l2 >= 700) {
            this.findNextViewToFocus();
            return;
        }
        this.mHandler.sendEmptyMessageDelayed(1, 700 - l2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean requestFocusInternal(RecyclerView.ViewHolder viewHolder) {
        String string2 = TAG + ".requestFocusInternal";
        if (viewHolder != null) {
            if (this.mAutoFocusStrategy == null || this.mAutoFocusStrategy.isFocusable(viewHolder)) {
                this.clearFocusViewIfNeeded();
                this.mCurrentViewHolder = viewHolder;
                this.onFocusChanged(viewHolder, true);
                return true;
            }
            LogUtil.w(string2, "ViewHolder is not focusable.");
            do {
                return false;
                break;
            } while (true);
        }
        LogUtil.w(string2, "ViewHolder was null.");
        return false;
    }

    public void addOnFocusChangeListener(OnFocusChangeListener onFocusChangeListener) {
        if (onFocusChangeListener != null && !this.mFocusChangeListeners.contains(onFocusChangeListener)) {
            this.mFocusChangeListeners.add(onFocusChangeListener);
        }
    }

    public void attachView(RecyclerView recyclerView) {
        String string2 = TAG + ".attachView()";
        if (this.mIsAttached) {
            LogUtil.w(string2, "AutoFocusController is already attached.");
            return;
        }
        this.mRecyclerView = EZUtil.checkNotNull(recyclerView, "RecyclerView cant be null");
        this.mIsAttached = true;
        this.mRecyclerView.addOnScrollListener(this.onScrollListener);
        this.mRecyclerView.addOnChildAttachStateChangeListener(this.onChildAttachStateChangeListener);
        this.mAutoFocusHelper = new AutoFocusHelper(this.mRecyclerView);
        this.mHandler = new Handler(Looper.getMainLooper(), new Handler.Callback(){

            public boolean handleMessage(Message message) {
                return AutoFocusController.this.handleMessage(message);
            }
        });
    }

    protected void clearPendingEvents() {
        this.mHandler.removeMessages(1);
    }

    public void detachView() {
        if (!this.mIsAttached) {
            LogUtil.w(TAG + ".detachView()", "AutoFocusController is not attached yet.");
            return;
        }
        this.mIsAttached = false;
        if (this.mIsStarted) {
            this.stop();
        }
        this.mRecyclerView.removeOnScrollListener(this.onScrollListener);
        this.mRecyclerView.removeOnChildAttachStateChangeListener(this.onChildAttachStateChangeListener);
        this.mCurrentViewHolder = null;
        this.mRecyclerView = null;
        this.mAutoFocusHelper = null;
    }

    public RecyclerView.ViewHolder getCurrentViewHolder() {
        return this.mCurrentViewHolder;
    }

    protected boolean handleMessage(Message message) {
        String string2 = TAG + ".handleMessage";
        if (!this.mIsAttached) {
            LogUtil.d(string2, "Message " + message.what + " has been dropped. AutoFocusController is not attached");
            return true;
        }
        switch (message.what) {
            default: {
                LogUtil.d(string2, "No case to handle message " + message.what);
                return false;
            }
            case 1: 
        }
        this.findNextViewToFocus();
        return true;
    }

    public boolean isAttached() {
        return this.mIsAttached;
    }

    public boolean isStarted() {
        return this.mIsStarted;
    }

    @CallSuper
    protected void onFocusChanged(@NonNull RecyclerView.ViewHolder viewHolder, boolean bl) {
        Iterator<OnFocusChangeListener> iterator = this.mFocusChangeListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onFocusChange(viewHolder, bl);
        }
    }

    public void removeOnFocusChangeListener(OnFocusChangeListener onFocusChangeListener) {
        this.mFocusChangeListeners.remove(onFocusChangeListener);
    }

    public boolean requestFocus(int n2) {
        String string2 = TAG + ".requestFocus";
        if (!this.mIsAttached) {
            LogUtil.w(string2, "AutoFocusController is not attached yet.");
            return false;
        }
        if (this.mCurrentViewHolder == null || this.mCurrentViewHolder.getAdapterPosition() != n2) {
            RecyclerView.ViewHolder viewHolder = this.mRecyclerView.findViewHolderForAdapterPosition(n2);
            if (viewHolder != null) {
                return this.requestFocusInternal(viewHolder);
            }
            LogUtil.w(string2, "ViewHolder is not attached yet for position " + n2);
            return false;
        }
        LogUtil.w(string2, "ViewHolder already has focus.");
        return false;
    }

    public boolean requestFocus(RecyclerView.ViewHolder viewHolder) {
        String string2 = TAG + ".requestFocus";
        if (!this.mIsAttached) {
            LogUtil.w(string2, "AutoFocusController is not attached yet.");
            return false;
        }
        if (viewHolder == null) {
            LogUtil.w(string2, "ViewHolder is null.");
            return false;
        }
        if (viewHolder.itemView.getParent() != this.mRecyclerView) {
            LogUtil.w(string2, "ViewHolder is not a child of the attached RecyclerView.");
            return false;
        }
        if (this.mCurrentViewHolder == null || this.mCurrentViewHolder.itemView != viewHolder.itemView) {
            return this.requestFocusInternal(viewHolder);
        }
        LogUtil.w(string2, "ViewHolder already has focus.");
        return false;
    }

    public void setAutoFocusStrategy(AutoFocusStrategy autoFocusStrategy) {
        this.mAutoFocusStrategy = autoFocusStrategy;
    }

    public void start() {
        this.start(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void start(boolean bl) {
        String string2 = TAG + ".start()";
        if (!this.mIsAttached) {
            LogUtil.w(string2, "AutoFocusController is not attached yet.");
            return;
        } else {
            if (this.mIsStarted) {
                LogUtil.d(string2, "AutoFocusController has already started");
                return;
            }
            this.mIsStarted = true;
            if (this.mCurrentViewHolder != null || !bl) return;
            {
                this.mHandler.sendEmptyMessage(1);
                return;
            }
        }
    }

    public void stop() {
        String string2 = TAG + ".stop()";
        if (!this.mIsAttached) {
            LogUtil.w(string2, "AutoFocusController is not attached yet.");
            return;
        }
        if (this.mIsStarted) {
            this.mIsStarted = false;
            this.clearPendingEvents();
            return;
        }
        LogUtil.d(string2, "AutoFocusController is not started yet.");
    }

    public static interface AutoFocusStrategy {
        public boolean isFocusable(RecyclerView.ViewHolder var1);
    }

    private class InternalOnChildAttachStateChangeListener
    implements RecyclerView.OnChildAttachStateChangeListener {
        private InternalOnChildAttachStateChangeListener() {
        }

        @Override
        public void onChildViewAttachedToWindow(View view) {
        }

        @Override
        public void onChildViewDetachedFromWindow(View view) {
            if (AutoFocusController.this.mCurrentViewHolder != null && AutoFocusController.this.mCurrentViewHolder.itemView == view) {
                AutoFocusController.this.clearFocusViewIfNeeded();
            }
        }
    }

    private class InternalScrollListener
    extends RecyclerView.OnScrollListener {
        private InternalScrollListener() {
        }

        /*
         * Enabled aggressive block sorting
         */
        private void autoFocusOnScrolled(int n2) {
            int n3 = AutoFocusController.this.mRecyclerView.getScrollState();
            AutoFocusController.this.mLastDy = n2;
            switch (n3) {
                case 1: {
                    AutoFocusController.this.mTotalDragDisplacement = AutoFocusController.this.mTotalDragDisplacement + n2;
                    if ((float)n2 > 100.0f || (float)Math.abs(AutoFocusController.this.mTotalDragDisplacement) < 100.0f && this.isCurrentViewStillVisible()) return;
                    {
                        AutoFocusController.this.postAutoFocus();
                        return;
                    }
                }
                default: {
                    return;
                }
                case 2: 
            }
            if (AutoFocusController.this.mNeedFocusOnIdle || AutoFocusController.this.mCurrentViewHolder != null) return;
            {
                AutoFocusController.this.mNeedFocusOnIdle = true;
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        private boolean isCurrentViewStillVisible() {
            Rect rect;
            if (AutoFocusController.this.mCurrentViewHolder == null || !AutoFocusController.this.mCurrentViewHolder.itemView.getGlobalVisibleRect(rect = new Rect()) || (float)(rect.bottom - rect.top) / (float)AutoFocusController.this.mCurrentViewHolder.itemView.getMeasuredHeight() < 0.75f) {
                return false;
            }
            return true;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int n2) {
            if (!AutoFocusController.this.mIsStarted) {
                return;
            }
            n2 = recyclerView.getScrollState();
            switch (n2) {
                default: {
                    LogUtil.e(TAG, "Invalid scroll state changed , state = " + n2);
                    return;
                }
                case 2: {
                    if (!ViewCompat.canScrollVertically((View)AutoFocusController.this.mRecyclerView, AutoFocusController.this.mLastDy)) return;
                    AutoFocusController.this.clearPendingEvents();
                    AutoFocusController.this.mNeedFocusOnIdle = true;
                    return;
                }
                case 1: {
                    AutoFocusController.this.clearPendingEvents();
                    AutoFocusController.this.mNeedFocusOnIdle = true;
                    return;
                }
                case 0: 
            }
            if (AutoFocusController.this.mNeedFocusOnIdle && AutoFocusController.this.mLastDy != 0) {
                AutoFocusController.this.findNextViewToFocus();
            }
            AutoFocusController.this.mNeedFocusOnIdle = false;
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int n2, int n3) {
            AutoFocusController.this.clearFocusIfOffscreen();
            if (AutoFocusController.this.mIsStarted) {
                this.autoFocusOnScrolled(n3);
            }
        }
    }

    public static interface OnFocusChangeListener {
        public void onFocusChange(RecyclerView.ViewHolder var1, boolean var2);
    }

}

