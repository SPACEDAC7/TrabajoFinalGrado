/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.widget.ListView
 */
package android.support.v7.view.menu;

import android.support.annotation.RestrictTo;
import android.widget.ListView;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public interface ShowableListMenu {
    public void dismiss();

    public ListView getListView();

    public boolean isShowing();

    public void show();
}

