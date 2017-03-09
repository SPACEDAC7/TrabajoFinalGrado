/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.TypedArray
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.graphics.Canvas
 *  android.graphics.Color
 *  android.graphics.Paint
 *  android.graphics.Rect
 *  android.graphics.RectF
 *  android.graphics.Typeface
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.text.TextPaint
 *  android.text.TextUtils
 *  android.text.TextUtils$TruncateAt
 *  android.view.View
 *  android.view.animation.Interpolator
 */
package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.design.widget.AnimationUtils;
import android.support.design.widget.MathUtils;
import android.support.v4.text.TextDirectionHeuristicCompat;
import android.support.v4.text.TextDirectionHeuristicsCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.TintTypedArray;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Interpolator;

final class CollapsingTextHelper {
    private static final boolean DEBUG_DRAW = false;
    private static final Paint DEBUG_DRAW_PAINT;
    private static final boolean USE_SCALING_TEXTURE;
    private boolean mBoundsChanged;
    private final Rect mCollapsedBounds;
    private float mCollapsedDrawX;
    private float mCollapsedDrawY;
    private int mCollapsedShadowColor;
    private float mCollapsedShadowDx;
    private float mCollapsedShadowDy;
    private float mCollapsedShadowRadius;
    private ColorStateList mCollapsedTextColor;
    private int mCollapsedTextGravity = 16;
    private float mCollapsedTextSize = 15.0f;
    private Typeface mCollapsedTypeface;
    private final RectF mCurrentBounds;
    private float mCurrentDrawX;
    private float mCurrentDrawY;
    private float mCurrentTextSize;
    private Typeface mCurrentTypeface;
    private boolean mDrawTitle;
    private final Rect mExpandedBounds;
    private float mExpandedDrawX;
    private float mExpandedDrawY;
    private float mExpandedFraction;
    private int mExpandedShadowColor;
    private float mExpandedShadowDx;
    private float mExpandedShadowDy;
    private float mExpandedShadowRadius;
    private ColorStateList mExpandedTextColor;
    private int mExpandedTextGravity = 16;
    private float mExpandedTextSize = 15.0f;
    private Bitmap mExpandedTitleTexture;
    private Typeface mExpandedTypeface;
    private boolean mIsRtl;
    private Interpolator mPositionInterpolator;
    private float mScale;
    private int[] mState;
    private CharSequence mText;
    private final TextPaint mTextPaint;
    private Interpolator mTextSizeInterpolator;
    private CharSequence mTextToDraw;
    private float mTextureAscent;
    private float mTextureDescent;
    private Paint mTexturePaint;
    private boolean mUseTexture;
    private final View mView;

    /*
     * Enabled aggressive block sorting
     */
    static {
        boolean bl = Build.VERSION.SDK_INT < 18;
        USE_SCALING_TEXTURE = bl;
        DEBUG_DRAW_PAINT = null;
        if (DEBUG_DRAW_PAINT != null) {
            DEBUG_DRAW_PAINT.setAntiAlias(true);
            DEBUG_DRAW_PAINT.setColor(-65281);
        }
    }

    public CollapsingTextHelper(View view) {
        this.mView = view;
        this.mTextPaint = new TextPaint(129);
        this.mCollapsedBounds = new Rect();
        this.mExpandedBounds = new Rect();
        this.mCurrentBounds = new RectF();
    }

    private static int blendColors(int n2, int n3, float f2) {
        float f3 = 1.0f - f2;
        float f4 = Color.alpha((int)n2);
        float f5 = Color.alpha((int)n3);
        float f6 = Color.red((int)n2);
        float f7 = Color.red((int)n3);
        float f8 = Color.green((int)n2);
        float f9 = Color.green((int)n3);
        float f10 = Color.blue((int)n2);
        float f11 = Color.blue((int)n3);
        return Color.argb((int)((int)(f4 * f3 + f5 * f2)), (int)((int)(f6 * f3 + f7 * f2)), (int)((int)(f8 * f3 + f9 * f2)), (int)((int)(f10 * f3 + f11 * f2)));
    }

