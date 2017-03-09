/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.RadialGradient
 *  android.graphics.RectF
 *  android.graphics.Shader
 *  android.graphics.Shader$TileMode
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.ShapeDrawable
 *  android.graphics.drawable.shapes.OvalShape
 *  android.graphics.drawable.shapes.Shape
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.DisplayMetrics
 *  android.view.View
 *  android.view.animation.Animation
 *  android.view.animation.Animation$AnimationListener
 *  android.widget.ImageView
 */
package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;

class CircleImageView
extends ImageView {
    private static final int FILL_SHADOW_COLOR = 1023410176;
    private static final int KEY_SHADOW_COLOR = 503316480;
    private static final int SHADOW_ELEVATION = 4;
    private static final float SHADOW_RADIUS = 3.5f;
    private static final float X_OFFSET = 0.0f;
    private static final float Y_OFFSET = 1.75f;
    private Animation.AnimationListener mListener;
    int mShadowRadius;

    /*
     * Enabled aggressive block sorting
     */
    CircleImageView(Context context, int n2) {
        super(context);
        float f2 = this.getContext().getResources().getDisplayMetrics().density;
        int n3 = (int)(1.75f * f2);
        int n4 = (int)(0.0f * f2);
        this.mShadowRadius = (int)(3.5f * f2);
        if (this.elevationSupported()) {
            context = new ShapeDrawable((Shape)new OvalShape());
            ViewCompat.setElevation((View)this, 4.0f * f2);
        } else {
            context = new ShapeDrawable((Shape)new OvalShadow(this.mShadowRadius));
            ViewCompat.setLayerType((View)this, 1, context.getPaint());
            context.getPaint().setShadowLayer((float)this.mShadowRadius, (float)n4, (float)n3, 503316480);
            n3 = this.mShadowRadius;
            this.setPadding(n3, n3, n3, n3);
        }
        context.getPaint().setColor(n2);
        ViewCompat.setBackground((View)this, (Drawable)context);
    }

    private boolean elevationSupported() {
        if (Build.VERSION.SDK_INT >= 21) {
            return true;
        }
        return false;
    }

    public void onAnimationEnd() {
        super.onAnimationEnd();
        if (this.mListener != null) {
            this.mListener.onAnimationEnd(this.getAnimation());
        }
    }

    public void onAnimationStart() {
        super.onAnimationStart();
        if (this.mListener != null) {
            this.mListener.onAnimationStart(this.getAnimation());
        }
    }

    protected void onMeasure(int n2, int n3) {
        super.onMeasure(n2, n3);
        if (!this.elevationSupported()) {
            this.setMeasuredDimension(this.getMeasuredWidth() + this.mShadowRadius * 2, this.getMeasuredHeight() + this.mShadowRadius * 2);
        }
    }

    public void setAnimationListener(Animation.AnimationListener animationListener) {
        this.mListener = animationListener;
    }

    public void setBackgroundColor(int n2) {
        if (this.getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable)this.getBackground()).getPaint().setColor(n2);
        }
    }

    public void setBackgroundColorRes(int n2) {
        this.setBackgroundColor(ContextCompat.getColor(this.getContext(), n2));
    }

    private class OvalShadow
    extends OvalShape {
        private RadialGradient mRadialGradient;
        private Paint mShadowPaint;

        OvalShadow(int n2) {
            this.mShadowPaint = new Paint();
            CircleImageView.this.mShadowRadius = n2;
            this.updateRadialGradient((int)this.rect().width());
        }

        private void updateRadialGradient(int n2) {
            float f2 = n2 / 2;
            float f3 = n2 / 2;
            float f4 = CircleImageView.this.mShadowRadius;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.mRadialGradient = new RadialGradient(f2, f3, f4, new int[]{1023410176, 0}, null, tileMode);
            this.mShadowPaint.setShader((Shader)this.mRadialGradient);
        }

        public void draw(Canvas canvas, Paint paint) {
            int n2 = CircleImageView.this.getWidth();
            int n3 = CircleImageView.this.getHeight();
            canvas.drawCircle((float)(n2 / 2), (float)(n3 / 2), (float)(n2 / 2), this.mShadowPaint);
            canvas.drawCircle((float)(n2 / 2), (float)(n3 / 2), (float)(n2 / 2 - CircleImageView.this.mShadowRadius), paint);
        }

        protected void onResize(float f2, float f3) {
            super.onResize(f2, f3);
            this.updateRadialGradient((int)f2);
        }
    }

}

