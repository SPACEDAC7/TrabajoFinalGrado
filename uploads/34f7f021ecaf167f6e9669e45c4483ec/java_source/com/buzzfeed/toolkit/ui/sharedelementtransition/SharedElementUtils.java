/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.ObjectAnimator
 *  android.view.View
 */
package com.buzzfeed.toolkit.ui.sharedelementtransition;

import android.animation.ObjectAnimator;
import android.view.View;
import com.buzzfeed.toolkit.ui.sharedelementtransition.SharedTransitionElement;
import java.util.Arrays;
import java.util.List;

public class SharedElementUtils {
    public static List<ObjectAnimator> prepareViewForAnimation(SharedTransitionElement sharedTransitionElement, View view) {
        int[] arrn = new int[2];
        view.getLocationOnScreen(arrn);
        return SharedElementUtils.prepareViewForAnimation(sharedTransitionElement, view, arrn[0], arrn[1], view.getHeight());
    }

    private static List<ObjectAnimator> prepareViewForAnimation(SharedTransitionElement sharedTransitionElement, View view, int n2, int n3, int n4) {
        int n5 = sharedTransitionElement.getXLocationOnScreen();
        int n6 = sharedTransitionElement.getYLocationOnScreen();
        float f2 = (float)sharedTransitionElement.getWidth() / (float)view.getWidth();
        float f3 = (float)sharedTransitionElement.getHeight() / (float)n4;
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setScaleX(f2);
        view.setScaleY(f3);
        view.setTranslationX((float)(n5 - n2));
        view.setTranslationY((float)(n6 - n3));
        view.setVisibility(0);
        return Arrays.asList(new ObjectAnimator[]{ObjectAnimator.ofFloat((Object)view, (String)"scaleX", (float[])new float[]{f2, 1.0f}), ObjectAnimator.ofFloat((Object)view, (String)"scaleY", (float[])new float[]{f3, 1.0f}), ObjectAnimator.ofFloat((Object)view, (String)"translationX", (float[])new float[]{0.0f}), ObjectAnimator.ofFloat((Object)view, (String)"translationY", (float[])new float[]{0.0f})});
    }
}