    /*
     * Enabled aggressive block sorting
     */
    private void calculateBaseOffsets() {
        float f2;
        float f3;
        int n2 = 1;
        float f4 = this.mCurrentTextSize;
        this.calculateUsingTextSize(this.mCollapsedTextSize);
        float f5 = this.mTextToDraw != null ? this.mTextPaint.measureText(this.mTextToDraw, 0, this.mTextToDraw.length()) : 0.0f;
        int n3 = this.mCollapsedTextGravity;
        int n4 = this.mIsRtl ? 1 : 0;
        n4 = GravityCompat.getAbsoluteGravity(n3, n4);
        switch (n4 & 112) {
            default: {
                f3 = (this.mTextPaint.descent() - this.mTextPaint.ascent()) / 2.0f;
                f2 = this.mTextPaint.descent();
                this.mCollapsedDrawY = (float)this.mCollapsedBounds.centerY() + (f3 - f2);
                break;
            }
            case 80: {
                this.mCollapsedDrawY = this.mCollapsedBounds.bottom;
                break;
            }
            case 48: {
                this.mCollapsedDrawY = (float)this.mCollapsedBounds.top - this.mTextPaint.ascent();
                break;
            }
        }
        switch (n4 & 8388615) {
            default: {
                this.mCollapsedDrawX = this.mCollapsedBounds.left;
                break;
            }
            case 1: {
                this.mCollapsedDrawX = (float)this.mCollapsedBounds.centerX() - f5 / 2.0f;
                break;
            }
            case 5: {
                this.mCollapsedDrawX = (float)this.mCollapsedBounds.right - f5;
            }
        }
        this.calculateUsingTextSize(this.mExpandedTextSize);
        f5 = this.mTextToDraw != null ? this.mTextPaint.measureText(this.mTextToDraw, 0, this.mTextToDraw.length()) : 0.0f;
        n3 = this.mExpandedTextGravity;
        n4 = this.mIsRtl ? n2 : 0;
        n4 = GravityCompat.getAbsoluteGravity(n3, n4);
        switch (n4 & 112) {
            default: {
                f3 = (this.mTextPaint.descent() - this.mTextPaint.ascent()) / 2.0f;
                f2 = this.mTextPaint.descent();
                this.mExpandedDrawY = (float)this.mExpandedBounds.centerY() + (f3 - f2);
                break;
            }
            case 80: {
                this.mExpandedDrawY = this.mExpandedBounds.bottom;
                break;
            }
            case 48: {
                this.mExpandedDrawY = (float)this.mExpandedBounds.top - this.mTextPaint.ascent();
            }
        }
        switch (n4 & 8388615) {
            default: {
                this.mExpandedDrawX = this.mExpandedBounds.left;
                break;
            }
            case 1: {
                this.mExpandedDrawX = (float)this.mExpandedBounds.centerX() - f5 / 2.0f;
                break;
            }
            case 5: {
                this.mExpandedDrawX = (float)this.mExpandedBounds.right - f5;
            }
        }
        this.clearTexture();
        this.setInterpolatedTextSize(f4);
    }

