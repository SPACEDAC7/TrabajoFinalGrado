/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.XmlResourceParser
 *  android.graphics.ColorFilter
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.PorterDuffColorFilter
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$ConstantState
 *  android.graphics.drawable.LayerDrawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.util.Log
 *  android.util.SparseArray
 *  android.util.TypedValue
 *  android.util.Xml
 *  org.xmlpull.v1.XmlPullParser
 *  org.xmlpull.v1.XmlPullParserException
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.graphics.drawable.AnimatedVectorDrawableCompat;
import android.support.graphics.drawable.VectorDrawableCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.LruCache;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.DrawableUtils;
import android.support.v7.widget.ThemeUtils;
import android.support.v7.widget.TintInfo;
import android.support.v7.widget.VectorEnabledTintResources;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public final class AppCompatDrawableManager {
    private static final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY;
    private static final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED;
    private static final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL;
    private static final ColorFilterLruCache COLOR_FILTER_CACHE;
    private static final boolean DEBUG = false;
    private static final PorterDuff.Mode DEFAULT_MODE;
    private static AppCompatDrawableManager INSTANCE;
    private static final String PLATFORM_VD_CLAZZ = "android.graphics.drawable.VectorDrawable";
    private static final String SKIP_DRAWABLE_TAG = "appcompat_skip_skip";
    private static final String TAG = "AppCompatDrawableManager";
    private static final int[] TINT_CHECKABLE_BUTTON_LIST;
    private static final int[] TINT_COLOR_CONTROL_NORMAL;
    private static final int[] TINT_COLOR_CONTROL_STATE_LIST;
    private ArrayMap<String, InflateDelegate> mDelegates;
    private final Object mDrawableCacheLock = new Object();
    private final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> mDrawableCaches = new WeakHashMap(0);
    private boolean mHasCheckedVectorDrawableSetup;
    private SparseArray<String> mKnownDrawableIdTags;
    private WeakHashMap<Context, SparseArray<ColorStateList>> mTintLists;
    private TypedValue mTypedValue;

    static {
        DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
        COLOR_FILTER_CACHE = new ColorFilterLruCache(6);
        COLORFILTER_TINT_COLOR_CONTROL_NORMAL = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
        TINT_COLOR_CONTROL_NORMAL = new int[]{R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
        COLORFILTER_COLOR_CONTROL_ACTIVATED = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl_dark, R.drawable.abc_text_select_handle_middle_mtrl_dark, R.drawable.abc_text_select_handle_right_mtrl_dark, R.drawable.abc_text_select_handle_left_mtrl_light, R.drawable.abc_text_select_handle_middle_mtrl_light, R.drawable.abc_text_select_handle_right_mtrl_light};
        COLORFILTER_COLOR_BACKGROUND_MULTIPLY = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
        TINT_COLOR_CONTROL_STATE_LIST = new int[]{R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
        TINT_CHECKABLE_BUTTON_LIST = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material};
    }

    private void addDelegate(@NonNull String string2, @NonNull InflateDelegate inflateDelegate) {
        if (this.mDelegates == null) {
            this.mDelegates = new ArrayMap();
        }
        this.mDelegates.put(string2, inflateDelegate);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean addDrawableToCache(@NonNull Context context, long l2, @NonNull Drawable longSparseArray) {
        Drawable.ConstantState constantState = longSparseArray.getConstantState();
        if (constantState == null) {
            return false;
        }
        Object object = this.mDrawableCacheLock;
        synchronized (object) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray2;
            longSparseArray = longSparseArray2 = this.mDrawableCaches.get((Object)context);
            if (longSparseArray2 == null) {
                longSparseArray = new LongSparseArray<WeakReference<Drawable.ConstantState>>();
                this.mDrawableCaches.put(context, longSparseArray);
            }
            longSparseArray.put(l2, new WeakReference<Drawable.ConstantState>(constantState));
            return true;
        }
    }

    private void addTintListToCache(@NonNull Context context, @DrawableRes int n2, @NonNull ColorStateList colorStateList) {
        SparseArray sparseArray;
        if (this.mTintLists == null) {
            this.mTintLists = new WeakHashMap();
        }
        SparseArray sparseArray2 = sparseArray = this.mTintLists.get((Object)context);
        if (sparseArray == null) {
            sparseArray2 = new SparseArray();
            this.mTintLists.put(context, (SparseArray)sparseArray2);
        }
        sparseArray2.append(n2, (Object)colorStateList);
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
     * Lifted jumps to return sites
     */
    private void checkVectorDrawableSetup(@NonNull Context context) {
        if (this.mHasCheckedVectorDrawableSetup) {
            return;
        }
        this.mHasCheckedVectorDrawableSetup = true;
        if ((context = this.getDrawable(context, R.drawable.abc_vector_test)) != null) {
            if (AppCompatDrawableManager.isVectorDrawable((Drawable)context)) return;
        }
        this.mHasCheckedVectorDrawableSetup = false;
        throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
    }

    private ColorStateList createBorderlessButtonColorStateList(@NonNull Context context, @Nullable ColorStateList colorStateList) {
        return this.createButtonColorStateList(context, 0, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    private ColorStateList createButtonColorStateList(@NonNull Context context, @ColorInt int n2, @Nullable ColorStateList colorStateList) {
        int[][] arrarrn = new int[4][];
        int[] arrn = new int[4];
        int n3 = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlHighlight);
        int n4 = ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorButtonNormal);
        arrarrn[0] = ThemeUtils.DISABLED_STATE_SET;
        if (colorStateList != null) {
            n4 = colorStateList.getColorForState(arrarrn[0], 0);
        }
        arrn[0] = n4;
        int n5 = 0 + 1;
        arrarrn[n5] = ThemeUtils.PRESSED_STATE_SET;
        n4 = colorStateList == null ? n2 : colorStateList.getColorForState(arrarrn[n5], 0);
        arrn[n5] = ColorUtils.compositeColors(n3, n4);
        arrarrn[++n5] = ThemeUtils.FOCUSED_STATE_SET;
        n4 = colorStateList == null ? n2 : colorStateList.getColorForState(arrarrn[n5], 0);
        arrn[n5] = ColorUtils.compositeColors(n3, n4);
        n4 = n5 + 1;
        arrarrn[n4] = ThemeUtils.EMPTY_STATE_SET;
        if (colorStateList != null) {
            n2 = colorStateList.getColorForState(arrarrn[n4], 0);
        }
        arrn[n4] = n2;
        return new ColorStateList((int[][])arrarrn, arrn);
    }

    private static long createCacheKey(TypedValue typedValue) {
        return (long)typedValue.assetCookie << 32 | (long)typedValue.data;
    }

    private ColorStateList createColoredButtonColorStateList(@NonNull Context context, @Nullable ColorStateList colorStateList) {
        return this.createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, R.attr.colorAccent), colorStateList);
    }

    private ColorStateList createDefaultButtonColorStateList(@NonNull Context context, @Nullable ColorStateList colorStateList) {
        return this.createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, R.attr.colorButtonNormal), colorStateList);
    }

    private Drawable createDrawableIfNeeded(@NonNull Context context, @DrawableRes int n2) {
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        context.getResources().getValue(n2, typedValue, true);
        long l2 = AppCompatDrawableManager.createCacheKey(typedValue);
        Drawable drawable2 = this.getCachedDrawable(context, l2);
        if (drawable2 != null) {
            return drawable2;
        }
        if (n2 == R.drawable.abc_cab_background_top_material) {
            drawable2 = new LayerDrawable(new Drawable[]{this.getDrawable(context, R.drawable.abc_cab_background_internal_bg), this.getDrawable(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
        }
        if (drawable2 != null) {
            drawable2.setChangingConfigurations(typedValue.changingConfigurations);
            this.addDrawableToCache(context, l2, drawable2);
        }
        return drawable2;
    }

    private static PorterDuffColorFilter createTintFilter(ColorStateList colorStateList, PorterDuff.Mode mode, int[] arrn) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return AppCompatDrawableManager.getPorterDuffColorFilter(colorStateList.getColorForState(arrn, 0), mode);
    }

    public static AppCompatDrawableManager get() {
        if (INSTANCE == null) {
            INSTANCE = new AppCompatDrawableManager();
            AppCompatDrawableManager.installDefaultInflateDelegates(INSTANCE);
        }
        return INSTANCE;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private Drawable getCachedDrawable(@NonNull Context context, long l2) {
        Object object = this.mDrawableCacheLock;
        synchronized (object) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get((Object)context);
            if (longSparseArray == null) {
                return null;
            }
            Drawable.ConstantState constantState = longSparseArray.get(l2);
            if (constantState == null) return null;
            if ((constantState = constantState.get()) != null) {
                return constantState.newDrawable(context.getResources());
            }
            longSparseArray.delete(l2);
            return null;
        }
    }

    public static PorterDuffColorFilter getPorterDuffColorFilter(int n2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = porterDuffColorFilter = COLOR_FILTER_CACHE.get(n2, mode);
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter2 = new PorterDuffColorFilter(n2, mode);
            COLOR_FILTER_CACHE.put(n2, mode, porterDuffColorFilter2);
        }
        return porterDuffColorFilter2;
    }

    private ColorStateList getTintListFromCache(@NonNull Context sparseArray, @DrawableRes int n2) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = colorStateList = null;
        if (this.mTintLists != null) {
            sparseArray = this.mTintLists.get(sparseArray);
            colorStateList2 = colorStateList;
            if (sparseArray != null) {
                colorStateList2 = (ColorStateList)sparseArray.get(n2);
            }
        }
        return colorStateList2;
    }

    static PorterDuff.Mode getTintMode(int n2) {
        PorterDuff.Mode mode = null;
        if (n2 == R.drawable.abc_switch_thumb_material) {
            mode = PorterDuff.Mode.MULTIPLY;
        }
        return mode;
    }

    private static void installDefaultInflateDelegates(@NonNull AppCompatDrawableManager appCompatDrawableManager) {
        int n2 = Build.VERSION.SDK_INT;
        if (n2 < 24) {
            appCompatDrawableManager.addDelegate("vector", new VdcInflateDelegate());
            if (n2 >= 11) {
                appCompatDrawableManager.addDelegate("animated-vector", new AvdcInflateDelegate());
            }
        }
    }

    private static boolean isVectorDrawable(@NonNull Drawable drawable2) {
        if (drawable2 instanceof VectorDrawableCompat || "android.graphics.drawable.VectorDrawable".equals(drawable2.getClass().getName())) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private Drawable loadDrawableFromDelegates(@NonNull Context context, @DrawableRes int n2) {
        String string2;
        if (this.mDelegates == null) return null;
        if (this.mDelegates.isEmpty()) return null;
        if (this.mKnownDrawableIdTags != null) {
            string2 = (String)this.mKnownDrawableIdTags.get(n2);
            if ("appcompat_skip_skip".equals(string2)) return null;
            if (string2 != null && this.mDelegates.get(string2) == null) {
                return null;
            }
        } else {
            this.mKnownDrawableIdTags = new SparseArray();
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        Resources resources = context.getResources();
        resources.getValue(n2, typedValue, true);
        long l2 = AppCompatDrawableManager.createCacheKey(typedValue);
        String string3 = string2 = this.getCachedDrawable(context, l2);
        if (string2 != null) return string3;
        String string4 = string2;
        if (typedValue.string != null) {
            string4 = string2;
            if (typedValue.string.toString().endsWith(".xml")) {
                string4 = string2;
                try {
                    int n3;
                    resources = resources.getXml(n2);
                    string4 = string2;
                    AttributeSet attributeSet = Xml.asAttributeSet((XmlPullParser)resources);
                    do {
                        string4 = string2;
                    } while ((n3 = resources.next()) != 2 && n3 != 1);
                    if (n3 != 2) {
                        string4 = string2;
                        throw new XmlPullParserException("No start tag found");
                    }
                    string4 = string2;
                    string3 = resources.getName();
                    string4 = string2;
                    this.mKnownDrawableIdTags.append(n2, (Object)string3);
                    string4 = string2;
                    InflateDelegate inflateDelegate = this.mDelegates.get(string3);
                    string3 = string2;
                    if (inflateDelegate != null) {
                        string4 = string2;
                        string3 = inflateDelegate.createFromXmlInner(context, (XmlPullParser)resources, attributeSet, context.getTheme());
                    }
                    string4 = string3;
                    if (string3 != null) {
                        string4 = string3;
                        string3.setChangingConfigurations(typedValue.changingConfigurations);
                        string4 = string3;
                        boolean bl = this.addDrawableToCache(context, l2, (Drawable)string3);
                        string4 = string3;
                        if (bl) {
                            string4 = string3;
                        }
                    }
                }
                catch (Exception var1_2) {
                    Log.e((String)"AppCompatDrawableManager", (String)"Exception while inflating drawable", (Throwable)var1_2);
                }
            }
        }
        string3 = string4;
        if (string4 != null) return string3;
        this.mKnownDrawableIdTags.append(n2, (Object)"appcompat_skip_skip");
        return string4;
    }

    private void removeDelegate(@NonNull String string2, @NonNull InflateDelegate inflateDelegate) {
        if (this.mDelegates != null && this.mDelegates.get(string2) == inflateDelegate) {
            this.mDelegates.remove(string2);
        }
    }

    private static void setPorterDuffColorFilter(Drawable drawable2, int n2, PorterDuff.Mode mode) {
        Drawable drawable3 = drawable2;
        if (DrawableUtils.canSafelyMutateDrawable(drawable2)) {
            drawable3 = drawable2.mutate();
        }
        drawable2 = mode;
        if (mode == null) {
            drawable2 = DEFAULT_MODE;
        }
        drawable3.setColorFilter((ColorFilter)AppCompatDrawableManager.getPorterDuffColorFilter(n2, (PorterDuff.Mode)drawable2));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Drawable tintDrawable(@NonNull Context context, @DrawableRes int n2, boolean bl, @NonNull Drawable drawable2) {
        ColorStateList colorStateList = this.getTintList(context, n2);
        if (colorStateList != null) {
            context = drawable2;
            if (DrawableUtils.canSafelyMutateDrawable(drawable2)) {
                context = drawable2.mutate();
            }
            context = DrawableCompat.wrap((Drawable)context);
            DrawableCompat.setTintList((Drawable)context, colorStateList);
            drawable2 = AppCompatDrawableManager.getTintMode(n2);
            colorStateList = context;
            if (drawable2 == null) return colorStateList;
            DrawableCompat.setTintMode((Drawable)context, (PorterDuff.Mode)drawable2);
            return context;
        }
        if (n2 == R.drawable.abc_seekbar_track_material) {
            colorStateList = (LayerDrawable)drawable2;
            AppCompatDrawableManager.setPorterDuffColorFilter(colorStateList.findDrawableByLayerId(16908288), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal), DEFAULT_MODE);
            AppCompatDrawableManager.setPorterDuffColorFilter(colorStateList.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal), DEFAULT_MODE);
            AppCompatDrawableManager.setPorterDuffColorFilter(colorStateList.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated), DEFAULT_MODE);
            return drawable2;
        }
        if (n2 == R.drawable.abc_ratingbar_material || n2 == R.drawable.abc_ratingbar_indicator_material || n2 == R.drawable.abc_ratingbar_small_material) {
            colorStateList = (LayerDrawable)drawable2;
            AppCompatDrawableManager.setPorterDuffColorFilter(colorStateList.findDrawableByLayerId(16908288), ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), DEFAULT_MODE);
            AppCompatDrawableManager.setPorterDuffColorFilter(colorStateList.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated), DEFAULT_MODE);
            AppCompatDrawableManager.setPorterDuffColorFilter(colorStateList.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated), DEFAULT_MODE);
            return drawable2;
        }
        colorStateList = drawable2;
        if (AppCompatDrawableManager.tintDrawableUsingColorFilter(context, n2, drawable2)) return colorStateList;
        colorStateList = drawable2;
        if (!bl) return colorStateList;
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    static void tintDrawable(Drawable drawable2, TintInfo tintInfo, int[] arrn) {
        if (DrawableUtils.canSafelyMutateDrawable(drawable2) && drawable2.mutate() != drawable2) {
            Log.d((String)"AppCompatDrawableManager", (String)"Mutated drawable is not the same instance as the input.");
            return;
        } else {
            if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
                ColorStateList colorStateList = tintInfo.mHasTintList ? tintInfo.mTintList : null;
                tintInfo = tintInfo.mHasTintMode ? tintInfo.mTintMode : DEFAULT_MODE;
                drawable2.setColorFilter((ColorFilter)AppCompatDrawableManager.createTintFilter(colorStateList, (PorterDuff.Mode)tintInfo, arrn));
            } else {
                drawable2.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT > 23) return;
            {
                drawable2.invalidateSelf();
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    static boolean tintDrawableUsingColorFilter(@NonNull Context context, @DrawableRes int n2, @NonNull Drawable drawable2) {
        PorterDuff.Mode mode;
        int n3;
        PorterDuff.Mode mode2 = DEFAULT_MODE;
        boolean bl = false;
        int n4 = 0;
        int n5 = -1;
        if (AppCompatDrawableManager.arrayContains(COLORFILTER_TINT_COLOR_CONTROL_NORMAL, n2)) {
            n4 = R.attr.colorControlNormal;
            bl = true;
            mode = mode2;
            n3 = n5;
        } else if (AppCompatDrawableManager.arrayContains(COLORFILTER_COLOR_CONTROL_ACTIVATED, n2)) {
            n4 = R.attr.colorControlActivated;
            bl = true;
            n3 = n5;
            mode = mode2;
        } else if (AppCompatDrawableManager.arrayContains(COLORFILTER_COLOR_BACKGROUND_MULTIPLY, n2)) {
            n4 = 16842801;
            bl = true;
            mode = PorterDuff.Mode.MULTIPLY;
            n3 = n5;
        } else if (n2 == R.drawable.abc_list_divider_mtrl_alpha) {
            n4 = 16842800;
            bl = true;
            n3 = Math.round(40.8f);
            mode = mode2;
        } else {
            n3 = n5;
            mode = mode2;
            if (n2 == R.drawable.abc_dialog_material_background) {
                n4 = 16842801;
                bl = true;
                n3 = n5;
                mode = mode2;
            }
        }
        if (!bl) {
            return false;
        }
        mode2 = drawable2;
        if (DrawableUtils.canSafelyMutateDrawable(drawable2)) {
            mode2 = drawable2.mutate();
        }
        mode2.setColorFilter((ColorFilter)AppCompatDrawableManager.getPorterDuffColorFilter(ThemeUtils.getThemeAttrColor(context, n4), mode));
        if (n3 != -1) {
            mode2.setAlpha(n3);
        }
        return true;
    }

    public Drawable getDrawable(@NonNull Context context, @DrawableRes int n2) {
        return this.getDrawable(context, n2, false);
    }

    Drawable getDrawable(@NonNull Context context, @DrawableRes int n2, boolean bl) {
        Drawable drawable2;
        this.checkVectorDrawableSetup(context);
        Drawable drawable3 = drawable2 = this.loadDrawableFromDelegates(context, n2);
        if (drawable2 == null) {
            drawable3 = this.createDrawableIfNeeded(context, n2);
        }
        drawable2 = drawable3;
        if (drawable3 == null) {
            drawable2 = ContextCompat.getDrawable(context, n2);
        }
        drawable3 = drawable2;
        if (drawable2 != null) {
            drawable3 = this.tintDrawable(context, n2, bl, drawable2);
        }
        if (drawable3 != null) {
            DrawableUtils.fixDrawable(drawable3);
        }
        return drawable3;
    }

    ColorStateList getTintList(@NonNull Context context, @DrawableRes int n2) {
        return this.getTintList(context, n2, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    ColorStateList getTintList(@NonNull Context context, @DrawableRes int n2, @Nullable ColorStateList colorStateList) {
        boolean bl = colorStateList == null;
        ColorStateList colorStateList2 = bl ? this.getTintListFromCache(context, n2) : null;
        ColorStateList colorStateList3 = colorStateList2;
        if (colorStateList2 != null) return colorStateList3;
        if (n2 == R.drawable.abc_edit_text_material) {
            colorStateList = AppCompatResources.getColorStateList(context, R.color.abc_tint_edittext);
        } else if (n2 == R.drawable.abc_switch_track_mtrl_alpha) {
            colorStateList = AppCompatResources.getColorStateList(context, R.color.abc_tint_switch_track);
        } else if (n2 == R.drawable.abc_switch_thumb_material) {
            colorStateList = AppCompatResources.getColorStateList(context, R.color.abc_tint_switch_thumb);
        } else if (n2 == R.drawable.abc_btn_default_mtrl_shape) {
            colorStateList = this.createDefaultButtonColorStateList(context, colorStateList);
        } else if (n2 == R.drawable.abc_btn_borderless_material) {
            colorStateList = this.createBorderlessButtonColorStateList(context, colorStateList);
        } else if (n2 == R.drawable.abc_btn_colored_material) {
            colorStateList = this.createColoredButtonColorStateList(context, colorStateList);
        } else if (n2 == R.drawable.abc_spinner_mtrl_am_alpha || n2 == R.drawable.abc_spinner_textfield_background_material) {
            colorStateList = AppCompatResources.getColorStateList(context, R.color.abc_tint_spinner);
        } else if (AppCompatDrawableManager.arrayContains(TINT_COLOR_CONTROL_NORMAL, n2)) {
            colorStateList = ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorControlNormal);
        } else if (AppCompatDrawableManager.arrayContains(TINT_COLOR_CONTROL_STATE_LIST, n2)) {
            colorStateList = AppCompatResources.getColorStateList(context, R.color.abc_tint_default);
        } else if (AppCompatDrawableManager.arrayContains(TINT_CHECKABLE_BUTTON_LIST, n2)) {
            colorStateList = AppCompatResources.getColorStateList(context, R.color.abc_tint_btn_checkable);
        } else {
            colorStateList = colorStateList2;
            if (n2 == R.drawable.abc_seekbar_thumb_material) {
                colorStateList = AppCompatResources.getColorStateList(context, R.color.abc_tint_seek_thumb);
            }
        }
        colorStateList3 = colorStateList;
        if (!bl) return colorStateList3;
        colorStateList3 = colorStateList;
        if (colorStateList == null) return colorStateList3;
        this.addTintListToCache(context, n2, colorStateList);
        return colorStateList;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void onConfigurationChanged(@NonNull Context object) {
        Object object2 = this.mDrawableCacheLock;
        synchronized (object2) {
            object = this.mDrawableCaches.get(object);
            if (object != null) {
                object.clear();
            }
            return;
        }
    }

    Drawable onDrawableLoadedFromResources(@NonNull Context context, @NonNull VectorEnabledTintResources vectorEnabledTintResources, @DrawableRes int n2) {
        Drawable drawable2;
        Drawable drawable3 = drawable2 = this.loadDrawableFromDelegates(context, n2);
        if (drawable2 == null) {
            drawable3 = vectorEnabledTintResources.superGetDrawable(n2);
        }
        if (drawable3 != null) {
            return this.tintDrawable(context, n2, false, drawable3);
        }
        return null;
    }

    private static class AvdcInflateDelegate
    implements InflateDelegate {
        AvdcInflateDelegate() {
        }

        @Override
        public Drawable createFromXmlInner(@NonNull Context object, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                object = AnimatedVectorDrawableCompat.createFromXmlInner((Context)object, object.getResources(), xmlPullParser, attributeSet, theme);
                return object;
            }
            catch (Exception var1_2) {
                Log.e((String)"AvdcInflateDelegate", (String)"Exception while inflating <animated-vector>", (Throwable)var1_2);
                return null;
            }
        }
    }

    private static class ColorFilterLruCache
    extends LruCache<Integer, PorterDuffColorFilter> {
        public ColorFilterLruCache(int n2) {
            super(n2);
        }

        private static int generateCacheKey(int n2, PorterDuff.Mode mode) {
            return (n2 + 31) * 31 + mode.hashCode();
        }

        PorterDuffColorFilter get(int n2, PorterDuff.Mode mode) {
            return (PorterDuffColorFilter)this.get(ColorFilterLruCache.generateCacheKey(n2, mode));
        }

        PorterDuffColorFilter put(int n2, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return this.put(ColorFilterLruCache.generateCacheKey(n2, mode), porterDuffColorFilter);
        }
    }

    private static interface InflateDelegate {
        public Drawable createFromXmlInner(@NonNull Context var1, @NonNull XmlPullParser var2, @NonNull AttributeSet var3, @Nullable Resources.Theme var4);
    }

    private static class VdcInflateDelegate
    implements InflateDelegate {
        VdcInflateDelegate() {
        }

        @Override
        public Drawable createFromXmlInner(@NonNull Context object, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                object = VectorDrawableCompat.createFromXmlInner(object.getResources(), xmlPullParser, attributeSet, theme);
                return object;
            }
            catch (Exception var1_2) {
                Log.e((String)"VdcInflateDelegate", (String)"Exception while inflating <vector>", (Throwable)var1_2);
                return null;
            }
        }
    }

}

