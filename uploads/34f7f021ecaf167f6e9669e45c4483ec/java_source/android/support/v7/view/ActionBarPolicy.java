/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.pm.ApplicationInfo
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.view.ViewConfiguration
 */
package android.support.v7.view;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.ConfigurationHelper;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ViewConfiguration;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class ActionBarPolicy {
    private Context mContext;

    private ActionBarPolicy(Context context) {
        this.mContext = context;
    }

    public static ActionBarPolicy get(Context context) {
        return new ActionBarPolicy(context);
    }

    public boolean enableHomeButtonByDefault() {
        if (this.mContext.getApplicationInfo().targetSdkVersion < 14) {
            return true;
        }
        return false;
    }

    public int getEmbeddedMenuWidthLimit() {
        return this.mContext.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public int getMaxActionButtons() {
        Resources resources = this.mContext.getResources();
        int n2 = ConfigurationHelper.getScreenWidthDp(resources);
        int n3 = ConfigurationHelper.getScreenHeightDp(resources);
        if (ConfigurationHelper.getSmallestScreenWidthDp(resources) > 600 || n2 > 600 || n2 > 960 && n3 > 720 || n2 > 720 && n3 > 960) {
            return 5;
        }
        if (n2 >= 500 || n2 > 640 && n3 > 480 || n2 > 480 && n3 > 640) {
            return 4;
        }
        if (n2 >= 360) {
            return 3;
        }
        return 2;
    }

    public int getStackedTabMaxWidth() {
        return this.mContext.getResources().getDimensionPixelSize(R.dimen.abc_action_bar_stacked_tab_max_width);
    }

    public int getTabContainerHeight() {
        TypedArray typedArray = this.mContext.obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        int n2 = typedArray.getLayoutDimension(R.styleable.ActionBar_height, 0);
        Resources resources = this.mContext.getResources();
        int n3 = n2;
        if (!this.hasEmbeddedTabs()) {
            n3 = Math.min(n2, resources.getDimensionPixelSize(R.dimen.abc_action_bar_stacked_max_height));
        }
        typedArray.recycle();
        return n3;
    }

    public boolean hasEmbeddedTabs() {
        return this.mContext.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs);
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean showsOverflowMenuButton() {
        if (Build.VERSION.SDK_INT >= 19 || !ViewConfigurationCompat.hasPermanentMenuKey(ViewConfiguration.get((Context)this.mContext))) {
            return true;
        }
        return false;
    }
}

