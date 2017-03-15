/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
 *  android.graphics.Paint
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.Rect
 *  android.graphics.Typeface
 *  android.graphics.drawable.ColorDrawable
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$ConstantState
 *  android.graphics.drawable.DrawableContainer
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.text.Editable
 *  android.text.TextUtils
 *  android.text.TextWatcher
 *  android.text.method.PasswordTransformationMethod
 *  android.text.method.TransformationMethod
 *  android.util.AttributeSet
 *  android.util.Log
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.accessibility.AccessibilityEvent
 *  android.view.animation.AccelerateInterpolator
 *  android.view.animation.Interpolator
 *  android.widget.EditText
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.LinearLayout
 *  android.widget.LinearLayout$LayoutParams
 *  android.widget.TextView
 */
package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.design.widget.AnimationUtils;
import android.support.design.widget.CheckableImageButton;
import android.support.design.widget.CollapsingTextHelper;
import android.support.design.widget.DrawableUtils;
import android.support.design.widget.TextInputEditText;
import android.support.design.widget.ThemeUtils;
import android.support.design.widget.ValueAnimatorCompat;
import android.support.design.widget.ViewGroupUtils;
import android.support.design.widget.ViewUtils;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.Space;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.TintTypedArray;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.List;

public class TextInputLayout
extends LinearLayout {
    private static final int ANIMATION_DURATION = 200;
    private static final int INVALID_MAX_LENGTH = -1;
    private static final String LOG_TAG = "TextInputLayout";
    private ValueAnimatorCompat mAnimator;
    final CollapsingTextHelper mCollapsingTextHelper;
    boolean mCounterEnabled;
    private int mCounterMaxLength;
    private int mCounterOverflowTextAppearance;
    private boolean mCounterOverflowed;
    private int mCounterTextAppearance;
    private TextView mCounterView;
    private ColorStateList mDefaultTextColor;
    EditText mEditText;
    private CharSequence mError;
    private boolean mErrorEnabled;
    private boolean mErrorShown;
    private int mErrorTextAppearance;
    TextView mErrorView;
    private ColorStateList mFocusedTextColor;
    private boolean mHasPasswordToggleTintList;
    private boolean mHasPasswordToggleTintMode;
    private boolean mHasReconstructedEditTextBackground;
    private CharSequence mHint;
    private boolean mHintAnimationEnabled;
    private boolean mHintEnabled;
    private boolean mHintExpanded;
    private boolean mInDrawableStateChanged;
    private LinearLayout mIndicatorArea;
    private int mIndicatorsAdded;
    private final FrameLayout mInputFrame;
    private Drawable mOriginalEditTextEndDrawable;
    private CharSequence mPasswordToggleContentDesc;
    private Drawable mPasswordToggleDrawable;
    private Drawable mPasswordToggleDummyDrawable;
    private boolean mPasswordToggleEnabled;
    private ColorStateList mPasswordToggleTintList;
    private PorterDuff.Mode mPasswordToggleTintMode;
    private CheckableImageButton mPasswordToggleView;
    private boolean mPasswordToggledVisible;
    private Paint mTmpPaint;
    private final Rect mTmpRect = new Rect();

    public TextInputLayout(Context context) {
        this(context, null);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public TextInputLayout(Context object, AttributeSet attributeSet, int n2) {
        super((Context)object, attributeSet);
        this.mCollapsingTextHelper = new CollapsingTextHelper((View)this);
        ThemeUtils.checkAppCompatTheme((Context)object);
        this.setOrientation(1);
        this.setWillNotDraw(false);
        this.setAddStatesFromChildren(true);
        this.mInputFrame = new FrameLayout((Context)object);
        this.mInputFrame.setAddStatesFromChildren(true);
        this.addView((View)this.mInputFrame);
        this.mCollapsingTextHelper.setTextSizeInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        this.mCollapsingTextHelper.setPositionInterpolator((Interpolator)new AccelerateInterpolator());
        this.mCollapsingTextHelper.setCollapsedTextGravity(8388659);
        boolean bl = this.mCollapsingTextHelper.getExpansionFraction() == 1.0f;
        this.mHintExpanded = bl;
        object = TintTypedArray.obtainStyledAttributes((Context)object, attributeSet, R.styleable.TextInputLayout, n2, R.style.Widget_Design_TextInputLayout);
        this.mHintEnabled = object.getBoolean(R.styleable.TextInputLayout_hintEnabled, true);
        this.setHint(object.getText(R.styleable.TextInputLayout_android_hint));
        this.mHintAnimationEnabled = object.getBoolean(R.styleable.TextInputLayout_hintAnimationEnabled, true);
        if (object.hasValue(R.styleable.TextInputLayout_android_textColorHint)) {
            this.mFocusedTextColor = attributeSet = object.getColorStateList(R.styleable.TextInputLayout_android_textColorHint);
            this.mDefaultTextColor = attributeSet;
        }
        if (object.getResourceId(R.styleable.TextInputLayout_hintTextAppearance, -1) != -1) {
            this.setHintTextAppearance(object.getResourceId(R.styleable.TextInputLayout_hintTextAppearance, 0));
        }
        this.mErrorTextAppearance = object.getResourceId(R.styleable.TextInputLayout_errorTextAppearance, 0);
        bl = object.getBoolean(R.styleable.TextInputLayout_errorEnabled, false);
        boolean bl2 = object.getBoolean(R.styleable.TextInputLayout_counterEnabled, false);
        this.setCounterMaxLength(object.getInt(R.styleable.TextInputLayout_counterMaxLength, -1));
        this.mCounterTextAppearance = object.getResourceId(R.styleable.TextInputLayout_counterTextAppearance, 0);
        this.mCounterOverflowTextAppearance = object.getResourceId(R.styleable.TextInputLayout_counterOverflowTextAppearance, 0);
        this.mPasswordToggleEnabled = object.getBoolean(R.styleable.TextInputLayout_passwordToggleEnabled, false);
        this.mPasswordToggleDrawable = object.getDrawable(R.styleable.TextInputLayout_passwordToggleDrawable);
        this.mPasswordToggleContentDesc = object.getText(R.styleable.TextInputLayout_passwordToggleContentDescription);
        if (object.hasValue(R.styleable.TextInputLayout_passwordToggleTint)) {
            this.mHasPasswordToggleTintList = true;
            this.mPasswordToggleTintList = object.getColorStateList(R.styleable.TextInputLayout_passwordToggleTint);
        }
        if (object.hasValue(R.styleable.TextInputLayout_passwordToggleTintMode)) {
            this.mHasPasswordToggleTintMode = true;
            this.mPasswordToggleTintMode = ViewUtils.parseTintMode(object.getInt(R.styleable.TextInputLayout_passwordToggleTintMode, -1), null);
        }
        object.recycle();
        this.setErrorEnabled(bl);
        this.setCounterEnabled(bl2);
        this.applyPasswordToggleTint();
        if (ViewCompat.getImportantForAccessibility((View)this) == 0) {
            ViewCompat.setImportantForAccessibility((View)this, 1);
        }
        ViewCompat.setAccessibilityDelegate((View)this, new TextInputAccessibilityDelegate());
    }

    private void addIndicator(TextView textView, int n2) {
        if (this.mIndicatorArea == null) {
            this.mIndicatorArea = new LinearLayout(this.getContext());
            this.mIndicatorArea.setOrientation(0);
            this.addView((View)this.mIndicatorArea, -1, -2);
            Space space = new Space(this.getContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, 0, 1.0f);
            this.mIndicatorArea.addView((View)space, (ViewGroup.LayoutParams)layoutParams);
            if (this.mEditText != null) {
                this.adjustIndicatorPadding();
            }
        }
        this.mIndicatorArea.setVisibility(0);
        this.mIndicatorArea.addView((View)textView, n2);
        ++this.mIndicatorsAdded;
    }

    private void adjustIndicatorPadding() {
        ViewCompat.setPaddingRelative((View)this.mIndicatorArea, ViewCompat.getPaddingStart((View)this.mEditText), 0, ViewCompat.getPaddingEnd((View)this.mEditText), this.mEditText.getPaddingBottom());
    }

    private void animateToExpansionFraction(float f2) {
        if (this.mCollapsingTextHelper.getExpansionFraction() == f2) {
            return;
        }
        if (this.mAnimator == null) {
            this.mAnimator = ViewUtils.createAnimator();
            this.mAnimator.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
            this.mAnimator.setDuration(200);
            this.mAnimator.addUpdateListener(new ValueAnimatorCompat.AnimatorUpdateListener(){

                @Override
                public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                    TextInputLayout.this.mCollapsingTextHelper.setExpansionFraction(valueAnimatorCompat.getAnimatedFloatValue());
                }
            });
        }
        this.mAnimator.setFloatValues(this.mCollapsingTextHelper.getExpansionFraction(), f2);
        this.mAnimator.start();
    }

    private void applyPasswordToggleTint() {
        if (this.mPasswordToggleDrawable != null && (this.mHasPasswordToggleTintList || this.mHasPasswordToggleTintMode)) {
            this.mPasswordToggleDrawable = DrawableCompat.wrap(this.mPasswordToggleDrawable).mutate();
            if (this.mHasPasswordToggleTintList) {
                DrawableCompat.setTintList(this.mPasswordToggleDrawable, this.mPasswordToggleTintList);
            }
            if (this.mHasPasswordToggleTintMode) {
                DrawableCompat.setTintMode(this.mPasswordToggleDrawable, this.mPasswordToggleTintMode);
            }
            if (this.mPasswordToggleView != null && this.mPasswordToggleView.getDrawable() != this.mPasswordToggleDrawable) {
                this.mPasswordToggleView.setImageDrawable(this.mPasswordToggleDrawable);
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static boolean arrayContains(int[] arrn, int n2) {
        boolean bl = false;
        int n3 = arrn.length;
        int n4 = 0;
        do {
            boolean bl2 = bl;
            if (n4 >= n3) return bl2;
            if (arrn[n4] == n2) {
                return true;
            }
            ++n4;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void collapseHint(boolean bl) {
        if (this.mAnimator != null && this.mAnimator.isRunning()) {
            this.mAnimator.cancel();
        }
        if (bl && this.mHintAnimationEnabled) {
            this.animateToExpansionFraction(1.0f);
        } else {
            this.mCollapsingTextHelper.setExpansionFraction(1.0f);
        }
        this.mHintExpanded = false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void ensureBackgroundDrawableStateWorkaround() {
        int n2 = Build.VERSION.SDK_INT;
        if (n2 != 21 && n2 != 22) {
            return;
        }
        Drawable drawable2 = this.mEditText.getBackground();
        if (drawable2 == null) return;
        if (this.mHasReconstructedEditTextBackground) return;
        Drawable drawable3 = drawable2.getConstantState().newDrawable();
        if (drawable2 instanceof DrawableContainer) {
            this.mHasReconstructedEditTextBackground = DrawableUtils.setContainerConstantState((DrawableContainer)drawable2, drawable3.getConstantState());
        }
        if (this.mHasReconstructedEditTextBackground) return;
        ViewCompat.setBackground((View)this.mEditText, drawable3);
        this.mHasReconstructedEditTextBackground = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void expandHint(boolean bl) {
        if (this.mAnimator != null && this.mAnimator.isRunning()) {
            this.mAnimator.cancel();
        }
        if (bl && this.mHintAnimationEnabled) {
            this.animateToExpansionFraction(0.0f);
        } else {
            this.mCollapsingTextHelper.setExpansionFraction(0.0f);
        }
        this.mHintExpanded = true;
    }

    private boolean hasPasswordTransformation() {
        if (this.mEditText != null && this.mEditText.getTransformationMethod() instanceof PasswordTransformationMethod) {
            return true;
        }
        return false;
    }

    private static void recursiveSetEnabled(ViewGroup viewGroup, boolean bl) {
        int n2 = viewGroup.getChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            View view = viewGroup.getChildAt(i2);
            view.setEnabled(bl);
            if (!(view instanceof ViewGroup)) continue;
            TextInputLayout.recursiveSetEnabled((ViewGroup)view, bl);
        }
    }

    private void removeIndicator(TextView textView) {
        if (this.mIndicatorArea != null) {
            int n2;
            this.mIndicatorArea.removeView((View)textView);
            this.mIndicatorsAdded = n2 = this.mIndicatorsAdded - 1;
            if (n2 == 0) {
                this.mIndicatorArea.setVisibility(8);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.mEditText != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (!(editText instanceof TextInputEditText)) {
            Log.i((String)"TextInputLayout", (String)"EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.mEditText = editText;
        if (!this.hasPasswordTransformation()) {
            this.mCollapsingTextHelper.setTypefaces(this.mEditText.getTypeface());
        }
        this.mCollapsingTextHelper.setExpandedTextSize(this.mEditText.getTextSize());
        int n2 = this.mEditText.getGravity();
        this.mCollapsingTextHelper.setCollapsedTextGravity(8388615 & n2 | 48);
        this.mCollapsingTextHelper.setExpandedTextGravity(n2);
        this.mEditText.addTextChangedListener(new TextWatcher(){

            public void afterTextChanged(Editable editable) {
                TextInputLayout.this.updateLabelState(true);
                if (TextInputLayout.this.mCounterEnabled) {
                    TextInputLayout.this.updateCounter(editable.length());
                }
            }

            public void beforeTextChanged(CharSequence charSequence, int n2, int n3, int n4) {
            }

            public void onTextChanged(CharSequence charSequence, int n2, int n3, int n4) {
            }
        });
        if (this.mDefaultTextColor == null) {
            this.mDefaultTextColor = this.mEditText.getHintTextColors();
        }
        if (this.mHintEnabled && TextUtils.isEmpty((CharSequence)this.mHint)) {
            this.setHint(this.mEditText.getHint());
            this.mEditText.setHint(null);
        }
        if (this.mCounterView != null) {
            this.updateCounter(this.mEditText.getText().length());
        }
        if (this.mIndicatorArea != null) {
            this.adjustIndicatorPadding();
        }
        this.updatePasswordToggleView();
        this.updateLabelState(false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setError(final @Nullable CharSequence charSequence, boolean bl) {
        boolean bl2 = true;
        this.mError = charSequence;
        if (!this.mErrorEnabled) {
            if (TextUtils.isEmpty((CharSequence)charSequence)) {
                return;
            }
            this.setErrorEnabled(true);
        }
        if (TextUtils.isEmpty((CharSequence)charSequence)) {
            bl2 = false;
        }
        this.mErrorShown = bl2;
        ViewCompat.animate((View)this.mErrorView).cancel();
        if (this.mErrorShown) {
            this.mErrorView.setText(charSequence);
            this.mErrorView.setVisibility(0);
            if (bl) {
                if (ViewCompat.getAlpha((View)this.mErrorView) == 1.0f) {
                    ViewCompat.setAlpha((View)this.mErrorView, 0.0f);
                }
                ViewCompat.animate((View)this.mErrorView).alpha(1.0f).setDuration(200).setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR).setListener(new ViewPropertyAnimatorListenerAdapter(){

                    @Override
                    public void onAnimationStart(View view) {
                        view.setVisibility(0);
                    }
                }).start();
            } else {
                ViewCompat.setAlpha((View)this.mErrorView, 1.0f);
            }
        } else if (this.mErrorView.getVisibility() == 0) {
            if (bl) {
                ViewCompat.animate((View)this.mErrorView).alpha(0.0f).setDuration(200).setInterpolator(AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR).setListener(new ViewPropertyAnimatorListenerAdapter(){

                    @Override
                    public void onAnimationEnd(View view) {
                        TextInputLayout.this.mErrorView.setText(charSequence);
                        view.setVisibility(4);
                    }
                }).start();
            } else {
                this.mErrorView.setText(charSequence);
                this.mErrorView.setVisibility(4);
            }
        }
        this.updateEditTextBackground();
        this.updateLabelState(bl);
    }

    private void setHintInternal(CharSequence charSequence) {
        this.mHint = charSequence;
        this.mCollapsingTextHelper.setText(charSequence);
    }

    private boolean shouldShowPasswordIcon() {
        if (this.mPasswordToggleEnabled && (this.hasPasswordTransformation() || this.mPasswordToggledVisible)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateEditTextBackground() {
        Drawable drawable2;
        if (this.mEditText == null || (drawable2 = this.mEditText.getBackground()) == null) {
            return;
        }
        this.ensureBackgroundDrawableStateWorkaround();
        Drawable drawable3 = drawable2;
        if (android.support.v7.widget.DrawableUtils.canSafelyMutateDrawable(drawable2)) {
            drawable3 = drawable2.mutate();
        }
        if (this.mErrorShown && this.mErrorView != null) {
            drawable3.setColorFilter((ColorFilter)AppCompatDrawableManager.getPorterDuffColorFilter(this.mErrorView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            return;
        }
        if (this.mCounterOverflowed && this.mCounterView != null) {
            drawable3.setColorFilter((ColorFilter)AppCompatDrawableManager.getPorterDuffColorFilter(this.mCounterView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            return;
        }
        DrawableCompat.clearColorFilter(drawable3);
        this.mEditText.refreshDrawableState();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateInputLayoutMargins() {
        int n2;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams)this.mInputFrame.getLayoutParams();
        if (this.mHintEnabled) {
            if (this.mTmpPaint == null) {
                this.mTmpPaint = new Paint();
            }
            this.mTmpPaint.setTypeface(this.mCollapsingTextHelper.getCollapsedTypeface());
            this.mTmpPaint.setTextSize(this.mCollapsingTextHelper.getCollapsedTextSize());
            n2 = (int)(- this.mTmpPaint.ascent());
        } else {
            n2 = 0;
        }
        if (n2 == layoutParams.topMargin) return;
        layoutParams.topMargin = n2;
        this.mInputFrame.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void updatePasswordToggleView() {
        if (this.mEditText == null) {
            return;
        }
        if (this.shouldShowPasswordIcon()) {
            if (this.mPasswordToggleView == null) {
                this.mPasswordToggleView = (CheckableImageButton)LayoutInflater.from((Context)this.getContext()).inflate(R.layout.design_text_input_password_icon, (ViewGroup)this.mInputFrame, false);
                this.mPasswordToggleView.setImageDrawable(this.mPasswordToggleDrawable);
                this.mPasswordToggleView.setContentDescription(this.mPasswordToggleContentDesc);
                this.mInputFrame.addView((View)this.mPasswordToggleView);
                this.mPasswordToggleView.setOnClickListener(new View.OnClickListener(){

                    public void onClick(View view) {
                        TextInputLayout.this.passwordVisibilityToggleRequested();
                    }
                });
            }
            this.mPasswordToggleView.setVisibility(0);
            if (this.mPasswordToggleDummyDrawable == null) {
                this.mPasswordToggleDummyDrawable = new ColorDrawable();
            }
            this.mPasswordToggleDummyDrawable.setBounds(0, 0, this.mPasswordToggleView.getMeasuredWidth(), 1);
            Drawable[] arrdrawable = TextViewCompat.getCompoundDrawablesRelative((TextView)this.mEditText);
            if (arrdrawable[2] != this.mPasswordToggleDummyDrawable) {
                this.mOriginalEditTextEndDrawable = arrdrawable[2];
            }
            TextViewCompat.setCompoundDrawablesRelative((TextView)this.mEditText, arrdrawable[0], arrdrawable[1], this.mPasswordToggleDummyDrawable, arrdrawable[3]);
            this.mPasswordToggleView.setPadding(this.mEditText.getPaddingLeft(), this.mEditText.getPaddingTop(), this.mEditText.getPaddingRight(), this.mEditText.getPaddingBottom());
            return;
        }
        if (this.mPasswordToggleView != null && this.mPasswordToggleView.getVisibility() == 0) {
            this.mPasswordToggleView.setVisibility(8);
        }
        if (this.mPasswordToggleDummyDrawable == null) return;
        Drawable[] arrdrawable = TextViewCompat.getCompoundDrawablesRelative((TextView)this.mEditText);
        if (arrdrawable[2] != this.mPasswordToggleDummyDrawable) return;
        TextViewCompat.setCompoundDrawablesRelative((TextView)this.mEditText, arrdrawable[0], arrdrawable[1], this.mOriginalEditTextEndDrawable, arrdrawable[3]);
        this.mPasswordToggleDummyDrawable = null;
    }

    public void addView(View view, int n2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            this.mInputFrame.addView(view, (ViewGroup.LayoutParams)new FrameLayout.LayoutParams(layoutParams));
            this.mInputFrame.setLayoutParams(layoutParams);
            this.updateInputLayoutMargins();
            this.setEditText((EditText)view);
            return;
        }
        super.addView(view, n2, layoutParams);
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mHintEnabled) {
            this.mCollapsingTextHelper.draw(canvas);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void drawableStateChanged() {
        boolean bl = true;
        if (this.mInDrawableStateChanged) {
            return;
        }
        this.mInDrawableStateChanged = true;
        super.drawableStateChanged();
        int[] arrn = this.getDrawableState();
        boolean bl2 = false;
        if (!ViewCompat.isLaidOut((View)this) || !this.isEnabled()) {
            bl = false;
        }
        this.updateLabelState(bl);
        this.updateEditTextBackground();
        if (this.mCollapsingTextHelper != null) {
            bl2 = false | this.mCollapsingTextHelper.setState(arrn);
        }
        if (bl2) {
            this.invalidate();
        }
        this.mInDrawableStateChanged = false;
    }

    public int getCounterMaxLength() {
        return this.mCounterMaxLength;
    }

    @Nullable
    public EditText getEditText() {
        return this.mEditText;
    }

    @Nullable
    public CharSequence getError() {
        if (this.mErrorEnabled) {
            return this.mError;
        }
        return null;
    }

    @Nullable
    public CharSequence getHint() {
        if (this.mHintEnabled) {
            return this.mHint;
        }
        return null;
    }

    @Nullable
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.mPasswordToggleContentDesc;
    }

    @Nullable
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.mPasswordToggleDrawable;
    }

    @NonNull
    public Typeface getTypeface() {
        return this.mCollapsingTextHelper.getCollapsedTypeface();
    }

    public boolean isCounterEnabled() {
        return this.mCounterEnabled;
    }

    public boolean isErrorEnabled() {
        return this.mErrorEnabled;
    }

    public boolean isHintAnimationEnabled() {
        return this.mHintAnimationEnabled;
    }

    public boolean isHintEnabled() {
        return this.mHintEnabled;
    }

    @VisibleForTesting
    final boolean isHintExpanded() {
        return this.mHintExpanded;
    }

    public boolean isPasswordVisibilityToggleEnabled() {
        return this.mPasswordToggleEnabled;
    }

    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        super.onLayout(bl, n2, n3, n4, n5);
        if (this.mHintEnabled && this.mEditText != null) {
            Rect rect = this.mTmpRect;
            ViewGroupUtils.getDescendantRect((ViewGroup)this, (View)this.mEditText, rect);
            n2 = rect.left + this.mEditText.getCompoundPaddingLeft();
            n4 = rect.right - this.mEditText.getCompoundPaddingRight();
            this.mCollapsingTextHelper.setExpandedBounds(n2, rect.top + this.mEditText.getCompoundPaddingTop(), n4, rect.bottom - this.mEditText.getCompoundPaddingBottom());
            this.mCollapsingTextHelper.setCollapsedBounds(n2, this.getPaddingTop(), n4, n5 - n3 - this.getPaddingBottom());
            this.mCollapsingTextHelper.recalculate();
        }
    }

    protected void onMeasure(int n2, int n3) {
        this.updatePasswordToggleView();
        super.onMeasure(n2, n3);
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(parcelable.getSuperState());
        this.setError(parcelable.error);
        this.requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.mErrorShown) {
            savedState.error = this.getError();
        }
        return savedState;
    }

    /*
     * Enabled aggressive block sorting
     */
    void passwordVisibilityToggleRequested() {
        if (this.mPasswordToggleEnabled) {
            int n2 = this.mEditText.getSelectionEnd();
            if (this.hasPasswordTransformation()) {
                this.mEditText.setTransformationMethod(null);
                this.mPasswordToggledVisible = true;
            } else {
                this.mEditText.setTransformationMethod((TransformationMethod)PasswordTransformationMethod.getInstance());
                this.mPasswordToggledVisible = false;
            }
            this.mPasswordToggleView.setChecked(this.mPasswordToggledVisible);
            this.mEditText.setSelection(n2);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void setCounterEnabled(boolean bl) {
        if (this.mCounterEnabled != bl) {
            if (bl) {
                this.mCounterView = new TextView(this.getContext());
                this.mCounterView.setMaxLines(1);
                try {
                    TextViewCompat.setTextAppearance(this.mCounterView, this.mCounterTextAppearance);
                }
                catch (Exception var2_2) {
                    TextViewCompat.setTextAppearance(this.mCounterView, R.style.TextAppearance_AppCompat_Caption);
                    this.mCounterView.setTextColor(ContextCompat.getColor(this.getContext(), R.color.design_textinput_error_color_light));
                }
                this.addIndicator(this.mCounterView, -1);
                if (this.mEditText == null) {
                    this.updateCounter(0);
                } else {
                    this.updateCounter(this.mEditText.getText().length());
                }
            } else {
                this.removeIndicator(this.mCounterView);
                this.mCounterView = null;
            }
            this.mCounterEnabled = bl;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setCounterMaxLength(int n2) {
        if (this.mCounterMaxLength != n2) {
            this.mCounterMaxLength = n2 > 0 ? n2 : -1;
            if (this.mCounterEnabled) {
                n2 = this.mEditText == null ? 0 : this.mEditText.getText().length();
                this.updateCounter(n2);
            }
        }
    }

    public void setEnabled(boolean bl) {
        TextInputLayout.recursiveSetEnabled((ViewGroup)this, bl);
        super.setEnabled(bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setError(@Nullable CharSequence charSequence) {
        boolean bl = ViewCompat.isLaidOut((View)this) && this.isEnabled() && (this.mErrorView == null || !TextUtils.equals((CharSequence)this.mErrorView.getText(), (CharSequence)charSequence));
        this.setError(charSequence, bl);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void setErrorEnabled(boolean bl) {
        if (this.mErrorEnabled != bl) {
            if (this.mErrorView != null) {
                ViewCompat.animate((View)this.mErrorView).cancel();
            }
            if (bl) {
                boolean bl2;
                this.mErrorView = new TextView(this.getContext());
                boolean bl3 = false;
                try {
                    TextViewCompat.setTextAppearance(this.mErrorView, this.mErrorTextAppearance);
                    bl2 = bl3;
                    if (Build.VERSION.SDK_INT >= 23) {
                        int n2 = this.mErrorView.getTextColors().getDefaultColor();
                        bl2 = bl3;
                        if (n2 == -65281) {
                            bl2 = true;
                        }
                    }
                }
                catch (Exception var2_5) {
                    bl2 = true;
                }
                if (bl2) {
                    TextViewCompat.setTextAppearance(this.mErrorView, R.style.TextAppearance_AppCompat_Caption);
                    this.mErrorView.setTextColor(ContextCompat.getColor(this.getContext(), R.color.design_textinput_error_color_light));
                }
                this.mErrorView.setVisibility(4);
                ViewCompat.setAccessibilityLiveRegion((View)this.mErrorView, 1);
                this.addIndicator(this.mErrorView, 0);
            } else {
                this.mErrorShown = false;
                this.updateEditTextBackground();
                this.removeIndicator(this.mErrorView);
                this.mErrorView = null;
            }
            this.mErrorEnabled = bl;
        }
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.mHintEnabled) {
            this.setHintInternal(charSequence);
            this.sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean bl) {
        this.mHintAnimationEnabled = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setHintEnabled(boolean bl) {
        if (bl != this.mHintEnabled) {
            this.mHintEnabled = bl;
            CharSequence charSequence = this.mEditText.getHint();
            if (!this.mHintEnabled) {
                if (!TextUtils.isEmpty((CharSequence)this.mHint) && TextUtils.isEmpty((CharSequence)charSequence)) {
                    this.mEditText.setHint(this.mHint);
                }
                this.setHintInternal(null);
            } else if (!TextUtils.isEmpty((CharSequence)charSequence)) {
                if (TextUtils.isEmpty((CharSequence)this.mHint)) {
                    this.setHint(charSequence);
                }
                this.mEditText.setHint(null);
            }
            if (this.mEditText != null) {
                this.updateInputLayoutMargins();
            }
        }
    }

    public void setHintTextAppearance(@StyleRes int n2) {
        this.mCollapsingTextHelper.setCollapsedTextAppearance(n2);
        this.mFocusedTextColor = this.mCollapsingTextHelper.getCollapsedTextColor();
        if (this.mEditText != null) {
            this.updateLabelState(false);
            this.updateInputLayoutMargins();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setPasswordVisibilityToggleContentDescription(@StringRes int n2) {
        CharSequence charSequence = n2 != 0 ? this.getResources().getText(n2) : null;
        this.setPasswordVisibilityToggleContentDescription(charSequence);
    }

    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.mPasswordToggleContentDesc = charSequence;
        if (this.mPasswordToggleView != null) {
            this.mPasswordToggleView.setContentDescription(charSequence);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int n2) {
        Drawable drawable2 = n2 != 0 ? AppCompatResources.getDrawable(this.getContext(), n2) : null;
        this.setPasswordVisibilityToggleDrawable(drawable2);
    }

    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable2) {
        this.mPasswordToggleDrawable = drawable2;
        if (this.mPasswordToggleView != null) {
            this.mPasswordToggleView.setImageDrawable(drawable2);
        }
    }

    public void setPasswordVisibilityToggleEnabled(boolean bl) {
        if (this.mPasswordToggleEnabled != bl) {
            this.mPasswordToggleEnabled = bl;
            if (!bl && this.mPasswordToggledVisible && this.mEditText != null) {
                this.mEditText.setTransformationMethod((TransformationMethod)PasswordTransformationMethod.getInstance());
            }
            this.mPasswordToggledVisible = false;
            this.updatePasswordToggleView();
        }
    }

    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.mPasswordToggleTintList = colorStateList;
        this.mHasPasswordToggleTintList = true;
        this.applyPasswordToggleTint();
    }

    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.mPasswordToggleTintMode = mode;
        this.mHasPasswordToggleTintMode = true;
        this.applyPasswordToggleTint();
    }

    public void setTypeface(@Nullable Typeface typeface) {
        this.mCollapsingTextHelper.setTypefaces(typeface);
    }

    /*
     * Enabled aggressive block sorting
     */
    void updateCounter(int n2) {
        boolean bl = this.mCounterOverflowed;
        if (this.mCounterMaxLength == -1) {
            this.mCounterView.setText((CharSequence)String.valueOf(n2));
            this.mCounterOverflowed = false;
        } else {
            boolean bl2 = n2 > this.mCounterMaxLength;
            this.mCounterOverflowed = bl2;
            if (bl != this.mCounterOverflowed) {
                TextView textView = this.mCounterView;
                int n3 = this.mCounterOverflowed ? this.mCounterOverflowTextAppearance : this.mCounterTextAppearance;
                TextViewCompat.setTextAppearance(textView, n3);
            }
            this.mCounterView.setText((CharSequence)this.getContext().getString(R.string.character_counter_pattern, new Object[]{n2, this.mCounterMaxLength}));
        }
        if (this.mEditText != null && bl != this.mCounterOverflowed) {
            this.updateLabelState(false);
            this.updateEditTextBackground();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void updateLabelState(boolean bl) {
        boolean bl2 = this.isEnabled();
        boolean bl3 = this.mEditText != null && !TextUtils.isEmpty((CharSequence)this.mEditText.getText());
        boolean bl4 = TextInputLayout.arrayContains(this.getDrawableState(), 16842908);
        boolean bl5 = !TextUtils.isEmpty((CharSequence)this.getError());
        if (this.mDefaultTextColor != null) {
            this.mCollapsingTextHelper.setExpandedTextColor(this.mDefaultTextColor);
        }
        if (bl2 && this.mCounterOverflowed && this.mCounterView != null) {
            this.mCollapsingTextHelper.setCollapsedTextColor(this.mCounterView.getTextColors());
        } else if (bl2 && bl4 && this.mFocusedTextColor != null) {
            this.mCollapsingTextHelper.setCollapsedTextColor(this.mFocusedTextColor);
        } else if (this.mDefaultTextColor != null) {
            this.mCollapsingTextHelper.setCollapsedTextColor(this.mDefaultTextColor);
        }
        if (bl3 || this.isEnabled() && (bl4 || bl5)) {
            this.collapseHint(bl);
            return;
        }
        this.expandHint(bl);
    }

    static class SavedState
    extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>(){

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            public SavedState[] newArray(int n2) {
                return new SavedState[n2];
            }
        });
        CharSequence error;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.error = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + this.error + "}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int n2) {
            super.writeToParcel(parcel, n2);
            TextUtils.writeToParcel((CharSequence)this.error, (Parcel)parcel, (int)n2);
        }

    }

    private class TextInputAccessibilityDelegate
    extends AccessibilityDelegateCompat {
        TextInputAccessibilityDelegate() {
        }

        @Override
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName((CharSequence)TextInputLayout.class.getSimpleName());
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onInitializeAccessibilityNodeInfo(View object, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo((View)object, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setClassName(TextInputLayout.class.getSimpleName());
            object = TextInputLayout.this.mCollapsingTextHelper.getText();
            if (!TextUtils.isEmpty((CharSequence)object)) {
                accessibilityNodeInfoCompat.setText((CharSequence)object);
            }
            if (TextInputLayout.this.mEditText != null) {
                accessibilityNodeInfoCompat.setLabelFor((View)TextInputLayout.this.mEditText);
            }
            object = TextInputLayout.this.mErrorView != null ? TextInputLayout.this.mErrorView.getText() : null;
            if (TextUtils.isEmpty((CharSequence)object)) return;
            accessibilityNodeInfoCompat.setContentInvalid(true);
            accessibilityNodeInfoCompat.setError((CharSequence)object);
        }

        @Override
        public void onPopulateAccessibilityEvent(View object, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent((View)object, accessibilityEvent);
            object = TextInputLayout.this.mCollapsingTextHelper.getText();
            if (!TextUtils.isEmpty((CharSequence)object)) {
                accessibilityEvent.getText().add(object);
            }
        }
    }

}

