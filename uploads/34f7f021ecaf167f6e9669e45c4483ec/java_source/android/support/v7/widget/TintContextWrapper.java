/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.ContextWrapper
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v7.widget.TintResources;
import android.support.v7.widget.VectorEnabledTintResources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class TintContextWrapper
extends ContextWrapper {
    private static final Object CACHE_LOCK = new Object();
    private static ArrayList<WeakReference<TintContextWrapper>> sCache;
    private final Resources mResources;
    private final Resources.Theme mTheme;

    private TintContextWrapper(@NonNull Context context) {
        super(context);
        if (VectorEnabledTintResources.shouldBeUsed()) {
            this.mResources = new VectorEnabledTintResources((Context)this, context.getResources());
            this.mTheme = this.mResources.newTheme();
            this.mTheme.setTo(context.getTheme());
            return;
        }
        this.mResources = new TintResources((Context)this, context.getResources());
        this.mTheme = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static boolean shouldWrap(@NonNull Context context) {
        if (context instanceof TintContextWrapper || context.getResources() instanceof TintResources || context.getResources() instanceof VectorEnabledTintResources || Build.VERSION.SDK_INT >= 21 && !VectorEnabledTintResources.shouldBeUsed()) {
            return false;
        }
        return true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public static Context wrap(@NonNull Context var0) {
        if (TintContextWrapper.shouldWrap((Context)var0) == false) return var0;
        var2_1 = TintContextWrapper.CACHE_LOCK;
        // MONITORENTER : var2_1
        if (TintContextWrapper.sCache != null) {
            var3_2 = TintContextWrapper.sCache.size() - 1;
        } else {
            TintContextWrapper.sCache = new ArrayList<E>();
            do {
                var0 = new TintContextWrapper((Context)var0);
                TintContextWrapper.sCache.add(new WeakReference<Object>(var0));
                // MONITOREXIT : var2_1
                return var0;
                break;
            } while (true);
        }
        do {
            if (var3_2 < 0) break;
            var1_3 = TintContextWrapper.sCache.get(var3_2);
            if (var1_3 == null || var1_3.get() == null) {
                TintContextWrapper.sCache.remove(var3_2);
            }
            --var3_2;
        } while (true);
        var3_2 = TintContextWrapper.sCache.size() - 1;
        do {
            if (var3_2 < 0) ** continue;
            var1_3 = TintContextWrapper.sCache.get(var3_2);
            var1_3 = var1_3 != null ? var1_3.get() : null;
            if (var1_3 != null && var1_3.getBaseContext() == var0) {
                // MONITOREXIT : var2_1
                return var1_3;
            }
            --var3_2;
        } while (true);
    }

    public Resources getResources() {
        return this.mResources;
    }

    public Resources.Theme getTheme() {
        if (this.mTheme == null) {
            return super.getTheme();
        }
        return this.mTheme;
    }

    public void setTheme(int n2) {
        if (this.mTheme == null) {
            super.setTheme(n2);
            return;
        }
        this.mTheme.applyStyle(n2, true);
    }
}

