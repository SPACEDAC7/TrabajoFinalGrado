/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.ActionBar
 *  android.app.Activity
 */
package hecticman.jsterm.compat;

import android.app.ActionBar;
import android.app.Activity;
import hecticman.jsterm.compat.ActionBarCompat;
import hecticman.jsterm.compat.AndroidCompat;

public class ActivityCompat {
    public static ActionBarCompat getActionBar(Activity activity) {
        if (AndroidCompat.SDK < 11) {
            return null;
        }
        return ActionBarCompat.wrap(Api11OrLater.getActionBar(activity));
    }

    public static void invalidateOptionsMenu(Activity activity) {
        if (AndroidCompat.SDK >= 11) {
            Api11OrLater.invalidateOptionsMenu(activity);
        }
    }

    private static class Api11OrLater {
        private Api11OrLater() {
        }

        public static Object getActionBar(Activity activity) {
            return activity.getActionBar();
        }

        public static void invalidateOptionsMenu(Activity activity) {
            activity.invalidateOptionsMenu();
        }
    }

}

