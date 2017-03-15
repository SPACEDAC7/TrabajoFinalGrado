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
        int n2;
        LayoutParams layoutParams;
        View view;
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
        View view;
        int n2;
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
            var17_3 = 0;
            var12_4 = 0;
            var10_5 = 0;
            var14_6 = 0;
            var11_7 = 1;
            var3_8 = 0.0f;
            var25_9 = this.getVirtualChildCount();
            var27_10 = View.MeasureSpec.getMode((int)var1_1);
            var26_11 = View.MeasureSpec.getMode((int)var2_2);
            var13_12 = 0;
            var18_13 = 0;
            if (this.mMaxAscent == null || this.mMaxDescent == null) {
                this.mMaxAscent = new int[4];
                this.mMaxDescent = new int[4];
            }
            var6_14 = this.mMaxAscent;
            var7_15 = this.mMaxDescent;
            var6_14[3] = -1;
            var6_14[2] = -1;
            var6_14[1] = -1;
            var6_14[0] = -1;
            var7_15[3] = -1;
            var7_15[2] = -1;
            var7_15[1] = -1;
            var7_15[0] = -1;
            var30_16 = this.mBaselineAligned;
            var31_17 = this.mUseLargestChild;
            var21_18 = var27_10 == 1073741824;
            var16_19 = Integer.MIN_VALUE;
            for (var15_20 = 0; var15_20 < var25_9; ++var15_20) {
                var8_21 = this.getVirtualChildAt(var15_20);
                if (var8_21 == null) {
                    this.mTotalLength += this.measureNullChild(var15_20);
                    var20_24 = var16_19;
                } else if (var8_21.getVisibility() == 8) {
                    var15_20 += this.getChildrenSkipCount(var8_21, var15_20);
                    var20_24 = var16_19;
                } else {
                    if (this.hasDividerBeforeChildAt(var15_20)) {
                        this.mTotalLength += this.mDividerWidth;
                    }
                    var9_22 = (LayoutParams)var8_21.getLayoutParams();
                    var3_8 += var9_22.weight;
                    if (var27_10 == 1073741824 && var9_22.width == 0 && var9_22.weight > 0.0f) {
                        if (var21_18) {
                            this.mTotalLength += var9_22.leftMargin + var9_22.rightMargin;
                        } else {
                            var19_23 = this.mTotalLength;
                            this.mTotalLength = Math.max(var19_23, var9_22.leftMargin + var19_23 + var9_22.rightMargin);
                        }
                        if (var30_16) {
                            var19_23 = View.MeasureSpec.makeMeasureSpec((int)0, (int)0);
                            var8_21.measure(var19_23, var19_23);
                            var19_23 = var18_13;
                            var20_24 = var16_19;
                        } else {
                            var19_23 = 1;
                            var20_24 = var16_19;
                        }
                    } else {
                        var19_23 = var20_24 = Integer.MIN_VALUE;
                        if (var9_22.width == 0) {
                            var19_23 = var20_24;
                            if (var9_22.weight > 0.0f) {
                                var19_23 = 0;
                                var9_22.width = -2;
                            }
                        }
                        var20_24 = var3_8 == 0.0f ? this.mTotalLength : 0;
                        this.measureChildBeforeLayout(var8_21, var15_20, var1_1, var20_24, var2_2, 0);
                        if (var19_23 != Integer.MIN_VALUE) {
                            var9_22.width = var19_23;
                        }
                        var22_26 = var8_21.getMeasuredWidth();
                        if (var21_18) {
                            this.mTotalLength += var9_22.leftMargin + var22_26 + var9_22.rightMargin + this.getNextLocationOffset(var8_21);
                        } else {
                            var19_23 = this.mTotalLength;
                            this.mTotalLength = Math.max(var19_23, var19_23 + var22_26 + var9_22.leftMargin + var9_22.rightMargin + this.getNextLocationOffset(var8_21));
                        }
                        var20_24 = var16_19;
                        var19_23 = var18_13;
                        if (var31_17) {
                            var20_24 = Math.max(var22_26, var16_19);
                            var19_23 = var18_13;
                        }
                    }
                    var22_26 = 0;
                    var16_19 = var13_12;
                    var18_13 = var22_26;
                    if (var26_11 != 1073741824) {
                        var16_19 = var13_12;
                        var18_13 = var22_26;
                        if (var9_22.height == -1) {
                            var16_19 = 1;
                            var18_13 = 1;
                        }
                    }
                    var13_12 = var9_22.topMargin + var9_22.bottomMargin;
                    var22_26 = var8_21.getMeasuredHeight() + var13_12;
                    var23_25 = ViewUtils.combineMeasuredStates(var12_4, ViewCompat.getMeasuredState(var8_21));
                    if (var30_16 && (var24_27 = var8_21.getBaseline()) != -1) {
                        var12_4 = var9_22.gravity < 0 ? this.mGravity : var9_22.gravity;
                        var12_4 = ((var12_4 & 112) >> 4 & -2) >> 1;
                        var6_14[var12_4] = Math.max((int)var6_14[var12_4], var24_27);
                        var7_15[var12_4] = Math.max(var7_15[var12_4], var22_26 - var24_27);
                    }
                    var17_3 = Math.max(var17_3, var22_26);
                    var11_7 = var11_7 != 0 && var9_22.height == -1 ? 1 : 0;
                    if (var9_22.weight > 0.0f) {
                        if (var18_13 == 0) {
                            var13_12 = var22_26;
                        }
                        var14_6 = Math.max(var14_6, var13_12);
                    } else {
                        if (var18_13 == 0) {
                            var13_12 = var22_26;
                        }
                        var10_5 = Math.max(var10_5, var13_12);
                    }
                    var15_20 += this.getChildrenSkipCount(var8_21, var15_20);
                    var12_4 = var23_25;
                    var13_12 = var16_19;
                    var18_13 = var19_23;
                }
                var16_19 = var20_24;
            }
            if (this.mTotalLength > 0 && this.hasDividerBeforeChildAt(var25_9)) {
                this.mTotalLength += this.mDividerWidth;
            }
            if (var6_14[1] == -1 && var6_14[0] == -1 && var6_14[2] == -1) {
                var15_20 = var17_3;
                if (var6_14[3] == -1) break block54;
            }
            var15_20 = Math.max(var17_3, Math.max(var6_14[3], Math.max(var6_14[0], Math.max(var6_14[1], var6_14[2]))) + Math.max(var7_15[3], Math.max(var7_15[0], Math.max(var7_15[1], var7_15[2]))));
        }
        if (var31_17 && (var27_10 == Integer.MIN_VALUE || var27_10 == 0)) {
            this.mTotalLength = 0;
            for (var17_3 = 0; var17_3 < var25_9; ++var17_3) {
                var8_21 = this.getVirtualChildAt(var17_3);
                if (var8_21 == null) {
                    this.mTotalLength += this.measureNullChild(var17_3);
                    continue;
                }
                if (var8_21.getVisibility() == 8) {
                    var17_3 += this.getChildrenSkipCount(var8_21, var17_3);
                    continue;
                }
                var9_22 = (LayoutParams)var8_21.getLayoutParams();
                if (var21_18) {
                    this.mTotalLength += var9_22.leftMargin + var16_19 + var9_22.rightMargin + this.getNextLocationOffset(var8_21);
                    continue;
                }
                var19_23 = this.mTotalLength;
                this.mTotalLength = Math.max(var19_23, var19_23 + var16_19 + var9_22.leftMargin + var9_22.rightMargin + this.getNextLocationOffset(var8_21));
            }
        }
        this.mTotalLength += this.getPaddingLeft() + this.getPaddingRight();
        var28_28 = ViewCompat.resolveSizeAndState(Math.max(this.mTotalLength, this.getSuggestedMinimumWidth()), var1_1, 0);
        var17_3 = (var28_28 & 16777215) - this.mTotalLength;
        if (var18_13 == 0 && (var17_3 == 0 || var3_8 <= 0.0f)) ** GOTO lbl155
        if (this.mWeightSum > 0.0f) {
            var3_8 = this.mWeightSum;
        }
        var6_14[3] = -1;
        var6_14[2] = -1;
        var6_14[1] = -1;
        var6_14[0] = -1;
        var7_15[3] = -1;
        var7_15[2] = -1;
        var7_15[1] = -1;
        var7_15[0] = -1;
        var15_20 = -1;
        this.mTotalLength = 0;
        var14_6 = var10_5;
        ** GOTO lbl168
