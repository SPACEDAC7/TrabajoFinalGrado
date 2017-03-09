/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.MenuItem
 */
package jackpal.androidterm.compat;

import android.view.MenuItem;
import jackpal.androidterm.compat.AndroidCompat;

public class MenuItemCompat {
    public static final int SHOW_AS_ACTION_ALWAYS = 2;
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;
    public static final int SHOW_AS_ACTION_NEVER = 0;
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;

    public static void setShowAsAction(MenuItem menuItem, int n) {
        if (AndroidCompat.SDK >= 11) {
            Api11OrLater.setShowAsAction(menuItem, n);
        }
    }

    private static class Api11OrLater {
        private Api11OrLater() {
        }

        public static void setShowAsAction(MenuItem menuItem, int n) {
            menuItem.setShowAsAction(n);
        }
    }

}

