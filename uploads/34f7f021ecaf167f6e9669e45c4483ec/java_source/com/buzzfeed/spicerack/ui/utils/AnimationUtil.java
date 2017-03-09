/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.View
 *  android.view.animation.Animation
 *  android.view.animation.AnimationUtils
 */
package com.buzzfeed.spicerack.ui.utils;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.buzzfeed.nativecontent.R;

public class AnimationUtil {
    public static int startReveal(View view, int n2, int n3) {
        AnimationUtil.startReveal(view, n2);
        return n2 + n3;
    }

    public static void startReveal(View view, int n2) {
        view.setVisibility(0);
        Animation animation = AnimationUtils.loadAnimation((Context)view.getContext(), (int)R.anim.scale_reveal_reverse);
        animation.setStartOffset((long)n2);
        view.startAnimation(animation);
    }
}

