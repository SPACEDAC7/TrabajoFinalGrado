/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 */
package android.support.v4.app;

import android.app.Activity;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class ActivityCompatHoneycomb {
    ActivityCompatHoneycomb() {
    }

    static void dump(Activity activity, String string2, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
        activity.dump(string2, fileDescriptor, printWriter, arrstring);
    }

    static void invalidateOptionsMenu(Activity activity) {
        activity.invalidateOptionsMenu();
    }
}

