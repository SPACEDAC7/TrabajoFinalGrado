/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.AnimatorListenerAdapter
 *  android.animation.ObjectAnimator
 *  android.animation.PropertyValuesHolder
 *  android.animation.TypeEvaluator
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.graphics.Canvas
 *  android.graphics.Rect
 *  android.graphics.drawable.BitmapDrawable
 *  android.graphics.drawable.Drawable
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewParent
 */
package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.transition.RectEvaluator;
import android.support.transition.TransitionPort;
import android.support.transition.TransitionValues;
import android.support.transition.ViewOverlay;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.Map;

class ChangeBoundsPort
extends TransitionPort {
    private static final String LOG_TAG = "ChangeBounds";
    private static final String PROPNAME_BOUNDS = "android:changeBounds:bounds";
    private static final String PROPNAME_PARENT = "android:changeBounds:parent";
    private static final String PROPNAME_WINDOW_X = "android:changeBounds:windowX";
    private static final String PROPNAME_WINDOW_Y = "android:changeBounds:windowY";
    private static RectEvaluator sRectEvaluator;
    private static final String[] sTransitionProperties;
    boolean mReparent = false;
    boolean mResizeClip = false;
    int[] tempLocation = new int[2];

    static {
        sTransitionProperties = new String[]{"android:changeBounds:bounds", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
        sRectEvaluator = new RectEvaluator();
    }

    ChangeBoundsPort() {
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        transitionValues.values.put("android:changeBounds:bounds", (Object)new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        transitionValues.values.put("android:changeBounds:parent", (Object)transitionValues.view.getParent());
        transitionValues.view.getLocationInWindow(this.tempLocation);
        transitionValues.values.put("android:changeBounds:windowX", this.tempLocation[0]);
        transitionValues.values.put("android:changeBounds:windowY", this.tempLocation[1]);
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
    public Animator createAnimator(ViewGroup object, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null) return null;
        if (transitionValues2 == null) {
            return null;
        }
        ViewGroup viewGroup = transitionValues.values;
        View view = transitionValues2.values;
        viewGroup = (ViewGroup)viewGroup.get("android:changeBounds:parent");
        ViewGroup viewGroup2 = (ViewGroup)view.get("android:changeBounds:parent");
        if (viewGroup == null) return null;
        if (viewGroup2 == null) {
            return null;
        }
        view = transitionValues2.view;
        int n2 = viewGroup == viewGroup2 || viewGroup.getId() == viewGroup2.getId() ? 1 : 0;
        if (!this.mReparent || n2 != 0) {
            int n3;
            int n4;
            int n5;
            int n6;
            int n7;
            float f2;
            int n8;
            float f3;
            int n9;
            block35 : {
                object = (Rect)transitionValues.values.get("android:changeBounds:bounds");
                transitionValues = (Rect)transitionValues2.values.get("android:changeBounds:bounds");
                int n10 = object.left;
                int n11 = transitionValues.left;
                int n12 = object.top;
                int n13 = transitionValues.top;
                int n14 = object.right;
                int n15 = transitionValues.right;
                n4 = object.bottom;
                int n16 = transitionValues.bottom;
                n3 = n14 - n10;
                n6 = n4 - n12;
                n9 = n15 - n11;
                n5 = n16 - n13;
                n7 = 0;
                n8 = 0;
                n2 = n7;
                if (n3 != 0) {
                    n2 = n7;
                    if (n6 != 0) {
                        n2 = n7;
                        if (n9 != 0) {
                            n2 = n7;
                            if (n5 != 0) {
                                if (n10 != n11) {
                                    n8 = 0 + 1;
                                }
                                n2 = n8;
                                if (n12 != n13) {
                                    n2 = n8 + 1;
                                }
                                n8 = n2;
                                if (n14 != n15) {
                                    n8 = n2 + 1;
                                }
                                n2 = n8;
                                if (n4 != n16) {
                                    n2 = n8 + 1;
                                }
                            }
                        }
                    }
                }
                if (n2 <= 0) return null;
                if (!this.mResizeClip) {
                    object = new PropertyValuesHolder[n2];
                    if (n10 != n11) {
                        view.setLeft(n10);
                    }
                    if (n12 != n13) {
                        view.setTop(n12);
                    }
                    if (n14 != n15) {
                        view.setRight(n14);
                    }
                    if (n4 != n16) {
                        view.setBottom(n4);
                    }
                    if (n10 != n11) {
                        n8 = 0 + 1;
                        object[0] = PropertyValuesHolder.ofInt((String)"left", (int[])new int[]{n10, n11});
                    } else {
                        n8 = 0;
                    }
                    n2 = n8;
                    if (n12 != n13) {
                        object[n8] = PropertyValuesHolder.ofInt((String)"top", (int[])new int[]{n12, n13});
                        n2 = n8 + 1;
                    }
                    n8 = n2;
                    if (n14 != n15) {
                        object[n2] = PropertyValuesHolder.ofInt((String)"right", (int[])new int[]{n14, n15});
                        n8 = n2 + 1;
                    }
                    if (n4 != n16) {
                        object[n8] = PropertyValuesHolder.ofInt((String)"bottom", (int[])new int[]{n4, n16});
                    }
                    object = transitionValues = ObjectAnimator.ofPropertyValuesHolder((Object)view, (PropertyValuesHolder[])object);
                    if (!(view.getParent() instanceof ViewGroup)) return object;
                    object = (ViewGroup)view.getParent();
                    this.addListener(new TransitionPort.TransitionListenerAdapter(){
                        boolean mCanceled;

                        @Override
                        public void onTransitionCancel(TransitionPort transitionPort) {
                            this.mCanceled = true;
                        }

                        @Override
                        public void onTransitionEnd(TransitionPort transitionPort) {
                            if (!this.mCanceled) {
                                // empty if block
                            }
                        }

                        @Override
                        public void onTransitionPause(TransitionPort transitionPort) {
                        }

                        @Override
                        public void onTransitionResume(TransitionPort transitionPort) {
                        }
                    });
                    return transitionValues;
                }
                if (n3 != n9) {
                    view.setRight(Math.max(n3, n9) + n11);
                }
                if (n6 != n5) {
                    view.setBottom(Math.max(n6, n5) + n13);
                }
                if (n10 != n11) {
                    view.setTranslationX((float)(n10 - n11));
                }
                if (n12 != n13) {
                    view.setTranslationY((float)(n12 - n13));
                }
                f3 = n11 - n10;
                f2 = n13 - n12;
                n7 = n9 - n3;
                n4 = n5 - n6;
                n8 = 0;
                if (f3 != 0.0f) {
                    n8 = 0 + 1;
                }
                n2 = n8;
                if (f2 != 0.0f) {
                    n2 = n8 + 1;
                }
                if (n7 == 0) {
                    n8 = n2;
                    if (n4 == 0) break block35;
                }
                n8 = n2 + 1;
            }
            object = new PropertyValuesHolder[n8];
            if (f3 != 0.0f) {
                n2 = 0 + 1;
                object[0] = PropertyValuesHolder.ofFloat((String)"translationX", (float[])new float[]{view.getTranslationX(), 0.0f});
            } else {
                n2 = 0;
            }
            if (f2 != 0.0f) {
                object[n2] = PropertyValuesHolder.ofFloat((String)"translationY", (float[])new float[]{view.getTranslationY(), 0.0f});
            }
            if (n7 != 0 || n4 != 0) {
                new Rect(0, 0, n3, n6);
                new Rect(0, 0, n9, n5);
            }
            object = ObjectAnimator.ofPropertyValuesHolder((Object)view, (PropertyValuesHolder[])object);
            if (view.getParent() instanceof ViewGroup) {
                transitionValues = (ViewGroup)view.getParent();
                this.addListener(new TransitionPort.TransitionListenerAdapter(){
                    boolean mCanceled;

                    @Override
                    public void onTransitionCancel(TransitionPort transitionPort) {
                        this.mCanceled = true;
                    }

                    @Override
                    public void onTransitionEnd(TransitionPort transitionPort) {
                        if (!this.mCanceled) {
                            // empty if block
                        }
                    }

                    @Override
                    public void onTransitionPause(TransitionPort transitionPort) {
                    }

                    @Override
                    public void onTransitionResume(TransitionPort transitionPort) {
                    }
                });
            }
            object.addListener((Animator.AnimatorListener)new AnimatorListenerAdapter(){

                public void onAnimationEnd(Animator animator2) {
                }
            });
            return object;
        }
        n2 = (Integer)transitionValues.values.get("android:changeBounds:windowX");
        int n17 = (Integer)transitionValues.values.get("android:changeBounds:windowY");
        int n18 = (Integer)transitionValues2.values.get("android:changeBounds:windowX");
        int n19 = (Integer)transitionValues2.values.get("android:changeBounds:windowY");
        if (n2 == n18) {
            if (n17 == n19) return null;
        }
        object.getLocationInWindow(this.tempLocation);
        transitionValues = Bitmap.createBitmap((int)view.getWidth(), (int)view.getHeight(), (Bitmap.Config)Bitmap.Config.ARGB_8888);
        view.draw(new Canvas((Bitmap)transitionValues));
        transitionValues = new BitmapDrawable((Bitmap)transitionValues);
        view.setVisibility(4);
        ViewOverlay.createFrom((View)object).add((Drawable)transitionValues);
        transitionValues2 = new Rect(n2 - this.tempLocation[0], n17 - this.tempLocation[1], n2 - this.tempLocation[0] + view.getWidth(), n17 - this.tempLocation[1] + view.getHeight());
        viewGroup = new Rect(n18 - this.tempLocation[0], n19 - this.tempLocation[1], n18 - this.tempLocation[0] + view.getWidth(), n19 - this.tempLocation[1] + view.getHeight());
        transitionValues2 = ObjectAnimator.ofObject((Object)transitionValues, (String)"bounds", (TypeEvaluator)sRectEvaluator, (Object[])new Object[]{transitionValues2, viewGroup});
        transitionValues2.addListener((Animator.AnimatorListener)new AnimatorListenerAdapter((ViewGroup)object, (BitmapDrawable)transitionValues, view){
            final /* synthetic */ BitmapDrawable val$drawable;
            final /* synthetic */ ViewGroup val$sceneRoot;
            final /* synthetic */ View val$view;

            public void onAnimationEnd(Animator animator2) {
                ViewOverlay.createFrom((View)this.val$sceneRoot).remove((Drawable)this.val$drawable);
                this.val$view.setVisibility(0);
            }
        });
        return transitionValues2;
    }

    @Override
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public void setReparent(boolean bl) {
        this.mReparent = bl;
    }

    public void setResizeClip(boolean bl) {
        this.mResizeClip = bl;
    }

}