lbl155: // 1 sources:
        var20_24 = Math.max(var10_5, var14_6);
        var19_23 = var11_7;
        var17_3 = var20_24;
        var18_13 = var12_4;
        var10_5 = var15_20;
        if (!var31_17) ** GOTO lbl262
        var19_23 = var11_7;
        var17_3 = var20_24;
        var18_13 = var12_4;
        var10_5 = var15_20;
        if (var27_10 == 1073741824) ** GOTO lbl262
        var14_6 = 0;
        ** GOTO lbl272
lbl168: // 2 sources:
        for (var18_13 = 0; var18_13 < var25_9; ++var18_13) {
            var8_21 = this.getVirtualChildAt(var18_13);
            var19_23 = var11_7;
            var20_24 = var14_6;
            var22_26 = var12_4;
            var23_25 = var17_3;
            var24_27 = var15_20;
            var5_30 = var3_8;
            if (var8_21 != null) {
                if (var8_21.getVisibility() == 8) {
                    var5_30 = var3_8;
                    var24_27 = var15_20;
                    var23_25 = var17_3;
                    var22_26 = var12_4;
                    var20_24 = var14_6;
                    var19_23 = var11_7;
                } else {
                    var9_22 = (LayoutParams)var8_21.getLayoutParams();
                    var5_30 = var9_22.weight;
                    var16_19 = var12_4;
                    var10_5 = var17_3;
                    var4_29 = var3_8;
                    if (var5_30 > 0.0f) {
                        var10_5 = (int)((float)var17_3 * var5_30 / var3_8);
                        var4_29 = var3_8 - var5_30;
                        var16_19 = var17_3 - var10_5;
                        var19_23 = LinearLayoutCompat.getChildMeasureSpec((int)var2_2, (int)(this.getPaddingTop() + this.getPaddingBottom() + var9_22.topMargin + var9_22.bottomMargin), (int)var9_22.height);
                        if (var9_22.width != 0 || var27_10 != 1073741824) {
                            var10_5 = var17_3 = var8_21.getMeasuredWidth() + var10_5;
                            if (var17_3 < 0) {
                                var10_5 = 0;
                            }
                            var8_21.measure(View.MeasureSpec.makeMeasureSpec((int)var10_5, (int)1073741824), var19_23);
                        } else {
                            if (var10_5 <= 0) {
                                var10_5 = 0;
                            }
                            var8_21.measure(View.MeasureSpec.makeMeasureSpec((int)var10_5, (int)1073741824), var19_23);
                        }
                        var12_4 = ViewUtils.combineMeasuredStates(var12_4, ViewCompat.getMeasuredState(var8_21) & -16777216);
                        var10_5 = var16_19;
                        var16_19 = var12_4;
                    }
                    if (var21_18) {
                        this.mTotalLength += var8_21.getMeasuredWidth() + var9_22.leftMargin + var9_22.rightMargin + this.getNextLocationOffset(var8_21);
                    } else {
                        var12_4 = this.mTotalLength;
                        this.mTotalLength = Math.max(var12_4, var8_21.getMeasuredWidth() + var12_4 + var9_22.leftMargin + var9_22.rightMargin + this.getNextLocationOffset(var8_21));
                    }
                    var12_4 = var26_11 != 1073741824 && var9_22.height == -1 ? 1 : 0;
                    var19_23 = var9_22.topMargin + var9_22.bottomMargin;
                    var17_3 = var8_21.getMeasuredHeight() + var19_23;
                    var15_20 = Math.max(var15_20, var17_3);
                    var12_4 = var12_4 != 0 ? var19_23 : var17_3;
                    var14_6 = Math.max(var14_6, var12_4);
                    var11_7 = var11_7 != 0 && var9_22.height == -1 ? 1 : 0;
                    var19_23 = var11_7;
                    var20_24 = var14_6;
                    var22_26 = var16_19;
                    var23_25 = var10_5;
                    var24_27 = var15_20;
                    var5_30 = var4_29;
                    if (var30_16) {
                        var29_31 = var8_21.getBaseline();
                        var19_23 = var11_7;
                        var20_24 = var14_6;
                        var22_26 = var16_19;
                        var23_25 = var10_5;
                        var24_27 = var15_20;
                        var5_30 = var4_29;
                        if (var29_31 != -1) {
                            var12_4 = var9_22.gravity < 0 ? this.mGravity : var9_22.gravity;
                            var12_4 = ((var12_4 & 112) >> 4 & -2) >> 1;
                            var6_14[var12_4] = Math.max((int)var6_14[var12_4], var29_31);
                            var7_15[var12_4] = Math.max(var7_15[var12_4], var17_3 - var29_31);
                            var19_23 = var11_7;
                            var20_24 = var14_6;
                            var22_26 = var16_19;
                            var23_25 = var10_5;
                            var24_27 = var15_20;
                            var5_30 = var4_29;
                        }
                    }
                }
            }
            var11_7 = var19_23;
            var14_6 = var20_24;
            var12_4 = var22_26;
            var17_3 = var23_25;
            var15_20 = var24_27;
            var3_8 = var5_30;
        }
        this.mTotalLength += this.getPaddingLeft() + this.getPaddingRight();
        if (var6_14[1] != -1 || var6_14[0] != -1 || var6_14[2] != -1) ** GOTO lbl-1000
        var19_23 = var11_7;
        var17_3 = var14_6;
        var18_13 = var12_4;
        var10_5 = var15_20;
        if (var6_14[3] != -1) lbl-1000: // 2 sources:
        {
            var10_5 = Math.max(var15_20, Math.max((int)var6_14[3], Math.max((int)var6_14[0], Math.max((int)var6_14[1], (int)var6_14[2]))) + Math.max(var7_15[3], Math.max(var7_15[0], Math.max(var7_15[1], var7_15[2]))));
            var18_13 = var12_4;
            var17_3 = var14_6;
            var19_23 = var11_7;
        }
