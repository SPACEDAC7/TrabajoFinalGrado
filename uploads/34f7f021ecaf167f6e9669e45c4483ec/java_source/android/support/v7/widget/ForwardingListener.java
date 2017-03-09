/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.SystemClock
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$OnAttachStateChangeListener
 *  android.view.View$OnTouchListener
 *  android.view.ViewConfiguration
 *  android.view.ViewParent
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnGlobalLayoutListener
 *  android.widget.ListView
 */
package android.support.v7.widget;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.support.annotation.RestrictTo;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.menu.ShowableListMenu;
import android.support.v7.widget.DropDownListView;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.ListView;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public abstract class ForwardingListener
implements View.OnTouchListener {
    private int mActivePointerId;
    private Runnable mDisallowIntercept;
    private boolean mForwarding;
    private final int mLongPressTimeout;
    private final float mScaledTouchSlop;
    final View mSrc;
    private final int mTapTimeout;
    private final int[] mTmpLocation = new int[2];
    private Runnable mTriggerLongPress;

    /*
     * Enabled aggressive block sorting
     */
    public ForwardingListener(View view) {
        this.mSrc = view;
        view.setLongClickable(true);
        if (Build.VERSION.SDK_INT >= 12) {
            this.addDetachListenerApi12(view);
        } else {
            this.addDetachListenerBase(view);
        }
        this.mScaledTouchSlop = ViewConfiguration.get((Context)view.getContext()).getScaledTouchSlop();
        this.mTapTimeout = ViewConfiguration.getTapTimeout();
        this.mLongPressTimeout = (this.mTapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    private void addDetachListenerApi12(View view) {
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener(){

            public void onViewAttachedToWindow(View view) {
            }

            public void onViewDetachedFromWindow(View view) {
                ForwardingListener.this.onDetachedFromWindow();
            }
        });
    }

    private void addDetachListenerBase(View view) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener(){
            boolean mIsAttached;

            public void onGlobalLayout() {
                boolean bl = this.mIsAttached;
                this.mIsAttached = ViewCompat.isAttachedToWindow(ForwardingListener.this.mSrc);
                if (bl && !this.mIsAttached) {
                    ForwardingListener.this.onDetachedFromWindow();
                }
            }
        });
    }

    private void clearCallbacks() {
        if (this.mTriggerLongPress != null) {
            this.mSrc.removeCallbacks(this.mTriggerLongPress);
        }
        if (this.mDisallowIntercept != null) {
            this.mSrc.removeCallbacks(this.mDisallowIntercept);
        }
    }

    private void onDetachedFromWindow() {
        this.mForwarding = false;
        this.mActivePointerId = -1;
        if (this.mDisallowIntercept != null) {
            this.mSrc.removeCallbacks(this.mDisallowIntercept);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean onTouchForwarded(MotionEvent motionEvent) {
        boolean bl = true;
        View view = this.mSrc;
        Object object = this.getPopup();
        if (object == null) return false;
        if (!object.isShowing()) {
            return false;
        }
        if ((object = (DropDownListView)object.getListView()) == null) return false;
        if (!object.isShown()) return false;
        MotionEvent motionEvent2 = MotionEvent.obtainNoHistory((MotionEvent)motionEvent);
        this.toGlobalMotionEvent(view, motionEvent2);
        this.toLocalMotionEvent((View)object, motionEvent2);
        boolean bl2 = object.onForwardedEvent(motionEvent2, this.mActivePointerId);
        motionEvent2.recycle();
        int n2 = MotionEventCompat.getActionMasked(motionEvent);
        n2 = n2 != 1 && n2 != 3 ? 1 : 0;
        if (!bl2) return false;
        if (n2 == 0) return false;
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean onTouchObserved(MotionEvent motionEvent) {
        View view = this.mSrc;
        if (!view.isEnabled()) {
            return false;
        }
        switch (MotionEventCompat.getActionMasked(motionEvent)) {
            default: {
                return false;
            }
            case 0: {
                this.mActivePointerId = motionEvent.getPointerId(0);
                if (this.mDisallowIntercept == null) {
                    this.mDisallowIntercept = new DisallowIntercept();
                }
                view.postDelayed(this.mDisallowIntercept, (long)this.mTapTimeout);
                if (this.mTriggerLongPress == null) {
                    this.mTriggerLongPress = new TriggerLongPress();
                }
                view.postDelayed(this.mTriggerLongPress, (long)this.mLongPressTimeout);
                return false;
            }
            case 2: {
                int n2 = motionEvent.findPointerIndex(this.mActivePointerId);
                if (n2 < 0) return false;
                if (ForwardingListener.pointInView(view, motionEvent.getX(n2), motionEvent.getY(n2), this.mScaledTouchSlop)) return false;
                this.clearCallbacks();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
            case 1: 
            case 3: 
        }
        this.clearCallbacks();
        return false;
    }

    private static boolean pointInView(View view, float f2, float f3, float f4) {
        if (f2 >= - f4 && f3 >= - f4 && f2 < (float)(view.getRight() - view.getLeft()) + f4 && f3 < (float)(view.getBottom() - view.getTop()) + f4) {
            return true;
        }
        return false;
    }

    private boolean toGlobalMotionEvent(View view, MotionEvent motionEvent) {
        int[] arrn = this.mTmpLocation;
        view.getLocationOnScreen(arrn);
        motionEvent.offsetLocation((float)arrn[0], (float)arrn[1]);
        return true;
    }

    private boolean toLocalMotionEvent(View view, MotionEvent motionEvent) {
        int[] arrn = this.mTmpLocation;
        view.getLocationOnScreen(arrn);
        motionEvent.offsetLocation((float)(- arrn[0]), (float)(- arrn[1]));
        return true;
    }

    public abstract ShowableListMenu getPopup();

    protected boolean onForwardingStarted() {
        ShowableListMenu showableListMenu = this.getPopup();
        if (showableListMenu != null && !showableListMenu.isShowing()) {
            showableListMenu.show();
        }
        return true;
    }

    protected boolean onForwardingStopped() {
        ShowableListMenu showableListMenu = this.getPopup();
        if (showableListMenu != null && showableListMenu.isShowing()) {
            showableListMenu.dismiss();
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    void onLongPress() {
        this.clearCallbacks();
        View view = this.mSrc;
        if (!view.isEnabled() || view.isLongClickable() || !this.onForwardingStarted()) {
            return;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        long l2 = SystemClock.uptimeMillis();
        MotionEvent motionEvent = MotionEvent.obtain((long)l2, (long)l2, (int)3, (float)0.0f, (float)0.0f, (int)0);
        view.onTouchEvent(motionEvent);
        motionEvent.recycle();
        this.mForwarding = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean bl;
        boolean bl2 = false;
        boolean bl3 = this.mForwarding;
        if (bl3) {
            bl = this.onTouchForwarded(motionEvent) || !this.onForwardingStopped();
        } else {
            boolean bl4 = this.onTouchObserved(motionEvent) && this.onForwardingStarted();
            bl = bl4;
            if (bl4) {
                long l2 = SystemClock.uptimeMillis();
                view = MotionEvent.obtain((long)l2, (long)l2, (int)3, (float)0.0f, (float)0.0f, (int)0);
                this.mSrc.onTouchEvent((MotionEvent)view);
                view.recycle();
                bl = bl4;
            }
        }
        this.mForwarding = bl;
        if (bl) return true;
        bl = bl2;
        if (!bl3) return bl;
        return true;
    }

    private class DisallowIntercept
    implements Runnable {
        DisallowIntercept() {
        }

        @Override
        public void run() {
            ViewParent viewParent = ForwardingListener.this.mSrc.getParent();
            if (viewParent != null) {
                viewParent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    private class TriggerLongPress
    implements Runnable {
        TriggerLongPress() {
        }

        @Override
        public void run() {
            ForwardingListener.this.onLongPress();
        }
    }

}

