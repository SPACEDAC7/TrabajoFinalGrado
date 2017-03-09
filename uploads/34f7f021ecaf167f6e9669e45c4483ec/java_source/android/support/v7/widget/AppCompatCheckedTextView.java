/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.drawable.Drawable
 *  android.util.AttributeSet
 *  android.widget.CheckedTextView
 *  android.widget.TextView
 */
package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.AppCompatTextHelper;
import android.support.v7.widget.TintContextWrapper;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import android.widget.TextView;

public class AppCompatCheckedTextView
extends CheckedTextView {
    private static final int[] TINT_ATTRS = new int[]{16843016};
    private AppCompatTextHelper mTextHelper;

    public AppCompatCheckedTextView(Context context) {
        this(context, null);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public AppCompatCheckedTextView(Context object, AttributeSet attributeSet, int n2) {
        super(TintContextWrapper.wrap((Context)object), attributeSet, n2);
        this.mTextHelper = AppCompatTextHelper.create((TextView)this);
        this.mTextHelper.loadFromAttributes(attributeSet, n2);
        this.mTextHelper.applyCompoundDrawablesTints();
        object = TintTypedArray.obtainStyledAttributes(this.getContext(), attributeSet, TINT_ATTRS, n2, 0);
        this.setCheckMarkDrawable(object.getDrawable(0));
        object.recycle();
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mTextHelper != null) {
            this.mTextHelper.applyCompoundDrawablesTints();
        }
    }

    public void setCheckMarkDrawable(@DrawableRes int n2) {
        this.setCheckMarkDrawable(AppCompatResources.getDrawable(this.getContext(), n2));
    }

    public void setTextAppearance(Context context, int n2) {
        super.setTextAppearance(context, n2);
        if (this.mTextHelper != null) {
            this.mTextHelper.onSetTextAppearance(context, n2);
        }
    }
}

