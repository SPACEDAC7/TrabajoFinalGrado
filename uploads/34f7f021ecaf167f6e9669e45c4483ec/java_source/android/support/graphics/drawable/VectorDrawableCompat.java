/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.TypedArray
 *  android.content.res.XmlResourceParser
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.graphics.Canvas
 *  android.graphics.Color
 *  android.graphics.ColorFilter
 *  android.graphics.Matrix
 *  android.graphics.Paint
 *  android.graphics.Paint$Cap
 *  android.graphics.Paint$Join
 *  android.graphics.Paint$Style
 *  android.graphics.Path
 *  android.graphics.PathMeasure
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.PorterDuffColorFilter
 *  android.graphics.Rect
 *  android.graphics.Region
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$ConstantState
 *  android.graphics.drawable.VectorDrawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.util.Log
 *  android.util.Xml
 *  org.xmlpull.v1.XmlPullParser
 *  org.xmlpull.v1.XmlPullParserException
 */
package android.support.graphics.drawable;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.graphics.drawable.AndroidResources;
import android.support.graphics.drawable.PathParser;
import android.support.graphics.drawable.TypedArrayUtils;
import android.support.graphics.drawable.VectorDrawableCommon;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@TargetApi(value=21)
public class VectorDrawableCompat
extends VectorDrawableCommon {
    private static final boolean DBG_VECTOR_DRAWABLE = false;
    static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;
    private static final int LINECAP_BUTT = 0;
    private static final int LINECAP_ROUND = 1;
    private static final int LINECAP_SQUARE = 2;
    private static final int LINEJOIN_BEVEL = 2;
    private static final int LINEJOIN_MITER = 0;
    private static final int LINEJOIN_ROUND = 1;
    static final String LOGTAG = "VectorDrawableCompat";
    private static final int MAX_CACHED_BITMAP_SIZE = 2048;
    private static final String SHAPE_CLIP_PATH = "clip-path";
    private static final String SHAPE_GROUP = "group";
    private static final String SHAPE_PATH = "path";
    private static final String SHAPE_VECTOR = "vector";
    private boolean mAllowCaching = true;
    private Drawable.ConstantState mCachedConstantStateDelegate;
    private ColorFilter mColorFilter;
    private boolean mMutated;
    private PorterDuffColorFilter mTintFilter;
    private final Rect mTmpBounds = new Rect();
    private final float[] mTmpFloats = new float[9];
    private final Matrix mTmpMatrix = new Matrix();
    private VectorDrawableCompatState mVectorState;

    VectorDrawableCompat() {
        this.mVectorState = new VectorDrawableCompatState();
    }

    VectorDrawableCompat(@NonNull VectorDrawableCompatState vectorDrawableCompatState) {
        this.mVectorState = vectorDrawableCompatState;
        this.mTintFilter = this.updateTintFilter(this.mTintFilter, vectorDrawableCompatState.mTint, vectorDrawableCompatState.mTintMode);
    }

    static int applyAlpha(int n2, float f2) {
        return n2 & 16777215 | (int)((float)Color.alpha((int)n2) * f2) << 24;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Nullable
    public static VectorDrawableCompat create(@NonNull Resources object, @DrawableRes int n2, @Nullable Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 24) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = ResourcesCompat.getDrawable((Resources)object, n2, theme);
            vectorDrawableCompat.mCachedConstantStateDelegate = new VectorDrawableDelegateState(vectorDrawableCompat.mDelegateDrawable.getConstantState());
            return vectorDrawableCompat;
        }
        try {
            XmlResourceParser xmlResourceParser = object.getXml(n2);
            AttributeSet attributeSet = Xml.asAttributeSet((XmlPullParser)xmlResourceParser);
            while ((n2 = xmlResourceParser.next()) != 2 && n2 != 1) {
            }
            if (n2 == 2) return VectorDrawableCompat.createFromXmlInner((Resources)object, (XmlPullParser)xmlResourceParser, attributeSet, theme);
            throw new XmlPullParserException("No start tag found");
        }
        catch (XmlPullParserException var0_1) {
            Log.e((String)"VectorDrawableCompat", (String)"parser error", (Throwable)var0_1);
            return null;
        }
        catch (IOException var0_2) {
            Log.e((String)"VectorDrawableCompat", (String)"parser error", (Throwable)var0_2);
            return null;
        }
    }

    public static VectorDrawableCompat createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
        vectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return vectorDrawableCompat;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void inflateInternal(Resources object, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        VPathRenderer vPathRenderer = vectorDrawableCompatState.mVPathRenderer;
        boolean bl = true;
        Stack<Object> stack = new Stack<Object>();
        stack.push(vPathRenderer.mRootGroup);
        int n2 = xmlPullParser.getEventType();
        int n3 = xmlPullParser.getDepth();
        while (n2 != 1 && (xmlPullParser.getDepth() >= n3 + 1 || n2 != 3)) {
            boolean bl2;
            if (n2 == 2) {
                Object object2 = xmlPullParser.getName();
                VGroup vGroup = (VGroup)stack.peek();
                if ("path".equals(object2)) {
                    object2 = new VFullPath();
                    object2.inflate((Resources)object, attributeSet, theme, xmlPullParser);
                    vGroup.mChildren.add(object2);
                    if (object2.getPathName() != null) {
                        vPathRenderer.mVGTargetsMap.put(object2.getPathName(), object2);
                    }
                    bl2 = false;
                    vectorDrawableCompatState.mChangingConfigurations |= object2.mChangingConfigurations;
                } else if ("clip-path".equals(object2)) {
                    object2 = new VClipPath();
                    object2.inflate((Resources)object, attributeSet, theme, xmlPullParser);
                    vGroup.mChildren.add(object2);
                    if (object2.getPathName() != null) {
                        vPathRenderer.mVGTargetsMap.put(object2.getPathName(), object2);
                    }
                    vectorDrawableCompatState.mChangingConfigurations |= object2.mChangingConfigurations;
                    bl2 = bl;
                } else {
                    bl2 = bl;
                    if ("group".equals(object2)) {
                        object2 = new VGroup();
                        object2.inflate((Resources)object, attributeSet, theme, xmlPullParser);
                        vGroup.mChildren.add(object2);
                        stack.push(object2);
                        if (object2.getGroupName() != null) {
                            vPathRenderer.mVGTargetsMap.put(object2.getGroupName(), object2);
                        }
                        vectorDrawableCompatState.mChangingConfigurations |= object2.mChangingConfigurations;
                        bl2 = bl;
                    }
                }
            } else {
                bl2 = bl;
                if (n2 == 3) {
                    bl2 = bl;
                    if ("group".equals(xmlPullParser.getName())) {
                        stack.pop();
                        bl2 = bl;
                    }
                }
            }
            n2 = xmlPullParser.next();
            bl = bl2;
        }
        if (!bl) {
            return;
        }
        object = new StringBuffer();
        if (object.length() > 0) {
            object.append(" or ");
        }
        object.append("path");
        throw new XmlPullParserException("no " + object + " defined");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean needMirroring() {
        boolean bl = true;
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        if (!this.isAutoMirrored()) return false;
        if (this.getLayoutDirection() != 1) return false;
        return bl;
    }

    private static PorterDuff.Mode parseTintModeCompat(int n2, PorterDuff.Mode mode) {
        switch (n2) {
            default: {
                return mode;
            }
            case 3: {
                return PorterDuff.Mode.SRC_OVER;
            }
            case 5: {
                return PorterDuff.Mode.SRC_IN;
            }
            case 9: {
                return PorterDuff.Mode.SRC_ATOP;
            }
            case 14: {
                return PorterDuff.Mode.MULTIPLY;
            }
            case 15: {
                return PorterDuff.Mode.SCREEN;
            }
            case 16: 
        }
        return PorterDuff.Mode.ADD;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void printGroupTree(VGroup vGroup, int n2) {
        int n3;
        Object object = "";
        for (n3 = 0; n3 < n2; ++n3) {
            object = (String)object + "    ";
        }
        Log.v((String)"VectorDrawableCompat", (String)((String)object + "current group is :" + vGroup.getGroupName() + " rotation is " + vGroup.mRotate));
        Log.v((String)"VectorDrawableCompat", (String)((String)object + "matrix is :" + vGroup.getLocalMatrix().toString()));
        n3 = 0;
        while (n3 < vGroup.mChildren.size()) {
            object = vGroup.mChildren.get(n3);
            if (object instanceof VGroup) {
                this.printGroupTree((VGroup)object, n2 + 1);
            } else {
                ((VPath)object).printVPath(n2 + 1);
            }
            ++n3;
        }
    }

    private void updateStateFromTypedArray(TypedArray object, XmlPullParser xmlPullParser) throws XmlPullParserException {
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        VPathRenderer vPathRenderer = vectorDrawableCompatState.mVPathRenderer;
        vectorDrawableCompatState.mTintMode = VectorDrawableCompat.parseTintModeCompat(TypedArrayUtils.getNamedInt((TypedArray)object, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList colorStateList = object.getColorStateList(1);
        if (colorStateList != null) {
            vectorDrawableCompatState.mTint = colorStateList;
        }
        vectorDrawableCompatState.mAutoMirrored = TypedArrayUtils.getNamedBoolean((TypedArray)object, xmlPullParser, "autoMirrored", 5, vectorDrawableCompatState.mAutoMirrored);
        vPathRenderer.mViewportWidth = TypedArrayUtils.getNamedFloat((TypedArray)object, xmlPullParser, "viewportWidth", 7, vPathRenderer.mViewportWidth);
        vPathRenderer.mViewportHeight = TypedArrayUtils.getNamedFloat((TypedArray)object, xmlPullParser, "viewportHeight", 8, vPathRenderer.mViewportHeight);
        if (vPathRenderer.mViewportWidth <= 0.0f) {
            throw new XmlPullParserException(object.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (vPathRenderer.mViewportHeight <= 0.0f) {
            throw new XmlPullParserException(object.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        vPathRenderer.mBaseWidth = object.getDimension(3, vPathRenderer.mBaseWidth);
        vPathRenderer.mBaseHeight = object.getDimension(2, vPathRenderer.mBaseHeight);
        if (vPathRenderer.mBaseWidth <= 0.0f) {
            throw new XmlPullParserException(object.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (vPathRenderer.mBaseHeight <= 0.0f) {
            throw new XmlPullParserException(object.getPositionDescription() + "<vector> tag requires height > 0");
        }
        vPathRenderer.setAlpha(TypedArrayUtils.getNamedFloat((TypedArray)object, xmlPullParser, "alpha", 4, vPathRenderer.getAlpha()));
        object = object.getString(0);
        if (object != null) {
            vPathRenderer.mRootName = object;
            vPathRenderer.mVGTargetsMap.put((String)object, vPathRenderer);
        }
    }

    public boolean canApplyTheme() {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.canApplyTheme(this.mDelegateDrawable);
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
        }
        this.copyBounds(this.mTmpBounds);
        if (this.mTmpBounds.width() <= 0 || this.mTmpBounds.height() <= 0) return;
        PorterDuffColorFilter porterDuffColorFilter = this.mColorFilter == null ? this.mTintFilter : this.mColorFilter;
        canvas.getMatrix(this.mTmpMatrix);
        this.mTmpMatrix.getValues(this.mTmpFloats);
        float f2 = Math.abs(this.mTmpFloats[0]);
        float f3 = Math.abs(this.mTmpFloats[4]);
        float f4 = Math.abs(this.mTmpFloats[1]);
        float f5 = Math.abs(this.mTmpFloats[3]);
        if (f4 != 0.0f || f5 != 0.0f) {
            f2 = 1.0f;
            f3 = 1.0f;
        }
        int n2 = (int)((float)this.mTmpBounds.width() * f2);
        int n3 = (int)((float)this.mTmpBounds.height() * f3);
        n2 = Math.min(2048, n2);
        n3 = Math.min(2048, n3);
        if (n2 <= 0 || n3 <= 0) return;
        int n4 = canvas.save();
        canvas.translate((float)this.mTmpBounds.left, (float)this.mTmpBounds.top);
        if (this.needMirroring()) {
            canvas.translate((float)this.mTmpBounds.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.mTmpBounds.offsetTo(0, 0);
        this.mVectorState.createCachedBitmapIfNeeded(n2, n3);
        if (!this.mAllowCaching) {
            this.mVectorState.updateCachedBitmap(n2, n3);
        } else if (!this.mVectorState.canReuseCache()) {
            this.mVectorState.updateCachedBitmap(n2, n3);
            this.mVectorState.updateCacheStates();
        }
        this.mVectorState.drawCachedBitmapWithRootAlpha(canvas, (ColorFilter)porterDuffColorFilter, this.mTmpBounds);
        canvas.restoreToCount(n4);
    }

    public int getAlpha() {
        if (this.mDelegateDrawable != null) {
            return DrawableCompat.getAlpha(this.mDelegateDrawable);
        }
        return this.mVectorState.mVPathRenderer.getRootAlpha();
    }

    public int getChangingConfigurations() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.mVectorState.getChangingConfigurations();
    }

    public Drawable.ConstantState getConstantState() {
        if (this.mDelegateDrawable != null) {
            return new VectorDrawableDelegateState(this.mDelegateDrawable.getConstantState());
        }
        this.mVectorState.mChangingConfigurations = this.getChangingConfigurations();
        return this.mVectorState;
    }

    public int getIntrinsicHeight() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getIntrinsicHeight();
        }
        return (int)this.mVectorState.mVPathRenderer.mBaseHeight;
    }

    public int getIntrinsicWidth() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getIntrinsicWidth();
        }
        return (int)this.mVectorState.mVPathRenderer.mBaseWidth;
    }

    public int getOpacity() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getOpacity();
        }
        return -3;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public float getPixelSize() {
        if (this.mVectorState == null && this.mVectorState.mVPathRenderer == null || this.mVectorState.mVPathRenderer.mBaseWidth == 0.0f || this.mVectorState.mVPathRenderer.mBaseHeight == 0.0f || this.mVectorState.mVPathRenderer.mViewportHeight == 0.0f || this.mVectorState.mVPathRenderer.mViewportWidth == 0.0f) {
            return 1.0f;
        }
        float f2 = this.mVectorState.mVPathRenderer.mBaseWidth;
        float f3 = this.mVectorState.mVPathRenderer.mBaseHeight;
        float f4 = this.mVectorState.mVPathRenderer.mViewportWidth;
        float f5 = this.mVectorState.mVPathRenderer.mViewportHeight;
        return Math.min(f4 / f2, f5 / f3);
    }

    Object getTargetByName(String string2) {
        return this.mVectorState.mVPathRenderer.mVGTargetsMap.get(string2);
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.inflate(resources, xmlPullParser, attributeSet);
            return;
        }
        this.inflate(resources, xmlPullParser, attributeSet, null);
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.inflate(this.mDelegateDrawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        vectorDrawableCompatState.mVPathRenderer = new VPathRenderer();
        TypedArray typedArray = VectorDrawableCompat.obtainAttributes(resources, theme, attributeSet, AndroidResources.styleable_VectorDrawableTypeArray);
        this.updateStateFromTypedArray(typedArray, xmlPullParser);
        typedArray.recycle();
        vectorDrawableCompatState.mChangingConfigurations = this.getChangingConfigurations();
        vectorDrawableCompatState.mCacheDirty = true;
        this.inflateInternal(resources, xmlPullParser, attributeSet, theme);
        this.mTintFilter = this.updateTintFilter(this.mTintFilter, vectorDrawableCompatState.mTint, vectorDrawableCompatState.mTintMode);
    }

    public void invalidateSelf() {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.invalidateSelf();
            return;
        }
        super.invalidateSelf();
    }

    public boolean isAutoMirrored() {
        if (this.mDelegateDrawable != null) {
            return DrawableCompat.isAutoMirrored(this.mDelegateDrawable);
        }
        return this.mVectorState.mAutoMirrored;
    }

    public boolean isStateful() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.isStateful();
        }
        if (super.isStateful() || this.mVectorState != null && this.mVectorState.mTint != null && this.mVectorState.mTint.isStateful()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public Drawable mutate() {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.mutate();
            return this;
        } else {
            if (this.mMutated || super.mutate() != this) return this;
            {
                this.mVectorState = new VectorDrawableCompatState(this.mVectorState);
                this.mMutated = true;
                return this;
            }
        }
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setBounds(rect);
        }
    }

    protected boolean onStateChange(int[] object) {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.setState((int[])object);
        }
        object = this.mVectorState;
        if (object.mTint != null && object.mTintMode != null) {
            this.mTintFilter = this.updateTintFilter(this.mTintFilter, object.mTint, object.mTintMode);
            this.invalidateSelf();
            return true;
        }
        return false;
    }

    public void scheduleSelf(Runnable runnable, long l2) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.scheduleSelf(runnable, l2);
            return;
        }
        super.scheduleSelf(runnable, l2);
    }

    void setAllowCaching(boolean bl) {
        this.mAllowCaching = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setAlpha(int n2) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setAlpha(n2);
            return;
        } else {
            if (this.mVectorState.mVPathRenderer.getRootAlpha() == n2) return;
            {
                this.mVectorState.mVPathRenderer.setRootAlpha(n2);
                this.invalidateSelf();
                return;
            }
        }
    }

    public void setAutoMirrored(boolean bl) {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.setAutoMirrored(this.mDelegateDrawable, bl);
            return;
        }
        this.mVectorState.mAutoMirrored = bl;
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setColorFilter(colorFilter);
            return;
        }
        this.mColorFilter = colorFilter;
        this.invalidateSelf();
    }

    @Override
    public void setTint(int n2) {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.setTint(this.mDelegateDrawable, n2);
            return;
        }
        this.setTintList(ColorStateList.valueOf((int)n2));
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setTintList(ColorStateList colorStateList) {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.setTintList(this.mDelegateDrawable, colorStateList);
            return;
        } else {
            VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
            if (vectorDrawableCompatState.mTint == colorStateList) return;
            {
                vectorDrawableCompatState.mTint = colorStateList;
                this.mTintFilter = this.updateTintFilter(this.mTintFilter, colorStateList, vectorDrawableCompatState.mTintMode);
                this.invalidateSelf();
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.setTintMode(this.mDelegateDrawable, mode);
            return;
        } else {
            VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
            if (vectorDrawableCompatState.mTintMode == mode) return;
            {
                vectorDrawableCompatState.mTintMode = mode;
                this.mTintFilter = this.updateTintFilter(this.mTintFilter, vectorDrawableCompatState.mTint, mode);
                this.invalidateSelf();
                return;
            }
        }
    }

    public boolean setVisible(boolean bl, boolean bl2) {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.setVisible(bl, bl2);
        }
        return super.setVisible(bl, bl2);
    }

    public void unscheduleSelf(Runnable runnable) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.unscheduleSelf(runnable);
            return;
        }
        super.unscheduleSelf(runnable);
    }

    PorterDuffColorFilter updateTintFilter(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(this.getState(), 0), mode);
    }

    private static class VClipPath
    extends VPath {
        public VClipPath() {
        }

        public VClipPath(VClipPath vClipPath) {
            super(vClipPath);
        }

        private void updateStateFromTypedArray(TypedArray object) {
            String string2 = object.getString(0);
            if (string2 != null) {
                this.mPathName = string2;
            }
            if ((object = object.getString(1)) != null) {
                this.mNodes = PathParser.createNodesFromPathData((String)object);
            }
        }

        public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (!TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
                return;
            }
            resources = VectorDrawableCommon.obtainAttributes(resources, theme, attributeSet, AndroidResources.styleable_VectorDrawableClipPath);
            this.updateStateFromTypedArray((TypedArray)resources);
            resources.recycle();
        }

        @Override
        public boolean isClipPath() {
            return true;
        }
    }

    private static class VFullPath
    extends VPath {
        float mFillAlpha = 1.0f;
        int mFillColor = 0;
        int mFillRule;
        float mStrokeAlpha = 1.0f;
        int mStrokeColor = 0;
        Paint.Cap mStrokeLineCap = Paint.Cap.BUTT;
        Paint.Join mStrokeLineJoin = Paint.Join.MITER;
        float mStrokeMiterlimit = 4.0f;
        float mStrokeWidth = 0.0f;
        private int[] mThemeAttrs;
        float mTrimPathEnd = 1.0f;
        float mTrimPathOffset = 0.0f;
        float mTrimPathStart = 0.0f;

        public VFullPath() {
        }

        public VFullPath(VFullPath vFullPath) {
            super(vFullPath);
            this.mThemeAttrs = vFullPath.mThemeAttrs;
            this.mStrokeColor = vFullPath.mStrokeColor;
            this.mStrokeWidth = vFullPath.mStrokeWidth;
            this.mStrokeAlpha = vFullPath.mStrokeAlpha;
            this.mFillColor = vFullPath.mFillColor;
            this.mFillRule = vFullPath.mFillRule;
            this.mFillAlpha = vFullPath.mFillAlpha;
            this.mTrimPathStart = vFullPath.mTrimPathStart;
            this.mTrimPathEnd = vFullPath.mTrimPathEnd;
            this.mTrimPathOffset = vFullPath.mTrimPathOffset;
            this.mStrokeLineCap = vFullPath.mStrokeLineCap;
            this.mStrokeLineJoin = vFullPath.mStrokeLineJoin;
            this.mStrokeMiterlimit = vFullPath.mStrokeMiterlimit;
        }

        private Paint.Cap getStrokeLineCap(int n2, Paint.Cap cap) {
            switch (n2) {
                default: {
                    return cap;
                }
                case 0: {
                    return Paint.Cap.BUTT;
                }
                case 1: {
                    return Paint.Cap.ROUND;
                }
                case 2: 
            }
            return Paint.Cap.SQUARE;
        }

        private Paint.Join getStrokeLineJoin(int n2, Paint.Join join) {
            switch (n2) {
                default: {
                    return join;
                }
                case 0: {
                    return Paint.Join.MITER;
                }
                case 1: {
                    return Paint.Join.ROUND;
                }
                case 2: 
            }
            return Paint.Join.BEVEL;
        }

        private void updateStateFromTypedArray(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.mThemeAttrs = null;
            if (!TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
                return;
            }
            String string2 = typedArray.getString(0);
            if (string2 != null) {
                this.mPathName = string2;
            }
            if ((string2 = typedArray.getString(2)) != null) {
                this.mNodes = PathParser.createNodesFromPathData(string2);
            }
            this.mFillColor = TypedArrayUtils.getNamedColor(typedArray, xmlPullParser, "fillColor", 1, this.mFillColor);
            this.mFillAlpha = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "fillAlpha", 12, this.mFillAlpha);
            this.mStrokeLineCap = this.getStrokeLineCap(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.mStrokeLineCap);
            this.mStrokeLineJoin = this.getStrokeLineJoin(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.mStrokeLineJoin);
            this.mStrokeMiterlimit = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.mStrokeMiterlimit);
            this.mStrokeColor = TypedArrayUtils.getNamedColor(typedArray, xmlPullParser, "strokeColor", 3, this.mStrokeColor);
            this.mStrokeAlpha = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeAlpha", 11, this.mStrokeAlpha);
            this.mStrokeWidth = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeWidth", 4, this.mStrokeWidth);
            this.mTrimPathEnd = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathEnd", 6, this.mTrimPathEnd);
            this.mTrimPathOffset = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathOffset", 7, this.mTrimPathOffset);
            this.mTrimPathStart = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathStart", 5, this.mTrimPathStart);
        }

        @Override
        public void applyTheme(Resources.Theme theme) {
            if (this.mThemeAttrs == null) {
                // empty if block
            }
        }

        @Override
        public boolean canApplyTheme() {
            if (this.mThemeAttrs != null) {
                return true;
            }
            return false;
        }

        float getFillAlpha() {
            return this.mFillAlpha;
        }

        int getFillColor() {
            return this.mFillColor;
        }

        float getStrokeAlpha() {
            return this.mStrokeAlpha;
        }

        int getStrokeColor() {
            return this.mStrokeColor;
        }

        float getStrokeWidth() {
            return this.mStrokeWidth;
        }

        float getTrimPathEnd() {
            return this.mTrimPathEnd;
        }

        float getTrimPathOffset() {
            return this.mTrimPathOffset;
        }

        float getTrimPathStart() {
            return this.mTrimPathStart;
        }

        public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            resources = VectorDrawableCommon.obtainAttributes(resources, theme, attributeSet, AndroidResources.styleable_VectorDrawablePath);
            this.updateStateFromTypedArray((TypedArray)resources, xmlPullParser);
            resources.recycle();
        }

        void setFillAlpha(float f2) {
            this.mFillAlpha = f2;
        }

        void setFillColor(int n2) {
            this.mFillColor = n2;
        }

        void setStrokeAlpha(float f2) {
            this.mStrokeAlpha = f2;
        }

        void setStrokeColor(int n2) {
            this.mStrokeColor = n2;
        }

        void setStrokeWidth(float f2) {
            this.mStrokeWidth = f2;
        }

        void setTrimPathEnd(float f2) {
            this.mTrimPathEnd = f2;
        }

        void setTrimPathOffset(float f2) {
            this.mTrimPathOffset = f2;
        }

        void setTrimPathStart(float f2) {
            this.mTrimPathStart = f2;
        }
    }

    private static class VGroup {
        int mChangingConfigurations;
        final ArrayList<Object> mChildren = new ArrayList();
        private String mGroupName = null;
        private final Matrix mLocalMatrix = new Matrix();
        private float mPivotX = 0.0f;
        private float mPivotY = 0.0f;
        float mRotate = 0.0f;
        private float mScaleX = 1.0f;
        private float mScaleY = 1.0f;
        private final Matrix mStackedMatrix = new Matrix();
        private int[] mThemeAttrs;
        private float mTranslateX = 0.0f;
        private float mTranslateY = 0.0f;

        public VGroup() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public VGroup(VGroup object, ArrayMap<String, Object> arrayMap) {
            this.mRotate = object.mRotate;
            this.mPivotX = object.mPivotX;
            this.mPivotY = object.mPivotY;
            this.mScaleX = object.mScaleX;
            this.mScaleY = object.mScaleY;
            this.mTranslateX = object.mTranslateX;
            this.mTranslateY = object.mTranslateY;
            this.mThemeAttrs = object.mThemeAttrs;
            this.mGroupName = object.mGroupName;
            this.mChangingConfigurations = object.mChangingConfigurations;
            if (this.mGroupName != null) {
                arrayMap.put(this.mGroupName, this);
            }
            this.mLocalMatrix.set(object.mLocalMatrix);
            ArrayList<Object> arrayList = object.mChildren;
            int n2 = 0;
            while (n2 < arrayList.size()) {
                object = arrayList.get(n2);
                if (object instanceof VGroup) {
                    object = (VGroup)object;
                    this.mChildren.add(new VGroup((VGroup)object, arrayMap));
                } else {
                    if (object instanceof VFullPath) {
                        object = new VFullPath((VFullPath)object);
                    } else {
                        if (!(object instanceof VClipPath)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        object = new VClipPath((VClipPath)object);
                    }
                    this.mChildren.add(object);
                    if (object.mPathName != null) {
                        arrayMap.put(object.mPathName, object);
                    }
                }
                ++n2;
            }
        }

        private void updateLocalMatrix() {
            this.mLocalMatrix.reset();
            this.mLocalMatrix.postTranslate(- this.mPivotX, - this.mPivotY);
            this.mLocalMatrix.postScale(this.mScaleX, this.mScaleY);
            this.mLocalMatrix.postRotate(this.mRotate, 0.0f, 0.0f);
            this.mLocalMatrix.postTranslate(this.mTranslateX + this.mPivotX, this.mTranslateY + this.mPivotY);
        }

        private void updateStateFromTypedArray(TypedArray object, XmlPullParser xmlPullParser) {
            this.mThemeAttrs = null;
            this.mRotate = TypedArrayUtils.getNamedFloat((TypedArray)object, xmlPullParser, "rotation", 5, this.mRotate);
            this.mPivotX = object.getFloat(1, this.mPivotX);
            this.mPivotY = object.getFloat(2, this.mPivotY);
            this.mScaleX = TypedArrayUtils.getNamedFloat((TypedArray)object, xmlPullParser, "scaleX", 3, this.mScaleX);
            this.mScaleY = TypedArrayUtils.getNamedFloat((TypedArray)object, xmlPullParser, "scaleY", 4, this.mScaleY);
            this.mTranslateX = TypedArrayUtils.getNamedFloat((TypedArray)object, xmlPullParser, "translateX", 6, this.mTranslateX);
            this.mTranslateY = TypedArrayUtils.getNamedFloat((TypedArray)object, xmlPullParser, "translateY", 7, this.mTranslateY);
            if ((object = object.getString(0)) != null) {
                this.mGroupName = object;
            }
            this.updateLocalMatrix();
        }

        public String getGroupName() {
            return this.mGroupName;
        }

        public Matrix getLocalMatrix() {
            return this.mLocalMatrix;
        }

        public float getPivotX() {
            return this.mPivotX;
        }

        public float getPivotY() {
            return this.mPivotY;
        }

        public float getRotation() {
            return this.mRotate;
        }

        public float getScaleX() {
            return this.mScaleX;
        }

        public float getScaleY() {
            return this.mScaleY;
        }

        public float getTranslateX() {
            return this.mTranslateX;
        }

        public float getTranslateY() {
            return this.mTranslateY;
        }

        public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            resources = VectorDrawableCommon.obtainAttributes(resources, theme, attributeSet, AndroidResources.styleable_VectorDrawableGroup);
            this.updateStateFromTypedArray((TypedArray)resources, xmlPullParser);
            resources.recycle();
        }

        public void setPivotX(float f2) {
            if (f2 != this.mPivotX) {
                this.mPivotX = f2;
                this.updateLocalMatrix();
            }
        }

        public void setPivotY(float f2) {
            if (f2 != this.mPivotY) {
                this.mPivotY = f2;
                this.updateLocalMatrix();
            }
        }

        public void setRotation(float f2) {
            if (f2 != this.mRotate) {
                this.mRotate = f2;
                this.updateLocalMatrix();
            }
        }

        public void setScaleX(float f2) {
            if (f2 != this.mScaleX) {
                this.mScaleX = f2;
                this.updateLocalMatrix();
            }
        }

        public void setScaleY(float f2) {
            if (f2 != this.mScaleY) {
                this.mScaleY = f2;
                this.updateLocalMatrix();
            }
        }

        public void setTranslateX(float f2) {
            if (f2 != this.mTranslateX) {
                this.mTranslateX = f2;
                this.updateLocalMatrix();
            }
        }

        public void setTranslateY(float f2) {
            if (f2 != this.mTranslateY) {
                this.mTranslateY = f2;
                this.updateLocalMatrix();
            }
        }
    }

    private static class VPath {
        int mChangingConfigurations;
        protected PathParser.PathDataNode[] mNodes = null;
        String mPathName;

        public VPath() {
        }

        public VPath(VPath vPath) {
            this.mPathName = vPath.mPathName;
            this.mChangingConfigurations = vPath.mChangingConfigurations;
            this.mNodes = PathParser.deepCopyNodes(vPath.mNodes);
        }

        public String NodesToString(PathParser.PathDataNode[] arrpathDataNode) {
            String string2 = " ";
            for (int i2 = 0; i2 < arrpathDataNode.length; ++i2) {
                string2 = string2 + arrpathDataNode[i2].type + ":";
                float[] arrf = arrpathDataNode[i2].params;
                for (int i3 = 0; i3 < arrf.length; ++i3) {
                    string2 = string2 + arrf[i3] + ",";
                }
            }
            return string2;
        }

        public void applyTheme(Resources.Theme theme) {
        }

        public boolean canApplyTheme() {
            return false;
        }

        public PathParser.PathDataNode[] getPathData() {
            return this.mNodes;
        }

        public String getPathName() {
            return this.mPathName;
        }

        public boolean isClipPath() {
            return false;
        }

        public void printVPath(int n2) {
            String string2 = "";
            for (int i2 = 0; i2 < n2; ++i2) {
                string2 = string2 + "    ";
            }
            Log.v((String)"VectorDrawableCompat", (String)(string2 + "current path is :" + this.mPathName + " pathData is " + this.NodesToString(this.mNodes)));
        }

        public void setPathData(PathParser.PathDataNode[] arrpathDataNode) {
            if (!PathParser.canMorph(this.mNodes, arrpathDataNode)) {
                this.mNodes = PathParser.deepCopyNodes(arrpathDataNode);
                return;
            }
            PathParser.updateNodes(this.mNodes, arrpathDataNode);
        }

        public void toPath(Path path) {
            path.reset();
            if (this.mNodes != null) {
                PathParser.PathDataNode.nodesToPath(this.mNodes, path);
            }
        }
    }

    private static class VPathRenderer {
        private static final Matrix IDENTITY_MATRIX = new Matrix();
        float mBaseHeight = 0.0f;
        float mBaseWidth = 0.0f;
        private int mChangingConfigurations;
        private Paint mFillPaint;
        private final Matrix mFinalPathMatrix = new Matrix();
        private final Path mPath;
        private PathMeasure mPathMeasure;
        private final Path mRenderPath;
        int mRootAlpha = 255;
        final VGroup mRootGroup;
        String mRootName = null;
        private Paint mStrokePaint;
        final ArrayMap<String, Object> mVGTargetsMap = new ArrayMap();
        float mViewportHeight = 0.0f;
        float mViewportWidth = 0.0f;

        public VPathRenderer() {
            this.mRootGroup = new VGroup();
            this.mPath = new Path();
            this.mRenderPath = new Path();
        }

        public VPathRenderer(VPathRenderer vPathRenderer) {
            this.mRootGroup = new VGroup(vPathRenderer.mRootGroup, this.mVGTargetsMap);
            this.mPath = new Path(vPathRenderer.mPath);
            this.mRenderPath = new Path(vPathRenderer.mRenderPath);
            this.mBaseWidth = vPathRenderer.mBaseWidth;
            this.mBaseHeight = vPathRenderer.mBaseHeight;
            this.mViewportWidth = vPathRenderer.mViewportWidth;
            this.mViewportHeight = vPathRenderer.mViewportHeight;
            this.mChangingConfigurations = vPathRenderer.mChangingConfigurations;
            this.mRootAlpha = vPathRenderer.mRootAlpha;
            this.mRootName = vPathRenderer.mRootName;
            if (vPathRenderer.mRootName != null) {
                this.mVGTargetsMap.put(vPathRenderer.mRootName, this);
            }
        }

        private static float cross(float f2, float f3, float f4, float f5) {
            return f2 * f5 - f3 * f4;
        }

        /*
         * Enabled aggressive block sorting
         */
        private void drawGroupTree(VGroup vGroup, Matrix object, Canvas canvas, int n2, int n3, ColorFilter colorFilter) {
            vGroup.mStackedMatrix.set((Matrix)object);
            vGroup.mStackedMatrix.preConcat(vGroup.mLocalMatrix);
            canvas.save();
            int n4 = 0;
            do {
                if (n4 >= vGroup.mChildren.size()) {
                    canvas.restore();
                    return;
                }
                object = vGroup.mChildren.get(n4);
                if (object instanceof VGroup) {
                    this.drawGroupTree((VGroup)object, vGroup.mStackedMatrix, canvas, n2, n3, colorFilter);
                } else if (object instanceof VPath) {
                    this.drawPath(vGroup, (VPath)object, canvas, n2, n3, colorFilter);
                }
                ++n4;
            } while (true);
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        private void drawPath(VGroup object, VPath vPath, Canvas canvas, int n2, int n3, ColorFilter colorFilter) {
            float f2 = (float)n2 / this.mViewportWidth;
            float f3 = (float)n3 / this.mViewportHeight;
            float f4 = Math.min(f2, f3);
            object = ((VGroup)object).mStackedMatrix;
            this.mFinalPathMatrix.set((Matrix)object);
            this.mFinalPathMatrix.postScale(f2, f3);
            f2 = this.getMatrixScale((Matrix)object);
            if (f2 == 0.0f) {
                return;
            }
            vPath.toPath(this.mPath);
            Path path = this.mPath;
            this.mRenderPath.reset();
            if (vPath.isClipPath()) {
                this.mRenderPath.addPath(path, this.mFinalPathMatrix);
                canvas.clipPath(this.mRenderPath);
                return;
            }
            object = (VFullPath)vPath;
            if (object.mTrimPathStart != 0.0f || object.mTrimPathEnd != 1.0f) {
                float f5 = object.mTrimPathStart;
                float f6 = object.mTrimPathOffset;
                float f7 = object.mTrimPathEnd;
                float f8 = object.mTrimPathOffset;
                if (this.mPathMeasure == null) {
                    this.mPathMeasure = new PathMeasure();
                }
                this.mPathMeasure.setPath(this.mPath, false);
                f3 = this.mPathMeasure.getLength();
                f5 = (f5 + f6) % 1.0f * f3;
                f7 = (f7 + f8) % 1.0f * f3;
                path.reset();
                if (f5 > f7) {
                    this.mPathMeasure.getSegment(f5, f3, path, true);
                    this.mPathMeasure.getSegment(0.0f, f7, path, true);
                } else {
                    this.mPathMeasure.getSegment(f5, f7, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.mRenderPath.addPath(path, this.mFinalPathMatrix);
            if (object.mFillColor != 0) {
                if (this.mFillPaint == null) {
                    this.mFillPaint = new Paint();
                    this.mFillPaint.setStyle(Paint.Style.FILL);
                    this.mFillPaint.setAntiAlias(true);
                }
                vPath = this.mFillPaint;
                vPath.setColor(VectorDrawableCompat.applyAlpha(object.mFillColor, object.mFillAlpha));
                vPath.setColorFilter(colorFilter);
                canvas.drawPath(this.mRenderPath, (Paint)vPath);
            }
            if (object.mStrokeColor == 0) return;
            if (this.mStrokePaint == null) {
                this.mStrokePaint = new Paint();
                this.mStrokePaint.setStyle(Paint.Style.STROKE);
                this.mStrokePaint.setAntiAlias(true);
            }
            vPath = this.mStrokePaint;
            if (object.mStrokeLineJoin != null) {
                vPath.setStrokeJoin(object.mStrokeLineJoin);
            }
            if (object.mStrokeLineCap != null) {
                vPath.setStrokeCap(object.mStrokeLineCap);
            }
            vPath.setStrokeMiter(object.mStrokeMiterlimit);
            vPath.setColor(VectorDrawableCompat.applyAlpha(object.mStrokeColor, object.mStrokeAlpha));
            vPath.setColorFilter(colorFilter);
            vPath.setStrokeWidth(object.mStrokeWidth * (f4 * f2));
            canvas.drawPath(this.mRenderPath, (Paint)vPath);
        }

        private float getMatrixScale(Matrix matrix) {
            float[] arrf;
            float[] arrf2 = arrf = new float[4];
            arrf2[0] = 0.0f;
            arrf2[1] = 1.0f;
            arrf2[2] = 1.0f;
            arrf2[3] = 0.0f;
            matrix.mapVectors(arrf);
            float f2 = (float)Math.hypot(arrf[0], arrf[1]);
            float f3 = (float)Math.hypot(arrf[2], arrf[3]);
            float f4 = VPathRenderer.cross(arrf[0], arrf[1], arrf[2], arrf[3]);
            f3 = Math.max(f2, f3);
            f2 = 0.0f;
            if (f3 > 0.0f) {
                f2 = Math.abs(f4) / f3;
            }
            return f2;
        }

        public void draw(Canvas canvas, int n2, int n3, ColorFilter colorFilter) {
            this.drawGroupTree(this.mRootGroup, IDENTITY_MATRIX, canvas, n2, n3, colorFilter);
        }

        public float getAlpha() {
            return (float)this.getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.mRootAlpha;
        }

        public void setAlpha(float f2) {
            this.setRootAlpha((int)(255.0f * f2));
        }

        public void setRootAlpha(int n2) {
            this.mRootAlpha = n2;
        }
    }

    private static class VectorDrawableCompatState
    extends Drawable.ConstantState {
        boolean mAutoMirrored;
        boolean mCacheDirty;
        boolean mCachedAutoMirrored;
        Bitmap mCachedBitmap;
        int mCachedRootAlpha;
        int[] mCachedThemeAttrs;
        ColorStateList mCachedTint;
        PorterDuff.Mode mCachedTintMode;
        int mChangingConfigurations;
        Paint mTempPaint;
        ColorStateList mTint = null;
        PorterDuff.Mode mTintMode = VectorDrawableCompat.DEFAULT_TINT_MODE;
        VPathRenderer mVPathRenderer;

        public VectorDrawableCompatState() {
            this.mVPathRenderer = new VPathRenderer();
        }

        public VectorDrawableCompatState(VectorDrawableCompatState vectorDrawableCompatState) {
            if (vectorDrawableCompatState != null) {
                this.mChangingConfigurations = vectorDrawableCompatState.mChangingConfigurations;
                this.mVPathRenderer = new VPathRenderer(vectorDrawableCompatState.mVPathRenderer);
                if (vectorDrawableCompatState.mVPathRenderer.mFillPaint != null) {
                    this.mVPathRenderer.mFillPaint = new Paint(vectorDrawableCompatState.mVPathRenderer.mFillPaint);
                }
                if (vectorDrawableCompatState.mVPathRenderer.mStrokePaint != null) {
                    this.mVPathRenderer.mStrokePaint = new Paint(vectorDrawableCompatState.mVPathRenderer.mStrokePaint);
                }
                this.mTint = vectorDrawableCompatState.mTint;
                this.mTintMode = vectorDrawableCompatState.mTintMode;
                this.mAutoMirrored = vectorDrawableCompatState.mAutoMirrored;
            }
        }

        public boolean canReuseBitmap(int n2, int n3) {
            if (n2 == this.mCachedBitmap.getWidth() && n3 == this.mCachedBitmap.getHeight()) {
                return true;
            }
            return false;
        }

        public boolean canReuseCache() {
            if (!this.mCacheDirty && this.mCachedTint == this.mTint && this.mCachedTintMode == this.mTintMode && this.mCachedAutoMirrored == this.mAutoMirrored && this.mCachedRootAlpha == this.mVPathRenderer.getRootAlpha()) {
                return true;
            }
            return false;
        }

        public void createCachedBitmapIfNeeded(int n2, int n3) {
            if (this.mCachedBitmap == null || !this.canReuseBitmap(n2, n3)) {
                this.mCachedBitmap = Bitmap.createBitmap((int)n2, (int)n3, (Bitmap.Config)Bitmap.Config.ARGB_8888);
                this.mCacheDirty = true;
            }
        }

        public void drawCachedBitmapWithRootAlpha(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            colorFilter = this.getPaint(colorFilter);
            canvas.drawBitmap(this.mCachedBitmap, null, rect, (Paint)colorFilter);
        }

        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        public Paint getPaint(ColorFilter colorFilter) {
            if (!this.hasTranslucentRoot() && colorFilter == null) {
                return null;
            }
            if (this.mTempPaint == null) {
                this.mTempPaint = new Paint();
                this.mTempPaint.setFilterBitmap(true);
            }
            this.mTempPaint.setAlpha(this.mVPathRenderer.getRootAlpha());
            this.mTempPaint.setColorFilter(colorFilter);
            return this.mTempPaint;
        }

        public boolean hasTranslucentRoot() {
            if (this.mVPathRenderer.getRootAlpha() < 255) {
                return true;
            }
            return false;
        }

        public Drawable newDrawable() {
            return new VectorDrawableCompat(this);
        }

        public Drawable newDrawable(Resources resources) {
            return new VectorDrawableCompat(this);
        }

        public void updateCacheStates() {
            this.mCachedTint = this.mTint;
            this.mCachedTintMode = this.mTintMode;
            this.mCachedRootAlpha = this.mVPathRenderer.getRootAlpha();
            this.mCachedAutoMirrored = this.mAutoMirrored;
            this.mCacheDirty = false;
        }

        public void updateCachedBitmap(int n2, int n3) {
            this.mCachedBitmap.eraseColor(0);
            Canvas canvas = new Canvas(this.mCachedBitmap);
            this.mVPathRenderer.draw(canvas, n2, n3, null);
        }
    }

    private static class VectorDrawableDelegateState
    extends Drawable.ConstantState {
        private final Drawable.ConstantState mDelegateState;

        public VectorDrawableDelegateState(Drawable.ConstantState constantState) {
            this.mDelegateState = constantState;
        }

        public boolean canApplyTheme() {
            return this.mDelegateState.canApplyTheme();
        }

        public int getChangingConfigurations() {
            return this.mDelegateState.getChangingConfigurations();
        }

        public Drawable newDrawable() {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = (VectorDrawable)this.mDelegateState.newDrawable();
            return vectorDrawableCompat;
        }

        public Drawable newDrawable(Resources resources) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = (VectorDrawable)this.mDelegateState.newDrawable(resources);
            return vectorDrawableCompat;
        }

        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = (VectorDrawable)this.mDelegateState.newDrawable(resources, theme);
            return vectorDrawableCompat;
        }
    }

}

