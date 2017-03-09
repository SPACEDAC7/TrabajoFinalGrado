/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Outline
 *  android.graphics.Rect
 */
package android.support.design.widget;

import android.graphics.Outline;
import android.graphics.Rect;
import android.support.design.widget.CircularBorderDrawable;

class CircularBorderDrawableLollipop
extends CircularBorderDrawable {
    CircularBorderDrawableLollipop() {
    }

    public void getOutline(Outline outline) {
        this.copyBounds(this.mRect);
        outline.setOval(this.mRect);
    }
}

