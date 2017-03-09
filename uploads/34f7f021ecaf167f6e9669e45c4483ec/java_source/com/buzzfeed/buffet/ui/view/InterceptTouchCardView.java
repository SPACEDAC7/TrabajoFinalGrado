/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.MotionEvent
 */
package com.buzzfeed.buffet.ui.view;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v7.widget.CardView;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class InterceptTouchCardView
extends CardView {
    public InterceptTouchCardView(Context context) {
        super(context);
    }

    public InterceptTouchCardView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public InterceptTouchCardView(Context context, @Nullable AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }
}

