/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
 *  android.graphics.Paint
 *  android.graphics.Paint$Cap
 *  android.graphics.Paint$Style
 *  android.graphics.Path
 *  android.graphics.Path$FillType
 *  android.graphics.Rect
 *  android.graphics.RectF
 *  android.graphics.drawable.Animatable
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$Callback
 *  android.util.DisplayMetrics
 *  android.view.View
 *  android.view.animation.Animation
 *  android.view.animation.Animation$AnimationListener
 *  android.view.animation.Interpolator
 *  android.view.animation.LinearInterpolator
 *  android.view.animation.Transformation
 */
package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

class MaterialProgressDrawable
extends Drawable
implements Animatable {
    private static final int ANIMATION_DURATION = 1332;
    private static final int ARROW_HEIGHT = 5;
    private static final int ARROW_HEIGHT_LARGE = 6;
    private static final float ARROW_OFFSET_ANGLE = 5.0f;
    private static final int ARROW_WIDTH = 10;
    private static final int ARROW_WIDTH_LARGE = 12;
    private static final float CENTER_RADIUS = 8.75f;
    private static final float CENTER_RADIUS_LARGE = 12.5f;
    private static final int CIRCLE_DIAMETER = 40;
    private static final int CIRCLE_DIAMETER_LARGE = 56;
    private static final int[] COLORS;
    private static final float COLOR_START_DELAY_OFFSET = 0.75f;
    static final int DEFAULT = 1;
    private static final float END_TRIM_START_DELAY_OFFSET = 0.5f;
    private static final float FULL_ROTATION = 1080.0f;
    static final int LARGE = 0;
    private static final Interpolator LINEAR_INTERPOLATOR;
    static final Interpolator MATERIAL_INTERPOLATOR;
    private static final float MAX_PROGRESS_ARC = 0.8f;
    private static final float NUM_POINTS = 5.0f;
    private static final float START_TRIM_DURATION_OFFSET = 0.5f;
    private static final float STROKE_WIDTH = 2.5f;
    private static final float STROKE_WIDTH_LARGE = 3.0f;
    private Animation mAnimation;
    private final ArrayList<Animation> mAnimators = new ArrayList();
    private final Drawable.Callback mCallback;
    boolean mFinishing;
    private double mHeight;
    private View mParent;
    private Resources mResources;
    private final Ring mRing;
    private float mRotation;
    float mRotationCount;
    private double mWidth;

    static {
        LINEAR_INTERPOLATOR = new LinearInterpolator();
        MATERIAL_INTERPOLATOR = new FastOutSlowInInterpolator();
        COLORS = new int[]{-16777216};
    }

    MaterialProgressDrawable(Context context, View view) {
        this.mCallback = new Drawable.Callback(){

            public void invalidateDrawable(Drawable drawable2) {
                MaterialProgressDrawable.this.invalidateSelf();
            }

            public void scheduleDrawable(Drawable drawable2, Runnable runnable, long l2) {
                MaterialProgressDrawable.this.scheduleSelf(runnable, l2);
            }

            public void unscheduleDrawable(Drawable drawable2, Runnable runnable) {
                MaterialProgressDrawable.this.unscheduleSelf(runnable);
            }
        };
        this.mParent = view;
        this.mResources = context.getResources();
        this.mRing = new Ring(this.mCallback);
        this.mRing.setColors(COLORS);
        this.updateSizes(1);
        this.setupAnimators();
    }

    private int evaluateColorChange(float f2, int n2, int n3) {
        int n4 = n2;
        n2 = n4 >> 24 & 255;
        int n5 = n4 >> 16 & 255;
        int n6 = n4 >> 8 & 255;
        n3 = n3;
        return (int)((float)((n3 >> 24 & 255) - n2) * f2) + n2 << 24 | (int)((float)((n3 >> 16 & 255) - n5) * f2) + n5 << 16 | (int)((float)((n3 >> 8 & 255) - n6) * f2) + n6 << 8 | (int)((float)((n3 & 255) - n4) * f2) + (n4 &= 255);
    }

    private float getRotation() {
        return this.mRotation;
    }

    private void setSizeParameters(double d2, double d3, double d4, double d5, float f2, float f3) {
        Ring ring = this.mRing;
        float f4 = this.mResources.getDisplayMetrics().density;
        this.mWidth = (double)f4 * d2;
        this.mHeight = (double)f4 * d3;
        ring.setStrokeWidth((float)d5 * f4);
        ring.setCenterRadius((double)f4 * d4);
        ring.setColorIndex(0);
        ring.setArrowDimensions(f2 * f4, f3 * f4);
        ring.setInsets((int)this.mWidth, (int)this.mHeight);
    }

    private void setupAnimators() {
        final Ring ring = this.mRing;
        Animation animation = new Animation(){

            public void applyTransformation(float f2, Transformation transformation) {
                if (MaterialProgressDrawable.this.mFinishing) {
                    MaterialProgressDrawable.this.applyFinishTranslation(f2, ring);
                    return;
                }
                float f3 = MaterialProgressDrawable.this.getMinProgressArc(ring);
                float f4 = ring.getStartingEndTrim();
                float f5 = ring.getStartingStartTrim();
                float f6 = ring.getStartingRotation();
                MaterialProgressDrawable.this.updateRingColor(f2, ring);
                if (f2 <= 0.5f) {
                    float f7 = f2 / 0.5f;
                    f7 = MaterialProgressDrawable.MATERIAL_INTERPOLATOR.getInterpolation(f7);
                    ring.setStartTrim(f5 + (0.8f - f3) * f7);
                }
                if (f2 > 0.5f) {
                    f5 = (f2 - 0.5f) / 0.5f;
                    f5 = MaterialProgressDrawable.MATERIAL_INTERPOLATOR.getInterpolation(f5);
                    ring.setEndTrim(f4 + f5 * (0.8f - f3));
                }
                ring.setRotation(f6 + 0.25f * f2);
                f3 = MaterialProgressDrawable.this.mRotationCount / 5.0f;
                MaterialProgressDrawable.this.setRotation(216.0f * f2 + 1080.0f * f3);
            }
        };
        animation.setRepeatCount(-1);
        animation.setRepeatMode(1);
        animation.setInterpolator(LINEAR_INTERPOLATOR);
        animation.setAnimationListener(new Animation.AnimationListener(){

            public void onAnimationEnd(Animation animation) {
            }

            public void onAnimationRepeat(Animation animation) {
                ring.storeOriginals();
                ring.goToNextColor();
                ring.setStartTrim(ring.getEndTrim());
                if (MaterialProgressDrawable.this.mFinishing) {
                    MaterialProgressDrawable.this.mFinishing = false;
                    animation.setDuration(1332);
                    ring.setShowArrow(false);
                    return;
                }
                MaterialProgressDrawable.this.mRotationCount = (MaterialProgressDrawable.this.mRotationCount + 1.0f) % 5.0f;
            }

            public void onAnimationStart(Animation animation) {
                MaterialProgressDrawable.this.mRotationCount = 0.0f;
            }
        });
        this.mAnimation = animation;
    }

    void applyFinishTranslation(float f2, Ring ring) {
        this.updateRingColor(f2, ring);
        float f3 = (float)(Math.floor(ring.getStartingRotation() / 0.8f) + 1.0);
        float f4 = this.getMinProgressArc(ring);
        ring.setStartTrim(ring.getStartingStartTrim() + (ring.getStartingEndTrim() - f4 - ring.getStartingStartTrim()) * f2);
        ring.setEndTrim(ring.getStartingEndTrim());
        ring.setRotation(ring.getStartingRotation() + (f3 - ring.getStartingRotation()) * f2);
    }

    public void draw(Canvas canvas) {
        Rect rect = this.getBounds();
        int n2 = canvas.save();
        canvas.rotate(this.mRotation, rect.exactCenterX(), rect.exactCenterY());
        this.mRing.draw(canvas, rect);
        canvas.restoreToCount(n2);
    }

    public int getAlpha() {
        return this.mRing.getAlpha();
    }

    public int getIntrinsicHeight() {
        return (int)this.mHeight;
    }

    public int getIntrinsicWidth() {
        return (int)this.mWidth;
    }

    float getMinProgressArc(Ring ring) {
        return (float)Math.toRadians((double)ring.getStrokeWidth() / (6.283185307179586 * ring.getCenterRadius()));
    }

    public int getOpacity() {
        return -3;
    }

    public boolean isRunning() {
        ArrayList<Animation> arrayList = this.mAnimators;
        int n2 = arrayList.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            Animation animation = arrayList.get(i2);
            if (!animation.hasStarted() || animation.hasEnded()) continue;
            return true;
        }
        return false;
    }

    public void setAlpha(int n2) {
        this.mRing.setAlpha(n2);
    }

    public void setArrowScale(float f2) {
        this.mRing.setArrowScale(f2);
    }

    public void setBackgroundColor(int n2) {
        this.mRing.setBackgroundColor(n2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mRing.setColorFilter(colorFilter);
    }

    public /* varargs */ void setColorSchemeColors(int ... arrn) {
        this.mRing.setColors(arrn);
        this.mRing.setColorIndex(0);
    }

    public void setProgressRotation(float f2) {
        this.mRing.setRotation(f2);
    }

    void setRotation(float f2) {
        this.mRotation = f2;
        this.invalidateSelf();
    }

    public void setStartEndTrim(float f2, float f3) {
        this.mRing.setStartTrim(f2);
        this.mRing.setEndTrim(f3);
    }

    public void showArrow(boolean bl) {
        this.mRing.setShowArrow(bl);
    }

    public void start() {
        this.mAnimation.reset();
        this.mRing.storeOriginals();
        if (this.mRing.getEndTrim() != this.mRing.getStartTrim()) {
            this.mFinishing = true;
            this.mAnimation.setDuration(666);
            this.mParent.startAnimation(this.mAnimation);
            return;
        }
        this.mRing.setColorIndex(0);
        this.mRing.resetOriginals();
        this.mAnimation.setDuration(1332);
        this.mParent.startAnimation(this.mAnimation);
    }

    public void stop() {
        this.mParent.clearAnimation();
        this.setRotation(0.0f);
        this.mRing.setShowArrow(false);
        this.mRing.setColorIndex(0);
        this.mRing.resetOriginals();
    }

    void updateRingColor(float f2, Ring ring) {
        if (f2 > 0.75f) {
            ring.setColor(this.evaluateColorChange((f2 - 0.75f) / 0.25f, ring.getStartingColor(), ring.getNextColor()));
        }
    }

    public void updateSizes(int n2) {
        if (n2 == 0) {
            this.setSizeParameters(56.0, 56.0, 12.5, 3.0, 12.0f, 6.0f);
            return;
        }
        this.setSizeParameters(40.0, 40.0, 8.75, 2.5, 10.0f, 5.0f);
    }

    @Retention(value=RetentionPolicy.SOURCE)
    public static @interface ProgressDrawableSize {
    }

    private static class Ring {
        private int mAlpha;
        private Path mArrow;
        private int mArrowHeight;
        private final Paint mArrowPaint = new Paint();
        private float mArrowScale;
        private int mArrowWidth;
        private int mBackgroundColor;
        private final Drawable.Callback mCallback;
        private final Paint mCirclePaint = new Paint(1);
        private int mColorIndex;
        private int[] mColors;
        private int mCurrentColor;
        private float mEndTrim = 0.0f;
        private final Paint mPaint = new Paint();
        private double mRingCenterRadius;
        private float mRotation = 0.0f;
        private boolean mShowArrow;
        private float mStartTrim = 0.0f;
        private float mStartingEndTrim;
        private float mStartingRotation;
        private float mStartingStartTrim;
        private float mStrokeInset = 2.5f;
        private float mStrokeWidth = 5.0f;
        private final RectF mTempBounds = new RectF();

        Ring(Drawable.Callback callback) {
            this.mCallback = callback;
            this.mPaint.setStrokeCap(Paint.Cap.SQUARE);
            this.mPaint.setAntiAlias(true);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mArrowPaint.setStyle(Paint.Style.FILL);
            this.mArrowPaint.setAntiAlias(true);
        }

        /*
         * Enabled aggressive block sorting
         */
        private void drawTriangle(Canvas canvas, float f2, float f3, Rect rect) {
            if (this.mShowArrow) {
                if (this.mArrow == null) {
                    this.mArrow = new Path();
                    this.mArrow.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    this.mArrow.reset();
                }
                float f4 = (int)this.mStrokeInset / 2;
                float f5 = this.mArrowScale;
                float f6 = (float)(this.mRingCenterRadius * Math.cos(0.0) + (double)rect.exactCenterX());
                float f7 = (float)(this.mRingCenterRadius * Math.sin(0.0) + (double)rect.exactCenterY());
                this.mArrow.moveTo(0.0f, 0.0f);
                this.mArrow.lineTo((float)this.mArrowWidth * this.mArrowScale, 0.0f);
                this.mArrow.lineTo((float)this.mArrowWidth * this.mArrowScale / 2.0f, (float)this.mArrowHeight * this.mArrowScale);
                this.mArrow.offset(f6 - f4 * f5, f7);
                this.mArrow.close();
                this.mArrowPaint.setColor(this.mCurrentColor);
                canvas.rotate(f2 + f3 - 5.0f, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.mArrow, this.mArrowPaint);
            }
        }

        private int getNextColorIndex() {
            return (this.mColorIndex + 1) % this.mColors.length;
        }

        private void invalidateSelf() {
            this.mCallback.invalidateDrawable(null);
        }

        public void draw(Canvas canvas, Rect rect) {
            RectF rectF = this.mTempBounds;
            rectF.set(rect);
            rectF.inset(this.mStrokeInset, this.mStrokeInset);
            float f2 = (this.mStartTrim + this.mRotation) * 360.0f;
            float f3 = (this.mEndTrim + this.mRotation) * 360.0f - f2;
            this.mPaint.setColor(this.mCurrentColor);
            canvas.drawArc(rectF, f2, f3, false, this.mPaint);
            this.drawTriangle(canvas, f2, f3, rect);
            if (this.mAlpha < 255) {
                this.mCirclePaint.setColor(this.mBackgroundColor);
                this.mCirclePaint.setAlpha(255 - this.mAlpha);
                canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), (float)(rect.width() / 2), this.mCirclePaint);
            }
        }

        public int getAlpha() {
            return this.mAlpha;
        }

        public double getCenterRadius() {
            return this.mRingCenterRadius;
        }

        public float getEndTrim() {
            return this.mEndTrim;
        }

        public float getInsets() {
            return this.mStrokeInset;
        }

        public int getNextColor() {
            return this.mColors[this.getNextColorIndex()];
        }

        public float getRotation() {
            return this.mRotation;
        }

        public float getStartTrim() {
            return this.mStartTrim;
        }

        public int getStartingColor() {
            return this.mColors[this.mColorIndex];
        }

        public float getStartingEndTrim() {
            return this.mStartingEndTrim;
        }

        public float getStartingRotation() {
            return this.mStartingRotation;
        }

        public float getStartingStartTrim() {
            return this.mStartingStartTrim;
        }

        public float getStrokeWidth() {
            return this.mStrokeWidth;
        }

        public void goToNextColor() {
            this.setColorIndex(this.getNextColorIndex());
        }

        public void resetOriginals() {
            this.mStartingStartTrim = 0.0f;
            this.mStartingEndTrim = 0.0f;
            this.mStartingRotation = 0.0f;
            this.setStartTrim(0.0f);
            this.setEndTrim(0.0f);
            this.setRotation(0.0f);
        }

        public void setAlpha(int n2) {
            this.mAlpha = n2;
        }

        public void setArrowDimensions(float f2, float f3) {
            this.mArrowWidth = (int)f2;
            this.mArrowHeight = (int)f3;
        }

        public void setArrowScale(float f2) {
            if (f2 != this.mArrowScale) {
                this.mArrowScale = f2;
                this.invalidateSelf();
            }
        }

        public void setBackgroundColor(int n2) {
            this.mBackgroundColor = n2;
        }

        public void setCenterRadius(double d2) {
            this.mRingCenterRadius = d2;
        }

        public void setColor(int n2) {
            this.mCurrentColor = n2;
        }

        public void setColorFilter(ColorFilter colorFilter) {
            this.mPaint.setColorFilter(colorFilter);
            this.invalidateSelf();
        }

        public void setColorIndex(int n2) {
            this.mColorIndex = n2;
            this.mCurrentColor = this.mColors[this.mColorIndex];
        }

        public void setColors(@NonNull int[] arrn) {
            this.mColors = arrn;
            this.setColorIndex(0);
        }

        public void setEndTrim(float f2) {
            this.mEndTrim = f2;
            this.invalidateSelf();
        }

        /*
         * Enabled aggressive block sorting
         */
        public void setInsets(int n2, int n3) {
            float f2 = Math.min(n2, n3);
            f2 = this.mRingCenterRadius <= 0.0 || f2 < 0.0f ? (float)Math.ceil(this.mStrokeWidth / 2.0f) : (float)((double)(f2 / 2.0f) - this.mRingCenterRadius);
            this.mStrokeInset = f2;
        }

        public void setRotation(float f2) {
            this.mRotation = f2;
            this.invalidateSelf();
        }

        public void setShowArrow(boolean bl) {
            if (this.mShowArrow != bl) {
                this.mShowArrow = bl;
                this.invalidateSelf();
            }
        }

        public void setStartTrim(float f2) {
            this.mStartTrim = f2;
            this.invalidateSelf();
        }

        public void setStrokeWidth(float f2) {
            this.mStrokeWidth = f2;
            this.mPaint.setStrokeWidth(f2);
            this.invalidateSelf();
        }

        public void storeOriginals() {
            this.mStartingStartTrim = this.mStartTrim;
            this.mStartingEndTrim = this.mEndTrim;
            this.mStartingRotation = this.mRotation;
        }
    }

}

