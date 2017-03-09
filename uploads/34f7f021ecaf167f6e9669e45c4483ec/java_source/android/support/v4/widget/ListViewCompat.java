/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.widget.ListView
 */
package android.support.v4.widget;

import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.widget.ListViewCompatGingerbread;
import android.support.v4.widget.ListViewCompatKitKat;
import android.widget.ListView;

public final class ListViewCompat {
    private ListViewCompat() {
    }

    public static void scrollListBy(@NonNull ListView listView, int n2) {
        if (Build.VERSION.SDK_INT >= 19) {
            ListViewCompatKitKat.scrollListBy(listView, n2);
            return;
        }
        ListViewCompatGingerbread.scrollListBy(listView, n2);
    }
}

