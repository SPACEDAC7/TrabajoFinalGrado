/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.buzzfeed.toolkit.ui.sharedelementtransition;

import android.view.View;
import java.io.Serializable;

public class SharedTransitionElement
implements Serializable {
    private int mHeight;
    private String mKey;
    private int[] mLocationOnScreen;
    private int mWidth;

    public SharedTransitionElement(String string2, View view) {
        this.mKey = string2;
        this.mLocationOnScreen = new int[2];
        view.getLocationOnScreen(this.mLocationOnScreen);
        this.mWidth = view.getWidth();
        this.mHeight = view.getHeight();
    }

    public SharedTransitionElement(String string2, int[] arrn, int n2, int n3) {
        this.mKey = string2;
        this.mLocationOnScreen = arrn;
        this.mWidth = n2;
        this.mHeight = n3;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public String getKey() {
        return this.mKey;
    }

    public int[] getLocationOnScreen() {
        return this.mLocationOnScreen;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getXLocationOnScreen() {
        return this.mLocationOnScreen[0];
    }

    public int getYLocationOnScreen() {
        return this.mLocationOnScreen[1];
    }
}

