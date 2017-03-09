/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.TimeInterpolator
 *  android.util.AndroidRuntimeException
 *  android.view.View
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.animation.TimeInterpolator;
import android.support.annotation.RestrictTo;
import android.support.transition.TransitionPort;
import android.support.transition.TransitionValues;
import android.support.transition.TransitionValuesMaps;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

class TransitionSetPort
extends TransitionPort {
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;
    int mCurrentListeners;
    private boolean mPlayTogether = true;
    boolean mStarted = false;
    ArrayList<TransitionPort> mTransitions = new ArrayList();

    private void setupStartEndListeners() {
        TransitionSetListener transitionSetListener = new TransitionSetListener(this);
        Iterator<TransitionPort> iterator = this.mTransitions.iterator();
        while (iterator.hasNext()) {
            iterator.next().addListener(transitionSetListener);
        }
        this.mCurrentListeners = this.mTransitions.size();
    }

    @Override
    public TransitionSetPort addListener(TransitionPort.TransitionListener transitionListener) {
        return (TransitionSetPort)super.addListener(transitionListener);
    }

    @Override
    public TransitionSetPort addTarget(int n2) {
        return (TransitionSetPort)super.addTarget(n2);
    }

    @Override
    public TransitionSetPort addTarget(View view) {
        return (TransitionSetPort)super.addTarget(view);
    }

    public TransitionSetPort addTransition(TransitionPort transitionPort) {
        if (transitionPort != null) {
            this.mTransitions.add(transitionPort);
            transitionPort.mParent = this;
            if (this.mDuration >= 0) {
                transitionPort.setDuration(this.mDuration);
            }
        }
        return this;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    protected void cancel() {
        super.cancel();
        int n2 = this.mTransitions.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            this.mTransitions.get(i2).cancel();
        }
    }

    @Override
    public void captureEndValues(TransitionValues transitionValues) {
        int n2 = transitionValues.view.getId();
        if (this.isValidTarget(transitionValues.view, n2)) {
            for (TransitionPort transitionPort : this.mTransitions) {
                if (!transitionPort.isValidTarget(transitionValues.view, n2)) continue;
                transitionPort.captureEndValues(transitionValues);
            }
        }
    }

    @Override
    public void captureStartValues(TransitionValues transitionValues) {
        int n2 = transitionValues.view.getId();
        if (this.isValidTarget(transitionValues.view, n2)) {
            for (TransitionPort transitionPort : this.mTransitions) {
                if (!transitionPort.isValidTarget(transitionValues.view, n2)) continue;
                transitionPort.captureStartValues(transitionValues);
            }
        }
    }

    @Override
    public TransitionSetPort clone() {
        TransitionSetPort transitionSetPort = (TransitionSetPort)super.clone();
        transitionSetPort.mTransitions = new ArrayList();
        int n2 = this.mTransitions.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            transitionSetPort.addTransition(this.mTransitions.get(i2).clone());
        }
        return transitionSetPort;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    protected void createAnimators(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2) {
        Iterator<TransitionPort> iterator = this.mTransitions.iterator();
        while (iterator.hasNext()) {
            iterator.next().createAnimators(viewGroup, transitionValuesMaps, transitionValuesMaps2);
        }
    }

    public int getOrdering() {
        if (this.mPlayTogether) {
            return 0;
        }
        return 1;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    public void pause(View view) {
        super.pause(view);
        int n2 = this.mTransitions.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            this.mTransitions.get(i2).pause(view);
        }
    }

    @Override
    public TransitionSetPort removeListener(TransitionPort.TransitionListener transitionListener) {
        return (TransitionSetPort)super.removeListener(transitionListener);
    }

    @Override
    public TransitionSetPort removeTarget(int n2) {
        return (TransitionSetPort)super.removeTarget(n2);
    }

    @Override
    public TransitionSetPort removeTarget(View view) {
        return (TransitionSetPort)super.removeTarget(view);
    }

    public TransitionSetPort removeTransition(TransitionPort transitionPort) {
        this.mTransitions.remove(transitionPort);
        transitionPort.mParent = null;
        return this;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    public void resume(View view) {
        super.resume(view);
        int n2 = this.mTransitions.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            this.mTransitions.get(i2).resume(view);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    protected void runAnimators() {
        if (this.mTransitions.isEmpty()) {
            this.start();
            this.end();
            return;
        } else {
            this.setupStartEndListeners();
            if (!this.mPlayTogether) {
                for (int i2 = 1; i2 < this.mTransitions.size(); ++i2) {
                    this.mTransitions.get(i2 - 1).addListener(new TransitionPort.TransitionListenerAdapter(this.mTransitions.get(i2)){
                        final /* synthetic */ TransitionPort val$nextTransition;

                        @Override
                        public void onTransitionEnd(TransitionPort transitionPort) {
                            this.val$nextTransition.runAnimators();
                            transitionPort.removeListener(this);
                        }
                    });
                }
                TransitionPort transitionPort = this.mTransitions.get(0);
                if (transitionPort == null) return;
                {
                    transitionPort.runAnimators();
                    return;
                }
            } else {
                Iterator<TransitionPort> iterator = this.mTransitions.iterator();
                while (iterator.hasNext()) {
                    iterator.next().runAnimators();
                }
            }
        }
    }

    @Override
    void setCanRemoveViews(boolean bl) {
        super.setCanRemoveViews(bl);
        int n2 = this.mTransitions.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            this.mTransitions.get(i2).setCanRemoveViews(bl);
        }
    }

    @Override
    public TransitionSetPort setDuration(long l2) {
        super.setDuration(l2);
        if (this.mDuration >= 0) {
            int n2 = this.mTransitions.size();
            for (int i2 = 0; i2 < n2; ++i2) {
                this.mTransitions.get(i2).setDuration(l2);
            }
        }
        return this;
    }

    @Override
    public TransitionSetPort setInterpolator(TimeInterpolator timeInterpolator) {
        return (TransitionSetPort)super.setInterpolator(timeInterpolator);
    }

    public TransitionSetPort setOrdering(int n2) {
        switch (n2) {
            default: {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + n2);
            }
            case 1: {
                this.mPlayTogether = false;
                return this;
            }
            case 0: 
        }
        this.mPlayTogether = true;
        return this;
    }

    @Override
    TransitionSetPort setSceneRoot(ViewGroup viewGroup) {
        super.setSceneRoot(viewGroup);
        int n2 = this.mTransitions.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            this.mTransitions.get(i2).setSceneRoot(viewGroup);
        }
        return this;
    }

    @Override
    public TransitionSetPort setStartDelay(long l2) {
        return (TransitionSetPort)super.setStartDelay(l2);
    }

    @Override
    String toString(String string2) {
        String string3 = super.toString(string2);
        for (int i2 = 0; i2 < this.mTransitions.size(); ++i2) {
            string3 = string3 + "\n" + this.mTransitions.get(i2).toString(new StringBuilder().append(string2).append("  ").toString());
        }
        return string3;
    }

    static class TransitionSetListener
    extends TransitionPort.TransitionListenerAdapter {
        TransitionSetPort mTransitionSet;

        TransitionSetListener(TransitionSetPort transitionSetPort) {
            this.mTransitionSet = transitionSetPort;
        }

        @Override
        public void onTransitionEnd(TransitionPort transitionPort) {
            TransitionSetPort transitionSetPort = this.mTransitionSet;
            --transitionSetPort.mCurrentListeners;
            if (this.mTransitionSet.mCurrentListeners == 0) {
                this.mTransitionSet.mStarted = false;
                this.mTransitionSet.end();
            }
            transitionPort.removeListener(this);
        }

        @Override
        public void onTransitionStart(TransitionPort transitionPort) {
            if (!this.mTransitionSet.mStarted) {
                this.mTransitionSet.start();
                this.mTransitionSet.mStarted = true;
            }
        }
    }

}

