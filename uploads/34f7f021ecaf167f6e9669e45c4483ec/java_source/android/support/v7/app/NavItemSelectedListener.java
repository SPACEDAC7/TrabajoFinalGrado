/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemSelectedListener
 */
package android.support.v7.app;

import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.AdapterView;

class NavItemSelectedListener
implements AdapterView.OnItemSelectedListener {
    private final ActionBar.OnNavigationListener mListener;

    public NavItemSelectedListener(ActionBar.OnNavigationListener onNavigationListener) {
        this.mListener = onNavigationListener;
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int n2, long l2) {
        if (this.mListener != null) {
            this.mListener.onNavigationItemSelected(n2, l2);
        }
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}

