/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.widget.ListView
 */
package android.support.v4.widget;

import android.view.View;
import android.widget.ListView;

class ListViewCompatGingerbread {
    ListViewCompatGingerbread() {
    }

    /*
     * Enabled aggressive block sorting
     */
    static void scrollListBy(ListView listView, int n2) {
        View view;
        int n3 = listView.getFirstVisiblePosition();
        if (n3 == -1 || (view = listView.getChildAt(0)) == null) {
            return;
        }
        listView.setSelectionFromTop(n3, view.getTop() - n2);
    }
}

