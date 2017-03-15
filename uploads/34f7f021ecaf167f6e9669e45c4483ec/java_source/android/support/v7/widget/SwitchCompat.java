/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.graphics.Canvas
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.Rect
 *  android.graphics.Region
 *  android.graphics.Region$Op
 *  android.graphics.Typeface
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$Callback
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.IBinder
 *  android.text.Layout
 *  android.text.Layout$Alignment
 *  android.text.StaticLayout
 *  android.text.TextPaint
 *  android.text.TextUtils
 *  android.text.method.TransformationMethod
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.view.MotionEvent
 *  android.view.VelocityTracker
 *  android.view.View
 *  android.view.ViewConfiguration
 *  android.view.ViewParent
 *  android.view.accessibility.AccessibilityEvent
 *  android.view.accessibility.AccessibilityNodeInfo
 *  android.view.animation.Animation
 *  android.view.animation.Animation$AnimationListener
 *  android.view.animation.Transformation
 *  android.widget.CompoundButton
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.text.AllCapsTransformationMethod;
import android.support.v7.widget.DrawableUtils;
import android.support.v7.widget.TintTypedArray;
import android.support.v7.widget.ViewUtils;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.CompoundButton;
import java.util.List;

public class SwitchCompat
extends CompoundButton {
    private static final String ACCESSIBILITY_EVENT_CLASS_NAME = "android.widget.Switch";
    private static final int[] CHECKED_STATE_SET = new int[]{16842912};
    private static final int MONOSPACE = 3;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    private static final int THUMB_ANIMATION_DURATION = 250;
    private static final int TOUCH_MODE_DOWN = 1;
    private static final int TOUCH_MODE_DRAGGING = 2;
    private static final int TOUCH_MODE_IDLE = 0;
    private boolean mHasThumbTint = false;
    private boolean mHasThumbTintMode = false;
    private boolean mHasTrackTint = false;
    private boolean mHasTrackTintMode = false;
    private int mMinFlingVelocity;
    private Layout mOffLayout;
    private Layout mOnLayout;
    ThumbAnimation mPositionAnimator;
    private boolean mShowText;
    private boolean mSplitTrack;
    private int mSwitchBottom;
    private int mSwitchHeight;
    private int mSwitchLeft;
    private int mSwitchMinWidth;
    private int mSwitchPadding;
    private int mSwitchRight;
    private int mSwitchTop;
    private TransformationMethod mSwitchTransformationMethod;
    private int mSwitchWidth;
    private final Rect mTempRect = new Rect();
    private ColorStateList mTextColors;
    private CharSequence mTextOff;
    private CharSequence mTextOn;
    private TextPaint mTextPaint = new TextPaint(1);
    private Drawable mThumbDrawable;
    private float mThumbPosition;
    private int mThumbTextPadding;
    private ColorStateList mThumbTintList = null;
    private PorterDuff.Mode mThumbTintMode = null;
    private int mThumbWidth;
    private int mTouchMode;
    private int mTouchSlop;
    private float mTouchX;
    private float mTouchY;
    private Drawable mTrackDrawable;
    private ColorStateList mTrackTintList = null;
    private PorterDuff.Mode mTrackTintMode = null;
    private VelocityTracker mVelocityTracker = VelocityTracker.obtain();

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet object, int n2) {
        super(context, (AttributeSet)object, n2);
        Resources resources = this.getResources();
        this.mTextPaint.density = resources.getDisplayMetrics().density;
        object = TintTypedArray.obtainStyledAttributes(context, (AttributeSet)object, R.styleable.SwitchCompat, n2, 0);
        this.mThumbDrawable = object.getDrawable(R.styleable.SwitchCompat_android_thumb);
        if (this.mThumbDrawable != null) {
            this.mThumbDrawable.setCallback((Drawable.Callback)this);
        }
        this.mTrackDrawable = object.getDrawable(R.styleable.SwitchCompat_track);
        if (this.mTrackDrawable != null) {
            this.mTrackDrawable.setCallback((Drawable.Callback)this);
        }
        this.mTextOn = object.getText(R.styleable.SwitchCompat_android_textOn);
        this.mTextOff = object.getText(R.styleable.SwitchCompat_android_textOff);
        this.mShowText = object.getBoolean(R.styleable.SwitchCompat_showText, true);
        this.mThumbTextPadding = object.getDimensionPixelSize(R.styleable.SwitchCompat_thumbTextPadding, 0);
        this.mSwitchMinWidth = object.getDimensionPixelSize(R.styleable.SwitchCompat_switchMinWidth, 0);
        this.mSwitchPadding = object.getDimensionPixelSize(R.styleable.SwitchCompat_switchPadding, 0);
        this.mSplitTrack = object.getBoolean(R.styleable.SwitchCompat_splitTrack, false);
        resources = object.getColorStateList(R.styleable.SwitchCompat_thumbTint);
        if (resources != null) {
            this.mThumbTintList = resources;
            this.mHasThumbTint = true;
        }
        if (this.mThumbTintMode != (resources = DrawableUtils.parseTintMode(object.getInt(R.styleable.SwitchCompat_thumbTintMode, -1), null))) {
            this.mThumbTintMode = resources;
            this.mHasThumbTintMode = true;
        }
        if (this.mHasThumbTint || this.mHasThumbTintMode) {
            this.applyThumbTint();
        }
        if ((resources = object.getColorStateList(R.styleable.SwitchCompat_trackTint)) != null) {
            this.mTrackTintList = resources;
            this.mHasTrackTint = true;
        }
        if (this.mTrackTintMode != (resources = DrawableUtils.parseTintMode(object.getInt(R.styleable.SwitchCompat_trackTintMode, -1), null))) {
            this.mTrackTintMode = resources;
            this.mHasTrackTintMode = true;
        }
        if (this.mHasTrackTint || this.mHasTrackTintMode) {
            this.applyTrackTint();
        }
        if ((n2 = object.getResourceId(R.styleable.SwitchCompat_switchTextAppearance, 0)) != 0) {
            this.setSwitchTextAppearance(context, n2);
        }
        object.recycle();
        context = ViewConfiguration.get((Context)context);
        this.mTouchSlop = context.getScaledTouchSlop();
        this.mMinFlingVelocity = context.getScaledMinimumFlingVelocity();
        this.refreshDrawableState();
        this.setChecked(this.isChecked());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void animateThumbToCheckedState(final boolean bl) {
        if (this.mPositionAnimator != null) {
            this.cancelPositionAnimator();
        }
        float f2 = this.mThumbPosition;
        float f3 = bl ? 1.0f : 0.0f;
        this.mPositionAnimator = new ThumbAnimation(f2, f3);
        this.mPositionAnimator.setDuration(250);
        this.mPositionAnimator.setAnimationListener(new Animation.AnimationListener(){

            /*
             * Enabled aggressive block sorting
             */
            public void onAnimationEnd(Animation object) {
                if (SwitchCompat.this.mPositionAnimator == object) {
                    object = SwitchCompat.this;
                    float f2 = bl ? 1.0f : 0.0f;
                    object.setThumbPosition(f2);
                    SwitchCompat.this.mPositionAnimator = null;
                }
            }

            public void onAnimationRepeat(Animation animation) {
            }

            public void onAnimationStart(Animation animation) {
            }
        });
        this.startAnimation((Animation)this.mPositionAnimator);
    }

    private void applyThumbTint() {
        if (this.mThumbDrawable != null && (this.mHasThumbTint || this.mHasThumbTintMode)) {
            this.mThumbDrawable = this.mThumbDrawable.mutate();
            if (this.mHasThumbTint) {
                DrawableCompat.setTintList(this.mThumbDrawable, this.mThumbTintList);
            }
            if (this.mHasThumbTintMode) {
                DrawableCompat.setTintMode(this.mThumbDrawable, this.mThumbTintMode);
            }
            if (this.mThumbDrawable.isStateful()) {
                this.mThumbDrawable.setState(this.getDrawableState());
            }
        }
    }

    private void applyTrackTint() {
        if (this.mTrackDrawable != null && (this.mHasTrackTint || this.mHasTrackTintMode)) {
            this.mTrackDrawable = this.mTrackDrawable.mutate();
            if (this.mHasTrackTint) {
                DrawableCompat.setTintList(this.mTrackDrawable, this.mTrackTintList);
            }
            if (this.mHasTrackTintMode) {
                DrawableCompat.setTintMode(this.mTrackDrawable, this.mTrackTintMode);
            }
            if (this.mTrackDrawable.isStateful()) {
                this.mTrackDrawable.setState(this.getDrawableState());
            }
        }
    }

    private void cancelPositionAnimator() {
        if (this.mPositionAnimator != null) {
            this.clearAnimation();
            this.mPositionAnimator = null;
        }
    }

    private void cancelSuperTouch(MotionEvent motionEvent) {
        motionEvent = MotionEvent.obtain((MotionEvent)motionEvent);
        motionEvent.setAction(3);
        super.onTouchEvent(motionEvent);
        motionEvent.recycle();
    }

    private static float constrain(float f2, float f3, float f4) {
        if (f2 < f3) {
            return f3;
        }
        if (f2 > f4) {
            return f4;
        }
        return f2;
    }

    private boolean getTargetCheckedState() {
        if (this.mThumbPosition > 0.5f) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int getThumbOffset() {
        float f2;
        if (ViewUtils.isLayoutRtl((View)this)) {
            f2 = 1.0f - this.mThumbPosition;
            do {
                return (int)((float)this.getThumbScrollRange() * f2 + 0.5f);
                break;
            } while (true);
        }
        f2 = this.mThumbPosition;
        return (int)((float)this.getThumbScrollRange() * f2 + 0.5f);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int getThumbScrollRange() {
        Rect rect;
        if (this.mTrackDrawable == null) return 0;
        Rect rect2 = this.mTempRect;
        this.mTrackDrawable.getPadding(rect2);
        if (this.mThumbDrawable != null) {
            rect = DrawableUtils.getOpticalBounds(this.mThumbDrawable);
            do {
                return this.mSwitchWidth - this.mThumbWidth - rect2.left - rect2.right - rect.left - rect.right;
                break;
            } while (true);
        }
        rect = DrawableUtils.INSETS_NONE;
        return this.mSwitchWidth - this.mThumbWidth - rect2.left - rect2.right - rect.left - rect.right;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean hitThumb(float f2, float f3) {
        if (this.mThumbDrawable == null) {
            return false;
        }
        int n2 = this.getThumbOffset();
        this.mThumbDrawable.getPadding(this.mTempRect);
        int n3 = this.mSwitchTop;
        int n4 = this.mTouchSlop;
        n2 = this.mSwitchLeft + n2 - this.mTouchSlop;
        int n5 = this.mThumbWidth;
        int n6 = this.mTempRect.left;
        int n7 = this.mTempRect.right;
        int n8 = this.mTouchSlop;
        int n9 = this.mSwitchBottom;
        int n10 = this.mTouchSlop;
        if (f2 <= (float)n2) return false;
        if (f2 >= (float)(n5 + n2 + n6 + n7 + n8)) return false;
        if (f3 <= (float)(n3 - n4)) return false;
        if (f3 >= (float)(n9 + n10)) return false;
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Layout makeLayout(CharSequence charSequence) {
        int n2;
        if (this.mSwitchTransformationMethod != null) {
            charSequence = this.mSwitchTransformationMethod.getTransformation(charSequence, (View)this);
        }
        TextPaint textPaint = this.mTextPaint;
        if (charSequence != null) {
            n2 = (int)Math.ceil(Layout.getDesiredWidth((CharSequence)charSequence, (TextPaint)this.mTextPaint));
            do {
                return new StaticLayout(charSequence, textPaint, n2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
                break;
            } while (true);
        }
        n2 = 0;
        return new StaticLayout(charSequence, textPaint, n2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void setSwitchTypefaceByIndex(int var1_1, int var2_2) {
        var3_3 = null;
        switch (var1_1) {
            case 1: {
                var3_3 = Typeface.SANS_SERIF;
                ** break;
            }
            case 2: {
                var3_3 = Typeface.SERIF;
            }
lbl8: // 3 sources:
            default: {
                ** GOTO lbl12
            }
            case 3: 
        }
        var3_3 = Typeface.MONOSPACE;
lbl12: // 2 sources:
        this.setSwitchTypeface(var3_3, var2_2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void stopDrag(MotionEvent motionEvent) {
        boolean bl;
        this.mTouchMode = 0;
        boolean bl2 = motionEvent.getAction() == 1 && this.isEnabled();
        boolean bl3 = this.isChecked();
        if (bl2) {
            this.mVelocityTracker.computeCurrentVelocity(1000);
            float f2 = this.mVelocityTracker.getXVelocity();
            bl = Math.abs(f2) > (float)this.mMinFlingVelocity ? (ViewUtils.isLayoutRtl((View)this) ? f2 < 0.0f : f2 > 0.0f) : this.getTargetCheckedState();
        } else {
            bl = bl3;
        }
        if (bl != bl3) {
            this.playSoundEffect(0);
        }
        this.setChecked(bl);
        this.cancelSuperTouch(motionEvent);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void draw(Canvas canvas) {
        Rect rect = this.mTempRect;
        int n2 = this.mSwitchLeft;
        int n3 = this.mSwitchTop;
        int n4 = this.mSwitchRight;
        int n5 = this.mSwitchBottom;
        int n6 = n2 + this.getThumbOffset();
        Rect rect2 = this.mThumbDrawable != null ? DrawableUtils.getOpticalBounds(this.mThumbDrawable) : DrawableUtils.INSETS_NONE;
        int n7 = n6;
        if (this.mTrackDrawable != null) {
            int n8;
            this.mTrackDrawable.getPadding(rect);
            int n9 = n6 + rect.left;
            n6 = n3;
            int n10 = n8 = n5;
            int n11 = n2;
            int n12 = n4;
            int n13 = n6;
            if (rect2 != null) {
                n7 = n2;
                if (rect2.left > rect.left) {
                    n7 = n2 + (rect2.left - rect.left);
                }
                n2 = n6;
                if (rect2.top > rect.top) {
                    n2 = n6 + (rect2.top - rect.top);
                }
                n6 = n4;
                if (rect2.right > rect.right) {
                    n6 = n4 - (rect2.right - rect.right);
                }
                n10 = n8;
                n11 = n7;
                n12 = n6;
                n13 = n2;
                if (rect2.bottom > rect.bottom) {
                    n10 = n8 - (rect2.bottom - rect.bottom);
                    n13 = n2;
                    n12 = n6;
                    n11 = n7;
                }
            }
            this.mTrackDrawable.setBounds(n11, n13, n12, n10);
            n7 = n9;
        }
        if (this.mThumbDrawable != null) {
            this.mThumbDrawable.getPadding(rect);
            n4 = n7 - rect.left;
            n7 = this.mThumbWidth + n7 + rect.right;
            this.mThumbDrawable.setBounds(n4, n3, n7, n5);
            rect2 = this.getBackground();
            if (rect2 != null) {
                DrawableCompat.setHotspotBounds((Drawable)rect2, n4, n3, n7, n5);
            }
        }
        super.draw(canvas);
    }

    public void drawableHotspotChanged(float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f2, f3);
        }
        if (this.mThumbDrawable != null) {
            DrawableCompat.setHotspot(this.mThumbDrawable, f2, f3);
        }
        if (this.mTrackDrawable != null) {
            DrawableCompat.setHotspot(this.mTrackDrawable, f2, f3);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] arrn = this.getDrawableState();
        boolean bl = false;
        Drawable drawable2 = this.mThumbDrawable;
        boolean bl2 = bl;
        if (drawable2 != null) {
            bl2 = bl;
            if (drawable2.isStateful()) {
                bl2 = false | drawable2.setState(arrn);
            }
        }
        drawable2 = this.mTrackDrawable;
        bl = bl2;
        if (drawable2 != null) {
            bl = bl2;
            if (drawable2.isStateful()) {
                bl = bl2 | drawable2.setState(arrn);
            }
        }
        if (bl) {
            this.invalidate();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public int getCompoundPaddingLeft() {
        int n2;
        if (!ViewUtils.isLayoutRtl((View)this)) {
            return super.getCompoundPaddingLeft();
        }
        int n3 = n2 = super.getCompoundPaddingLeft() + this.mSwitchWidth;
        if (TextUtils.isEmpty((CharSequence)this.getText())) return n3;
        return n2 + this.mSwitchPadding;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public int getCompoundPaddingRight() {
        int n2;
        if (ViewUtils.isLayoutRtl((View)this)) {
            return super.getCompoundPaddingRight();
        }
        int n3 = n2 = super.getCompoundPaddingRight() + this.mSwitchWidth;
        if (TextUtils.isEmpty((CharSequence)this.getText())) return n3;
        return n2 + this.mSwitchPadding;
    }

    public boolean getShowText() {
        return this.mShowText;
    }

    public boolean getSplitTrack() {
        return this.mSplitTrack;
    }

    public int getSwitchMinWidth() {
        return this.mSwitchMinWidth;
    }

    public int getSwitchPadding() {
        return this.mSwitchPadding;
    }

    public CharSequence getTextOff() {
        return this.mTextOff;
    }

    public CharSequence getTextOn() {
        return this.mTextOn;
    }

    public Drawable getThumbDrawable() {
        return this.mThumbDrawable;
    }

    public int getThumbTextPadding() {
        return this.mThumbTextPadding;
    }

    @Nullable
    public ColorStateList getThumbTintList() {
        return this.mThumbTintList;
    }

    @Nullable
    public PorterDuff.Mode getThumbTintMode() {
        return this.mThumbTintMode;
    }

    public Drawable getTrackDrawable() {
        return this.mTrackDrawable;
    }

    @Nullable
    public ColorStateList getTrackTintList() {
        return this.mTrackTintList;
    }

    @Nullable
    public PorterDuff.Mode getTrackTintMode() {
        return this.mTrackTintMode;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void jumpDrawablesToCurrentState() {
        if (Build.VERSION.SDK_INT >= 11) {
            super.jumpDrawablesToCurrentState();
            if (this.mThumbDrawable != null) {
                this.mThumbDrawable.jumpToCurrentState();
            }
            if (this.mTrackDrawable != null) {
                this.mTrackDrawable.jumpToCurrentState();
            }
            this.cancelPositionAnimator();
            float f2 = this.isChecked() ? 1.0f : 0.0f;
            this.setThumbPosition(f2);
        }
    }

    protected int[] onCreateDrawableState(int n2) {
        int[] arrn = super.onCreateDrawableState(n2 + 1);
        if (this.isChecked()) {
            SwitchCompat.mergeDrawableStates((int[])arrn, (int[])CHECKED_STATE_SET);
        }
        return arrn;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onDraw(Canvas canvas) {
        int n2;
        super.onDraw(canvas);
        Rect rect = this.mTempRect;
        int[] arrn = this.mTrackDrawable;
        if (arrn != null) {
            arrn.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int n3 = this.mSwitchTop;
        int n4 = this.mSwitchBottom;
        int n5 = rect.top;
        int n6 = rect.bottom;
        Drawable drawable2 = this.mThumbDrawable;
        if (arrn != null) {
            if (this.mSplitTrack && drawable2 != null) {
                Rect rect2 = DrawableUtils.getOpticalBounds(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rect2.left;
                rect.right -= rect2.right;
                n2 = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                arrn.draw(canvas);
                canvas.restoreToCount(n2);
            } else {
                arrn.draw(canvas);
            }
        }
        int n7 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        rect = this.getTargetCheckedState() ? this.mOnLayout : this.mOffLayout;
        if (rect != null) {
            arrn = this.getDrawableState();
            if (this.mTextColors != null) {
                this.mTextPaint.setColor(this.mTextColors.getColorForState(arrn, 0));
            }
            this.mTextPaint.drawableState = arrn;
            if (drawable2 != null) {
                drawable2 = drawable2.getBounds();
                n2 = drawable2.left + drawable2.right;
            } else {
                n2 = this.getWidth();
            }
            int n8 = rect.getWidth() / 2;
            n3 = (n3 + n5 + (n4 - n6)) / 2;
            n4 = rect.getHeight() / 2;
            canvas.translate((float)((n2 /= 2) - n8), (float)(n3 - n4));
            rect.draw(canvas);
        }
        canvas.restoreToCount(n7);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName((CharSequence)"android.widget.Switch");
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName((CharSequence)"android.widget.Switch");
            CharSequence charSequence = this.isChecked() ? this.mTextOn : this.mTextOff;
            if (!TextUtils.isEmpty((CharSequence)charSequence)) {
                CharSequence charSequence2 = accessibilityNodeInfo.getText();
                if (!TextUtils.isEmpty((CharSequence)charSequence2)) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(charSequence2).append(' ').append(charSequence);
                    accessibilityNodeInfo.setText((CharSequence)stringBuilder);
                    return;
                }
                accessibilityNodeInfo.setText(charSequence);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        super.onLayout(bl, n2, n3, n4, n5);
        n2 = 0;
        n3 = 0;
        if (this.mThumbDrawable != null) {
            Rect rect = this.mTempRect;
            if (this.mTrackDrawable != null) {
                this.mTrackDrawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rect2 = DrawableUtils.getOpticalBounds(this.mThumbDrawable);
            n2 = Math.max(0, rect2.left - rect.left);
            n3 = Math.max(0, rect2.right - rect.right);
        }
        if (ViewUtils.isLayoutRtl((View)this)) {
            n4 = this.getPaddingLeft() + n2;
            n5 = this.mSwitchWidth + n4 - n2 - n3;
        } else {
            n5 = this.getWidth() - this.getPaddingRight() - n3;
            n4 = n5 - this.mSwitchWidth + n2 + n3;
        }
        switch (this.getGravity() & 112) {
            default: {
                n3 = this.getPaddingTop();
                n2 = n3 + this.mSwitchHeight;
                break;
            }
            case 16: {
                n3 = (this.getPaddingTop() + this.getHeight() - this.getPaddingBottom()) / 2 - this.mSwitchHeight / 2;
                n2 = n3 + this.mSwitchHeight;
                break;
            }
            case 80: {
                n2 = this.getHeight() - this.getPaddingBottom();
                n3 = n2 - this.mSwitchHeight;
            }
        }
        this.mSwitchLeft = n4;
        this.mSwitchTop = n3;
        this.mSwitchBottom = n2;
        this.mSwitchRight = n5;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onMeasure(int n2, int n3) {
        int n4;
        int n5;
        if (this.mShowText) {
            if (this.mOnLayout == null) {
                this.mOnLayout = this.makeLayout(this.mTextOn);
            }
            if (this.mOffLayout == null) {
                this.mOffLayout = this.makeLayout(this.mTextOff);
            }
        }
        Rect rect = this.mTempRect;
        if (this.mThumbDrawable != null) {
            this.mThumbDrawable.getPadding(rect);
            n4 = this.mThumbDrawable.getIntrinsicWidth() - rect.left - rect.right;
            n5 = this.mThumbDrawable.getIntrinsicHeight();
        } else {
            n4 = 0;
            n5 = 0;
        }
        int n6 = this.mShowText ? Math.max(this.mOnLayout.getWidth(), this.mOffLayout.getWidth()) + this.mThumbTextPadding * 2 : 0;
        this.mThumbWidth = Math.max(n6, n4);
        if (this.mTrackDrawable != null) {
            this.mTrackDrawable.getPadding(rect);
            n4 = this.mTrackDrawable.getIntrinsicHeight();
        } else {
            rect.setEmpty();
            n4 = 0;
        }
        int n7 = rect.left;
        int n8 = rect.right;
        int n9 = n7;
        n6 = n8;
        if (this.mThumbDrawable != null) {
            rect = DrawableUtils.getOpticalBounds(this.mThumbDrawable);
            n9 = Math.max(n7, rect.left);
            n6 = Math.max(n8, rect.right);
        }
        n6 = Math.max(this.mSwitchMinWidth, this.mThumbWidth * 2 + n9 + n6);
        n5 = Math.max(n4, n5);
        this.mSwitchWidth = n6;
        this.mSwitchHeight = n5;
        super.onMeasure(n2, n3);
        if (this.getMeasuredHeight() < n5) {
            this.setMeasuredDimension(ViewCompat.getMeasuredWidthAndState((View)this), n5);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = this.isChecked() ? this.mTextOn : this.mTextOff;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean onTouchEvent(MotionEvent var1_1) {
        this.mVelocityTracker.addMovement(var1_1);
        switch (MotionEventCompat.getActionMasked(var1_1)) lbl-1000: // 6 sources:
        {
            do {
                default: {
                    do {
                        return super.onTouchEvent(var1_1);
                        break;
                    } while (true);
                }
                break;
            } while (true);
            case 0: {
                var2_2 = var1_1.getX();
                var3_5 = var1_1.getY();
                if (!this.isEnabled() || !this.hitThumb(var2_2, var3_5)) ** GOTO lbl-1000
                this.mTouchMode = 1;
                this.mTouchX = var2_2;
                this.mTouchY = var3_5;
                ** GOTO lbl-1000
            }
            case 2: {
                switch (this.mTouchMode) {
                    case 0: {
                        ** GOTO lbl-1000
                    }
                    default: {
                        ** GOTO lbl-1000
                    }
                    case 1: {
                        var2_3 = var1_1.getX();
                        var3_6 = var1_1.getY();
                        if (Math.abs(var2_3 - this.mTouchX) > (float)this.mTouchSlop || Math.abs(var3_6 - this.mTouchY) > (float)this.mTouchSlop) ** break;
                        ** continue;
                        this.mTouchMode = 2;
                        this.getParent().requestDisallowInterceptTouchEvent(true);
                        this.mTouchX = var2_3;
                        this.mTouchY = var3_6;
                        return true;
                    }
                    case 2: 
                }
                var4_8 = var1_1.getX();
                var5_9 = this.getThumbScrollRange();
                var2_4 = var4_8 - this.mTouchX;
                if (var5_9 != 0) {
                    var2_4 /= (float)var5_9;
lbl37: // 3 sources:
                    do {
                        var3_7 = var2_4;
                        if (ViewUtils.isLayoutRtl((View)this)) {
                            var3_7 = - var2_4;
                        }
                        if ((var2_4 = SwitchCompat.constrain(this.mThumbPosition + var3_7, 0.0f, 1.0f)) == this.mThumbPosition) return true;
                        this.mTouchX = var4_8;
                        this.setThumbPosition(var2_4);
                        return true;
                        break;
                    } while (true);
                }
                if (var2_4 <= 0.0f) ** GOTO lbl48
                var2_4 = 1.0f;
                ** GOTO lbl37
lbl48: // 1 sources:
                var2_4 = -1.0f;
                ** continue;
            }
            case 1: 
            case 3: 
        }
        if (this.mTouchMode == 2) {
            this.stopDrag(var1_1);
            super.onTouchEvent(var1_1);
            return true;
        }
        this.mTouchMode = 0;
        this.mVelocityTracker.clear();
        return super.onTouchEvent(var1_1);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setChecked(boolean bl) {
        super.setChecked(bl);
        bl = this.isChecked();
        if (this.getWindowToken() != null && ViewCompat.isLaidOut((View)this) && this.isShown()) {
            this.animateThumbToCheckedState(bl);
            return;
        }
        this.cancelPositionAnimator();
        float f2 = bl ? 1.0f : 0.0f;
        this.setThumbPosition(f2);
    }

    public void setShowText(boolean bl) {
        if (this.mShowText != bl) {
            this.mShowText = bl;
            this.requestLayout();
        }
    }

    public void setSplitTrack(boolean bl) {
        this.mSplitTrack = bl;
        this.invalidate();
    }

    public void setSwitchMinWidth(int n2) {
        this.mSwitchMinWidth = n2;
        this.requestLayout();
    }

    public void setSwitchPadding(int n2) {
        this.mSwitchPadding = n2;
        this.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setSwitchTextAppearance(Context object, int n2) {
        ColorStateList colorStateList = (object = TintTypedArray.obtainStyledAttributes((Context)object, n2, R.styleable.TextAppearance)).getColorStateList(R.styleable.TextAppearance_android_textColor);
        this.mTextColors = colorStateList != null ? colorStateList : this.getTextColors();
        n2 = object.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, 0);
        if (n2 != 0 && (float)n2 != this.mTextPaint.getTextSize()) {
            this.mTextPaint.setTextSize((float)n2);
            this.requestLayout();
        }
        this.setSwitchTypefaceByIndex(object.getInt(R.styleable.TextAppearance_android_typeface, -1), object.getInt(R.styleable.TextAppearance_android_textStyle, -1));
        this.mSwitchTransformationMethod = object.getBoolean(R.styleable.TextAppearance_textAllCaps, false) ? new AllCapsTransformationMethod(this.getContext()) : null;
        object.recycle();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if (this.mTextPaint.getTypeface() != typeface) {
            this.mTextPaint.setTypeface(typeface);
            this.requestLayout();
            this.invalidate();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setSwitchTypeface(Typeface typeface, int n2) {
        boolean bl = false;
        if (n2 <= 0) {
            this.mTextPaint.setFakeBoldText(false);
            this.mTextPaint.setTextSkewX(0.0f);
            this.setSwitchTypeface(typeface);
            return;
        }
        typeface = typeface == null ? Typeface.defaultFromStyle((int)n2) : Typeface.create((Typeface)typeface, (int)n2);
        this.setSwitchTypeface(typeface);
        int n3 = typeface != null ? typeface.getStyle() : 0;
        typeface = this.mTextPaint;
        if (((n2 &= ~ n3) & 1) != 0) {
            bl = true;
        }
        typeface.setFakeBoldText(bl);
        typeface = this.mTextPaint;
        float f2 = (n2 & 2) != 0 ? -0.25f : 0.0f;
        typeface.setTextSkewX(f2);
    }

    public void setTextOff(CharSequence charSequence) {
        this.mTextOff = charSequence;
        this.requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.mTextOn = charSequence;
        this.requestLayout();
    }

    public void setThumbDrawable(Drawable drawable2) {
        if (this.mThumbDrawable != null) {
            this.mThumbDrawable.setCallback(null);
        }
        this.mThumbDrawable = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback((Drawable.Callback)this);
        }
        this.requestLayout();
    }

    void setThumbPosition(float f2) {
        this.mThumbPosition = f2;
        this.invalidate();
    }

    public void setThumbResource(int n2) {
        this.setThumbDrawable(AppCompatResources.getDrawable(this.getContext(), n2));
    }

    public void setThumbTextPadding(int n2) {
        this.mThumbTextPadding = n2;
        this.requestLayout();
    }

    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.mThumbTintList = colorStateList;
        this.mHasThumbTint = true;
        this.applyThumbTint();
    }

    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        this.mThumbTintMode = mode;
        this.mHasThumbTintMode = true;
        this.applyThumbTint();
    }

    public void setTrackDrawable(Drawable drawable2) {
        if (this.mTrackDrawable != null) {
            this.mTrackDrawable.setCallback(null);
        }
        this.mTrackDrawable = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback((Drawable.Callback)this);
        }
        this.requestLayout();
    }

    public void setTrackResource(int n2) {
        this.setTrackDrawable(AppCompatResources.getDrawable(this.getContext(), n2));
    }

    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.mTrackTintList = colorStateList;
        this.mHasTrackTint = true;
        this.applyTrackTint();
    }

    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        this.mTrackTintMode = mode;
        this.mHasTrackTintMode = true;
        this.applyTrackTint();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void toggle() {
        boolean bl = !this.isChecked();
        this.setChecked(bl);
    }

    protected boolean verifyDrawable(Drawable drawable2) {
        if (super.verifyDrawable(drawable2) || drawable2 == this.mThumbDrawable || drawable2 == this.mTrackDrawable) {
            return true;
        }
        return false;
    }

    private class ThumbAnimation
    extends Animation {
        final float mDiff;
        final float mEndPosition;
        final float mStartPosition;

        ThumbAnimation(float f2, float f3) {
            this.mStartPosition = f2;
            this.mEndPosition = f3;
            this.mDiff = f3 - f2;
        }

        protected void applyTransformation(float f2, Transformation transformation) {
            SwitchCompat.this.setThumbPosition(this.mStartPosition + this.mDiff * f2);
        }
    }

}

