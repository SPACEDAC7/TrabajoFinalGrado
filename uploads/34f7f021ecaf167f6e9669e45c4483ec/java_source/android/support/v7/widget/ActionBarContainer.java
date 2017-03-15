/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.TypedArray
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$Callback
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.view.ActionMode
 *  android.view.ActionMode$Callback
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.ActionBarBackgroundDrawable;
import android.support.v7.widget.ActionBarBackgroundDrawableV21;
import android.support.v7.widget.ScrollingTabContainerView;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class ActionBarContainer
extends FrameLayout {
    private View mActionBarView;
    Drawable mBackground;
    private View mContextView;
    private int mHeight;
    boolean mIsSplit;
    boolean mIsStacked;
    private boolean mIsTransitioning;
    Drawable mSplitBackground;
    Drawable mStackedBackground;
    private View mTabContainer;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        void var3_5;
        boolean bl = true;
        super(context, attributeSet);
        if (Build.VERSION.SDK_INT >= 21) {
            ActionBarBackgroundDrawableV21 actionBarBackgroundDrawableV21 = new ActionBarBackgroundDrawableV21(this);
        } else {
            ActionBarBackgroundDrawable actionBarBackgroundDrawable = new ActionBarBackgroundDrawable(this);
        }
        ViewCompat.setBackground((View)this, (Drawable)var3_5);
        context = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBar);
        this.mBackground = context.getDrawable(R.styleable.ActionBar_background);
        this.mStackedBackground = context.getDrawable(R.styleable.ActionBar_backgroundStacked);
        this.mHeight = context.getDimensionPixelSize(R.styleable.ActionBar_height, -1);
        if (this.getId() == R.id.split_action_bar) {
            this.mIsSplit = true;
            this.mSplitBackground = context.getDrawable(R.styleable.ActionBar_backgroundSplit);
        }
        context.recycle();
        if (this.mIsSplit) {
            if (this.mSplitBackground != null) {
                bl = false;
            }
        } else if (this.mBackground != null || this.mStackedBackground != null) {
            bl = false;
        }
        this.setWillNotDraw(bl);
    }

    private int getMeasuredHeightWithMargins(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    private boolean isCollapsed(View view) {
        if (view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0) {
            return true;
        }
        return false;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mBackground != null && this.mBackground.isStateful()) {
            this.mBackground.setState(this.getDrawableState());
        }
        if (this.mStackedBackground != null && this.mStackedBackground.isStateful()) {
            this.mStackedBackground.setState(this.getDrawableState());
        }
        if (this.mSplitBackground != null && this.mSplitBackground.isStateful()) {
            this.mSplitBackground.setState(this.getDrawableState());
        }
    }

    public View getTabContainer() {
        return this.mTabContainer;
    }

    public void jumpDrawablesToCurrentState() {
        if (Build.VERSION.SDK_INT >= 11) {
            super.jumpDrawablesToCurrentState();
            if (this.mBackground != null) {
                this.mBackground.jumpToCurrentState();
            }
            if (this.mStackedBackground != null) {
                this.mStackedBackground.jumpToCurrentState();
            }
            if (this.mSplitBackground != null) {
                this.mSplitBackground.jumpToCurrentState();
            }
        }
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.mActionBarView = this.findViewById(R.id.action_bar);
        this.mContextView = this.findViewById(R.id.action_context_bar);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.mIsTransitioning || super.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        super.onLayout(bl, n2, n3, n4, n5);
        View view = this.mTabContainer;
        bl = view != null && view.getVisibility() != 8;
        if (view != null && view.getVisibility() != 8) {
            n3 = this.getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)view.getLayoutParams();
            view.layout(n2, n3 - view.getMeasuredHeight() - layoutParams.bottomMargin, n4, n3 - layoutParams.bottomMargin);
        }
        n3 = 0;
        n2 = 0;
        if (this.mIsSplit) {
            if (this.mSplitBackground != null) {
                this.mSplitBackground.setBounds(0, 0, this.getMeasuredWidth(), this.getMeasuredHeight());
                n2 = 1;
            }
        } else {
            if (this.mBackground != null) {
                if (this.mActionBarView.getVisibility() == 0) {
                    this.mBackground.setBounds(this.mActionBarView.getLeft(), this.mActionBarView.getTop(), this.mActionBarView.getRight(), this.mActionBarView.getBottom());
                } else if (this.mContextView != null && this.mContextView.getVisibility() == 0) {
                    this.mBackground.setBounds(this.mContextView.getLeft(), this.mContextView.getTop(), this.mContextView.getRight(), this.mContextView.getBottom());
                } else {
                    this.mBackground.setBounds(0, 0, 0, 0);
                }
                n3 = 1;
            }
            this.mIsStacked = bl;
            n2 = n3;
            if (bl) {
                n2 = n3;
                if (this.mStackedBackground != null) {
                    this.mStackedBackground.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                    n2 = 1;
                }
            }
        }
        if (n2 != 0) {
            this.invalidate();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void onMeasure(int n2, int n3) {
        int n4 = n3;
        if (this.mActionBarView == null) {
            n4 = n3;
            if (View.MeasureSpec.getMode((int)n3) == Integer.MIN_VALUE) {
                n4 = n3;
                if (this.mHeight >= 0) {
                    n4 = View.MeasureSpec.makeMeasureSpec((int)Math.min(this.mHeight, View.MeasureSpec.getSize((int)n3)), (int)Integer.MIN_VALUE);
                }
            }
        }
        super.onMeasure(n2, n4);
        if (this.mActionBarView == null) {
            return;
        }
        n3 = View.MeasureSpec.getMode((int)n4);
        if (this.mTabContainer == null) return;
        if (this.mTabContainer.getVisibility() == 8) return;
        if (n3 == 1073741824) return;
        n2 = !this.isCollapsed(this.mActionBarView) ? this.getMeasuredHeightWithMargins(this.mActionBarView) : (!this.isCollapsed(this.mContextView) ? this.getMeasuredHeightWithMargins(this.mContextView) : 0);
        n3 = n3 == Integer.MIN_VALUE ? View.MeasureSpec.getSize((int)n4) : Integer.MAX_VALUE;
        this.setMeasuredDimension(this.getMeasuredWidth(), Math.min(this.getMeasuredHeightWithMargins(this.mTabContainer) + n2, n3));
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setPrimaryBackground(Drawable drawable2) {
        boolean bl = true;
        if (this.mBackground != null) {
            this.mBackground.setCallback(null);
            this.unscheduleDrawable(this.mBackground);
        }
        this.mBackground = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback((Drawable.Callback)this);
            if (this.mActionBarView != null) {
                this.mBackground.setBounds(this.mActionBarView.getLeft(), this.mActionBarView.getTop(), this.mActionBarView.getRight(), this.mActionBarView.getBottom());
            }
        }
        if (this.mIsSplit) {
            if (this.mSplitBackground != null) {
                bl = false;
            }
        } else if (this.mBackground != null || this.mStackedBackground != null) {
            bl = false;
        }
        this.setWillNotDraw(bl);
        this.invalidate();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setSplitBackground(Drawable drawable2) {
        boolean bl = true;
        if (this.mSplitBackground != null) {
            this.mSplitBackground.setCallback(null);
            this.unscheduleDrawable(this.mSplitBackground);
        }
        this.mSplitBackground = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback((Drawable.Callback)this);
            if (this.mIsSplit && this.mSplitBackground != null) {
                this.mSplitBackground.setBounds(0, 0, this.getMeasuredWidth(), this.getMeasuredHeight());
            }
        }
        if (this.mIsSplit) {
            if (this.mSplitBackground != null) {
                bl = false;
            }
        } else if (this.mBackground != null || this.mStackedBackground != null) {
            bl = false;
        }
        this.setWillNotDraw(bl);
        this.invalidate();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setStackedBackground(Drawable drawable2) {
        boolean bl = true;
        if (this.mStackedBackground != null) {
            this.mStackedBackground.setCallback(null);
            this.unscheduleDrawable(this.mStackedBackground);
        }
        this.mStackedBackground = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback((Drawable.Callback)this);
            if (this.mIsStacked && this.mStackedBackground != null) {
                this.mStackedBackground.setBounds(this.mTabContainer.getLeft(), this.mTabContainer.getTop(), this.mTabContainer.getRight(), this.mTabContainer.getBottom());
            }
        }
        if (this.mIsSplit) {
            if (this.mSplitBackground != null) {
                bl = false;
            }
        } else if (this.mBackground != null || this.mStackedBackground != null) {
            bl = false;
        }
        this.setWillNotDraw(bl);
        this.invalidate();
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        if (this.mTabContainer != null) {
            this.removeView(this.mTabContainer);
        }
        this.mTabContainer = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            this.addView((View)scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setTransitioning(boolean bl) {
        this.mIsTransitioning = bl;
        int n2 = bl ? 393216 : 262144;
        this.setDescendantFocusability(n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setVisibility(int n2) {
        super.setVisibility(n2);
        boolean bl = n2 == 0;
        if (this.mBackground != null) {
            this.mBackground.setVisible(bl, false);
        }
        if (this.mStackedBackground != null) {
            this.mStackedBackground.setVisible(bl, false);
        }
        if (this.mSplitBackground != null) {
            this.mSplitBackground.setVisible(bl, false);
        }
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int n2) {
        if (n2 != 0) {
            return super.startActionModeForChild(view, callback, n2);
        }
        return null;
    }

    protected boolean verifyDrawable(Drawable drawable2) {
        if (drawable2 == this.mBackground && !this.mIsSplit || drawable2 == this.mStackedBackground && this.mIsStacked || drawable2 == this.mSplitBackground && this.mIsSplit || super.verifyDrawable(drawable2)) {
            return true;
        }
        return false;
    }
}