lbl262: // 6 sources:
        do {
            var11_7 = var10_5;
            if (var19_23 == 0) {
                var11_7 = var10_5;
                if (var26_11 != 1073741824) {
                    var11_7 = var17_3;
                }
            }
            this.setMeasuredDimension(-16777216 & var18_13 | var28_28, ViewCompat.resolveSizeAndState(Math.max(var11_7 + (this.getPaddingTop() + this.getPaddingBottom()), this.getSuggestedMinimumHeight()), var2_2, var18_13 << 16));
            if (var13_12 == 0) return;
            this.forceUniformHeight(var25_9, var1_1);
            return;
            break;
        } while (true);
lbl272: // 1 sources:
        do {
            var19_23 = var11_7;
            var17_3 = var20_24;
            var18_13 = var12_4;
            var10_5 = var15_20;
            if (var14_6 >= var25_9) ** continue;
            var6_14 = this.getVirtualChildAt(var14_6);
            if (var6_14 != null && var6_14.getVisibility() != 8 && ((LayoutParams)var6_14.getLayoutParams()).weight > 0.0f) {
                var6_14.measure(View.MeasureSpec.makeMeasureSpec((int)var16_19, (int)1073741824), View.MeasureSpec.makeMeasureSpec((int)var6_14.getMeasuredHeight(), (int)1073741824));
            }
            ++var14_6;
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
        var11_3 = 0;
        var10_4 = 0;
        var8_5 = 0;
        var13_6 = 0;
        var9_7 = 1;
        var3_8 = 0.0f;
        var20_9 = this.getVirtualChildCount();
        var21_10 = View.MeasureSpec.getMode((int)var1_1);
        var22_11 = View.MeasureSpec.getMode((int)var2_2);
        var12_12 = 0;
        var16_13 = 0;
        var23_14 = this.mBaselineAlignedChildIndex;
        var24_15 = this.mUseLargestChild;
        var15_16 = Integer.MIN_VALUE;
        for (var14_17 = 0; var14_17 < var20_9; ++var14_17) {
            var6_18 = this.getVirtualChildAt(var14_17);
            if (var6_18 == null) {
                this.mTotalLength += this.measureNullChild(var14_17);
                var18_22 = var15_16;
            } else if (var6_18.getVisibility() == 8) {
                var14_17 += this.getChildrenSkipCount(var6_18, var14_17);
                var18_22 = var15_16;
            } else {
                if (this.hasDividerBeforeChildAt(var14_17)) {
                    this.mTotalLength += this.mDividerHeight;
                }
                var7_19 = (LayoutParams)var6_18.getLayoutParams();
                var3_8 += var7_19.weight;
                if (var22_11 == 1073741824 && var7_19.height == 0 && var7_19.weight > 0.0f) {
                    var16_13 = this.mTotalLength;
                    this.mTotalLength = Math.max(var16_13, var7_19.topMargin + var16_13 + var7_19.bottomMargin);
                    var17_20 = 1;
                    var18_22 = var15_16;
                } else {
                    var17_20 = var18_22 = Integer.MIN_VALUE;
                    if (var7_19.height == 0) {
                        var17_20 = var18_22;
                        if (var7_19.weight > 0.0f) {
                            var17_20 = 0;
                            var7_19.height = -2;
                        }
                    }
                    var18_22 = var3_8 == 0.0f ? this.mTotalLength : 0;
                    this.measureChildBeforeLayout(var6_18, var14_17, var1_1, 0, var2_2, var18_22);
                    if (var17_20 != Integer.MIN_VALUE) {
                        var7_19.height = var17_20;
                    }
                    var19_21 = var6_18.getMeasuredHeight();
                    var17_20 = this.mTotalLength;
                    this.mTotalLength = Math.max(var17_20, var17_20 + var19_21 + var7_19.topMargin + var7_19.bottomMargin + this.getNextLocationOffset(var6_18));
                    var18_22 = var15_16;
                    var17_20 = var16_13;
                    if (var24_15) {
                        var18_22 = Math.max(var19_21, var15_16);
                        var17_20 = var16_13;
                    }
                }
                if (var23_14 >= 0 && var23_14 == var14_17 + 1) {
                    this.mBaselineChildTop = this.mTotalLength;
                }
                if (var14_17 < var23_14 && var7_19.weight > 0.0f) {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
                var19_21 = 0;
                var15_16 = var12_12;
                var16_13 = var19_21;
                if (var21_10 != 1073741824) {
                    var15_16 = var12_12;
                    var16_13 = var19_21;
                    if (var7_19.width == -1) {
                        var15_16 = 1;
                        var16_13 = 1;
                    }
                }
                var12_12 = var7_19.leftMargin + var7_19.rightMargin;
                var19_21 = var6_18.getMeasuredWidth() + var12_12;
                var11_3 = Math.max(var11_3, var19_21);
                var10_4 = ViewUtils.combineMeasuredStates(var10_4, ViewCompat.getMeasuredState(var6_18));
                var9_7 = var9_7 != 0 && var7_19.width == -1 ? 1 : 0;
                if (var7_19.weight > 0.0f) {
                    if (var16_13 == 0) {
                        var12_12 = var19_21;
                    }
                    var13_6 = Math.max(var13_6, var12_12);
                } else {
                    if (var16_13 == 0) {
                        var12_12 = var19_21;
                    }
                    var8_5 = Math.max(var8_5, var12_12);
                }
                var14_17 += this.getChildrenSkipCount(var6_18, var14_17);
                var12_12 = var15_16;
                var16_13 = var17_20;
            }
            var15_16 = var18_22;
        }
        if (this.mTotalLength > 0 && this.hasDividerBeforeChildAt(var20_9)) {
            this.mTotalLength += this.mDividerHeight;
        }
        if (var24_15 && (var22_11 == Integer.MIN_VALUE || var22_11 == 0)) {
            this.mTotalLength = 0;
            for (var14_17 = 0; var14_17 < var20_9; ++var14_17) {
                var6_18 = this.getVirtualChildAt(var14_17);
                if (var6_18 == null) {
                    this.mTotalLength += this.measureNullChild(var14_17);
                    continue;
                }
                if (var6_18.getVisibility() == 8) {
                    var14_17 += this.getChildrenSkipCount(var6_18, var14_17);
                    continue;
                }
                var7_19 = (LayoutParams)var6_18.getLayoutParams();
                var17_20 = this.mTotalLength;
                this.mTotalLength = Math.max(var17_20, var17_20 + var15_16 + var7_19.topMargin + var7_19.bottomMargin + this.getNextLocationOffset(var6_18));
            }
        }
        this.mTotalLength += this.getPaddingTop() + this.getPaddingBottom();
        var19_21 = ViewCompat.resolveSizeAndState(Math.max(this.mTotalLength, this.getSuggestedMinimumHeight()), var2_2, 0);
        var14_17 = (var19_21 & 16777215) - this.mTotalLength;
        if (var16_13 == 0 && (var14_17 == 0 || var3_8 <= 0.0f)) ** GOTO lbl111
        if (this.mWeightSum > 0.0f) {
            var3_8 = this.mWeightSum;
        }
        this.mTotalLength = 0;
        var13_6 = var11_3;
        var15_16 = var14_17;
        ** GOTO lbl124
lbl111: // 1 sources:
        var18_22 = Math.max(var8_5, var13_6);
        var16_13 = var9_7;
        var8_5 = var18_22;
        var14_17 = var10_4;
        var13_6 = var11_3;
        if (!var24_15) ** GOTO lbl172
        var16_13 = var9_7;
        var8_5 = var18_22;
        var14_17 = var10_4;
        var13_6 = var11_3;
        if (var22_11 == 1073741824) ** GOTO lbl172
        var17_20 = 0;
        ** GOTO lbl182
lbl124: // 2 sources:
        for (var16_13 = 0; var16_13 < var20_9; ++var16_13) {
            var6_18 = this.getVirtualChildAt(var16_13);
            if (var6_18.getVisibility() == 8) {
                var11_3 = var15_16;
                var14_17 = var10_4;
                var10_4 = var8_5;
                var8_5 = var9_7;
            } else {
                var7_19 = (LayoutParams)var6_18.getLayoutParams();
                var5_24 = var7_19.weight;
                var14_17 = var10_4;
                var11_3 = var15_16;
                var4_23 = var3_8;
                if (var5_24 > 0.0f) {
                    var11_3 = (int)((float)var15_16 * var5_24 / var3_8);
                    var4_23 = var3_8 - var5_24;
                    var14_17 = var15_16 - var11_3;
                    var17_20 = LinearLayoutCompat.getChildMeasureSpec((int)var1_1, (int)(this.getPaddingLeft() + this.getPaddingRight() + var7_19.leftMargin + var7_19.rightMargin), (int)var7_19.width);
                    if (var7_19.height != 0 || var22_11 != 1073741824) {
                        var11_3 = var15_16 = var6_18.getMeasuredHeight() + var11_3;
                        if (var15_16 < 0) {
                            var11_3 = 0;
                        }
                        var6_18.measure(var17_20, View.MeasureSpec.makeMeasureSpec((int)var11_3, (int)1073741824));
                    } else {
                        if (var11_3 <= 0) {
                            var11_3 = 0;
                        }
                        var6_18.measure(var17_20, View.MeasureSpec.makeMeasureSpec((int)var11_3, (int)1073741824));
                    }
                    var10_4 = ViewUtils.combineMeasuredStates(var10_4, ViewCompat.getMeasuredState(var6_18) & -256);
                    var11_3 = var14_17;
                    var14_17 = var10_4;
                }
                var15_16 = var7_19.leftMargin + var7_19.rightMargin;
                var17_20 = var6_18.getMeasuredWidth() + var15_16;
                var13_6 = Math.max(var13_6, var17_20);
                var10_4 = var21_10 != 1073741824 && var7_19.width == -1 ? 1 : 0;
                var10_4 = var10_4 != 0 ? var15_16 : var17_20;
                var10_4 = Math.max(var8_5, var10_4);
                var8_5 = var9_7 != 0 && var7_19.width == -1 ? 1 : 0;
                var9_7 = this.mTotalLength;
                this.mTotalLength = Math.max(var9_7, var6_18.getMeasuredHeight() + var9_7 + var7_19.topMargin + var7_19.bottomMargin + this.getNextLocationOffset(var6_18));
                var3_8 = var4_23;
            }
            var9_7 = var8_5;
            var8_5 = var10_4;
            var10_4 = var14_17;
            var15_16 = var11_3;
        }
        this.mTotalLength += this.getPaddingTop() + this.getPaddingBottom();
        var14_17 = var10_4;
        var16_13 = var9_7;
lbl172: // 4 sources:
        do {
            var9_7 = var13_6;
            if (var16_13 == 0) {
                var9_7 = var13_6;
                if (var21_10 != 1073741824) {
                    var9_7 = var8_5;
                }
            }
            this.setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(var9_7 + (this.getPaddingLeft() + this.getPaddingRight()), this.getSuggestedMinimumWidth()), var1_1, var14_17), var19_21);
            if (var12_12 == 0) return;
            this.forceUniformWidth(var20_9, var2_2);
            return;
            break;
        } while (true);
lbl182: // 1 sources:
        do {
            var16_13 = var9_7;
            var8_5 = var18_22;
            var14_17 = var10_4;
            var13_6 = var11_3;
            if (var17_20 >= var20_9) ** continue;
            var6_18 = this.getVirtualChildAt(var17_20);
            if (var6_18 != null && var6_18.getVisibility() != 8 && ((LayoutParams)var6_18.getLayoutParams()).weight > 0.0f) {
                var6_18.measure(View.MeasureSpec.makeMeasureSpec((int)var6_18.getMeasuredWidth(), (int)1073741824), View.MeasureSpec.makeMeasureSpec((int)var15_16, (int)1073741824));
            }
            ++var17_20;
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

