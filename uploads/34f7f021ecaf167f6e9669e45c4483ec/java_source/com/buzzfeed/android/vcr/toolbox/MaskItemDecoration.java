/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.ValueAnimator
 *  android.animation.ValueAnimator$AnimatorUpdateListener
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.Paint$Style
 *  android.view.View
 */
package com.buzzfeed.android.vcr.toolbox;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;

public class MaskItemDecoration
extends RecyclerView.ItemDecoration {
    private static final long DEFAULT_ALPHA_ANIMATION_DURATION = 500;
    public static final int DEFAULT_VISIBLE_MASK_ALPHA = 255;
    protected ValueAnimator mAlphaValueAnimator;
    protected Paint mPaint;
    private RecyclerView mRecyclerView;
    private int mTargetAlpha;
    private View mVisibleChild;
    private int mVisibleMaskAlpha = 255;

    public MaskItemDecoration() {
        this(255, false);
    }

    public MaskItemDecoration(int n2, boolean bl) {
        this.initialize();
        this.mVisibleMaskAlpha = this.clamp(n2, 0, 255);
        if (bl) {
            this.mTargetAlpha = n2;
            this.mPaint.setAlpha(this.mTargetAlpha);
        }
    }

    private void animateMask(int n2) {
        this.setupAnimator(n2);
        this.mAlphaValueAnimator.start();
    }

    private int clamp(int n2, int n3, int n4) {
        return Math.max(n3, Math.min(n4, n2));
    }

    public void animateMaskIn() {
        this.animateMask(this.mVisibleMaskAlpha);
    }

    public void animateMaskOut() {
        this.animateMask(0);
    }

    public void cancelAnimation() {
        this.mAlphaValueAnimator.cancel();
    }

    protected void initialize() {
        this.mPaint = new Paint(1);
        this.mPaint.setColor(-16777216);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setAlpha(0);
        this.mAlphaValueAnimator = new ValueAnimator();
        this.mAlphaValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(){

            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                MaskItemDecoration.this.mPaint.setAlpha(((Integer)valueAnimator.getAnimatedValue()).intValue());
                if (MaskItemDecoration.this.mRecyclerView != null) {
                    MaskItemDecoration.this.mRecyclerView.postInvalidateOnAnimation();
                }
            }
        });
        this.mAlphaValueAnimator.setDuration(500);
    }

    @Override
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        if (this.mVisibleChild != null) {
            state = this.mVisibleChild;
            if (this.mPaint.getAlpha() > 0) {
                float f2 = ViewCompat.getTranslationY((View)state);
                canvas.drawRect(0.0f, (float)state.getTop() + f2, (float)recyclerView.getWidth(), (float)state.getBottom() + f2, this.mPaint);
            }
        }
    }

    @Override
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        super.onDrawOver(canvas, recyclerView, state);
        this.mRecyclerView = recyclerView;
        if (this.mVisibleChild != null) {
            state = this.mVisibleChild;
            float f2 = ViewCompat.getTranslationY((View)state);
            canvas.drawRect(0.0f, 0.0f, (float)recyclerView.getWidth(), (float)state.getTop() + f2, this.mPaint);
            canvas.drawRect(0.0f, (float)state.getBottom() + f2, (float)recyclerView.getWidth(), (float)recyclerView.getHeight(), this.mPaint);
            return;
        }
        canvas.drawRect(0.0f, 0.0f, (float)recyclerView.getWidth(), (float)recyclerView.getHeight(), this.mPaint);
    }

    public void setAnimationDuration(long l2) {
        this.mAlphaValueAnimator.setDuration(l2);
    }

    public void setVisibleChild(View view) {
        this.mVisibleChild = view;
    }

    public Animator setupAnimator(int n2) {
        if (this.mTargetAlpha != n2) {
            this.mTargetAlpha = n2;
            if (this.mAlphaValueAnimator.isStarted() || this.mAlphaValueAnimator.isRunning()) {
                this.mAlphaValueAnimator.cancel();
            }
            if ((n2 = this.mPaint.getAlpha()) != this.mTargetAlpha) {
                this.mAlphaValueAnimator.setIntValues(new int[]{n2, this.mTargetAlpha});
            }
        }
        return this.mAlphaValueAnimator;
    }

}

