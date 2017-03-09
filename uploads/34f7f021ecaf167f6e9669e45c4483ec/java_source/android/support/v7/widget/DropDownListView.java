/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.view.MotionEvent
 *  android.view.View
 *  android.widget.ListView
 */
package android.support.v7.widget;

import android.content.Context;
import android.os.Build;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.widget.AutoScrollHelper;
import android.support.v4.widget.ListViewAutoScrollHelper;
import android.support.v7.appcompat.R;
import android.support.v7.widget.ListViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListView;

class DropDownListView
extends ListViewCompat {
    private ViewPropertyAnimatorCompat mClickAnimation;
    private boolean mDrawsInPressedState;
    private boolean mHijackFocus;
    private boolean mListSelectionHidden;
    private ListViewAutoScrollHelper mScrollHelper;

    public DropDownListView(Context context, boolean bl) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.mHijackFocus = bl;
        this.setCacheColorHint(0);
    }

    private void clearPressedItem() {
        this.mDrawsInPressedState = false;
        this.setPressed(false);
        this.drawableStateChanged();
        View view = this.getChildAt(this.mMotionPosition - this.getFirstVisiblePosition());
        if (view != null) {
            view.setPressed(false);
        }
        if (this.mClickAnimation != null) {
            this.mClickAnimation.cancel();
            this.mClickAnimation = null;
        }
    }

    private void clickPressedItem(View view, int n2) {
        this.performItemClick(view, n2, this.getItemIdAtPosition(n2));
    }

    private void setPressedItem(View view, int n2, float f2, float f3) {
        View view2;
        this.mDrawsInPressedState = true;
        if (Build.VERSION.SDK_INT >= 21) {
            this.drawableHotspotChanged(f2, f3);
        }
        if (!this.isPressed()) {
            this.setPressed(true);
        }
        this.layoutChildren();
        if (this.mMotionPosition != -1 && (view2 = this.getChildAt(this.mMotionPosition - this.getFirstVisiblePosition())) != null && view2 != view && view2.isPressed()) {
            view2.setPressed(false);
        }
        this.mMotionPosition = n2;
        float f4 = view.getLeft();
        float f5 = view.getTop();
        if (Build.VERSION.SDK_INT >= 21) {
            view.drawableHotspotChanged(f2 - f4, f3 - f5);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        this.positionSelectorLikeTouchCompat(n2, view, f2, f3);
        this.setSelectorEnabled(false);
        this.refreshDrawableState();
    }

    public boolean hasFocus() {
        if (this.mHijackFocus || super.hasFocus()) {
            return true;
        }
        return false;
    }

    public boolean hasWindowFocus() {
        if (this.mHijackFocus || super.hasWindowFocus()) {
            return true;
        }
        return false;
    }

    public boolean isFocused() {
        if (this.mHijackFocus || super.isFocused()) {
            return true;
        }
        return false;
    }

    public boolean isInTouchMode() {
        if (this.mHijackFocus && this.mListSelectionHidden || super.isInTouchMode()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onForwardedEvent(MotionEvent motionEvent, int n2) {
        boolean bl = true;
        boolean bl2 = true;
        int n3 = 0;
        int n4 = MotionEventCompat.getActionMasked(motionEvent);
        switch (n4) {
            default: {
                bl = bl2;
                n2 = n3;
                break;
            }
            case 3: {
                bl = false;
                n2 = n3;
                break;
            }
            case 1: {
                bl = false;
            }
            case 2: {
                int n5 = motionEvent.findPointerIndex(n2);
                if (n5 < 0) {
                    bl = false;
                    n2 = n3;
                    break;
                }
                n2 = (int)motionEvent.getX(n5);
                int n6 = (int)motionEvent.getY(n5);
                n5 = this.pointToPosition(n2, n6);
                if (n5 == -1) {
                    n2 = 1;
                    break;
                }
                View view = this.getChildAt(n5 - this.getFirstVisiblePosition());
                this.setPressedItem(view, n5, n2, n6);
                bl2 = true;
                n2 = n3;
                bl = bl2;
                if (n4 != 1) break;
                this.clickPressedItem(view, n5);
                n2 = n3;
                bl = bl2;
            }
        }
        if (!bl || n2 != 0) {
            this.clearPressedItem();
        }
        if (bl) {
            if (this.mScrollHelper == null) {
                this.mScrollHelper = new ListViewAutoScrollHelper(this);
            }
            this.mScrollHelper.setEnabled(true);
            this.mScrollHelper.onTouch((View)this, motionEvent);
            return bl;
        } else {
            if (this.mScrollHelper == null) return bl;
            {
                this.mScrollHelper.setEnabled(false);
                return bl;
            }
        }
    }

    void setListSelectionHidden(boolean bl) {
        this.mListSelectionHidden = bl;
    }

    @Override
    protected boolean touchModeDrawsInPressedStateCompat() {
        if (this.mDrawsInPressedState || super.touchModeDrawsInPressedStateCompat()) {
            return true;
        }
        return false;
    }
}

