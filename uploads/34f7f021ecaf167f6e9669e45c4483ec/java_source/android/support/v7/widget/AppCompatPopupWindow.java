/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.util.Log
 *  android.view.View
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnScrollChangedListener
 *  android.widget.PopupWindow
 */
package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

class AppCompatPopupWindow
extends PopupWindow {
    private static final boolean COMPAT_OVERLAP_ANCHOR;
    private static final String TAG = "AppCompatPopupWindow";
    private boolean mOverlapAnchor;

    /*
     * Enabled aggressive block sorting
     */
    static {
        boolean bl = Build.VERSION.SDK_INT < 21;
        COMPAT_OVERLAP_ANCHOR = bl;
    }

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int n2) {
        super(context, attributeSet, n2);
        this.init(context, attributeSet, n2, 0);
    }

    @TargetApi(value=11)
    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int n2, @StyleRes int n3) {
        super(context, attributeSet, n2, n3);
        this.init(context, attributeSet, n2, n3);
    }

    private void init(Context object, AttributeSet attributeSet, int n2, int n3) {
        if ((object = TintTypedArray.obtainStyledAttributes((Context)object, attributeSet, R.styleable.PopupWindow, n2, n3)).hasValue(R.styleable.PopupWindow_overlapAnchor)) {
            this.setSupportOverlapAnchor(object.getBoolean(R.styleable.PopupWindow_overlapAnchor, false));
        }
        this.setBackgroundDrawable(object.getDrawable(R.styleable.PopupWindow_android_popupBackground));
        n2 = Build.VERSION.SDK_INT;
        if (n3 != 0 && n2 < 11 && object.hasValue(R.styleable.PopupWindow_android_popupAnimationStyle)) {
            this.setAnimationStyle(object.getResourceId(R.styleable.PopupWindow_android_popupAnimationStyle, -1));
        }
        object.recycle();
        if (Build.VERSION.SDK_INT < 14) {
            AppCompatPopupWindow.wrapOnScrollChangedListener(this);
        }
    }

    private static void wrapOnScrollChangedListener(final PopupWindow popupWindow) {
        try {
            final Field field = PopupWindow.class.getDeclaredField("mAnchor");
            field.setAccessible(true);
            Field field2 = PopupWindow.class.getDeclaredField("mOnScrollChangedListener");
            field2.setAccessible(true);
            field2.set((Object)popupWindow, (Object)new ViewTreeObserver.OnScrollChangedListener((ViewTreeObserver.OnScrollChangedListener)field2.get((Object)popupWindow)){
                final /* synthetic */ ViewTreeObserver.OnScrollChangedListener val$originalListener;

                /*
                 * Enabled force condition propagation
                 * Lifted jumps to return sites
                 */
                public void onScrollChanged() {
                    WeakReference weakReference = (WeakReference)field.get((Object)popupWindow);
                    if (weakReference == null) return;
                    try {
                        if (weakReference.get() == null) {
                            return;
                        }
                        this.val$originalListener.onScrollChanged();
                        return;
                    }
                    catch (IllegalAccessException var1_2) {
                        // empty catch block
                    }
                }
            });
            return;
        }
        catch (Exception var0_1) {
            Log.d((String)"AppCompatPopupWindow", (String)"Exception while installing workaround OnScrollChangedListener", (Throwable)var0_1);
            return;
        }
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public boolean getSupportOverlapAnchor() {
        if (COMPAT_OVERLAP_ANCHOR) {
            return this.mOverlapAnchor;
        }
        return PopupWindowCompat.getOverlapAnchor(this);
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setSupportOverlapAnchor(boolean bl) {
        if (COMPAT_OVERLAP_ANCHOR) {
            this.mOverlapAnchor = bl;
            return;
        }
        PopupWindowCompat.setOverlapAnchor(this, bl);
    }

    public void showAsDropDown(View view, int n2, int n3) {
        int n4 = n3;
        if (COMPAT_OVERLAP_ANCHOR) {
            n4 = n3;
            if (this.mOverlapAnchor) {
                n4 = n3 - view.getHeight();
            }
        }
        super.showAsDropDown(view, n2, n4);
    }

    @TargetApi(value=19)
    public void showAsDropDown(View view, int n2, int n3, int n4) {
        int n5 = n3;
        if (COMPAT_OVERLAP_ANCHOR) {
            n5 = n3;
            if (this.mOverlapAnchor) {
                n5 = n3 - view.getHeight();
            }
        }
        super.showAsDropDown(view, n2, n5, n4);
    }

    public void update(View view, int n2, int n3, int n4, int n5) {
        int n6 = n3;
        if (COMPAT_OVERLAP_ANCHOR) {
            n6 = n3;
            if (this.mOverlapAnchor) {
                n6 = n3 - view.getHeight();
            }
        }
        super.update(view, n2, n6, n4, n5);
    }

}

