/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.graphics.Color
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.view.View
 *  android.widget.FrameLayout
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.v7.cardview.R;
import android.support.v7.widget.CardViewApi21;
import android.support.v7.widget.CardViewDelegate;
import android.support.v7.widget.CardViewGingerbread;
import android.support.v7.widget.CardViewImpl;
import android.support.v7.widget.CardViewJellybeanMr1;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

public class CardView
extends FrameLayout {
    private static final int[] COLOR_BACKGROUND_ATTR = new int[]{16842801};
    private static final CardViewImpl IMPL = Build.VERSION.SDK_INT >= 21 ? new CardViewApi21() : (Build.VERSION.SDK_INT >= 17 ? new CardViewJellybeanMr1() : new CardViewGingerbread());
    private final CardViewDelegate mCardViewDelegate;
    private boolean mCompatPadding;
    final Rect mContentPadding = new Rect();
    private boolean mPreventCornerOverlap;
    final Rect mShadowBounds = new Rect();
    int mUserSetMinHeight;
    int mUserSetMinWidth;

    /*
     * Enabled aggressive block sorting
     */
    static {
        IMPL.initStatic();
    }

    public CardView(Context context) {
        super(context);
        this.mCardViewDelegate = new CardViewDelegate(){
            private Drawable mCardBackground;

            @Override
            public Drawable getCardBackground() {
                return this.mCardBackground;
            }

            @Override
            public View getCardView() {
                return CardView.this;
            }

            @Override
            public boolean getPreventCornerOverlap() {
                return CardView.this.getPreventCornerOverlap();
            }

            @Override
            public boolean getUseCompatPadding() {
                return CardView.this.getUseCompatPadding();
            }

            @Override
            public void setCardBackground(Drawable drawable2) {
                this.mCardBackground = drawable2;
                CardView.this.setBackgroundDrawable(drawable2);
            }

            @Override
            public void setMinWidthHeightInternal(int n2, int n3) {
                if (n2 > CardView.this.mUserSetMinWidth) {
                    CardView.this.setMinimumWidth(n2);
                }
                if (n3 > CardView.this.mUserSetMinHeight) {
                    CardView.this.setMinimumHeight(n3);
                }
            }

            @Override
            public void setShadowPadding(int n2, int n3, int n4, int n5) {
                CardView.this.mShadowBounds.set(n2, n3, n4, n5);
                CardView.this.setPadding(CardView.this.mContentPadding.left + n2, CardView.this.mContentPadding.top + n3, CardView.this.mContentPadding.right + n4, CardView.this.mContentPadding.bottom + n5);
            }
        };
        this.initialize(context, null, 0);
    }

    public CardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCardViewDelegate = new ;
        this.initialize(context, attributeSet, 0);
    }

    public CardView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.mCardViewDelegate = new ;
        this.initialize(context, attributeSet, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void initialize(Context context, AttributeSet colorStateList, int n2) {
        TypedArray typedArray = context.obtainStyledAttributes((AttributeSet)colorStateList, R.styleable.CardView, n2, R.style.CardView);
        if (typedArray.hasValue(R.styleable.CardView_cardBackgroundColor)) {
            colorStateList = typedArray.getColorStateList(R.styleable.CardView_cardBackgroundColor);
        } else {
            colorStateList = this.getContext().obtainStyledAttributes(COLOR_BACKGROUND_ATTR);
            n2 = colorStateList.getColor(0, 0);
            colorStateList.recycle();
            colorStateList = new float[3];
            Color.colorToHSV((int)n2, (float[])colorStateList);
            n2 = colorStateList[2] > 0.5f ? this.getResources().getColor(R.color.cardview_light_background) : this.getResources().getColor(R.color.cardview_dark_background);
            colorStateList = ColorStateList.valueOf((int)n2);
        }
        float f2 = typedArray.getDimension(R.styleable.CardView_cardCornerRadius, 0.0f);
        float f3 = typedArray.getDimension(R.styleable.CardView_cardElevation, 0.0f);
        float f4 = typedArray.getDimension(R.styleable.CardView_cardMaxElevation, 0.0f);
        this.mCompatPadding = typedArray.getBoolean(R.styleable.CardView_cardUseCompatPadding, false);
        this.mPreventCornerOverlap = typedArray.getBoolean(R.styleable.CardView_cardPreventCornerOverlap, true);
        n2 = typedArray.getDimensionPixelSize(R.styleable.CardView_contentPadding, 0);
        this.mContentPadding.left = typedArray.getDimensionPixelSize(R.styleable.CardView_contentPaddingLeft, n2);
        this.mContentPadding.top = typedArray.getDimensionPixelSize(R.styleable.CardView_contentPaddingTop, n2);
        this.mContentPadding.right = typedArray.getDimensionPixelSize(R.styleable.CardView_contentPaddingRight, n2);
        this.mContentPadding.bottom = typedArray.getDimensionPixelSize(R.styleable.CardView_contentPaddingBottom, n2);
        float f5 = f4;
        if (f3 > f4) {
            f5 = f3;
        }
        this.mUserSetMinWidth = typedArray.getDimensionPixelSize(R.styleable.CardView_android_minWidth, 0);
        this.mUserSetMinHeight = typedArray.getDimensionPixelSize(R.styleable.CardView_android_minHeight, 0);
        typedArray.recycle();
        IMPL.initialize(this.mCardViewDelegate, context, colorStateList, f2, f3, f5);
    }

    public ColorStateList getCardBackgroundColor() {
        return IMPL.getBackgroundColor(this.mCardViewDelegate);
    }

    public float getCardElevation() {
        return IMPL.getElevation(this.mCardViewDelegate);
    }

    public int getContentPaddingBottom() {
        return this.mContentPadding.bottom;
    }

    public int getContentPaddingLeft() {
        return this.mContentPadding.left;
    }

    public int getContentPaddingRight() {
        return this.mContentPadding.right;
    }

    public int getContentPaddingTop() {
        return this.mContentPadding.top;
    }

    public float getMaxCardElevation() {
        return IMPL.getMaxElevation(this.mCardViewDelegate);
    }

    public boolean getPreventCornerOverlap() {
        return this.mPreventCornerOverlap;
    }

    public float getRadius() {
        return IMPL.getRadius(this.mCardViewDelegate);
    }

    public boolean getUseCompatPadding() {
        return this.mCompatPadding;
    }

    /*
     * Exception decompiling
     */
    protected void onMeasure(int var1_1, int var2_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Extractable last case doesn't follow previous
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:486)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:65)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:425)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    public void setCardBackgroundColor(@ColorInt int n2) {
        IMPL.setBackgroundColor(this.mCardViewDelegate, ColorStateList.valueOf((int)n2));
    }

    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        IMPL.setBackgroundColor(this.mCardViewDelegate, colorStateList);
    }

    public void setCardElevation(float f2) {
        IMPL.setElevation(this.mCardViewDelegate, f2);
    }

    public void setContentPadding(int n2, int n3, int n4, int n5) {
        this.mContentPadding.set(n2, n3, n4, n5);
        IMPL.updatePadding(this.mCardViewDelegate);
    }

    public void setMaxCardElevation(float f2) {
        IMPL.setMaxElevation(this.mCardViewDelegate, f2);
    }

    public void setMinimumHeight(int n2) {
        this.mUserSetMinHeight = n2;
        super.setMinimumHeight(n2);
    }

    public void setMinimumWidth(int n2) {
        this.mUserSetMinWidth = n2;
        super.setMinimumWidth(n2);
    }

    public void setPadding(int n2, int n3, int n4, int n5) {
    }

    public void setPaddingRelative(int n2, int n3, int n4, int n5) {
    }

    public void setPreventCornerOverlap(boolean bl) {
        if (bl != this.mPreventCornerOverlap) {
            this.mPreventCornerOverlap = bl;
            IMPL.onPreventCornerOverlapChanged(this.mCardViewDelegate);
        }
    }

    public void setRadius(float f2) {
        IMPL.setRadius(this.mCardViewDelegate, f2);
    }

    public void setUseCompatPadding(boolean bl) {
        if (this.mCompatPadding != bl) {
            this.mCompatPadding = bl;
            IMPL.onCompatPaddingChanged(this.mCardViewDelegate);
        }
    }

}

