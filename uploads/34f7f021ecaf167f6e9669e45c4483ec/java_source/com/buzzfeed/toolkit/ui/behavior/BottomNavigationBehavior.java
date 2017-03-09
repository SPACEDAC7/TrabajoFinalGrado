/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 */
package com.buzzfeed.toolkit.ui.behavior;

import android.content.Context;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.Snackbar;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class BottomNavigationBehavior<V extends View>
extends CoordinatorLayout.Behavior<V> {
    public BottomNavigationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void updateSnackbarClearance(Snackbar.SnackbarLayout snackbarLayout, View view) {
        if (view.getVisibility() != 0) {
            return;
        }
        ViewCompat.setElevation((View)snackbarLayout, 0.0f);
        ((ViewGroup.MarginLayoutParams)snackbarLayout.getLayoutParams()).bottomMargin = view.getMeasuredHeight();
        view.bringToFront();
    }

    @Override
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, V v2, View view) {
        if (view instanceof Snackbar.SnackbarLayout) {
            this.updateSnackbarClearance((Snackbar.SnackbarLayout)view, (View)v2);
            return true;
        }
        return false;
    }
}

