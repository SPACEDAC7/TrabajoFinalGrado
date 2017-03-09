/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.Rect
 *  android.graphics.RectF
 *  android.view.View
 *  android.view.animation.AnimationUtils
 *  android.view.animation.Interpolator
 */
package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

final class SwipeProgressBar {
    private static final int ANIMATION_DURATION_MS = 2000;
    private static final int COLOR1 = -1291845632;
    private static final int COLOR2 = Integer.MIN_VALUE;
    private static final int COLOR3 = 1291845632;
    private static final int COLOR4 = 436207616;
    private static final int FINISH_ANIMATION_DURATION_MS = 1000;
    private static final Interpolator INTERPOLATOR = new FastOutSlowInInterpolator();
    private Rect mBounds = new Rect();
    private final RectF mClipRect = new RectF();
    private int mColor1;
    private int mColor2;
    private int mColor3;
    private int mColor4;
    private long mFinishTime;
    private final Paint mPaint = new Paint();
    private View mParent;
    private boolean mRunning;
    private long mStartTime;
    private float mTriggerPercentage;

    SwipeProgressBar(View view) {
        this.mParent = view;
        this.mColor1 = -1291845632;
        this.mColor2 = Integer.MIN_VALUE;
        this.mColor3 = 1291845632;
        this.mColor4 = 436207616;
    }

    private void drawCircle(Canvas canvas, float f2, float f3, int n2, float f4) {
        this.mPaint.setColor(n2);
        canvas.save();
        canvas.translate(f2, f3);
        f3 = INTERPOLATOR.getInterpolation(f4);
        canvas.scale(f3, f3);
        canvas.drawCircle(0.0f, 0.0f, f2, this.mPaint);
        canvas.restore();
    }

    private void drawTrigger(Canvas canvas, int n2, int n3) {
        this.mPaint.setColor(this.mColor1);
        canvas.drawCircle((float)n2, (float)n3, (float)n2 * this.mTriggerPercentage, this.mPaint);
    }

    /*
     * Enabled aggressive block sorting
     */
    void draw(Canvas canvas) {
        int n2 = this.mBounds.width();
        int n3 = this.mBounds.height();
        int n4 = n2 / 2;
        int n5 = n3 / 2;
        boolean bl = false;
        int n6 = canvas.save();
        canvas.clipRect(this.mBounds);
        if (this.mRunning || this.mFinishTime > 0) {
            float f2;
            long l2 = AnimationUtils.currentAnimationTimeMillis();
            long l3 = this.mStartTime;
            long l4 = (l2 - this.mStartTime) / 2000;
            float f3 = (float)((l2 - l3) % 2000) / 20.0f;
            if (!this.mRunning) {
                if (l2 - this.mFinishTime >= 1000) {
                    this.mFinishTime = 0;
                    return;
                }
                f2 = (float)((l2 - this.mFinishTime) % 1000) / 10.0f / 100.0f;
                f2 = (float)(n2 / 2) * INTERPOLATOR.getInterpolation(f2);
                this.mClipRect.set((float)n4 - f2, 0.0f, (float)n4 + f2, (float)n3);
                canvas.saveLayerAlpha(this.mClipRect, 0, 0);
                bl = true;
            }
            if (l4 == 0) {
                canvas.drawColor(this.mColor1);
            } else if (f3 >= 0.0f && f3 < 25.0f) {
                canvas.drawColor(this.mColor4);
            } else if (f3 >= 25.0f && f3 < 50.0f) {
                canvas.drawColor(this.mColor1);
            } else if (f3 >= 50.0f && f3 < 75.0f) {
                canvas.drawColor(this.mColor2);
            } else {
                canvas.drawColor(this.mColor3);
            }
            if (f3 >= 0.0f && f3 <= 25.0f) {
                f2 = (25.0f + f3) * 2.0f / 100.0f;
                this.drawCircle(canvas, n4, n5, this.mColor1, f2);
            }
            if (f3 >= 0.0f && f3 <= 50.0f) {
                f2 = 2.0f * f3 / 100.0f;
                this.drawCircle(canvas, n4, n5, this.mColor2, f2);
            }
            if (f3 >= 25.0f && f3 <= 75.0f) {
                f2 = (f3 - 25.0f) * 2.0f / 100.0f;
                this.drawCircle(canvas, n4, n5, this.mColor3, f2);
            }
            if (f3 >= 50.0f && f3 <= 100.0f) {
                f2 = (f3 - 50.0f) * 2.0f / 100.0f;
                this.drawCircle(canvas, n4, n5, this.mColor4, f2);
            }
            if (f3 >= 75.0f && f3 <= 100.0f) {
                f3 = (f3 - 75.0f) * 2.0f / 100.0f;
                this.drawCircle(canvas, n4, n5, this.mColor1, f3);
            }
            n2 = n6;
            if (this.mTriggerPercentage > 0.0f) {
                n2 = n6;
                if (bl) {
                    canvas.restoreToCount(n6);
                    n2 = canvas.save();
                    canvas.clipRect(this.mBounds);
                    this.drawTrigger(canvas, n4, n5);
                }
            }
            ViewCompat.postInvalidateOnAnimation(this.mParent, this.mBounds.left, this.mBounds.top, this.mBounds.right, this.mBounds.bottom);
        } else {
            n2 = n6;
            if (this.mTriggerPercentage > 0.0f) {
                n2 = n6;
                if ((double)this.mTriggerPercentage <= 1.0) {
                    this.drawTrigger(canvas, n4, n5);
                    n2 = n6;
                }
            }
        }
        canvas.restoreToCount(n2);
    }

    boolean isRunning() {
        if (this.mRunning || this.mFinishTime > 0) {
            return true;
        }
        return false;
    }

    void setBounds(int n2, int n3, int n4, int n5) {
        this.mBounds.left = n2;
        this.mBounds.top = n3;
        this.mBounds.right = n4;
        this.mBounds.bottom = n5;
    }

    void setColorScheme(int n2, int n3, int n4, int n5) {
        this.mColor1 = n2;
        this.mColor2 = n3;
        this.mColor3 = n4;
        this.mColor4 = n5;
    }

    void setTriggerPercentage(float f2) {
        this.mTriggerPercentage = f2;
        this.mStartTime = 0;
        ViewCompat.postInvalidateOnAnimation(this.mParent, this.mBounds.left, this.mBounds.top, this.mBounds.right, this.mBounds.bottom);
    }

    void start() {
        if (!this.mRunning) {
            this.mTriggerPercentage = 0.0f;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mRunning = true;
            this.mParent.postInvalidate();
        }
    }

    void stop() {
        if (this.mRunning) {
            this.mTriggerPercentage = 0.0f;
            this.mFinishTime = AnimationUtils.currentAnimationTimeMillis();
            this.mRunning = false;
            this.mParent.postInvalidate();
        }
    }
}

