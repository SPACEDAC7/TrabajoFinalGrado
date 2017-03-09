/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.widget.LinearLayout
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.ConfigurationHelper;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class ButtonBarLayout
extends LinearLayout {
    private static final int ALLOW_STACKING_MIN_HEIGHT_DP = 320;
    private boolean mAllowStacking;
    private int mLastWidthSize = -1;

    /*
     * Enabled aggressive block sorting
     */
    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        boolean bl = ConfigurationHelper.getScreenHeightDp(this.getResources()) >= 320;
        context = context.obtainStyledAttributes(attributeSet, R.styleable.ButtonBarLayout);
        this.mAllowStacking = context.getBoolean(R.styleable.ButtonBarLayout_allowStacking, bl);
        context.recycle();
    }

    private boolean isStacked() {
        if (this.getOrientation() == 1) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setStacked(boolean bl) {
        int n2 = bl ? 1 : 0;
        this.setOrientation(n2);
        n2 = bl ? 5 : 80;
        this.setGravity(n2);
        View view = this.findViewById(R.id.spacer);
        if (view != null) {
            n2 = bl ? 8 : 4;
            view.setVisibility(n2);
        }
        n2 = this.getChildCount() - 2;
        while (n2 >= 0) {
            this.bringChildToFront(this.getChildAt(n2));
            --n2;
        }
        return;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onMeasure(int n2, int n3) {
        int n4;
        int n5 = 0;
        int n6 = 0;
        int n7 = View.MeasureSpec.getSize((int)n2);
        if (this.mAllowStacking) {
            if (n7 > this.mLastWidthSize && this.isStacked()) {
                this.setStacked(false);
            }
            this.mLastWidthSize = n7;
        }
        int n8 = 0;
        if (!this.isStacked() && View.MeasureSpec.getMode((int)n2) == 1073741824) {
            n4 = View.MeasureSpec.makeMeasureSpec((int)n7, (int)Integer.MIN_VALUE);
            n8 = 1;
        } else {
            n4 = n2;
        }
        super.onMeasure(n4, n3);
        int n9 = n8;
        if (this.mAllowStacking) {
            n9 = n8;
            if (!this.isStacked()) {
                if (Build.VERSION.SDK_INT >= 11) {
                    n4 = n6;
                    if ((ViewCompat.getMeasuredWidthAndState((View)this) & -16777216) == 16777216) {
                        n4 = 1;
                    }
                } else {
                    n9 = 0;
                    n6 = this.getChildCount();
                    for (n4 = 0; n4 < n6; n9 += this.getChildAt((int)n4).getMeasuredWidth(), ++n4) {
                    }
                    n4 = n5;
                    if (this.getPaddingLeft() + n9 + this.getPaddingRight() > n7) {
                        n4 = 1;
                    }
                }
                n9 = n8;
                if (n4 != 0) {
                    this.setStacked(true);
                    n9 = 1;
                }
            }
        }
        if (n9 != 0) {
            super.onMeasure(n2, n3);
        }
    }

    public void setAllowStacking(boolean bl) {
        if (this.mAllowStacking != bl) {
            this.mAllowStacking = bl;
            if (!this.mAllowStacking && this.getOrientation() == 1) {
                this.setStacked(false);
            }
            this.requestLayout();
        }
    }
}

