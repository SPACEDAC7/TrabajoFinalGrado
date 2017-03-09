/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.ObjectAnimator
 *  android.content.Context
 *  android.content.res.TypedArray
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$Callback
 *  android.graphics.drawable.NinePatchDrawable
 *  android.util.AttributeSet
 *  android.util.Property
 *  android.view.View
 *  android.widget.LinearLayout
 */
package com.buzzfeed.android.ui.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.widget.LinearLayout;
import com.buzzfeed.android.R;

public class DrawShadowLinearLayout
extends LinearLayout {
    private static Property<DrawShadowLinearLayout, Float> SHADOW_ALPHA = new Property<DrawShadowLinearLayout, Float>((Class)Float.class, "shadowAlpha"){

        public Float get(DrawShadowLinearLayout drawShadowLinearLayout) {
            return Float.valueOf(drawShadowLinearLayout.mAlpha);
        }

        public void set(DrawShadowLinearLayout drawShadowLinearLayout, Float f2) {
            drawShadowLinearLayout.mAlpha = f2.floatValue();
            ViewCompat.postInvalidateOnAnimation((View)drawShadowLinearLayout);
        }
    };
    private float mAlpha = 1.0f;
    private ObjectAnimator mAnimator;
    private int mHeight;
    private Drawable mShadowDrawable;
    private NinePatchDrawable mShadowNinePatchDrawable;
    private int mShadowTopOffset;
    private boolean mShadowVisible;
    private int mWidth;

    public DrawShadowLinearLayout(Context context) {
        this(context, null, 0);
    }

    public DrawShadowLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public DrawShadowLinearLayout(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        context = context.obtainStyledAttributes(attributeSet, R.styleable.DrawShadowLayout, 0, 0);
        this.mShadowDrawable = context.getDrawable(0);
        if (this.mShadowDrawable != null) {
            this.mShadowDrawable.setCallback((Drawable.Callback)this);
            if (this.mShadowDrawable instanceof NinePatchDrawable) {
                this.mShadowNinePatchDrawable = (NinePatchDrawable)this.mShadowDrawable;
            }
        }
        this.mShadowVisible = context.getBoolean(1, true);
        boolean bl = !this.mShadowVisible || this.mShadowDrawable == null;
        this.setWillNotDraw(bl);
        context.recycle();
    }

    private void updateShadowBounds() {
        if (this.mShadowDrawable != null) {
            this.mShadowDrawable.setBounds(0, this.mShadowTopOffset, this.mWidth, this.mHeight);
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mShadowDrawable != null && this.mShadowVisible) {
            if (this.mShadowNinePatchDrawable != null) {
                this.mShadowNinePatchDrawable.getPaint().setAlpha((int)(255.0f * this.mAlpha));
            }
            this.mShadowDrawable.draw(canvas);
        }
    }

    public boolean isShadowVisible() {
        return this.mShadowVisible;
    }

    protected void onSizeChanged(int n2, int n3, int n4, int n5) {
        super.onSizeChanged(n2, n3, n4, n5);
        this.mWidth = n2;
        this.mHeight = n3;
        this.updateShadowBounds();
    }

    public void setShadowTopOffset(int n2) {
        this.mShadowTopOffset = n2;
        this.updateShadowBounds();
        ViewCompat.postInvalidateOnAnimation((View)this);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setShadowVisible(boolean bl, boolean bl2) {
        float f2 = 1.0f;
        this.mShadowVisible = bl;
        if (this.mAnimator != null) {
            this.mAnimator.cancel();
            this.mAnimator = null;
        }
        if (bl2 && this.mShadowDrawable != null) {
            Property<DrawShadowLinearLayout, Float> property = SHADOW_ALPHA;
            float f3 = bl ? 0.0f : 1.0f;
            if (!bl) {
                f2 = 0.0f;
            }
            this.mAnimator = ObjectAnimator.ofFloat((Object)((Object)this), property, (float[])new float[]{f3, f2});
            this.mAnimator.setDuration(1000);
            this.mAnimator.start();
        }
        ViewCompat.postInvalidateOnAnimation((View)this);
        bl = !this.mShadowVisible || this.mShadowDrawable == null;
        this.setWillNotDraw(bl);
    }

}

