/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.ContextWrapper
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.view.LayoutInflater
 */
package android.support.v7.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v7.appcompat.R;
import android.view.LayoutInflater;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class ContextThemeWrapper
extends ContextWrapper {
    private LayoutInflater mInflater;
    private Resources.Theme mTheme;
    private int mThemeResource;

    public ContextThemeWrapper(Context context, @StyleRes int n2) {
        super(context);
        this.mThemeResource = n2;
    }

    public ContextThemeWrapper(Context context, Resources.Theme theme) {
        super(context);
        this.mTheme = theme;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void initializeTheme() {
        boolean bl = this.mTheme == null;
        if (bl) {
            this.mTheme = this.getResources().newTheme();
            Resources.Theme theme = this.getBaseContext().getTheme();
            if (theme != null) {
                this.mTheme.setTo(theme);
            }
        }
        this.onApplyThemeResource(this.mTheme, this.mThemeResource, bl);
    }

    public Object getSystemService(String string2) {
        if ("layout_inflater".equals(string2)) {
            if (this.mInflater == null) {
                this.mInflater = LayoutInflater.from((Context)this.getBaseContext()).cloneInContext((Context)this);
            }
            return this.mInflater;
        }
        return this.getBaseContext().getSystemService(string2);
    }

    public Resources.Theme getTheme() {
        if (this.mTheme != null) {
            return this.mTheme;
        }
        if (this.mThemeResource == 0) {
            this.mThemeResource = R.style.Theme_AppCompat_Light;
        }
        this.initializeTheme();
        return this.mTheme;
    }

    public int getThemeResId() {
        return this.mThemeResource;
    }

    protected void onApplyThemeResource(Resources.Theme theme, int n2, boolean bl) {
        theme.applyStyle(n2, true);
    }

    public void setTheme(int n2) {
        if (this.mThemeResource != n2) {
            this.mThemeResource = n2;
            this.initializeTheme();
        }
    }
}

