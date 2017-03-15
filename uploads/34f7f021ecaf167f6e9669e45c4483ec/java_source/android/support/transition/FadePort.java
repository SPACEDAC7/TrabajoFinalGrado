/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.AnimatorListenerAdapter
 *  android.animation.ObjectAnimator
 *  android.util.Log
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewParent
 */
package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.support.transition.TransitionPort;
import android.support.transition.TransitionValues;
import android.support.transition.ViewGroupOverlay;
import android.support.transition.VisibilityPort;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.Map;

class FadePort
extends VisibilityPort {
    private static boolean DBG = false;
    public static final int IN = 1;
    private static final String LOG_TAG = "Fade";
    public static final int OUT = 2;
    private static final String PROPNAME_SCREEN_X = "android:fade:screenX";
    private static final String PROPNAME_SCREEN_Y = "android:fade:screenY";
    private int mFadingMode;

    static {
        DBG = false;
    }

    public FadePort() {
        this(3);
    }

    public FadePort(int n2) {
        this.mFadingMode = n2;
    }

    private void captureValues(TransitionValues transitionValues) {
        int[] arrn = new int[2];
        transitionValues.view.getLocationOnScreen(arrn);
        transitionValues.values.put("android:fade:screenX", arrn[0]);
        transitionValues.values.put("android:fade:screenY", arrn[1]);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Animator createAnimation(View view, float f2, float f3, AnimatorListenerAdapter animatorListenerAdapter) {
        ObjectAnimator objectAnimator = null;
        if (f2 == f3) {
            view = objectAnimator;
            if (animatorListenerAdapter == null) return view;
            animatorListenerAdapter.onAnimationEnd(null);
            return objectAnimator;
        }
        objectAnimator = ObjectAnimator.ofFloat((Object)view, (String)"alpha", (float[])new float[]{f2, f3});
        if (DBG) {
            Log.d((String)"Fade", (String)("Created animator " + (Object)objectAnimator));
        }
        view = objectAnimator;
        if (animatorListenerAdapter == null) return view;
        objectAnimator.addListener((Animator.AnimatorListener)animatorListenerAdapter);
        return objectAnimator;
    }

    @Override
    public void captureStartValues(TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        this.captureValues(transitionValues);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        if ((this.mFadingMode & 1) != 1 || transitionValues2 == null) {
            return null;
        }
        transitionValues2 = transitionValues2.view;
        if (DBG) {
            viewGroup = transitionValues != null ? transitionValues.view : null;
            Log.d((String)"Fade", (String)("Fade.onAppear: startView, startVis, endView, endVis = " + (Object)viewGroup + ", " + n2 + ", " + transitionValues2 + ", " + n3));
        }
        transitionValues2.setAlpha(0.0f);
        this.addListener(new TransitionPort.TransitionListenerAdapter((View)transitionValues2){
            boolean mCanceled;
            float mPausedAlpha;
            final /* synthetic */ View val$endView;

            @Override
            public void onTransitionCancel(TransitionPort transitionPort) {
                this.val$endView.setAlpha(1.0f);
                this.mCanceled = true;
            }

            @Override
            public void onTransitionEnd(TransitionPort transitionPort) {
                if (!this.mCanceled) {
                    this.val$endView.setAlpha(1.0f);
                }
            }

            @Override
            public void onTransitionPause(TransitionPort transitionPort) {
                this.mPausedAlpha = this.val$endView.getAlpha();
                this.val$endView.setAlpha(1.0f);
            }

            @Override
            public void onTransitionResume(TransitionPort transitionPort) {
                this.val$endView.setAlpha(this.mPausedAlpha);
            }
        });
        return this.createAnimation((View)transitionValues2, 0.0f, 1.0f, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Animator onDisappear(ViewGroup viewGroup, TransitionValues arrn, int n2, TransitionValues transitionValues, int n3) {
        TransitionValues transitionValues2;
        TransitionValues transitionValues3;
        if ((this.mFadingMode & 2) != 2) {
            return null;
        }
        Object var10_6 = null;
        View view = arrn != null ? arrn.view : null;
        transitionValues = transitionValues != null ? transitionValues.view : null;
        if (DBG) {
            Log.d((String)"Fade", (String)("Fade.onDisappear: startView, startVis, endView, endVis = " + (Object)view + ", " + n2 + ", " + transitionValues + ", " + n3));
        }
        Object var11_8 = null;
        TransitionValues transitionValues4 = null;
        if (transitionValues == null || transitionValues.getParent() == null) {
            if (transitionValues != null) {
                transitionValues3 = transitionValues;
                transitionValues2 = transitionValues4;
            } else {
                transitionValues3 = var11_8;
                transitionValues = var10_6;
                transitionValues2 = transitionValues4;
                if (view != null) {
                    if (view.getParent() == null) {
                        transitionValues3 = view;
                        transitionValues = view;
                        transitionValues2 = transitionValues4;
                    } else {
                        transitionValues3 = var11_8;
                        transitionValues = var10_6;
                        transitionValues2 = transitionValues4;
                        if (view.getParent() instanceof View) {
                            transitionValues3 = var11_8;
                            transitionValues = var10_6;
                            transitionValues2 = transitionValues4;
                            if (view.getParent().getParent() == null) {
                                n2 = ((View)view.getParent()).getId();
                                transitionValues3 = var11_8;
                                transitionValues = var10_6;
                                transitionValues2 = transitionValues4;
                                if (n2 != -1) {
                                    transitionValues3 = var11_8;
                                    transitionValues = var10_6;
                                    transitionValues2 = transitionValues4;
                                    if (viewGroup.findViewById(n2) != null) {
                                        transitionValues3 = var11_8;
                                        transitionValues = var10_6;
                                        transitionValues2 = transitionValues4;
                                        if (this.mCanRemoveViews) {
                                            transitionValues3 = view;
                                            transitionValues = view;
                                            transitionValues2 = transitionValues4;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else if (n3 == 4) {
            transitionValues2 = transitionValues;
            transitionValues3 = var11_8;
        } else if (view == transitionValues) {
            transitionValues2 = transitionValues;
            transitionValues3 = var11_8;
        } else {
            transitionValues3 = transitionValues = view;
            transitionValues2 = transitionValues4;
        }
        if (transitionValues3 != null) {
            n2 = (Integer)arrn.values.get("android:fade:screenX");
            int n4 = (Integer)arrn.values.get("android:fade:screenY");
            arrn = new int[2];
            viewGroup.getLocationOnScreen(arrn);
            ViewCompat.offsetLeftAndRight((View)transitionValues3, n2 - arrn[0] - transitionValues3.getLeft());
            ViewCompat.offsetTopAndBottom((View)transitionValues3, n4 - arrn[1] - transitionValues3.getTop());
            ViewGroupOverlay.createFrom(viewGroup).add((View)transitionValues3);
            return this.createAnimation((View)transitionValues, 1.0f, 0.0f, new AnimatorListenerAdapter((View)transitionValues, (View)transitionValues2, n3, (View)transitionValues3, viewGroup){
                final /* synthetic */ View val$finalOverlayView;
                final /* synthetic */ ViewGroup val$finalSceneRoot;
                final /* synthetic */ View val$finalView;
                final /* synthetic */ View val$finalViewToKeep;
                final /* synthetic */ int val$finalVisibility;

                public void onAnimationEnd(Animator animator2) {
                    this.val$finalView.setAlpha(1.0f);
                    if (this.val$finalViewToKeep != null) {
                        this.val$finalViewToKeep.setVisibility(this.val$finalVisibility);
                    }
                    if (this.val$finalOverlayView != null) {
                        ViewGroupOverlay.createFrom(this.val$finalSceneRoot).remove(this.val$finalOverlayView);
                    }
                }
            });
        }
        if (transitionValues2 != null) {
            transitionValues2.setVisibility(0);
            return this.createAnimation((View)transitionValues, 1.0f, 0.0f, new AnimatorListenerAdapter((View)transitionValues, (View)transitionValues2, n3, (View)transitionValues3, viewGroup){
                boolean mCanceled;
                float mPausedAlpha;
                final /* synthetic */ View val$finalOverlayView;
                final /* synthetic */ ViewGroup val$finalSceneRoot;
                final /* synthetic */ View val$finalView;
                final /* synthetic */ View val$finalViewToKeep;
                final /* synthetic */ int val$finalVisibility;

                public void onAnimationCancel(Animator animator2) {
                    this.mCanceled = true;
                    if (this.mPausedAlpha >= 0.0f) {
                        this.val$finalView.setAlpha(this.mPausedAlpha);
                    }
                }

                public void onAnimationEnd(Animator animator2) {
                    if (!this.mCanceled) {
                        this.val$finalView.setAlpha(1.0f);
                    }
                    if (this.val$finalViewToKeep != null && !this.mCanceled) {
                        this.val$finalViewToKeep.setVisibility(this.val$finalVisibility);
                    }
                    if (this.val$finalOverlayView != null) {
                        ViewGroupOverlay.createFrom(this.val$finalSceneRoot).add(this.val$finalOverlayView);
                    }
                }
            });
        }
        return null;
    }

}

