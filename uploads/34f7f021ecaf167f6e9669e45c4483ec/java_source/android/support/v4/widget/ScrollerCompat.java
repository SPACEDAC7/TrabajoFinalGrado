/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.animation.Interpolator
 *  android.widget.OverScroller
 */
package android.support.v4.widget;

import android.content.Context;
import android.os.Build;
import android.support.v4.widget.ScrollerCompatIcs;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

public final class ScrollerCompat {
    private final boolean mIsIcsOrNewer;
    OverScroller mScroller;

    /*
     * Enabled aggressive block sorting
     */
    ScrollerCompat(boolean bl, Context context, Interpolator interpolator2) {
        this.mIsIcsOrNewer = bl;
        context = interpolator2 != null ? new OverScroller(context, interpolator2) : new OverScroller(context);
        this.mScroller = context;
    }

    public static ScrollerCompat create(Context context) {
        return ScrollerCompat.create(context, null);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static ScrollerCompat create(Context context, Interpolator interpolator2) {
        boolean bl;
        if (Build.VERSION.SDK_INT >= 14) {
            bl = true;
            do {
                return new ScrollerCompat(bl, context, interpolator2);
                break;
            } while (true);
        }
        bl = false;
        return new ScrollerCompat(bl, context, interpolator2);
    }

    public void abortAnimation() {
        this.mScroller.abortAnimation();
    }

    public boolean computeScrollOffset() {
        return this.mScroller.computeScrollOffset();
    }

    public void fling(int n2, int n3, int n4, int n5, int n6, int n7, int n8, int n9) {
        this.mScroller.fling(n2, n3, n4, n5, n6, n7, n8, n9);
    }

    public void fling(int n2, int n3, int n4, int n5, int n6, int n7, int n8, int n9, int n10, int n11) {
        this.mScroller.fling(n2, n3, n4, n5, n6, n7, n8, n9, n10, n11);
    }

    public float getCurrVelocity() {
        if (this.mIsIcsOrNewer) {
            return ScrollerCompatIcs.getCurrVelocity((Object)this.mScroller);
        }
        return 0.0f;
    }

    public int getCurrX() {
        return this.mScroller.getCurrX();
    }

    public int getCurrY() {
        return this.mScroller.getCurrY();
    }

    public int getFinalX() {
        return this.mScroller.getFinalX();
    }

    public int getFinalY() {
        return this.mScroller.getFinalY();
    }

    public boolean isFinished() {
        return this.mScroller.isFinished();
    }

    public boolean isOverScrolled() {
        return this.mScroller.isOverScrolled();
    }

    public void notifyHorizontalEdgeReached(int n2, int n3, int n4) {
        this.mScroller.notifyHorizontalEdgeReached(n2, n3, n4);
    }

    public void notifyVerticalEdgeReached(int n2, int n3, int n4) {
        this.mScroller.notifyVerticalEdgeReached(n2, n3, n4);
    }

    public boolean springBack(int n2, int n3, int n4, int n5, int n6, int n7) {
        return this.mScroller.springBack(n2, n3, n4, n5, n6, n7);
    }

    public void startScroll(int n2, int n3, int n4, int n5) {
        this.mScroller.startScroll(n2, n3, n4, n5);
    }

    public void startScroll(int n2, int n3, int n4, int n5, int n6) {
        this.mScroller.startScroll(n2, n3, n4, n5, n6);
    }
}

