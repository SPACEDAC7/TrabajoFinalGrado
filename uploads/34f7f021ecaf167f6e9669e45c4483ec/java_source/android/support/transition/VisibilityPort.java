/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewParent
 */
package android.support.transition;

import android.animation.Animator;
import android.support.transition.TransitionPort;
import android.support.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Map;

abstract class VisibilityPort
extends TransitionPort {
    private static final String PROPNAME_PARENT = "android:visibility:parent";
    private static final String PROPNAME_VISIBILITY = "android:visibility:visibility";
    private static final String[] sTransitionProperties = new String[]{"android:visibility:visibility", "android:visibility:parent"};

    VisibilityPort() {
    }

    private void captureValues(TransitionValues transitionValues) {
        int n2 = transitionValues.view.getVisibility();
        transitionValues.values.put("android:visibility:visibility", n2);
        transitionValues.values.put("android:visibility:parent", (Object)transitionValues.view.getParent());
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private VisibilityInfo getVisibilityChangeInfo(TransitionValues transitionValues, TransitionValues transitionValues2) {
        VisibilityInfo visibilityInfo = new VisibilityInfo();
        visibilityInfo.visibilityChange = false;
        visibilityInfo.fadeIn = false;
        if (transitionValues != null) {
            visibilityInfo.startVisibility = (Integer)transitionValues.values.get("android:visibility:visibility");
            visibilityInfo.startParent = (ViewGroup)transitionValues.values.get("android:visibility:parent");
        } else {
            visibilityInfo.startVisibility = -1;
            visibilityInfo.startParent = null;
        }
        if (transitionValues2 != null) {
            visibilityInfo.endVisibility = (Integer)transitionValues2.values.get("android:visibility:visibility");
            visibilityInfo.endParent = (ViewGroup)transitionValues2.values.get("android:visibility:parent");
        } else {
            visibilityInfo.endVisibility = -1;
            visibilityInfo.endParent = null;
        }
        if (transitionValues != null && transitionValues2 != null) {
            if (visibilityInfo.startVisibility == visibilityInfo.endVisibility && visibilityInfo.startParent == visibilityInfo.endParent) {
                return visibilityInfo;
            }
            if (visibilityInfo.startVisibility != visibilityInfo.endVisibility) {
                if (visibilityInfo.startVisibility == 0) {
                    visibilityInfo.fadeIn = false;
                    visibilityInfo.visibilityChange = true;
                } else if (visibilityInfo.endVisibility == 0) {
                    visibilityInfo.fadeIn = true;
                    visibilityInfo.visibilityChange = true;
                }
            } else if (visibilityInfo.startParent != visibilityInfo.endParent) {
                if (visibilityInfo.endParent == null) {
                    visibilityInfo.fadeIn = false;
                    visibilityInfo.visibilityChange = true;
                } else if (visibilityInfo.startParent == null) {
                    visibilityInfo.fadeIn = true;
                    visibilityInfo.visibilityChange = true;
                }
            }
        }
        if (transitionValues == null) {
            visibilityInfo.fadeIn = true;
            visibilityInfo.visibilityChange = true;
            return visibilityInfo;
        }
        if (transitionValues2 != null) return visibilityInfo;
        visibilityInfo.fadeIn = false;
        visibilityInfo.visibilityChange = true;
        return visibilityInfo;
    }

    @Override
    public void captureEndValues(TransitionValues transitionValues) {
        this.captureValues(transitionValues);
    }

    @Override
    public void captureStartValues(TransitionValues transitionValues) {
        this.captureValues(transitionValues);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int n2 = -1;
        View view = null;
        VisibilityInfo visibilityInfo = this.getVisibilityChangeInfo(transitionValues, transitionValues2);
        View view2 = view;
        if (!visibilityInfo.visibilityChange) return view2;
        int n3 = 0;
        if (this.mTargets.size() > 0 || this.mTargetIds.size() > 0) {
            view2 = transitionValues != null ? transitionValues.view : null;
            View view3 = transitionValues2 != null ? transitionValues2.view : null;
            n3 = view2 != null ? view2.getId() : -1;
            if (view3 != null) {
                n2 = view3.getId();
            }
            n3 = this.isValidTarget(view2, n3) || this.isValidTarget(view3, n2) ? 1 : 0;
        }
        if (n3 == 0 && visibilityInfo.startParent == null) {
            view2 = view;
            if (visibilityInfo.endParent == null) return view2;
        }
        if (!visibilityInfo.fadeIn) return this.onDisappear(viewGroup, transitionValues, visibilityInfo.startVisibility, transitionValues2, visibilityInfo.endVisibility);
        return this.onAppear(viewGroup, transitionValues, visibilityInfo.startVisibility, transitionValues2, visibilityInfo.endVisibility);
    }

    @Override
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean isVisible(TransitionValues transitionValues) {
        if (transitionValues == null) {
            return false;
        }
        int n2 = (Integer)transitionValues.values.get("android:visibility:visibility");
        transitionValues = (View)transitionValues.values.get("android:visibility:parent");
        if (n2 != 0) return false;
        if (transitionValues == null) return false;
        return true;
    }

    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        return null;
    }

    public Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        return null;
    }

    private static class VisibilityInfo {
        ViewGroup endParent;
        int endVisibility;
        boolean fadeIn;
        ViewGroup startParent;
        int startVisibility;
        boolean visibilityChange;

        VisibilityInfo() {
        }
    }

}