    private void calculateCurrentOffsets() {
        this.calculateOffsets(this.mExpandedFraction);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean calculateIsRtl(CharSequence charSequence) {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat;
        boolean bl = true;
        if (ViewCompat.getLayoutDirection(this.mView) != 1) {
            bl = false;
        }
        if (bl) {
            textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL;
            return textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        }
        textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        return textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void calculateOffsets(float f2) {
        this.interpolateBounds(f2);
        this.mCurrentDrawX = CollapsingTextHelper.lerp(this.mExpandedDrawX, this.mCollapsedDrawX, f2, this.mPositionInterpolator);
        this.mCurrentDrawY = CollapsingTextHelper.lerp(this.mExpandedDrawY, this.mCollapsedDrawY, f2, this.mPositionInterpolator);
        this.setInterpolatedTextSize(CollapsingTextHelper.lerp(this.mExpandedTextSize, this.mCollapsedTextSize, f2, this.mTextSizeInterpolator));
        if (this.mCollapsedTextColor != this.mExpandedTextColor) {
            this.mTextPaint.setColor(CollapsingTextHelper.blendColors(this.getCurrentExpandedTextColor(), this.getCurrentCollapsedTextColor(), f2));
        } else {
            this.mTextPaint.setColor(this.getCurrentCollapsedTextColor());
        }
        this.mTextPaint.setShadowLayer(CollapsingTextHelper.lerp(this.mExpandedShadowRadius, this.mCollapsedShadowRadius, f2, null), CollapsingTextHelper.lerp(this.mExpandedShadowDx, this.mCollapsedShadowDx, f2, null), CollapsingTextHelper.lerp(this.mExpandedShadowDy, this.mCollapsedShadowDy, f2, null), CollapsingTextHelper.blendColors(this.mExpandedShadowColor, this.mCollapsedShadowColor, f2));
        ViewCompat.postInvalidateOnAnimation(this.mView);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void calculateUsingTextSize(float f2) {
        float f3;
        boolean bl = true;
        if (this.mText == null) {
            return;
        }
        float f4 = this.mCollapsedBounds.width();
        float f5 = this.mExpandedBounds.width();
        boolean bl2 = false;
        boolean bl3 = false;
        if (CollapsingTextHelper.isClose(f2, this.mCollapsedTextSize)) {
            f3 = this.mCollapsedTextSize;
            this.mScale = 1.0f;
            if (this.mCurrentTypeface != this.mCollapsedTypeface) {
                this.mCurrentTypeface = this.mCollapsedTypeface;
                bl3 = true;
            }
            f2 = f4;
        } else {
            f3 = this.mExpandedTextSize;
            bl3 = bl2;
            if (this.mCurrentTypeface != this.mExpandedTypeface) {
                this.mCurrentTypeface = this.mExpandedTypeface;
                bl3 = true;
            }
            this.mScale = CollapsingTextHelper.isClose(f2, this.mExpandedTextSize) ? 1.0f : f2 / this.mExpandedTextSize;
            f2 = this.mCollapsedTextSize / this.mExpandedTextSize;
            f2 = f5 * f2 > f4 ? Math.min(f4 / f2, f5) : f5;
        }
        bl2 = bl3;
        if (f2 > 0.0f) {
            bl3 = this.mCurrentTextSize != f3 || this.mBoundsChanged || bl3;
            this.mCurrentTextSize = f3;
            this.mBoundsChanged = false;
            bl2 = bl3;
        }
        if (this.mTextToDraw != null) {
            if (!bl2) return;
        }
        this.mTextPaint.setTextSize(this.mCurrentTextSize);
        this.mTextPaint.setTypeface(this.mCurrentTypeface);
        Object object = this.mTextPaint;
        if (this.mScale == 1.0f) {
            bl = false;
        }
        object.setLinearText(bl);
        object = TextUtils.ellipsize((CharSequence)this.mText, (TextPaint)this.mTextPaint, (float)f2, (TextUtils.TruncateAt)TextUtils.TruncateAt.END);
        if (TextUtils.equals((CharSequence)object, (CharSequence)this.mTextToDraw)) return;
        this.mTextToDraw = object;
        this.mIsRtl = this.calculateIsRtl(this.mTextToDraw);
    }

    private void clearTexture() {
        if (this.mExpandedTitleTexture != null) {
            this.mExpandedTitleTexture.recycle();
            this.mExpandedTitleTexture = null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void ensureExpandedTexture() {
        if (this.mExpandedTitleTexture != null) return;
        if (this.mExpandedBounds.isEmpty()) return;
        if (TextUtils.isEmpty((CharSequence)this.mTextToDraw)) {
            return;
        }
        this.calculateOffsets(0.0f);
        this.mTextureAscent = this.mTextPaint.ascent();
        this.mTextureDescent = this.mTextPaint.descent();
        int n2 = Math.round(this.mTextPaint.measureText(this.mTextToDraw, 0, this.mTextToDraw.length()));
        int n3 = Math.round(this.mTextureDescent - this.mTextureAscent);
        if (n2 <= 0) return;
        if (n3 <= 0) return;
        this.mExpandedTitleTexture = Bitmap.createBitmap((int)n2, (int)n3, (Bitmap.Config)Bitmap.Config.ARGB_8888);
        new Canvas(this.mExpandedTitleTexture).drawText(this.mTextToDraw, 0, this.mTextToDraw.length(), 0.0f, (float)n3 - this.mTextPaint.descent(), (Paint)this.mTextPaint);
        if (this.mTexturePaint != null) return;
        this.mTexturePaint = new Paint(3);
    }

    @ColorInt
    private int getCurrentCollapsedTextColor() {
        if (this.mState != null) {
            return this.mCollapsedTextColor.getColorForState(this.mState, 0);
        }
        return this.mCollapsedTextColor.getDefaultColor();
    }

    @ColorInt
    private int getCurrentExpandedTextColor() {
        if (this.mState != null) {
            return this.mExpandedTextColor.getColorForState(this.mState, 0);
        }
        return this.mExpandedTextColor.getDefaultColor();
    }

    private void interpolateBounds(float f2) {
        this.mCurrentBounds.left = CollapsingTextHelper.lerp(this.mExpandedBounds.left, this.mCollapsedBounds.left, f2, this.mPositionInterpolator);
        this.mCurrentBounds.top = CollapsingTextHelper.lerp(this.mExpandedDrawY, this.mCollapsedDrawY, f2, this.mPositionInterpolator);
        this.mCurrentBounds.right = CollapsingTextHelper.lerp(this.mExpandedBounds.right, this.mCollapsedBounds.right, f2, this.mPositionInterpolator);
        this.mCurrentBounds.bottom = CollapsingTextHelper.lerp(this.mExpandedBounds.bottom, this.mCollapsedBounds.bottom, f2, this.mPositionInterpolator);
    }

    private static boolean isClose(float f2, float f3) {
        if (Math.abs(f2 - f3) < 0.001f) {
            return true;
        }
        return false;
    }

    private static float lerp(float f2, float f3, float f4, Interpolator interpolator2) {
        float f5 = f4;
        if (interpolator2 != null) {
            f5 = interpolator2.getInterpolation(f4);
        }
        return AnimationUtils.lerp(f2, f3, f5);
    }

    private Typeface readFontFamilyTypeface(int n2) {
        TypedArray typedArray;
        block4 : {
            typedArray = this.mView.getContext().obtainStyledAttributes(n2, new int[]{16843692});
            String string2 = typedArray.getString(0);
            if (string2 == null) break block4;
            string2 = Typeface.create((String)string2, (int)0);
            return string2;
        }
        typedArray.recycle();
        return null;
        finally {
            typedArray.recycle();
        }
    }

    private static boolean rectEquals(Rect rect, int n2, int n3, int n4, int n5) {
        if (rect.left == n2 && rect.top == n3 && rect.right == n4 && rect.bottom == n5) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setInterpolatedTextSize(float f2) {
        this.calculateUsingTextSize(f2);
        boolean bl = USE_SCALING_TEXTURE && this.mScale != 1.0f;
        this.mUseTexture = bl;
        if (this.mUseTexture) {
            this.ensureExpandedTexture();
        }
        ViewCompat.postInvalidateOnAnimation(this.mView);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void draw(Canvas canvas) {
        int n2 = canvas.save();
        if (this.mTextToDraw != null && this.mDrawTitle) {
            float f2;
            float f3;
            float f4 = this.mCurrentDrawX;
            float f5 = this.mCurrentDrawY;
            boolean bl = this.mUseTexture && this.mExpandedTitleTexture != null;
            if (bl) {
                f3 = this.mTextureAscent * this.mScale;
                f2 = this.mTextureDescent;
                f2 = this.mScale;
            } else {
                f3 = this.mTextPaint.ascent() * this.mScale;
                this.mTextPaint.descent();
                f2 = this.mScale;
            }
            f2 = f5;
            if (bl) {
                f2 = f5 + f3;
            }
            if (this.mScale != 1.0f) {
                canvas.scale(this.mScale, this.mScale, f4, f2);
            }
            if (bl) {
                canvas.drawBitmap(this.mExpandedTitleTexture, f4, f2, this.mTexturePaint);
            } else {
                canvas.drawText(this.mTextToDraw, 0, this.mTextToDraw.length(), f4, f2, (Paint)this.mTextPaint);
            }
        }
        canvas.restoreToCount(n2);
    }

    ColorStateList getCollapsedTextColor() {
        return this.mCollapsedTextColor;
    }

    int getCollapsedTextGravity() {
        return this.mCollapsedTextGravity;
    }

    float getCollapsedTextSize() {
        return this.mCollapsedTextSize;
    }

    Typeface getCollapsedTypeface() {
        if (this.mCollapsedTypeface != null) {
            return this.mCollapsedTypeface;
        }
        return Typeface.DEFAULT;
    }

    ColorStateList getExpandedTextColor() {
        return this.mExpandedTextColor;
    }

    int getExpandedTextGravity() {
        return this.mExpandedTextGravity;
    }

    float getExpandedTextSize() {
        return this.mExpandedTextSize;
    }

    Typeface getExpandedTypeface() {
        if (this.mExpandedTypeface != null) {
            return this.mExpandedTypeface;
        }
        return Typeface.DEFAULT;
    }

    float getExpansionFraction() {
        return this.mExpandedFraction;
    }

    CharSequence getText() {
        return this.mText;
    }

    final boolean isStateful() {
        if (this.mCollapsedTextColor != null && this.mCollapsedTextColor.isStateful() || this.mExpandedTextColor != null && this.mExpandedTextColor.isStateful()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    void onBoundsChanged() {
        boolean bl = this.mCollapsedBounds.width() > 0 && this.mCollapsedBounds.height() > 0 && this.mExpandedBounds.width() > 0 && this.mExpandedBounds.height() > 0;
        this.mDrawTitle = bl;
    }

    public void recalculate() {
        if (this.mView.getHeight() > 0 && this.mView.getWidth() > 0) {
            this.calculateBaseOffsets();
            this.calculateCurrentOffsets();
        }
    }

    void setCollapsedBounds(int n2, int n3, int n4, int n5) {
        if (!CollapsingTextHelper.rectEquals(this.mCollapsedBounds, n2, n3, n4, n5)) {
            this.mCollapsedBounds.set(n2, n3, n4, n5);
            this.mBoundsChanged = true;
            this.onBoundsChanged();
        }
    }

    void setCollapsedTextAppearance(int n2) {
        TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), n2, R.styleable.TextAppearance);
        if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_textColor)) {
            this.mCollapsedTextColor = tintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColor);
        }
        if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_textSize)) {
            this.mCollapsedTextSize = tintTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, (int)this.mCollapsedTextSize);
        }
        this.mCollapsedShadowColor = tintTypedArray.getInt(R.styleable.TextAppearance_android_shadowColor, 0);
        this.mCollapsedShadowDx = tintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.mCollapsedShadowDy = tintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.mCollapsedShadowRadius = tintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        tintTypedArray.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.mCollapsedTypeface = this.readFontFamilyTypeface(n2);
        }
        this.recalculate();
    }

