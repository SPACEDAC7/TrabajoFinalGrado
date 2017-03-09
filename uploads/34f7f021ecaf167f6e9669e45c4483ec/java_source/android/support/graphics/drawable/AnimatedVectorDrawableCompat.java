/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.AnimatorInflater
 *  android.animation.AnimatorSet
 *  android.animation.ArgbEvaluator
 *  android.animation.ObjectAnimator
 *  android.animation.TypeEvaluator
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.TypedArray
 *  android.content.res.XmlResourceParser
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.Rect
 *  android.graphics.Region
 *  android.graphics.drawable.Animatable
 *  android.graphics.drawable.AnimatedVectorDrawable
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$Callback
 *  android.graphics.drawable.Drawable$ConstantState
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.util.Log
 *  android.util.Xml
 *  org.xmlpull.v1.XmlPullParser
 *  org.xmlpull.v1.XmlPullParserException
 */
package android.support.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.graphics.drawable.AndroidResources;
import android.support.graphics.drawable.VectorDrawableCommon;
import android.support.graphics.drawable.VectorDrawableCompat;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@TargetApi(value=21)
public class AnimatedVectorDrawableCompat
extends VectorDrawableCommon
implements Animatable {
    private static final String ANIMATED_VECTOR = "animated-vector";
    private static final boolean DBG_ANIMATION_VECTOR_DRAWABLE = false;
    private static final String LOGTAG = "AnimatedVDCompat";
    private static final String TARGET = "target";
    private AnimatedVectorDrawableCompatState mAnimatedVectorState;
    private ArgbEvaluator mArgbEvaluator = null;
    AnimatedVectorDrawableDelegateState mCachedConstantStateDelegate;
    final Drawable.Callback mCallback;
    private Context mContext;

    AnimatedVectorDrawableCompat() {
        this(null, null, null);
    }

    private AnimatedVectorDrawableCompat(@Nullable Context context) {
        this(context, null, null);
    }

    private AnimatedVectorDrawableCompat(@Nullable Context context, @Nullable AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState, @Nullable Resources resources) {
        this.mCallback = new Drawable.Callback(){

            public void invalidateDrawable(Drawable drawable2) {
                AnimatedVectorDrawableCompat.this.invalidateSelf();
            }

            public void scheduleDrawable(Drawable drawable2, Runnable runnable, long l2) {
                AnimatedVectorDrawableCompat.this.scheduleSelf(runnable, l2);
            }

            public void unscheduleDrawable(Drawable drawable2, Runnable runnable) {
                AnimatedVectorDrawableCompat.this.unscheduleSelf(runnable);
            }
        };
        this.mContext = context;
        if (animatedVectorDrawableCompatState != null) {
            this.mAnimatedVectorState = animatedVectorDrawableCompatState;
            return;
        }
        this.mAnimatedVectorState = new AnimatedVectorDrawableCompatState(context, animatedVectorDrawableCompatState, this.mCallback, resources);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Nullable
    public static AnimatedVectorDrawableCompat create(@NonNull Context object, @DrawableRes int n2) {
        if (Build.VERSION.SDK_INT >= 24) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat((Context)object);
            animatedVectorDrawableCompat.mDelegateDrawable = ResourcesCompat.getDrawable(object.getResources(), n2, object.getTheme());
            animatedVectorDrawableCompat.mDelegateDrawable.setCallback(animatedVectorDrawableCompat.mCallback);
            animatedVectorDrawableCompat.mCachedConstantStateDelegate = new AnimatedVectorDrawableDelegateState(animatedVectorDrawableCompat.mDelegateDrawable.getConstantState());
            return animatedVectorDrawableCompat;
        }
        Resources resources = object.getResources();
        try {
            resources = resources.getXml(n2);
            AttributeSet attributeSet = Xml.asAttributeSet((XmlPullParser)resources);
            while ((n2 = resources.next()) != 2 && n2 != 1) {
            }
            if (n2 == 2) return AnimatedVectorDrawableCompat.createFromXmlInner((Context)object, object.getResources(), (XmlPullParser)resources, attributeSet, object.getTheme());
            throw new XmlPullParserException("No start tag found");
        }
        catch (XmlPullParserException var0_1) {
            Log.e((String)"AnimatedVDCompat", (String)"parser error", (Throwable)var0_1);
            return null;
        }
        catch (IOException var0_2) {
            Log.e((String)"AnimatedVDCompat", (String)"parser error", (Throwable)var0_2);
            return null;
        }
    }

    public static AnimatedVectorDrawableCompat createFromXmlInner(Context object, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        object = new AnimatedVectorDrawableCompat((Context)object);
        object.inflate(resources, xmlPullParser, attributeSet, theme);
        return object;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean isStarted() {
        ArrayList<Animator> arrayList = this.mAnimatedVectorState.mAnimators;
        if (arrayList == null) {
            return false;
        }
        int n2 = arrayList.size();
        int n3 = 0;
        while (n3 < n2) {
            if (arrayList.get(n3).isRunning()) {
                return true;
            }
            ++n3;
        }
        return false;
    }

    static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] arrn) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, arrn);
        }
        return theme.obtainStyledAttributes(attributeSet, arrn, 0, 0);
    }

    private void setupAnimatorsForTarget(String string2, Animator animator2) {
        animator2.setTarget(this.mAnimatedVectorState.mVectorDrawable.getTargetByName(string2));
        if (Build.VERSION.SDK_INT < 21) {
            this.setupColorAnimator(animator2);
        }
        if (this.mAnimatedVectorState.mAnimators == null) {
            this.mAnimatedVectorState.mAnimators = new ArrayList();
            this.mAnimatedVectorState.mTargetNameMap = new ArrayMap();
        }
        this.mAnimatedVectorState.mAnimators.add(animator2);
        this.mAnimatedVectorState.mTargetNameMap.put(animator2, string2);
    }

    private void setupColorAnimator(Animator animator2) {
        Object object;
        if (animator2 instanceof AnimatorSet && (object = ((AnimatorSet)animator2).getChildAnimations()) != null) {
            for (int i2 = 0; i2 < object.size(); ++i2) {
                this.setupColorAnimator((Animator)object.get(i2));
            }
        }
        if (animator2 instanceof ObjectAnimator && ("fillColor".equals(object = (animator2 = (ObjectAnimator)animator2).getPropertyName()) || "strokeColor".equals(object))) {
            if (this.mArgbEvaluator == null) {
                this.mArgbEvaluator = new ArgbEvaluator();
            }
            animator2.setEvaluator((TypeEvaluator)this.mArgbEvaluator);
        }
    }

    @Override
    public void applyTheme(Resources.Theme theme) {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.applyTheme(this.mDelegateDrawable, theme);
        }
    }

    public boolean canApplyTheme() {
        if (this.mDelegateDrawable != null) {
            return DrawableCompat.canApplyTheme(this.mDelegateDrawable);
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void draw(Canvas canvas) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.draw(canvas);
            return;
        } else {
            this.mAnimatedVectorState.mVectorDrawable.draw(canvas);
            if (!this.isStarted()) return;
            {
                this.invalidateSelf();
                return;
            }
        }
    }

    public int getAlpha() {
        if (this.mDelegateDrawable != null) {
            return DrawableCompat.getAlpha(this.mDelegateDrawable);
        }
        return this.mAnimatedVectorState.mVectorDrawable.getAlpha();
    }

    public int getChangingConfigurations() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.mAnimatedVectorState.mChangingConfigurations;
    }

    public Drawable.ConstantState getConstantState() {
        if (this.mDelegateDrawable != null) {
            return new AnimatedVectorDrawableDelegateState(this.mDelegateDrawable.getConstantState());
        }
        return null;
    }

    public int getIntrinsicHeight() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getIntrinsicHeight();
        }
        return this.mAnimatedVectorState.mVectorDrawable.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getIntrinsicWidth();
        }
        return this.mAnimatedVectorState.mVectorDrawable.getIntrinsicWidth();
    }

    public int getOpacity() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getOpacity();
        }
        return this.mAnimatedVectorState.mVectorDrawable.getOpacity();
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        this.inflate(resources, xmlPullParser, attributeSet, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.inflate(this.mDelegateDrawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int n2 = xmlPullParser.getEventType();
        int n3 = xmlPullParser.getDepth();
        while (n2 != 1 && (xmlPullParser.getDepth() >= n3 + 1 || n2 != 3)) {
            if (n2 == 2) {
                Object object;
                String string2 = xmlPullParser.getName();
                if ("animated-vector".equals(string2)) {
                    string2 = AnimatedVectorDrawableCompat.obtainAttributes(resources, theme, attributeSet, AndroidResources.styleable_AnimatedVectorDrawable);
                    n2 = string2.getResourceId(0, 0);
                    if (n2 != 0) {
                        object = VectorDrawableCompat.create(resources, n2, theme);
                        object.setAllowCaching(false);
                        object.setCallback(this.mCallback);
                        if (this.mAnimatedVectorState.mVectorDrawable != null) {
                            this.mAnimatedVectorState.mVectorDrawable.setCallback(null);
                        }
                        this.mAnimatedVectorState.mVectorDrawable = object;
                    }
                    string2.recycle();
                } else if ("target".equals(string2)) {
                    string2 = resources.obtainAttributes(attributeSet, AndroidResources.styleable_AnimatedVectorDrawableTarget);
                    object = string2.getString(0);
                    n2 = string2.getResourceId(1, 0);
                    if (n2 != 0) {
                        if (this.mContext == null) {
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        this.setupAnimatorsForTarget((String)object, AnimatorInflater.loadAnimator((Context)this.mContext, (int)n2));
                    }
                    string2.recycle();
                }
            }
            n2 = xmlPullParser.next();
        }
        return;
    }

    public boolean isAutoMirrored() {
        if (this.mDelegateDrawable != null) {
            return DrawableCompat.isAutoMirrored(this.mDelegateDrawable);
        }
        return this.mAnimatedVectorState.mVectorDrawable.isAutoMirrored();
    }

    public boolean isRunning() {
        if (this.mDelegateDrawable != null) {
            return ((AnimatedVectorDrawable)this.mDelegateDrawable).isRunning();
        }
        ArrayList<Animator> arrayList = this.mAnimatedVectorState.mAnimators;
        int n2 = arrayList.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            if (!arrayList.get(i2).isRunning()) continue;
            return true;
        }
        return false;
    }

    public boolean isStateful() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.isStateful();
        }
        return this.mAnimatedVectorState.mVectorDrawable.isStateful();
    }

    public Drawable mutate() {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.mutate();
            return this;
        }
        throw new IllegalStateException("Mutate() is not supported for older platform");
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setBounds(rect);
            return;
        }
        this.mAnimatedVectorState.mVectorDrawable.setBounds(rect);
    }

    @Override
    protected boolean onLevelChange(int n2) {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.setLevel(n2);
        }
        return this.mAnimatedVectorState.mVectorDrawable.setLevel(n2);
    }

    protected boolean onStateChange(int[] arrn) {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.setState(arrn);
        }
        return this.mAnimatedVectorState.mVectorDrawable.setState(arrn);
    }

    public void setAlpha(int n2) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setAlpha(n2);
            return;
        }
        this.mAnimatedVectorState.mVectorDrawable.setAlpha(n2);
    }

    public void setAutoMirrored(boolean bl) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setAutoMirrored(bl);
            return;
        }
        this.mAnimatedVectorState.mVectorDrawable.setAutoMirrored(bl);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setColorFilter(colorFilter);
            return;
        }
        this.mAnimatedVectorState.mVectorDrawable.setColorFilter(colorFilter);
    }

    @Override
    public void setTint(int n2) {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.setTint(this.mDelegateDrawable, n2);
            return;
        }
        this.mAnimatedVectorState.mVectorDrawable.setTint(n2);
    }

    @Override
    public void setTintList(ColorStateList colorStateList) {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.setTintList(this.mDelegateDrawable, colorStateList);
            return;
        }
        this.mAnimatedVectorState.mVectorDrawable.setTintList(colorStateList);
    }

    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.setTintMode(this.mDelegateDrawable, mode);
            return;
        }
        this.mAnimatedVectorState.mVectorDrawable.setTintMode(mode);
    }

    public boolean setVisible(boolean bl, boolean bl2) {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.setVisible(bl, bl2);
        }
        this.mAnimatedVectorState.mVectorDrawable.setVisible(bl, bl2);
        return super.setVisible(bl, bl2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void start() {
        if (this.mDelegateDrawable != null) {
            ((AnimatedVectorDrawable)this.mDelegateDrawable).start();
            return;
        } else {
            if (this.isStarted()) return;
            {
                ArrayList<Animator> arrayList = this.mAnimatedVectorState.mAnimators;
                int n2 = arrayList.size();
                int n3 = 0;
                do {
                    if (n3 >= n2) {
                        this.invalidateSelf();
                        return;
                    }
                    arrayList.get(n3).start();
                    ++n3;
                } while (true);
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void stop() {
        if (this.mDelegateDrawable != null) {
            ((AnimatedVectorDrawable)this.mDelegateDrawable).stop();
            return;
        }
        ArrayList<Animator> arrayList = this.mAnimatedVectorState.mAnimators;
        int n2 = arrayList.size();
        int n3 = 0;
        while (n3 < n2) {
            arrayList.get(n3).end();
            ++n3;
        }
    }

    private static class AnimatedVectorDrawableCompatState
    extends Drawable.ConstantState {
        ArrayList<Animator> mAnimators;
        int mChangingConfigurations;
        ArrayMap<Animator, String> mTargetNameMap;
        VectorDrawableCompat mVectorDrawable;

        /*
         * Enabled aggressive block sorting
         */
        public AnimatedVectorDrawableCompatState(Context context, AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState, Drawable.Callback object, Resources resources) {
            if (animatedVectorDrawableCompatState != null) {
                this.mChangingConfigurations = animatedVectorDrawableCompatState.mChangingConfigurations;
                if (animatedVectorDrawableCompatState.mVectorDrawable != null) {
                    context = animatedVectorDrawableCompatState.mVectorDrawable.getConstantState();
                    this.mVectorDrawable = resources != null ? (VectorDrawableCompat)context.newDrawable(resources) : (VectorDrawableCompat)context.newDrawable();
                    this.mVectorDrawable = (VectorDrawableCompat)this.mVectorDrawable.mutate();
                    this.mVectorDrawable.setCallback((Drawable.Callback)object);
                    this.mVectorDrawable.setBounds(animatedVectorDrawableCompatState.mVectorDrawable.getBounds());
                    this.mVectorDrawable.setAllowCaching(false);
                }
                if (animatedVectorDrawableCompatState.mAnimators != null) {
                    int n2 = animatedVectorDrawableCompatState.mAnimators.size();
                    this.mAnimators = new ArrayList(n2);
                    this.mTargetNameMap = new ArrayMap(n2);
                    int n3 = 0;
                    while (n3 < n2) {
                        object = animatedVectorDrawableCompatState.mAnimators.get(n3);
                        context = object.clone();
                        object = animatedVectorDrawableCompatState.mTargetNameMap.get(object);
                        context.setTarget(this.mVectorDrawable.getTargetByName((String)object));
                        this.mAnimators.add((Animator)context);
                        this.mTargetNameMap.put((Animator)context, (String)object);
                        ++n3;
                    }
                    return;
                }
            }
        }

        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    private static class AnimatedVectorDrawableDelegateState
    extends Drawable.ConstantState {
        private final Drawable.ConstantState mDelegateState;

        public AnimatedVectorDrawableDelegateState(Drawable.ConstantState constantState) {
            this.mDelegateState = constantState;
        }

        public boolean canApplyTheme() {
            return this.mDelegateState.canApplyTheme();
        }

        public int getChangingConfigurations() {
            return this.mDelegateState.getChangingConfigurations();
        }

        public Drawable newDrawable() {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            animatedVectorDrawableCompat.mDelegateDrawable = this.mDelegateState.newDrawable();
            animatedVectorDrawableCompat.mDelegateDrawable.setCallback(animatedVectorDrawableCompat.mCallback);
            return animatedVectorDrawableCompat;
        }

        public Drawable newDrawable(Resources resources) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            animatedVectorDrawableCompat.mDelegateDrawable = this.mDelegateState.newDrawable(resources);
            animatedVectorDrawableCompat.mDelegateDrawable.setCallback(animatedVectorDrawableCompat.mCallback);
            return animatedVectorDrawableCompat;
        }

        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            animatedVectorDrawableCompat.mDelegateDrawable = this.mDelegateState.newDrawable(resources, theme);
            animatedVectorDrawableCompat.mDelegateDrawable.setCallback(animatedVectorDrawableCompat.mCallback);
            return animatedVectorDrawableCompat;
        }
    }

}

