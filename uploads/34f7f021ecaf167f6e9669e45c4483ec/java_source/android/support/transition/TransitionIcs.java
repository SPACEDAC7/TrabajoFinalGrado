/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.TimeInterpolator
 *  android.view.View
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionInterfaceListener;
import android.support.transition.TransitionPort;
import android.support.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class TransitionIcs
extends TransitionImpl {
    private CompatListener mCompatListener;
    TransitionInterface mExternalTransition;
    TransitionPort mTransition;

    TransitionIcs() {
    }

    @Override
    public TransitionImpl addListener(TransitionInterfaceListener transitionInterfaceListener) {
        if (this.mCompatListener == null) {
            this.mCompatListener = new CompatListener();
            this.mTransition.addListener(this.mCompatListener);
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
        this.mTransition.captureEndValues(transitionValues);
    }

    @Override
    public void captureStartValues(TransitionValues transitionValues) {
        this.mTransition.captureStartValues(transitionValues);
    }

    @Override
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return this.mTransition.createAnimator(viewGroup, transitionValues, transitionValues2);
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
        return this.mTransition.getTransitionValues(view, bl);
    }

    @Override
    public void init(TransitionInterface transitionInterface, Object object) {
        this.mExternalTransition = transitionInterface;
        if (object == null) {
            this.mTransition = new TransitionWrapper(transitionInterface);
            return;
        }
        this.mTransition = (TransitionPort)object;
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
        this.mTransition.removeListener(this.mCompatListener);
        this.mCompatListener = null;
        return this;
    }

    @Override
    public TransitionImpl removeTarget(int n2) {
        this.mTransition.removeTarget(n2);
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
    implements TransitionPort.TransitionListener {
        private final ArrayList<TransitionInterfaceListener> mListeners;

        CompatListener() {
            this.mListeners = new ArrayList();
        }

        public void addListener(TransitionInterfaceListener transitionInterfaceListener) {
            this.mListeners.add(transitionInterfaceListener);
        }

        public boolean isEmpty() {
            return this.mListeners.isEmpty();
        }

        @Override
        public void onTransitionCancel(TransitionPort object) {
            object = this.mListeners.iterator();
            while (object.hasNext()) {
                ((TransitionInterfaceListener)object.next()).onTransitionCancel(TransitionIcs.this.mExternalTransition);
            }
        }

        @Override
        public void onTransitionEnd(TransitionPort object) {
            object = this.mListeners.iterator();
            while (object.hasNext()) {
                ((TransitionInterfaceListener)object.next()).onTransitionEnd(TransitionIcs.this.mExternalTransition);
            }
        }

        @Override
        public void onTransitionPause(TransitionPort object) {
            object = this.mListeners.iterator();
            while (object.hasNext()) {
                ((TransitionInterfaceListener)object.next()).onTransitionPause(TransitionIcs.this.mExternalTransition);
            }
        }

        @Override
        public void onTransitionResume(TransitionPort object) {
            object = this.mListeners.iterator();
            while (object.hasNext()) {
                ((TransitionInterfaceListener)object.next()).onTransitionResume(TransitionIcs.this.mExternalTransition);
            }
        }

        @Override
        public void onTransitionStart(TransitionPort object) {
            object = this.mListeners.iterator();
            while (object.hasNext()) {
                ((TransitionInterfaceListener)object.next()).onTransitionStart(TransitionIcs.this.mExternalTransition);
            }
        }

        public void removeListener(TransitionInterfaceListener transitionInterfaceListener) {
            this.mListeners.remove(transitionInterfaceListener);
        }
    }

    private static class TransitionWrapper
    extends TransitionPort {
        private TransitionInterface mTransition;

        public TransitionWrapper(TransitionInterface transitionInterface) {
            this.mTransition = transitionInterface;
        }

        @Override
        public void captureEndValues(TransitionValues transitionValues) {
            this.mTransition.captureEndValues(transitionValues);
        }

        @Override
        public void captureStartValues(TransitionValues transitionValues) {
            this.mTransition.captureStartValues(transitionValues);
        }

        @Override
        public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
            return this.mTransition.createAnimator(viewGroup, transitionValues, transitionValues2);
        }
    }

}