    void setCollapsedTextColor(ColorStateList colorStateList) {
        if (this.mCollapsedTextColor != colorStateList) {
            this.mCollapsedTextColor = colorStateList;
            this.recalculate();
        }
    }

    void setCollapsedTextGravity(int n2) {
        if (this.mCollapsedTextGravity != n2) {
            this.mCollapsedTextGravity = n2;
            this.recalculate();
        }
    }

    void setCollapsedTextSize(float f2) {
        if (this.mCollapsedTextSize != f2) {
            this.mCollapsedTextSize = f2;
            this.recalculate();
        }
    }

    void setCollapsedTypeface(Typeface typeface) {
        if (this.mCollapsedTypeface != typeface) {
            this.mCollapsedTypeface = typeface;
            this.recalculate();
        }
    }

    void setExpandedBounds(int n2, int n3, int n4, int n5) {
        if (!CollapsingTextHelper.rectEquals(this.mExpandedBounds, n2, n3, n4, n5)) {
            this.mExpandedBounds.set(n2, n3, n4, n5);
            this.mBoundsChanged = true;
            this.onBoundsChanged();
        }
    }

    void setExpandedTextAppearance(int n2) {
        TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), n2, R.styleable.TextAppearance);
        if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_textColor)) {
            this.mExpandedTextColor = tintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColor);
        }
        if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_textSize)) {
            this.mExpandedTextSize = tintTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, (int)this.mExpandedTextSize);
        }
        this.mExpandedShadowColor = tintTypedArray.getInt(R.styleable.TextAppearance_android_shadowColor, 0);
        this.mExpandedShadowDx = tintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.mExpandedShadowDy = tintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.mExpandedShadowRadius = tintTypedArray.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        tintTypedArray.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.mExpandedTypeface = this.readFontFamilyTypeface(n2);
        }
        this.recalculate();
    }

    void setExpandedTextColor(ColorStateList colorStateList) {
        if (this.mExpandedTextColor != colorStateList) {
            this.mExpandedTextColor = colorStateList;
            this.recalculate();
        }
    }

    void setExpandedTextGravity(int n2) {
        if (this.mExpandedTextGravity != n2) {
            this.mExpandedTextGravity = n2;
            this.recalculate();
        }
    }

    void setExpandedTextSize(float f2) {
        if (this.mExpandedTextSize != f2) {
            this.mExpandedTextSize = f2;
            this.recalculate();
        }
    }

    void setExpandedTypeface(Typeface typeface) {
        if (this.mExpandedTypeface != typeface) {
            this.mExpandedTypeface = typeface;
            this.recalculate();
        }
    }

    void setExpansionFraction(float f2) {
        if ((f2 = MathUtils.constrain(f2, 0.0f, 1.0f)) != this.mExpandedFraction) {
            this.mExpandedFraction = f2;
            this.calculateCurrentOffsets();
        }
    }

    void setPositionInterpolator(Interpolator interpolator2) {
        this.mPositionInterpolator = interpolator2;
        this.recalculate();
    }

    final boolean setState(int[] arrn) {
        this.mState = arrn;
        if (this.isStateful()) {
            this.recalculate();
            return true;
        }
        return false;
    }

    void setText(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.mText)) {
            this.mText = charSequence;
            this.mTextToDraw = null;
            this.clearTexture();
            this.recalculate();
        }
    }

    void setTextSizeInterpolator(Interpolator interpolator2) {
        this.mTextSizeInterpolator = interpolator2;
        this.recalculate();
    }

    void setTypefaces(Typeface typeface) {
        this.mExpandedTypeface = typeface;
        this.mCollapsedTypeface = typeface;
        this.recalculate();
    }
}

