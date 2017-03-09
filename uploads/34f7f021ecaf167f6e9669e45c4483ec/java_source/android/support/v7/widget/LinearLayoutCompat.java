/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.TypedArray
 *  android.graphics.Canvas
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 *  android.view.accessibility.AccessibilityEvent
 *  android.view.accessibility.AccessibilityNodeInfo
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.TintTypedArray;
import android.support.v7.widget.ViewUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class LinearLayoutCompat
extends ViewGroup {
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned = true;
    private int mBaselineAlignedChildIndex = -1;
    private int mBaselineChildTop = 0;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity = 8388659;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context object, AttributeSet attributeSet, int n2) {
        boolean bl;
        super((Context)object, attributeSet, n2);
        object = TintTypedArray.obtainStyledAttributes((Context)object, attributeSet, R.styleable.LinearLayoutCompat, n2, 0);
        n2 = object.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (n2 >= 0) {
            this.setOrientation(n2);
        }
        if ((n2 = object.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1)) >= 0) {
            this.setGravity(n2);
        }
        if (!(bl = object.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true))) {
            this.setBaselineAligned(bl);
        }
        this.mWeightSum = object.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = object.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = object.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        this.setDividerDrawable(object.getDrawable(R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = object.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = object.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        object.recycle();
    }

    private void forceUniformHeight(int n2, int n3) {
        int n4 = View.MeasureSpec.makeMeasureSpec((int)this.getMeasuredHeight(), (int)1073741824);
        for (int i2 = 0; i2 < n2; ++i2) {
            View view = this.getVirtualChildAt(i2);
            if (view.getVisibility() == 8) continue;
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            if (layoutParams.height != -1) continue;
            int n5 = layoutParams.width;
            layoutParams.width = view.getMeasuredWidth();
            this.measureChildWithMargins(view, n3, 0, n4, 0);
            layoutParams.width = n5;
        }
    }

    private void forceUniformWidth(int n2, int n3) {
        int n4 = View.MeasureSpec.makeMeasureSpec((int)this.getMeasuredWidth(), (int)1073741824);
        for (int i2 = 0; i2 < n2; ++i2) {
            View view = this.getVirtualChildAt(i2);
            if (view.getVisibility() == 8) continue;
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            if (layoutParams.width != -1) continue;
            int n5 = layoutParams.height;
            layoutParams.height = view.getMeasuredHeight();
            this.measureChildWithMargins(view, n4, 0, n3, 0);
            layoutParams.height = n5;
        }
    }

    private void setChildFrame(View view, int n2, int n3, int n4, int n5) {
        view.layout(n2, n3, n2 + n4, n3 + n5);
    }

    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /*
     * Enabled aggressive block sorting
     */
    void drawDividersHorizontal(Canvas canvas) {
        View view;
        LayoutParams layoutParams;
        int n2;
        int n3 = this.getVirtualChildCount();
        boolean bl = ViewUtils.isLayoutRtl((View)this);
        for (n2 = 0; n2 < n3; ++n2) {
            view = this.getVirtualChildAt(n2);
            if (view == null || view.getVisibility() == 8 || !this.hasDividerBeforeChildAt(n2)) continue;
            layoutParams = (LayoutParams)view.getLayoutParams();
            int n4 = bl ? view.getRight() + layoutParams.rightMargin : view.getLeft() - layoutParams.leftMargin - this.mDividerWidth;
            this.drawVerticalDivider(canvas, n4);
        }
        if (this.hasDividerBeforeChildAt(n3)) {
            view = this.getVirtualChildAt(n3 - 1);
            if (view == null) {
                n2 = bl ? this.getPaddingLeft() : this.getWidth() - this.getPaddingRight() - this.mDividerWidth;
            } else {
                layoutParams = (LayoutParams)view.getLayoutParams();
                n2 = bl ? view.getLeft() - layoutParams.leftMargin - this.mDividerWidth : view.getRight() + layoutParams.rightMargin;
            }
            this.drawVerticalDivider(canvas, n2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void drawDividersVertical(Canvas canvas) {
        int n2;
        View view;
        LayoutParams layoutParams;
        int n3 = this.getVirtualChildCount();
        for (n2 = 0; n2 < n3; ++n2) {
            view = this.getVirtualChildAt(n2);
            if (view == null || view.getVisibility() == 8 || !this.hasDividerBeforeChildAt(n2)) continue;
            layoutParams = (LayoutParams)view.getLayoutParams();
            this.drawHorizontalDivider(canvas, view.getTop() - layoutParams.topMargin - this.mDividerHeight);
        }
        if (this.hasDividerBeforeChildAt(n3)) {
            view = this.getVirtualChildAt(n3 - 1);
            if (view == null) {
                n2 = this.getHeight() - this.getPaddingBottom() - this.mDividerHeight;
            } else {
                layoutParams = (LayoutParams)view.getLayoutParams();
                n2 = view.getBottom() + layoutParams.bottomMargin;
            }
            this.drawHorizontalDivider(canvas, n2);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int n2) {
        this.mDivider.setBounds(this.getPaddingLeft() + this.mDividerPadding, n2, this.getWidth() - this.getPaddingRight() - this.mDividerPadding, this.mDividerHeight + n2);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int n2) {
        this.mDivider.setBounds(n2, this.getPaddingTop() + this.mDividerPadding, this.mDividerWidth + n2, this.getHeight() - this.getPaddingBottom() - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new LayoutParams(-2, -2);
        }
        if (this.mOrientation == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(this.getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public int getBaseline() {
        int n2;
        int n3 = -1;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        if (this.getChildCount() <= this.mBaselineAlignedChildIndex) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View view = this.getChildAt(this.mBaselineAlignedChildIndex);
        int n4 = view.getBaseline();
        if (n4 == -1) {
            if (this.mBaselineAlignedChildIndex == 0) return n3;
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        n3 = n2 = this.mBaselineChildTop;
        if (this.mOrientation != 1) return ((LayoutParams)view.getLayoutParams()).topMargin + n3 + n4;
        int n5 = this.mGravity & 112;
        n3 = n2;
        if (n5 == 48) return ((LayoutParams)view.getLayoutParams()).topMargin + n3 + n4;
        switch (n5) {
            default: {
                n3 = n2;
                do {
                    return ((LayoutParams)view.getLayoutParams()).topMargin + n3 + n4;
                    break;
                } while (true);
            }
            case 80: {
                n3 = this.getBottom() - this.getTop() - this.getPaddingBottom() - this.mTotalLength;
                return ((LayoutParams)view.getLayoutParams()).topMargin + n3 + n4;
            }
            case 16: 
        }
        n3 = n2 + (this.getBottom() - this.getTop() - this.getPaddingTop() - this.getPaddingBottom() - this.mTotalLength) / 2;
        return ((LayoutParams)view.getLayoutParams()).topMargin + n3 + n4;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    int getChildrenSkipCount(View view, int n2) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    View getVirtualChildAt(int n2) {
        return this.getChildAt(n2);
    }

    int getVirtualChildCount() {
        return this.getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected boolean hasDividerBeforeChildAt(int n2) {
        if (n2 == 0) {
            if ((this.mShowDividers & 1) == 0) return false;
            return true;
        }
        if (n2 == this.getChildCount()) {
            if ((this.mShowDividers & 4) != 0) return true;
            return false;
        }
        if ((this.mShowDividers & 2) == 0) return false;
        boolean bl = false;
        --n2;
        do {
            boolean bl2 = bl;
            if (n2 < 0) return bl2;
            if (this.getChildAt(n2).getVisibility() != 8) {
                return true;
            }
            --n2;
        } while (true);
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    /*
     * Enabled aggressive block sorting
     */
    void layoutHorizontal(int n2, int n3, int n4, int n5) {
        boolean bl = ViewUtils.isLayoutRtl((View)this);
        int n6 = this.getPaddingTop();
        int n7 = n5 - n3;
        int n8 = this.getPaddingBottom();
        int n9 = this.getPaddingBottom();
        int n10 = this.getVirtualChildCount();
        n3 = this.mGravity;
        int n11 = this.mGravity;
        boolean bl2 = this.mBaselineAligned;
        int[] arrn = this.mMaxAscent;
        int[] arrn2 = this.mMaxDescent;
        switch (GravityCompat.getAbsoluteGravity(n3 & 8388615, ViewCompat.getLayoutDirection((View)this))) {
            default: {
                n2 = this.getPaddingLeft();
                break;
            }
            case 5: {
                n2 = this.getPaddingLeft() + n4 - n2 - this.mTotalLength;
                break;
            }
            case 1: {
                n2 = this.getPaddingLeft() + (n4 - n2 - this.mTotalLength) / 2;
            }
        }
        int n12 = 0;
        n5 = 1;
        if (bl) {
            n12 = n10 - 1;
            n5 = -1;
        }
        n3 = 0;
        n4 = n2;
        while (n3 < n10) {
            int n13;
            int n14 = n12 + n5 * n3;
            View view = this.getVirtualChildAt(n14);
            if (view == null) {
                n2 = n4 + this.measureNullChild(n14);
                n13 = n3;
            } else {
                n2 = n4;
                n13 = n3;
                if (view.getVisibility() != 8) {
                    int n15;
                    int n16 = view.getMeasuredWidth();
                    int n17 = view.getMeasuredHeight();
                    n2 = -1;
                    LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
                    n13 = n2;
                    if (bl2) {
                        n13 = n2;
                        if (layoutParams.height != -1) {
                            n13 = view.getBaseline();
                        }
                    }
                    n2 = n15 = layoutParams.gravity;
                    if (n15 < 0) {
                        n2 = n11 & 112;
                    }
                    switch (n2 & 112) {
                        default: {
                            n2 = n6;
                            break;
                        }
                        case 48: {
                            n2 = n15 = n6 + layoutParams.topMargin;
                            if (n13 == -1) break;
                            n2 = n15 + (arrn[1] - n13);
                            break;
                        }
                        case 16: {
                            n2 = (n7 - n6 - n9 - n17) / 2 + n6 + layoutParams.topMargin - layoutParams.bottomMargin;
                            break;
                        }
                        case 80: {
                            n2 = n15 = n7 - n8 - n17 - layoutParams.bottomMargin;
                            if (n13 == -1) break;
                            n2 = view.getMeasuredHeight();
                            n2 = n15 - (arrn2[2] - (n2 - n13));
                        }
                    }
                    n13 = n4;
                    if (this.hasDividerBeforeChildAt(n14)) {
                        n13 = n4 + this.mDividerWidth;
                    }
                    n4 = n13 + layoutParams.leftMargin;
                    this.setChildFrame(view, n4 + this.getLocationOffset(view), n2, n16, n17);
                    n2 = n4 + (layoutParams.rightMargin + n16 + this.getNextLocationOffset(view));
                    n13 = n3 + this.getChildrenSkipCount(view, n14);
                }
            }
            n3 = n13 + 1;
            n4 = n2;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void layoutVertical(int n2, int n3, int n4, int n5) {
        int n6 = this.getPaddingLeft();
        int n7 = n4 - n2;
        int n8 = this.getPaddingRight();
        int n9 = this.getPaddingRight();
        int n10 = this.getVirtualChildCount();
        n2 = this.mGravity;
        int n11 = this.mGravity;
        switch (n2 & 112) {
            default: {
                n2 = this.getPaddingTop();
                break;
            }
            case 80: {
                n2 = this.getPaddingTop() + n5 - n3 - this.mTotalLength;
                break;
            }
            case 16: {
                n2 = this.getPaddingTop() + (n5 - n3 - this.mTotalLength) / 2;
            }
        }
        n3 = 0;
        while (n3 < n10) {
            View view = this.getVirtualChildAt(n3);
            if (view == null) {
                n4 = n2 + this.measureNullChild(n3);
                n5 = n3;
            } else {
                n4 = n2;
                n5 = n3;
                if (view.getVisibility() != 8) {
                    int n12 = view.getMeasuredWidth();
                    int n13 = view.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
                    n4 = n5 = layoutParams.gravity;
                    if (n5 < 0) {
                        n4 = n11 & 8388615;
                    }
                    switch (GravityCompat.getAbsoluteGravity(n4, ViewCompat.getLayoutDirection((View)this)) & 7) {
                        default: {
                            n4 = n6 + layoutParams.leftMargin;
                            break;
                        }
                        case 1: {
                            n4 = (n7 - n6 - n9 - n12) / 2 + n6 + layoutParams.leftMargin - layoutParams.rightMargin;
                            break;
                        }
                        case 5: {
                            n4 = n7 - n8 - n12 - layoutParams.rightMargin;
                        }
                    }
                    n5 = n2;
                    if (this.hasDividerBeforeChildAt(n3)) {
                        n5 = n2 + this.mDividerHeight;
                    }
                    n2 = n5 + layoutParams.topMargin;
                    this.setChildFrame(view, n4, n2 + this.getLocationOffset(view), n12, n13);
                    n4 = n2 + (layoutParams.bottomMargin + n13 + this.getNextLocationOffset(view));
                    n5 = n3 + this.getChildrenSkipCount(view, n3);
                }
            }
            n3 = n5 + 1;
            n2 = n4;
        }
    }

    void measureChildBeforeLayout(View view, int n2, int n3, int n4, int n5, int n6) {
        this.measureChildWithMargins(view, n3, n4, n5, n6);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void measureHorizontal(int var1_1, int var2_2) {
        block54 : {
            this.mTotalLength = 0;
            var13_3 = 0;
            var8_4 = 0;
            var6_5 = 0;
            var10_6 = 0;
            var7_7 = 1;
            var3_8 = 0.0f;
            var21_9 = this.getVirtualChildCount();
            var23_10 = View.MeasureSpec.getMode((int)var1_1);
            var22_11 = View.MeasureSpec.getMode((int)var2_2);
            var9_12 = 0;
            var14_13 = 0;
            if (this.mMaxAscent == null || this.mMaxDescent == null) {
                this.mMaxAscent = new int[4];
                this.mMaxDescent = new int[4];
            }
            var28_14 = this.mMaxAscent;
            var29_15 = this.mMaxDescent;
            var28_14[3] = -1;
            var28_14[2] = -1;
            var28_14[1] = -1;
            var28_14[0] = -1;
            var29_15[3] = -1;
            var29_15[2] = -1;
            var29_15[1] = -1;
            var29_15[0] = -1;
            var26_16 = this.mBaselineAligned;
            var27_17 = this.mUseLargestChild;
            var17_18 = var23_10 == 1073741824;
            var12_19 = Integer.MIN_VALUE;
            for (var11_20 = 0; var11_20 < var21_9; ++var11_20) {
                var30_26 = this.getVirtualChildAt(var11_20);
                if (var30_26 == null) {
                    this.mTotalLength += this.measureNullChild(var11_20);
                    var16_22 = var12_19;
                } else if (var30_26.getVisibility() == 8) {
                    var11_20 += this.getChildrenSkipCount(var30_26, var11_20);
                    var16_22 = var12_19;
                } else {
                    if (this.hasDividerBeforeChildAt(var11_20)) {
                        this.mTotalLength += this.mDividerWidth;
                    }
                    var31_27 = (LayoutParams)var30_26.getLayoutParams();
                    var3_8 += var31_27.weight;
                    if (var23_10 == 1073741824 && var31_27.width == 0 && var31_27.weight > 0.0f) {
                        if (var17_18) {
                            this.mTotalLength += var31_27.leftMargin + var31_27.rightMargin;
                        } else {
                            var15_21 = this.mTotalLength;
                            this.mTotalLength = Math.max(var15_21, var31_27.leftMargin + var15_21 + var31_27.rightMargin);
                        }
                        if (var26_16) {
                            var15_21 = View.MeasureSpec.makeMeasureSpec((int)0, (int)0);
                            var30_26.measure(var15_21, var15_21);
                            var15_21 = var14_13;
                            var16_22 = var12_19;
                        } else {
                            var15_21 = 1;
                            var16_22 = var12_19;
                        }
                    } else {
                        var15_21 = var16_22 = Integer.MIN_VALUE;
                        if (var31_27.width == 0) {
                            var15_21 = var16_22;
                            if (var31_27.weight > 0.0f) {
                                var15_21 = 0;
                                var31_27.width = -2;
                            }
                        }
                        var16_22 = var3_8 == 0.0f ? this.mTotalLength : 0;
                        this.measureChildBeforeLayout(var30_26, var11_20, var1_1, var16_22, var2_2, 0);
                        if (var15_21 != Integer.MIN_VALUE) {
                            var31_27.width = var15_21;
                        }
                        var18_23 = var30_26.getMeasuredWidth();
                        if (var17_18) {
                            this.mTotalLength += var31_27.leftMargin + var18_23 + var31_27.rightMargin + this.getNextLocationOffset(var30_26);
                        } else {
                            var15_21 = this.mTotalLength;
                            this.mTotalLength = Math.max(var15_21, var15_21 + var18_23 + var31_27.leftMargin + var31_27.rightMargin + this.getNextLocationOffset(var30_26));
                        }
                        var16_22 = var12_19;
                        var15_21 = var14_13;
                        if (var27_17) {
                            var16_22 = Math.max(var18_23, var12_19);
                            var15_21 = var14_13;
                        }
                    }
                    var18_23 = 0;
                    var12_19 = var9_12;
                    var14_13 = var18_23;
                    if (var22_11 != 1073741824) {
                        var12_19 = var9_12;
                        var14_13 = var18_23;
                        if (var31_27.height == -1) {
                            var12_19 = 1;
                            var14_13 = 1;
                        }
                    }
                    var9_12 = var31_27.topMargin + var31_27.bottomMargin;
                    var18_23 = var30_26.getMeasuredHeight() + var9_12;
                    var19_24 = ViewUtils.combineMeasuredStates(var8_4, ViewCompat.getMeasuredState(var30_26));
                    if (var26_16 && (var20_25 = var30_26.getBaseline()) != -1) {
                        var8_4 = var31_27.gravity < 0 ? this.mGravity : var31_27.gravity;
                        var8_4 = ((var8_4 & 112) >> 4 & -2) >> 1;
                        var28_14[var8_4] = Math.max((int)var28_14[var8_4], var20_25);
                        var29_15[var8_4] = Math.max(var29_15[var8_4], var18_23 - var20_25);
                    }
                    var13_3 = Math.max(var13_3, var18_23);
                    var7_7 = var7_7 != 0 && var31_27.height == -1 ? 1 : 0;
                    if (var31_27.weight > 0.0f) {
                        if (var14_13 == 0) {
                            var9_12 = var18_23;
                        }
                        var10_6 = Math.max(var10_6, var9_12);
                    } else {
                        if (var14_13 == 0) {
                            var9_12 = var18_23;
                        }
                        var6_5 = Math.max(var6_5, var9_12);
                    }
                    var11_20 += this.getChildrenSkipCount(var30_26, var11_20);
                    var8_4 = var19_24;
                    var9_12 = var12_19;
                    var14_13 = var15_21;
                }
                var12_19 = var16_22;
            }
            if (this.mTotalLength > 0 && this.hasDividerBeforeChildAt(var21_9)) {
                this.mTotalLength += this.mDividerWidth;
            }
            if (var28_14[1] == -1 && var28_14[0] == -1 && var28_14[2] == -1) {
                var11_20 = var13_3;
                if (var28_14[3] == -1) break block54;
            }
            var11_20 = Math.max(var13_3, Math.max(var28_14[3], Math.max(var28_14[0], Math.max(var28_14[1], var28_14[2]))) + Math.max(var29_15[3], Math.max(var29_15[0], Math.max(var29_15[1], var29_15[2]))));
        }
        if (var27_17 && (var23_10 == Integer.MIN_VALUE || var23_10 == 0)) {
            this.mTotalLength = 0;
            for (var13_3 = 0; var13_3 < var21_9; ++var13_3) {
                var30_26 = this.getVirtualChildAt(var13_3);
                if (var30_26 == null) {
                    this.mTotalLength += this.measureNullChild(var13_3);
                    continue;
                }
                if (var30_26.getVisibility() == 8) {
                    var13_3 += this.getChildrenSkipCount(var30_26, var13_3);
                    continue;
                }
                var31_27 = (LayoutParams)var30_26.getLayoutParams();
                if (var17_18) {
                    this.mTotalLength += var31_27.leftMargin + var12_19 + var31_27.rightMargin + this.getNextLocationOffset(var30_26);
                    continue;
                }
                var15_21 = this.mTotalLength;
                this.mTotalLength = Math.max(var15_21, var15_21 + var12_19 + var31_27.leftMargin + var31_27.rightMargin + this.getNextLocationOffset(var30_26));
            }
        }
        this.mTotalLength += this.getPaddingLeft() + this.getPaddingRight();
        var24_28 = ViewCompat.resolveSizeAndState(Math.max(this.mTotalLength, this.getSuggestedMinimumWidth()), var1_1, 0);
        var13_3 = (var24_28 & 16777215) - this.mTotalLength;
        if (var14_13 == 0 && (var13_3 == 0 || var3_8 <= 0.0f)) ** GOTO lbl155
        if (this.mWeightSum > 0.0f) {
            var3_8 = this.mWeightSum;
        }
        var28_14[3] = -1;
        var28_14[2] = -1;
        var28_14[1] = -1;
        var28_14[0] = -1;
        var29_15[3] = -1;
        var29_15[2] = -1;
        var29_15[1] = -1;
        var29_15[0] = -1;
        var11_20 = -1;
        this.mTotalLength = 0;
        var10_6 = var6_5;
        ** GOTO lbl168
lbl155: // 1 sources:
        var16_22 = Math.max(var6_5, var10_6);
        var15_21 = var7_7;
        var13_3 = var16_22;
        var14_13 = var8_4;
        var6_5 = var11_20;
        if (!var27_17) ** GOTO lbl262
        var15_21 = var7_7;
        var13_3 = var16_22;
        var14_13 = var8_4;
        var6_5 = var11_20;
        if (var23_10 == 1073741824) ** GOTO lbl262
        var10_6 = 0;
        ** GOTO lbl272
lbl168: // 2 sources:
        for (var14_13 = 0; var14_13 < var21_9; ++var14_13) {
            var30_26 = this.getVirtualChildAt(var14_13);
            var15_21 = var7_7;
            var16_22 = var10_6;
            var18_23 = var8_4;
            var19_24 = var13_3;
            var20_25 = var11_20;
            var5_30 = var3_8;
            if (var30_26 != null) {
                if (var30_26.getVisibility() == 8) {
                    var5_30 = var3_8;
                    var20_25 = var11_20;
                    var19_24 = var13_3;
                    var18_23 = var8_4;
                    var16_22 = var10_6;
                    var15_21 = var7_7;
                } else {
                    var31_27 = (LayoutParams)var30_26.getLayoutParams();
                    var5_30 = var31_27.weight;
                    var12_19 = var8_4;
                    var6_5 = var13_3;
                    var4_29 = var3_8;
                    if (var5_30 > 0.0f) {
                        var6_5 = (int)((float)var13_3 * var5_30 / var3_8);
                        var4_29 = var3_8 - var5_30;
                        var12_19 = var13_3 - var6_5;
                        var15_21 = LinearLayoutCompat.getChildMeasureSpec((int)var2_2, (int)(this.getPaddingTop() + this.getPaddingBottom() + var31_27.topMargin + var31_27.bottomMargin), (int)var31_27.height);
                        if (var31_27.width != 0 || var23_10 != 1073741824) {
                            var6_5 = var13_3 = var30_26.getMeasuredWidth() + var6_5;
                            if (var13_3 < 0) {
                                var6_5 = 0;
                            }
                            var30_26.measure(View.MeasureSpec.makeMeasureSpec((int)var6_5, (int)1073741824), var15_21);
                        } else {
                            if (var6_5 <= 0) {
                                var6_5 = 0;
                            }
                            var30_26.measure(View.MeasureSpec.makeMeasureSpec((int)var6_5, (int)1073741824), var15_21);
                        }
                        var8_4 = ViewUtils.combineMeasuredStates(var8_4, ViewCompat.getMeasuredState(var30_26) & -16777216);
                        var6_5 = var12_19;
                        var12_19 = var8_4;
                    }
                    if (var17_18) {
                        this.mTotalLength += var30_26.getMeasuredWidth() + var31_27.leftMargin + var31_27.rightMargin + this.getNextLocationOffset(var30_26);
                    } else {
                        var8_4 = this.mTotalLength;
                        this.mTotalLength = Math.max(var8_4, var30_26.getMeasuredWidth() + var8_4 + var31_27.leftMargin + var31_27.rightMargin + this.getNextLocationOffset(var30_26));
                    }
                    var8_4 = var22_11 != 1073741824 && var31_27.height == -1 ? 1 : 0;
                    var15_21 = var31_27.topMargin + var31_27.bottomMargin;
                    var13_3 = var30_26.getMeasuredHeight() + var15_21;
                    var11_20 = Math.max(var11_20, var13_3);
                    var8_4 = var8_4 != 0 ? var15_21 : var13_3;
                    var10_6 = Math.max(var10_6, var8_4);
                    var7_7 = var7_7 != 0 && var31_27.height == -1 ? 1 : 0;
                    var15_21 = var7_7;
                    var16_22 = var10_6;
                    var18_23 = var12_19;
                    var19_24 = var6_5;
                    var20_25 = var11_20;
                    var5_30 = var4_29;
                    if (var26_16) {
                        var25_31 = var30_26.getBaseline();
                        var15_21 = var7_7;
                        var16_22 = var10_6;
                        var18_23 = var12_19;
                        var19_24 = var6_5;
                        var20_25 = var11_20;
                        var5_30 = var4_29;
                        if (var25_31 != -1) {
                            var8_4 = var31_27.gravity < 0 ? this.mGravity : var31_27.gravity;
                            var8_4 = ((var8_4 & 112) >> 4 & -2) >> 1;
                            var28_14[var8_4] = Math.max((int)var28_14[var8_4], var25_31);
                            var29_15[var8_4] = Math.max(var29_15[var8_4], var13_3 - var25_31);
                            var15_21 = var7_7;
                            var16_22 = var10_6;
                            var18_23 = var12_19;
                            var19_24 = var6_5;
                            var20_25 = var11_20;
                            var5_30 = var4_29;
                        }
                    }
                }
            }
            var7_7 = var15_21;
            var10_6 = var16_22;
            var8_4 = var18_23;
            var13_3 = var19_24;
            var11_20 = var20_25;
            var3_8 = var5_30;
        }
        this.mTotalLength += this.getPaddingLeft() + this.getPaddingRight();
        if (var28_14[1] != -1 || var28_14[0] != -1 || var28_14[2] != -1) ** GOTO lbl-1000
        var15_21 = var7_7;
        var13_3 = var10_6;
        var14_13 = var8_4;
        var6_5 = var11_20;
        if (var28_14[3] != -1) lbl-1000: // 2 sources:
        {
            var6_5 = Math.max(var11_20, Math.max((int)var28_14[3], Math.max((int)var28_14[0], Math.max((int)var28_14[1], (int)var28_14[2]))) + Math.max(var29_15[3], Math.max(var29_15[0], Math.max(var29_15[1], var29_15[2]))));
            var14_13 = var8_4;
            var13_3 = var10_6;
            var15_21 = var7_7;
        }
lbl262: // 6 sources:
        do {
            var7_7 = var6_5;
            if (var15_21 == 0) {
                var7_7 = var6_5;
                if (var22_11 != 1073741824) {
                    var7_7 = var13_3;
                }
            }
            this.setMeasuredDimension(-16777216 & var14_13 | var24_28, ViewCompat.resolveSizeAndState(Math.max(var7_7 + (this.getPaddingTop() + this.getPaddingBottom()), this.getSuggestedMinimumHeight()), var2_2, var14_13 << 16));
            if (var9_12 == 0) return;
            this.forceUniformHeight(var21_9, var1_1);
            return;
            break;
        } while (true);
lbl272: // 1 sources:
        do {
            var15_21 = var7_7;
            var13_3 = var16_22;
            var14_13 = var8_4;
            var6_5 = var11_20;
            if (var10_6 >= var21_9) ** continue;
            var28_14 = this.getVirtualChildAt(var10_6);
            if (var28_14 != null && var28_14.getVisibility() != 8 && ((LayoutParams)var28_14.getLayoutParams()).weight > 0.0f) {
                var28_14.measure(View.MeasureSpec.makeMeasureSpec((int)var12_19, (int)1073741824), View.MeasureSpec.makeMeasureSpec((int)var28_14.getMeasuredHeight(), (int)1073741824));
            }
            ++var10_6;
        } while (true);
    }

    int measureNullChild(int n2) {
        return 0;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void measureVertical(int var1_1, int var2_2) {
        this.mTotalLength = 0;
        var9_3 = 0;
        var8_4 = 0;
        var6_5 = 0;
        var11_6 = 0;
        var7_7 = 1;
        var3_8 = 0.0f;
        var18_9 = this.getVirtualChildCount();
        var19_10 = View.MeasureSpec.getMode((int)var1_1);
        var20_11 = View.MeasureSpec.getMode((int)var2_2);
        var10_12 = 0;
        var14_13 = 0;
        var21_14 = this.mBaselineAlignedChildIndex;
        var22_15 = this.mUseLargestChild;
        var13_16 = Integer.MIN_VALUE;
        for (var12_17 = 0; var12_17 < var18_9; ++var12_17) {
            var23_21 = this.getVirtualChildAt(var12_17);
            if (var23_21 == null) {
                this.mTotalLength += this.measureNullChild(var12_17);
                var16_19 = var13_16;
            } else if (var23_21.getVisibility() == 8) {
                var12_17 += this.getChildrenSkipCount(var23_21, var12_17);
                var16_19 = var13_16;
            } else {
                if (this.hasDividerBeforeChildAt(var12_17)) {
                    this.mTotalLength += this.mDividerHeight;
                }
                var24_22 = (LayoutParams)var23_21.getLayoutParams();
                var3_8 += var24_22.weight;
                if (var20_11 == 1073741824 && var24_22.height == 0 && var24_22.weight > 0.0f) {
                    var14_13 = this.mTotalLength;
                    this.mTotalLength = Math.max(var14_13, var24_22.topMargin + var14_13 + var24_22.bottomMargin);
                    var15_18 = 1;
                    var16_19 = var13_16;
                } else {
                    var15_18 = var16_19 = Integer.MIN_VALUE;
                    if (var24_22.height == 0) {
                        var15_18 = var16_19;
                        if (var24_22.weight > 0.0f) {
                            var15_18 = 0;
                            var24_22.height = -2;
                        }
                    }
                    var16_19 = var3_8 == 0.0f ? this.mTotalLength : 0;
                    this.measureChildBeforeLayout(var23_21, var12_17, var1_1, 0, var2_2, var16_19);
                    if (var15_18 != Integer.MIN_VALUE) {
                        var24_22.height = var15_18;
                    }
                    var17_20 = var23_21.getMeasuredHeight();
                    var15_18 = this.mTotalLength;
                    this.mTotalLength = Math.max(var15_18, var15_18 + var17_20 + var24_22.topMargin + var24_22.bottomMargin + this.getNextLocationOffset(var23_21));
                    var16_19 = var13_16;
                    var15_18 = var14_13;
                    if (var22_15) {
                        var16_19 = Math.max(var17_20, var13_16);
                        var15_18 = var14_13;
                    }
                }
                if (var21_14 >= 0 && var21_14 == var12_17 + 1) {
                    this.mBaselineChildTop = this.mTotalLength;
                }
                if (var12_17 < var21_14 && var24_22.weight > 0.0f) {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
                var17_20 = 0;
                var13_16 = var10_12;
                var14_13 = var17_20;
                if (var19_10 != 1073741824) {
                    var13_16 = var10_12;
                    var14_13 = var17_20;
                    if (var24_22.width == -1) {
                        var13_16 = 1;
                        var14_13 = 1;
                    }
                }
                var10_12 = var24_22.leftMargin + var24_22.rightMargin;
                var17_20 = var23_21.getMeasuredWidth() + var10_12;
                var9_3 = Math.max(var9_3, var17_20);
                var8_4 = ViewUtils.combineMeasuredStates(var8_4, ViewCompat.getMeasuredState(var23_21));
                var7_7 = var7_7 != 0 && var24_22.width == -1 ? 1 : 0;
                if (var24_22.weight > 0.0f) {
                    if (var14_13 == 0) {
                        var10_12 = var17_20;
                    }
                    var11_6 = Math.max(var11_6, var10_12);
                } else {
                    if (var14_13 == 0) {
                        var10_12 = var17_20;
                    }
                    var6_5 = Math.max(var6_5, var10_12);
                }
                var12_17 += this.getChildrenSkipCount(var23_21, var12_17);
                var10_12 = var13_16;
                var14_13 = var15_18;
            }
            var13_16 = var16_19;
        }
        if (this.mTotalLength > 0 && this.hasDividerBeforeChildAt(var18_9)) {
            this.mTotalLength += this.mDividerHeight;
        }
        if (var22_15 && (var20_11 == Integer.MIN_VALUE || var20_11 == 0)) {
            this.mTotalLength = 0;
            for (var12_17 = 0; var12_17 < var18_9; ++var12_17) {
                var23_21 = this.getVirtualChildAt(var12_17);
                if (var23_21 == null) {
                    this.mTotalLength += this.measureNullChild(var12_17);
                    continue;
                }
                if (var23_21.getVisibility() == 8) {
                    var12_17 += this.getChildrenSkipCount(var23_21, var12_17);
                    continue;
                }
                var24_22 = (LayoutParams)var23_21.getLayoutParams();
                var15_18 = this.mTotalLength;
                this.mTotalLength = Math.max(var15_18, var15_18 + var13_16 + var24_22.topMargin + var24_22.bottomMargin + this.getNextLocationOffset(var23_21));
            }
        }
        this.mTotalLength += this.getPaddingTop() + this.getPaddingBottom();
        var17_20 = ViewCompat.resolveSizeAndState(Math.max(this.mTotalLength, this.getSuggestedMinimumHeight()), var2_2, 0);
        var12_17 = (var17_20 & 16777215) - this.mTotalLength;
        if (var14_13 == 0 && (var12_17 == 0 || var3_8 <= 0.0f)) ** GOTO lbl111
        if (this.mWeightSum > 0.0f) {
            var3_8 = this.mWeightSum;
        }
        this.mTotalLength = 0;
        var11_6 = var9_3;
        var13_16 = var12_17;
        ** GOTO lbl124
lbl111: // 1 sources:
        var16_19 = Math.max(var6_5, var11_6);
        var14_13 = var7_7;
        var6_5 = var16_19;
        var12_17 = var8_4;
        var11_6 = var9_3;
        if (!var22_15) ** GOTO lbl172
        var14_13 = var7_7;
        var6_5 = var16_19;
        var12_17 = var8_4;
        var11_6 = var9_3;
        if (var20_11 == 1073741824) ** GOTO lbl172
        var15_18 = 0;
        ** GOTO lbl182
lbl124: // 2 sources:
        for (var14_13 = 0; var14_13 < var18_9; ++var14_13) {
            var23_21 = this.getVirtualChildAt(var14_13);
            if (var23_21.getVisibility() == 8) {
                var9_3 = var13_16;
                var12_17 = var8_4;
                var8_4 = var6_5;
                var6_5 = var7_7;
            } else {
                var24_22 = (LayoutParams)var23_21.getLayoutParams();
                var5_24 = var24_22.weight;
                var12_17 = var8_4;
                var9_3 = var13_16;
                var4_23 = var3_8;
                if (var5_24 > 0.0f) {
                    var9_3 = (int)((float)var13_16 * var5_24 / var3_8);
                    var4_23 = var3_8 - var5_24;
                    var12_17 = var13_16 - var9_3;
                    var15_18 = LinearLayoutCompat.getChildMeasureSpec((int)var1_1, (int)(this.getPaddingLeft() + this.getPaddingRight() + var24_22.leftMargin + var24_22.rightMargin), (int)var24_22.width);
                    if (var24_22.height != 0 || var20_11 != 1073741824) {
                        var9_3 = var13_16 = var23_21.getMeasuredHeight() + var9_3;
                        if (var13_16 < 0) {
                            var9_3 = 0;
                        }
                        var23_21.measure(var15_18, View.MeasureSpec.makeMeasureSpec((int)var9_3, (int)1073741824));
                    } else {
                        if (var9_3 <= 0) {
                            var9_3 = 0;
                        }
                        var23_21.measure(var15_18, View.MeasureSpec.makeMeasureSpec((int)var9_3, (int)1073741824));
                    }
                    var8_4 = ViewUtils.combineMeasuredStates(var8_4, ViewCompat.getMeasuredState(var23_21) & -256);
                    var9_3 = var12_17;
                    var12_17 = var8_4;
                }
                var13_16 = var24_22.leftMargin + var24_22.rightMargin;
                var15_18 = var23_21.getMeasuredWidth() + var13_16;
                var11_6 = Math.max(var11_6, var15_18);
                var8_4 = var19_10 != 1073741824 && var24_22.width == -1 ? 1 : 0;
                var8_4 = var8_4 != 0 ? var13_16 : var15_18;
                var8_4 = Math.max(var6_5, var8_4);
                var6_5 = var7_7 != 0 && var24_22.width == -1 ? 1 : 0;
                var7_7 = this.mTotalLength;
                this.mTotalLength = Math.max(var7_7, var23_21.getMeasuredHeight() + var7_7 + var24_22.topMargin + var24_22.bottomMargin + this.getNextLocationOffset(var23_21));
                var3_8 = var4_23;
            }
            var7_7 = var6_5;
            var6_5 = var8_4;
            var8_4 = var12_17;
            var13_16 = var9_3;
        }
        this.mTotalLength += this.getPaddingTop() + this.getPaddingBottom();
        var12_17 = var8_4;
        var14_13 = var7_7;
lbl172: // 4 sources:
        do {
            var7_7 = var11_6;
            if (var14_13 == 0) {
                var7_7 = var11_6;
                if (var19_10 != 1073741824) {
                    var7_7 = var6_5;
                }
            }
            this.setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(var7_7 + (this.getPaddingLeft() + this.getPaddingRight()), this.getSuggestedMinimumWidth()), var1_1, var12_17), var17_20);
            if (var10_12 == 0) return;
            this.forceUniformWidth(var18_9, var2_2);
            return;
            break;
        } while (true);
lbl182: // 1 sources:
        do {
            var14_13 = var7_7;
            var6_5 = var16_19;
            var12_17 = var8_4;
            var11_6 = var9_3;
            if (var15_18 >= var18_9) ** continue;
            var23_21 = this.getVirtualChildAt(var15_18);
            if (var23_21 != null && var23_21.getVisibility() != 8 && ((LayoutParams)var23_21.getLayoutParams()).weight > 0.0f) {
                var23_21.measure(View.MeasureSpec.makeMeasureSpec((int)var23_21.getMeasuredWidth(), (int)1073741824), View.MeasureSpec.makeMeasureSpec((int)var13_16, (int)1073741824));
            }
            ++var15_18;
        } while (true);
    }

    protected void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            this.drawDividersVertical(canvas);
            return;
        }
        this.drawDividersHorizontal(canvas);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName((CharSequence)LinearLayoutCompat.class.getName());
        }
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName((CharSequence)LinearLayoutCompat.class.getName());
        }
    }

    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        if (this.mOrientation == 1) {
            this.layoutVertical(n2, n3, n4, n5);
            return;
        }
        this.layoutHorizontal(n2, n3, n4, n5);
    }

    protected void onMeasure(int n2, int n3) {
        if (this.mOrientation == 1) {
            this.measureVertical(n2, n3);
            return;
        }
        this.measureHorizontal(n2, n3);
    }

    public void setBaselineAligned(boolean bl) {
        this.mBaselineAligned = bl;
    }

    public void setBaselineAlignedChildIndex(int n2) {
        if (n2 < 0 || n2 >= this.getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + this.getChildCount() + ")");
        }
        this.mBaselineAlignedChildIndex = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setDividerDrawable(Drawable drawable2) {
        boolean bl = false;
        if (drawable2 == this.mDivider) {
            return;
        }
        this.mDivider = drawable2;
        if (drawable2 != null) {
            this.mDividerWidth = drawable2.getIntrinsicWidth();
            this.mDividerHeight = drawable2.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        if (drawable2 == null) {
            bl = true;
        }
        this.setWillNotDraw(bl);
        this.requestLayout();
    }

    public void setDividerPadding(int n2) {
        this.mDividerPadding = n2;
    }

    public void setGravity(int n2) {
        if (this.mGravity != n2) {
            int n3 = n2;
            if ((8388615 & n2) == 0) {
                n3 = n2 | 8388611;
            }
            n2 = n3;
            if ((n3 & 112) == 0) {
                n2 = n3 | 48;
            }
            this.mGravity = n2;
            this.requestLayout();
        }
    }

    public void setHorizontalGravity(int n2) {
        if ((this.mGravity & 8388615) != (n2 &= 8388615)) {
            this.mGravity = this.mGravity & -8388616 | n2;
            this.requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean bl) {
        this.mUseLargestChild = bl;
    }

    public void setOrientation(int n2) {
        if (this.mOrientation != n2) {
            this.mOrientation = n2;
            this.requestLayout();
        }
    }

    public void setShowDividers(int n2) {
        if (n2 != this.mShowDividers) {
            this.requestLayout();
        }
        this.mShowDividers = n2;
    }

    public void setVerticalGravity(int n2) {
        if ((this.mGravity & 112) != (n2 &= 112)) {
            this.mGravity = this.mGravity & -113 | n2;
            this.requestLayout();
        }
    }

    public void setWeightSum(float f2) {
        this.mWeightSum = Math.max(0.0f, f2);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface DividerMode {
    }

    public static class LayoutParams
    extends ViewGroup.MarginLayoutParams {
        public int gravity = -1;
        public float weight;

        public LayoutParams(int n2, int n3) {
            super(n2, n3);
            this.weight = 0.0f;
        }

        public LayoutParams(int n2, int n3, float f2) {
            super(n2, n3);
            this.weight = f2;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            context = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayoutCompat_Layout);
            this.weight = context.getFloat(R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.gravity = context.getInt(R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            context.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams)layoutParams);
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface OrientationMode {
    }

}

