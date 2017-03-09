/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.View
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.content.Context;
import android.support.transition.ViewOverlay;
import android.view.View;
import android.view.ViewGroup;

class ViewGroupOverlay
extends ViewOverlay {
    ViewGroupOverlay(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    public static ViewGroupOverlay createFrom(ViewGroup viewGroup) {
        return (ViewGroupOverlay)ViewOverlay.createFrom((View)viewGroup);
    }

    public void add(View view) {
        this.mOverlayViewGroup.add(view);
    }

    public void remove(View view) {
        this.mOverlayViewGroup.remove(view);
    }
}

