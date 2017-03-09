/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.Paint$Style
 *  android.graphics.Path
 *  android.graphics.RectF
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.TextView
 */
package com.facebook.share.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.R;

public class LikeBoxCountView
extends FrameLayout {
    private int additionalTextPadding;
    private Paint borderPaint;
    private float borderRadius;
    private float caretHeight;
    private LikeBoxCountViewCaretPosition caretPosition = LikeBoxCountViewCaretPosition.LEFT;
    private float caretWidth;
    private TextView likeCountLabel;
    private int textPadding;

    public LikeBoxCountView(Context context) {
        super(context);
        this.initialize(context);
    }

    private void drawBorder(Canvas canvas, float f2, float f3, float f4, float f5) {
        Path path = new Path();
        float f6 = 2.0f * this.borderRadius;
        path.addArc(new RectF(f2, f3, f2 + f6, f3 + f6), -180.0f, 90.0f);
        if (this.caretPosition == LikeBoxCountViewCaretPosition.TOP) {
            path.lineTo((f4 - f2 - this.caretWidth) / 2.0f + f2, f3);
            path.lineTo((f4 - f2) / 2.0f + f2, f3 - this.caretHeight);
            path.lineTo((f4 - f2 + this.caretWidth) / 2.0f + f2, f3);
        }
        path.lineTo(f4 - this.borderRadius, f3);
        path.addArc(new RectF(f4 - f6, f3, f4, f3 + f6), -90.0f, 90.0f);
        if (this.caretPosition == LikeBoxCountViewCaretPosition.RIGHT) {
            path.lineTo(f4, (f5 - f3 - this.caretWidth) / 2.0f + f3);
            path.lineTo(this.caretHeight + f4, (f5 - f3) / 2.0f + f3);
            path.lineTo(f4, (f5 - f3 + this.caretWidth) / 2.0f + f3);
        }
        path.lineTo(f4, f5 - this.borderRadius);
        path.addArc(new RectF(f4 - f6, f5 - f6, f4, f5), 0.0f, 90.0f);
        if (this.caretPosition == LikeBoxCountViewCaretPosition.BOTTOM) {
            path.lineTo((f4 - f2 + this.caretWidth) / 2.0f + f2, f5);
            path.lineTo((f4 - f2) / 2.0f + f2, this.caretHeight + f5);
            path.lineTo((f4 - f2 - this.caretWidth) / 2.0f + f2, f5);
        }
        path.lineTo(this.borderRadius + f2, f5);
        path.addArc(new RectF(f2, f5 - f6, f2 + f6, f5), 90.0f, 90.0f);
        if (this.caretPosition == LikeBoxCountViewCaretPosition.LEFT) {
            path.lineTo(f2, (f5 - f3 + this.caretWidth) / 2.0f + f3);
            path.lineTo(f2 - this.caretHeight, (f5 - f3) / 2.0f + f3);
            path.lineTo(f2, (f5 - f3 - this.caretWidth) / 2.0f + f3);
        }
        path.lineTo(f2, this.borderRadius + f3);
        canvas.drawPath(path, this.borderPaint);
    }

    private void initialize(Context context) {
        this.setWillNotDraw(false);
        this.caretHeight = this.getResources().getDimension(R.dimen.com_facebook_likeboxcountview_caret_height);
        this.caretWidth = this.getResources().getDimension(R.dimen.com_facebook_likeboxcountview_caret_width);
        this.borderRadius = this.getResources().getDimension(R.dimen.com_facebook_likeboxcountview_border_radius);
        this.borderPaint = new Paint();
        this.borderPaint.setColor(this.getResources().getColor(R.color.com_facebook_likeboxcountview_border_color));
        this.borderPaint.setStrokeWidth(this.getResources().getDimension(R.dimen.com_facebook_likeboxcountview_border_width));
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.initializeLikeCountLabel(context);
        this.addView((View)this.likeCountLabel);
        this.setCaretPosition(this.caretPosition);
    }

    private void initializeLikeCountLabel(Context context) {
        this.likeCountLabel = new TextView(context);
        context = new FrameLayout.LayoutParams(-1, -1);
        this.likeCountLabel.setLayoutParams((ViewGroup.LayoutParams)context);
        this.likeCountLabel.setGravity(17);
        this.likeCountLabel.setTextSize(0, this.getResources().getDimension(R.dimen.com_facebook_likeboxcountview_text_size));
        this.likeCountLabel.setTextColor(this.getResources().getColor(R.color.com_facebook_likeboxcountview_text_color));
        this.textPadding = this.getResources().getDimensionPixelSize(R.dimen.com_facebook_likeboxcountview_text_padding);
        this.additionalTextPadding = this.getResources().getDimensionPixelSize(R.dimen.com_facebook_likeboxcountview_caret_height);
    }

    private void setAdditionalTextPadding(int n2, int n3, int n4, int n5) {
        this.likeCountLabel.setPadding(this.textPadding + n2, this.textPadding + n3, this.textPadding + n4, this.textPadding + n5);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void onDraw(Canvas var1_1) {
        super.onDraw(var1_1);
        var5_2 = this.getPaddingTop();
        var3_3 = this.getPaddingLeft();
        var4_4 = this.getWidth() - this.getPaddingRight();
        var2_5 = this.getHeight() - this.getPaddingBottom();
        switch (.$SwitchMap$com$facebook$share$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition[this.caretPosition.ordinal()]) {
            case 4: {
                var2_5 = (int)((float)var2_5 - this.caretHeight);
                ** break;
            }
            case 1: {
                var3_3 = (int)((float)var3_3 + this.caretHeight);
                ** break;
            }
            case 2: {
                var5_2 = (int)((float)var5_2 + this.caretHeight);
            }
lbl15: // 4 sources:
            default: {
                ** GOTO lbl19
            }
            case 3: 
        }
        var4_4 = (int)((float)var4_4 - this.caretHeight);
lbl19: // 2 sources:
        this.drawBorder(var1_1, var3_3, var5_2, var4_4, var2_5);
    }

    public void setCaretPosition(LikeBoxCountViewCaretPosition likeBoxCountViewCaretPosition) {
        this.caretPosition = likeBoxCountViewCaretPosition;
        switch (.$SwitchMap$com$facebook$share$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition[likeBoxCountViewCaretPosition.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.setAdditionalTextPadding(this.additionalTextPadding, 0, 0, 0);
                return;
            }
            case 2: {
                this.setAdditionalTextPadding(0, this.additionalTextPadding, 0, 0);
                return;
            }
            case 3: {
                this.setAdditionalTextPadding(0, 0, this.additionalTextPadding, 0);
                return;
            }
            case 4: 
        }
        this.setAdditionalTextPadding(0, 0, 0, this.additionalTextPadding);
    }

    public void setText(String string2) {
        this.likeCountLabel.setText((CharSequence)string2);
    }

    public static enum LikeBoxCountViewCaretPosition {
        LEFT,
        TOP,
        RIGHT,
        BOTTOM;
        

        private LikeBoxCountViewCaretPosition() {
        }
    }

}

