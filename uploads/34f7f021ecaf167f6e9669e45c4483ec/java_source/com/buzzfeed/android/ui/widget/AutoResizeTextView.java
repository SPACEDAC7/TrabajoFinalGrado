/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Paint
 *  android.graphics.RectF
 *  android.graphics.Typeface
 *  android.text.Layout
 *  android.text.Layout$Alignment
 *  android.text.StaticLayout
 *  android.text.TextPaint
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.SparseIntArray
 *  android.util.TypedValue
 *  android.widget.TextView
 */
package com.buzzfeed.android.ui.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.widget.TextView;

public class AutoResizeTextView
extends TextView {
    private static final int NO_LINE_LIMIT = -1;
    private final RectF availableSpaceRect = new RectF();
    private boolean enableSizeCache = true;
    private boolean initiallized = false;
    private int maxLines;
    private float maxTextSize;
    private float minTextSize;
    private TextPaint paint;
    private final SizeTester sizeTester;
    private float spacingAdd = 0.0f;
    private float spacingMult = 1.0f;
    private final SparseIntArray textCachedSizes = new SparseIntArray();
    private int widthLimit;

    public AutoResizeTextView(Context context) {
        this(context, null, 0);
    }

    public AutoResizeTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AutoResizeTextView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.minTextSize = TypedValue.applyDimension((int)2, (float)12.0f, (DisplayMetrics)this.getResources().getDisplayMetrics());
        this.maxTextSize = this.getTextSize();
        if (this.maxLines == 0) {
            this.maxLines = -1;
        }
        this.sizeTester = new SizeTester(){
            final RectF textRect;

            /*
             * Enabled aggressive block sorting
             */
            @TargetApi(value=16)
            @Override
            public int onTestSize(int n2, RectF rectF) {
                int n3 = 1;
                AutoResizeTextView.this.paint.setTextSize((float)n2);
                String string2 = AutoResizeTextView.this.getText().toString();
                n2 = AutoResizeTextView.this.getMaxLines() == 1 ? 1 : 0;
                if (n2 != 0) {
                    this.textRect.bottom = AutoResizeTextView.this.paint.getFontSpacing();
                    this.textRect.right = AutoResizeTextView.this.paint.measureText(string2);
                } else {
                    string2 = new StaticLayout((CharSequence)string2, AutoResizeTextView.this.paint, AutoResizeTextView.this.widthLimit, Layout.Alignment.ALIGN_NORMAL, AutoResizeTextView.this.spacingMult, AutoResizeTextView.this.spacingAdd, true);
                    if (AutoResizeTextView.this.getMaxLines() != -1) {
                        n2 = n3;
                        if (string2.getLineCount() > AutoResizeTextView.this.getMaxLines()) return n2;
                    }
                    this.textRect.bottom = string2.getHeight();
                    int n4 = -1;
                    for (n2 = 0; n2 < string2.getLineCount(); ++n2) {
                        int n5 = n4;
                        if ((float)n4 < string2.getLineWidth(n2)) {
                            n5 = (int)string2.getLineWidth(n2);
                        }
                        n4 = n5;
                    }
                    this.textRect.right = n4;
                }
                this.textRect.offsetTo(0.0f, 0.0f);
                n2 = n3;
                if (!rectF.contains(this.textRect)) return n2;
                return -1;
            }
        };
        this.initiallized = true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void adjustTextSize() {
        if (!this.initiallized) {
            return;
        }
        int n2 = (int)this.minTextSize;
        int n3 = this.getMeasuredHeight();
        int n4 = this.getCompoundPaddingBottom();
        int n5 = this.getCompoundPaddingTop();
        this.widthLimit = this.getMeasuredWidth() - this.getCompoundPaddingLeft() - this.getCompoundPaddingRight();
        if (this.widthLimit <= 0) return;
        this.availableSpaceRect.right = this.widthLimit;
        this.availableSpaceRect.bottom = n3 - n4 - n5;
        super.setTextSize(0, (float)this.efficientTextSizeSearch(n2, (int)this.maxTextSize, this.sizeTester, this.availableSpaceRect));
    }

    private int binarySearch(int n2, int n3, SizeTester sizeTester, RectF rectF) {
        int n4 = n2;
        int n5 = n3 - 1;
        n3 = n2;
        n2 = n4;
        n4 = n5;
        while (n3 <= n4) {
            n5 = n3 + n4 >>> 1;
            n2 = sizeTester.onTestSize(n5, rectF);
            if (n2 < 0) {
                n2 = n3;
                n3 = n5 + 1;
                continue;
            }
            if (n2 > 0) {
                n2 = n4 = n5 - 1;
                continue;
            }
            n2 = n5;
            break;
        }
        return n2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int efficientTextSizeSearch(int n2, int n3, SizeTester sizeTester, RectF rectF) {
        int n4;
        if (!this.enableSizeCache) {
            return this.binarySearch(n2, n3, sizeTester, rectF);
        }
        int n5 = this.getText().toString().length();
        int n6 = n4 = this.textCachedSizes.get(n5);
        if (n4 != 0) return n6;
        n2 = this.binarySearch(n2, n3, sizeTester, rectF);
        this.textCachedSizes.put(n5, n2);
        return n2;
    }

    private void reAdjust() {
        this.adjustTextSize();
    }

    public int getMaxLines() {
        return this.maxLines;
    }

    protected void onSizeChanged(int n2, int n3, int n4, int n5) {
        this.textCachedSizes.clear();
        super.onSizeChanged(n2, n3, n4, n5);
        if (n2 != n4 || n3 != n5) {
            this.reAdjust();
        }
    }

    protected void onTextChanged(CharSequence charSequence, int n2, int n3, int n4) {
        super.onTextChanged(charSequence, n2, n3, n4);
        this.reAdjust();
    }

    public void setLineSpacing(float f2, float f3) {
        super.setLineSpacing(f2, f3);
        this.spacingMult = f3;
        this.spacingAdd = f2;
    }

    public void setLines(int n2) {
        super.setLines(n2);
        this.maxLines = n2;
        this.reAdjust();
    }

    public void setMaxLines(int n2) {
        super.setMaxLines(n2);
        this.maxLines = n2;
        this.reAdjust();
    }

    public void setSingleLine() {
        super.setSingleLine();
        this.maxLines = 1;
        this.reAdjust();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setSingleLine(boolean bl) {
        super.setSingleLine(bl);
        this.maxLines = bl ? 1 : -1;
        this.reAdjust();
    }

    public void setTextSize(float f2) {
        this.maxTextSize = f2;
        this.textCachedSizes.clear();
        this.adjustTextSize();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setTextSize(int n2, float f2) {
        Context context = this.getContext();
        context = context == null ? Resources.getSystem() : context.getResources();
        this.maxTextSize = TypedValue.applyDimension((int)n2, (float)f2, (DisplayMetrics)context.getDisplayMetrics());
        this.textCachedSizes.clear();
        this.adjustTextSize();
    }

    public void setTypeface(Typeface typeface) {
        if (this.paint == null) {
            this.paint = new TextPaint((Paint)this.getPaint());
        }
        this.paint.setTypeface(typeface);
        super.setTypeface(typeface);
    }

    private static interface SizeTester {
        public int onTestSize(int var1, RectF var2);
    }

}

