/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.widget.SpinnerAdapter
 */
package hecticman.jsterm.compat;

import android.widget.SpinnerAdapter;
import hecticman.jsterm.compat.ActionBarApi11OrLater;
import hecticman.jsterm.compat.AndroidCompat;

public abstract class ActionBarCompat {
    public static final int DISPLAY_HOME_AS_UP = 4;
    public static final int DISPLAY_SHOW_CUSTOM = 16;
    public static final int DISPLAY_SHOW_HOME = 2;
    public static final int DISPLAY_SHOW_TITLE = 8;
    public static final int DISPLAY_USE_LOGO = 1;
    public static final int ID_HOME = 16908332;
    public static final int NAVIGATION_MODE_LIST = 1;
    public static final int NAVIGATION_MODE_STANDARD = 0;
    public static final int NAVIGATION_MODE_TABS = 2;

    public static ActionBarCompat wrap(Object object) {
        if (object != null && AndroidCompat.SDK >= 11) {
            return new ActionBarApi11OrLater(object);
        }
        return null;
    }

    public abstract int getDisplayOptions();

    public abstract int getHeight();

    public abstract int getNavigationItemCount();

    public abstract int getNavigationMode();

    public abstract int getSelectedNavigationIndex();

    public abstract CharSequence getTitle();

    public abstract void hide();

    public abstract boolean isShowing();

    public abstract void setDisplayOptions(int var1);

    public abstract void setDisplayOptions(int var1, int var2);

    public abstract void setListNavigationCallbacks(SpinnerAdapter var1, OnNavigationListener var2);

    public abstract void setNavigationMode(int var1);

    public abstract void setSelectedNavigationItem(int var1);

    public abstract void setTitle(int var1);

    public abstract void setTitle(CharSequence var1);

    public abstract void show();

    public static interface OnNavigationListener {
        public boolean onNavigationItemSelected(int var1, long var2);
    }

}

