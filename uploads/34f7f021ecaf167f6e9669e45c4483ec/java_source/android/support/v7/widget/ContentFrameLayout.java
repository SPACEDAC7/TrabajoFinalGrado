/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Rect
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.TypedValue
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.widget.FrameLayout
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;

public class ContentFrameLayout
extends FrameLayout {
    private OnAttachListener mAttachListener;
    private final Rect mDecorPadding = new Rect();
    private TypedValue mFixedHeightMajor;
    private TypedValue mFixedHeightMinor;
    private TypedValue mFixedWidthMajor;
    private TypedValue mFixedWidthMinor;
    private TypedValue mMinWidthMajor;
    private TypedValue mMinWidthMinor;

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void dispatchFitSystemWindows(Rect rect) {
        this.fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.mFixedHeightMajor == null) {
            this.mFixedHeightMajor = new TypedValue();
        }
        return this.mFixedHeightMajor;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.mFixedHeightMinor == null) {
            this.mFixedHeightMinor = new TypedValue();
        }
        return this.mFixedHeightMinor;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.mFixedWidthMajor == null) {
            this.mFixedWidthMajor = new TypedValue();
        }
        return this.mFixedWidthMajor;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.mFixedWidthMinor == null) {
            this.mFixedWidthMinor = new TypedValue();
        }
        return this.mFixedWidthMinor;
    }

    public TypedValue getMinWidthMajor() {
        if (this.mMinWidthMajor == null) {
            this.mMinWidthMajor = new TypedValue();
        }
        return this.mMinWidthMajor;
    }

    public TypedValue getMinWidthMinor() {
        if (this.mMinWidthMinor == null) {
            this.mMinWidthMinor = new TypedValue();
        }
        return this.mMinWidthMinor;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mAttachListener != null) {
            this.mAttachListener.onAttachedFromWindow();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAttachListener != null) {
            this.mAttachListener.onDetachedFromWindow();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onMeasure(int n2, int n3) {
        int n4;
        TypedValue typedValue;
        int n5;
        DisplayMetrics displayMetrics = this.getContext().getResources().getDisplayMetrics();
        int n6 = displayMetrics.widthPixels < displayMetrics.heightPixels ? 1 : 0;
        int n7 = View.MeasureSpec.getMode((int)n2);
        int n8 = View.MeasureSpec.getMode((int)n3);
        int n9 = n5 = 0;
        int n10 = n2;
        if (n7 == Integer.MIN_VALUE) {
            typedValue = n6 != 0 ? this.mFixedWidthMinor : this.mFixedWidthMajor;
            n9 = n5;
            n10 = n2;
            if (typedValue != null) {
                n9 = n5;
                n10 = n2;
                if (typedValue.type != 0) {
                    n4 = 0;
                    if (typedValue.type == 5) {
                        n4 = (int)typedValue.getDimension(displayMetrics);
                    } else if (typedValue.type == 6) {
                        n4 = (int)typedValue.getFraction((float)displayMetrics.widthPixels, (float)displayMetrics.widthPixels);
                    }
                    n9 = n5;
                    n10 = n2;
                    if (n4 > 0) {
                        n10 = View.MeasureSpec.makeMeasureSpec((int)Math.min(n4 - (this.mDecorPadding.left + this.mDecorPadding.right), View.MeasureSpec.getSize((int)n2)), (int)1073741824);
                        n9 = 1;
                    }
                }
            }
        }
        n4 = n3;
        if (n8 == Integer.MIN_VALUE) {
            typedValue = n6 != 0 ? this.mFixedHeightMajor : this.mFixedHeightMinor;
            n4 = n3;
            if (typedValue != null) {
                n4 = n3;
                if (typedValue.type != 0) {
                    n2 = 0;
                    if (typedValue.type == 5) {
                        n2 = (int)typedValue.getDimension(displayMetrics);
                    } else if (typedValue.type == 6) {
                        n2 = (int)typedValue.getFraction((float)displayMetrics.heightPixels, (float)displayMetrics.heightPixels);
                    }
                    n4 = n3;
                    if (n2 > 0) {
                        n4 = View.MeasureSpec.makeMeasureSpec((int)Math.min(n2 - (this.mDecorPadding.top + this.mDecorPadding.bottom), View.MeasureSpec.getSize((int)n3)), (int)1073741824);
                    }
                }
            }
        }
        super.onMeasure(n10, n4);
        n8 = this.getMeasuredWidth();
        n10 = 0;
        n5 = View.MeasureSpec.makeMeasureSpec((int)n8, (int)1073741824);
        n3 = n10;
        n2 = n5;
        if (n9 == 0) {
            n3 = n10;
            n2 = n5;
            if (n7 == Integer.MIN_VALUE) {
                typedValue = n6 != 0 ? this.mMinWidthMinor : this.mMinWidthMajor;
                n3 = n10;
                n2 = n5;
                if (typedValue != null) {
                    n3 = n10;
                    n2 = n5;
                    if (typedValue.type != 0) {
                        n2 = 0;
                        if (typedValue.type == 5) {
                            n2 = (int)typedValue.getDimension(displayMetrics);
                        } else if (typedValue.type == 6) {
                            n2 = (int)typedValue.getFraction((float)displayMetrics.widthPixels, (float)displayMetrics.widthPixels);
                        }
                        n6 = n2;
                        if (n2 > 0) {
                            n6 = n2 - (this.mDecorPadding.left + this.mDecorPadding.right);
                        }
                        n3 = n10;
                        n2 = n5;
                        if (n8 < n6) {
                            n2 = View.MeasureSpec.makeMeasureSpec((int)n6, (int)1073741824);
                            n3 = 1;
                        }
                    }
                }
            }
        }
        if (n3 != 0) {
            super.onMeasure(n2, n4);
        }
    }

    public void setAttachListener(OnAttachListener onAttachListener) {
        this.mAttachListener = onAttachListener;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setDecorPadding(int n2, int n3, int n4, int n5) {
        this.mDecorPadding.set(n2, n3, n4, n5);
        if (ViewCompat.isLaidOut((View)this)) {
            this.requestLayout();
        }
    }

    public static interface OnAttachListener {
        public void onAttachedFromWindow();

        public void onDetachedFromWindow();
    }

}

