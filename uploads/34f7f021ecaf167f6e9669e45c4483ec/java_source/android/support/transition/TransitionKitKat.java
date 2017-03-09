/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.TimeInterpolator
 *  android.transition.Transition
 *  android.transition.Transition$TransitionListener
 *  android.transition.TransitionValues
 *  android.view.View
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionInterfaceListener;
import android.support.transition.TransitionValues;
import android.transition.Transition;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class TransitionKitKat
extends TransitionImpl {
    private CompatListener mCompatListener;
    TransitionInterface mExternalTransition;
    Transition mTransition;

    TransitionKitKat() {
    }

    static android.transition.TransitionValues convertToPlatform(TransitionValues transitionValues) {
        if (transitionValues == null) {
            return null;
        }
        android.transition.TransitionValues transitionValues2 = new android.transition.TransitionValues();
        TransitionKitKat.copyValues(transitionValues, transitionValues2);
        return transitionValues2;
    }

    static TransitionValues convertToSupport(android.transition.TransitionValues transitionValues) {
        if (transitionValues == null) {
            return null;
        }
        TransitionValues transitionValues2 = new TransitionValues();
        TransitionKitKat.copyValues(transitionValues, transitionValues2);
        return transitionValues2;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static void copyValues(TransitionValues transitionValues, android.transition.TransitionValues transitionValues2) {
        if (transitionValues == null) {
            return;
        }
        transitionValues2.view = transitionValues.view;
        if (transitionValues.values.size() <= 0) return;
        transitionValues2.values.putAll(transitionValues.values);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static void copyValues(android.transition.TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null) {
            return;
        }
        transitionValues2.view = transitionValues.view;
        if (transitionValues.values.size() <= 0) return;
        transitionValues2.values.putAll(transitionValues.values);
    }

    static void wrapCaptureEndValues(TransitionInterface transitionInterface, android.transition.TransitionValues transitionValues) {
        TransitionValues transitionValues2 = new TransitionValues();
        TransitionKitKat.copyValues(transitionValues, transitionValues2);
        transitionInterface.captureEndValues(transitionValues2);
        TransitionKitKat.copyValues(transitionValues2, transitionValues);
    }

    static void wrapCaptureStartValues(TransitionInterface transitionInterface, android.transition.TransitionValues transitionValues) {
        TransitionValues transitionValues2 = new TransitionValues();
        TransitionKitKat.copyValues(transitionValues, transitionValues2);
        transitionInterface.captureStartValues(transitionValues2);
        TransitionKitKat.copyValues(transitionValues2, transitionValues);
    }

    @Override
    public TransitionImpl addListener(TransitionInterfaceListener transitionInterfaceListener) {
        if (this.mCompatListener == null) {
            this.mCompatListener = new CompatListener();
            this.mTransition.addListener((Transition.TransitionListener)this.mCompatListener);
        }
        this.mCompatListener.addListener(transitionInterfaceListener);
        return this;
    }

    @Override
    public TransitionImpl addTarget(int n2) {
        this.mTransition.addTarget(n2);
        return this;
    }

    @Override
    public TransitionImpl addTarget(View view) {
        this.mTransition.addTarget(view);
        return this;
    }

    @Override
    public void captureEndValues(TransitionValues transitionValues) {
        android.transition.TransitionValues transitionValues2 = new android.transition.TransitionValues();
        TransitionKitKat.copyValues(transitionValues, transitionValues2);
        this.mTransition.captureEndValues(transitionValues2);
        TransitionKitKat.copyValues(transitionValues2, transitionValues);
    }

    @Override
    public void captureStartValues(TransitionValues transitionValues) {
        android.transition.TransitionValues transitionValues2 = new android.transition.TransitionValues();
        TransitionKitKat.copyValues(transitionValues, transitionValues2);
        this.mTransition.captureStartValues(transitionValues2);
        TransitionKitKat.copyValues(transitionValues2, transitionValues);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        android.transition.TransitionValues transitionValues3;
        if (transitionValues != null) {
            transitionValues3 = new android.transition.TransitionValues();
            TransitionKitKat.copyValues(transitionValues, transitionValues3);
            transitionValues = transitionValues3;
        } else {
            transitionValues = null;
        }
        if (transitionValues2 != null) {
            transitionValues3 = new android.transition.TransitionValues();
            TransitionKitKat.copyValues(transitionValues2, transitionValues3);
            transitionValues2 = transitionValues3;
            return this.mTransition.createAnimator(viewGroup, (android.transition.TransitionValues)transitionValues, (android.transition.TransitionValues)transitionValues2);
        }
        transitionValues2 = null;
        return this.mTransition.createAnimator(viewGroup, (android.transition.TransitionValues)transitionValues, (android.transition.TransitionValues)transitionValues2);
    }

    @Override
    public TransitionImpl excludeChildren(int n2, boolean bl) {
        this.mTransition.excludeChildren(n2, bl);
        return this;
    }

    @Override
    public TransitionImpl excludeChildren(View view, boolean bl) {
        this.mTransition.excludeChildren(view, bl);
        return this;
    }

    @Override
    public TransitionImpl excludeChildren(Class class_, boolean bl) {
        this.mTransition.excludeChildren(class_, bl);
        return this;
    }

    @Override
    public TransitionImpl excludeTarget(int n2, boolean bl) {
        this.mTransition.excludeTarget(n2, bl);
        return this;
    }

    @Override
    public TransitionImpl excludeTarget(View view, boolean bl) {
        this.mTransition.excludeTarget(view, bl);
        return this;
    }

    @Override
    public TransitionImpl excludeTarget(Class class_, boolean bl) {
        this.mTransition.excludeTarget(class_, bl);
        return this;
    }

    @Override
    public long getDuration() {
        return this.mTransition.getDuration();
    }

    @Override
    public TimeInterpolator getInterpolator() {
        return this.mTransition.getInterpolator();
    }

    @Override
    public String getName() {
        return this.mTransition.getName();
    }

    @Override
    public long getStartDelay() {
        return this.mTransition.getStartDelay();
    }

    @Override
    public List<Integer> getTargetIds() {
        return this.mTransition.getTargetIds();
    }

    @Override
    public List<View> getTargets() {
        return this.mTransition.getTargets();
    }

    @Override
    public String[] getTransitionProperties() {
        return this.mTransition.getTransitionProperties();
    }

    @Override
    public TransitionValues getTransitionValues(View view, boolean bl) {
        TransitionValues transitionValues = new TransitionValues();
        TransitionKitKat.copyValues(this.mTransition.getTransitionValues(view, bl), transitionValues);
        return transitionValues;
    }

    @Override
    public void init(TransitionInterface transitionInterface, Object object) {
        this.mExternalTransition = transitionInterface;
        if (object == null) {
            this.mTransition = new TransitionWrapper(transitionInterface);
            return;
        }
        this.mTransition = (Transition)object;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public TransitionImpl removeListener(TransitionInterfaceListener transitionInterfaceListener) {
        if (this.mCompatListener == null) {
            return this;
        }
        this.mCompatListener.removeListener(transitionInterfaceListener);
        if (!this.mCompatListener.isEmpty()) return this;
        this.mTransition.removeListener((Transition.TransitionListener)this.mCompatListener);
        this.mCompatListener = null;
        return this;
    }

    @Override
    public TransitionImpl removeTarget(int n2) {
        if (n2 > 0) {
            this.getTargetIds().remove((Object)n2);
        }
        return this;
    }

    @Override
    public TransitionImpl removeTarget(View view) {
        this.mTransition.removeTarget(view);
        return this;
    }

    @Override
    public TransitionImpl setDuration(long l2) {
        this.mTransition.setDuration(l2);
        return this;
    }

    @Override
    public TransitionImpl setInterpolator(TimeInterpolator timeInterpolator) {
        this.mTransition.setInterpolator(timeInterpolator);
        return this;
    }

    @Override
    public TransitionImpl setStartDelay(long l2) {
        this.mTransition.setStartDelay(l2);
        return this;
    }

    public String toString() {
        return this.mTransition.toString();
    }

    private class CompatListener
    implements Transition.TransitionListener {
        private final ArrayList<TransitionInterfaceListener> mListeners;

        CompatListener() {
            this.mListeners = new ArrayList();
        }

        void addListener(TransitionInterfaceListener transitionInterfaceListener) {
            this.mListeners.add(transitionInterfaceListener);
        }

        boolean isEmpty() {
            return this.mListeners.isEmpty();
        }

        public void onTransitionCancel(Transition object) {
            object = this.mListeners.iterator();
            while (object.hasNext()) {
                ((TransitionInterfaceListener)object.next()).onTransitionCancel(TransitionKitKat.this.mExternalTransition);
            }
        }

        public void onTransitionEnd(Transition object) {
            object = this.mListeners.iterator();
            while (object.hasNext()) {
                ((TransitionInterfaceListener)object.next()).onTransitionEnd(TransitionKitKat.this.mExternalTransition);
            }
        }

        public void onTransitionPause(Transition object) {
            object = this.mListeners.iterator();
            while (object.hasNext()) {
                ((TransitionInterfaceListener)object.next()).onTransitionPause(TransitionKitKat.this.mExternalTransition);
            }
        }

        public void onTransitionResume(Transition object) {
            object = this.mListeners.iterator();
            while (object.hasNext()) {
                ((TransitionInterfaceListener)object.next()).onTransitionResume(TransitionKitKat.this.mExternalTransition);
            }
        }

        public void onTransitionStart(Transition object) {
            object = this.mListeners.iterator();
            while (object.hasNext()) {
                ((TransitionInterfaceListener)object.next()).onTransitionStart(TransitionKitKat.this.mExternalTransition);
            }
        }

        void removeListener(TransitionInterfaceListener transitionInterfaceListener) {
            this.mListeners.remove(transitionInterfaceListener);
        }
    }

    private static class TransitionWrapper
    extends Transition {
        private TransitionInterface mTransition;

        public TransitionWrapper(TransitionInterface transitionInterface) {
            this.mTransition = transitionInterface;
        }

        public void captureEndValues(android.transition.TransitionValues transitionValues) {
            TransitionKitKat.wrapCaptureEndValues(this.mTransition, transitionValues);
        }

        public void captureStartValues(android.transition.TransitionValues transitionValues) {
            TransitionKitKat.wrapCaptureStartValues(this.mTransition, transitionValues);
        }

        public Animator createAnimator(ViewGroup viewGroup, android.transition.TransitionValues transitionValues, android.transition.TransitionValues transitionValues2) {
            return this.mTransition.createAnimator(viewGroup, TransitionKitKat.convertToSupport(transitionValues), TransitionKitKat.convertToSupport(transitionValues2));
        }
    }

}

