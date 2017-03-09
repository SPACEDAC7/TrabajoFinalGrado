/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.AnimatorListenerAdapter
 *  android.animation.TimeInterpolator
 *  android.content.Context
 *  android.util.SparseArray
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewParent
 *  android.widget.ListAdapter
 *  android.widget.ListView
 */
package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.transition.TransitionSetPort;
import android.support.transition.TransitionValues;
import android.support.transition.TransitionValuesMaps;
import android.support.transition.WindowIdPort;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.SimpleArrayMap;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

abstract class TransitionPort
implements Cloneable {
    static final boolean DBG = false;
    private static final String LOG_TAG = "Transition";
    private static ThreadLocal<ArrayMap<Animator, AnimationInfo>> sRunningAnimators = new ThreadLocal();
    ArrayList<Animator> mAnimators = new ArrayList();
    boolean mCanRemoveViews = false;
    ArrayList<Animator> mCurrentAnimators;
    long mDuration = -1;
    private TransitionValuesMaps mEndValues;
    private boolean mEnded;
    TimeInterpolator mInterpolator = null;
    ArrayList<TransitionListener> mListeners = null;
    private String mName;
    int mNumInstances = 0;
    TransitionSetPort mParent = null;
    boolean mPaused = false;
    ViewGroup mSceneRoot = null;
    long mStartDelay = -1;
    private TransitionValuesMaps mStartValues;
    ArrayList<View> mTargetChildExcludes = null;
    ArrayList<View> mTargetExcludes = null;
    ArrayList<Integer> mTargetIdChildExcludes = null;
    ArrayList<Integer> mTargetIdExcludes = null;
    ArrayList<Integer> mTargetIds = new ArrayList();
    ArrayList<Class> mTargetTypeChildExcludes = null;
    ArrayList<Class> mTargetTypeExcludes = null;
    ArrayList<View> mTargets = new ArrayList();

    public TransitionPort() {
        this.mName = this.getClass().getName();
        this.mStartValues = new TransitionValuesMaps();
        this.mEndValues = new TransitionValuesMaps();
        this.mCurrentAnimators = new ArrayList();
        this.mEnded = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void captureHierarchy(View view, boolean bl) {
        if (view == null) return;
        {
            Object object;
            int n2 = 0;
            if (view.getParent() instanceof ListView) {
                n2 = 1;
            }
            if (n2 != 0) {
                if (!((ListView)view.getParent()).getAdapter().hasStableIds()) return;
            }
            int n3 = -1;
            long l2 = -1;
            if (n2 == 0) {
                n3 = view.getId();
            } else {
                object = (ListView)view.getParent();
                l2 = object.getItemIdAtPosition(object.getPositionForView(view));
            }
            if (this.mTargetIdExcludes != null && this.mTargetIdExcludes.contains(n3) || this.mTargetExcludes != null && this.mTargetExcludes.contains((Object)view)) return;
            {
                if (this.mTargetTypeExcludes != null && view != null) {
                    int n4 = this.mTargetTypeExcludes.size();
                    for (int i2 = 0; i2 < n4; ++i2) {
                        if (this.mTargetTypeExcludes.get(i2).isInstance((Object)view)) return;
                        {
                            continue;
                        }
                    }
                } else {
                    object = new TransitionValues();
                    object.view = view;
                    if (bl) {
                        this.captureStartValues((TransitionValues)object);
                    } else {
                        this.captureEndValues((TransitionValues)object);
                    }
                    if (bl) {
                        if (n2 == 0) {
                            this.mStartValues.viewValues.put(view, (TransitionValues)object);
                            if (n3 >= 0) {
                                this.mStartValues.idValues.put(n3, object);
                            }
                        } else {
                            this.mStartValues.itemIdValues.put(l2, (TransitionValues)object);
                        }
                    } else if (n2 == 0) {
                        this.mEndValues.viewValues.put(view, (TransitionValues)object);
                        if (n3 >= 0) {
                            this.mEndValues.idValues.put(n3, object);
                        }
                    } else {
                        this.mEndValues.itemIdValues.put(l2, (TransitionValues)object);
                    }
                    if (!(view instanceof ViewGroup) || this.mTargetIdChildExcludes != null && this.mTargetIdChildExcludes.contains(n3) || this.mTargetChildExcludes != null && this.mTargetChildExcludes.contains((Object)view)) return;
                    {
                        if (this.mTargetTypeChildExcludes != null && view != null) {
                            n3 = this.mTargetTypeChildExcludes.size();
                            for (n2 = 0; n2 < n3; ++n2) {
                                if (this.mTargetTypeChildExcludes.get(n2).isInstance((Object)view)) return;
                                {
                                    continue;
                                }
                            }
                        } else {
                            view = (ViewGroup)view;
                            n2 = 0;
                            while (n2 < view.getChildCount()) {
                                this.captureHierarchy(view.getChildAt(n2), bl);
                                ++n2;
                            }
                            return;
                        }
                    }
                }
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private ArrayList<Integer> excludeId(ArrayList<Integer> arrayList, int n2, boolean bl) {
        ArrayList<Integer> arrayList2 = arrayList;
        if (n2 <= 0) return arrayList2;
        if (!bl) return ArrayListManager.remove(arrayList, n2);
        return ArrayListManager.add(arrayList, n2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private ArrayList<Class> excludeType(ArrayList<Class> arrayList, Class class_, boolean bl) {
        ArrayList<Class> arrayList2 = arrayList;
        if (class_ == null) return arrayList2;
        if (!bl) return ArrayListManager.remove(arrayList, class_);
        return ArrayListManager.add(arrayList, class_);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private ArrayList<View> excludeView(ArrayList<View> arrayList, View view, boolean bl) {
        ArrayList<View> arrayList2 = arrayList;
        if (view == null) return arrayList2;
        if (!bl) return ArrayListManager.remove(arrayList, view);
        return ArrayListManager.add(arrayList, view);
    }

    private static ArrayMap<Animator, AnimationInfo> getRunningAnimators() {
        ArrayMap<Animator, AnimationInfo> arrayMap;
        ArrayMap arrayMap2 = arrayMap = sRunningAnimators.get();
        if (arrayMap == null) {
            arrayMap2 = new ArrayMap();
            sRunningAnimators.set(arrayMap2);
        }
        return arrayMap2;
    }

    private void runAnimator(Animator animator2, final ArrayMap<Animator, AnimationInfo> arrayMap) {
        if (animator2 != null) {
            animator2.addListener((Animator.AnimatorListener)new AnimatorListenerAdapter(){

                public void onAnimationEnd(Animator animator2) {
                    arrayMap.remove((Object)animator2);
                    TransitionPort.this.mCurrentAnimators.remove((Object)animator2);
                }

                public void onAnimationStart(Animator animator2) {
                    TransitionPort.this.mCurrentAnimators.add(animator2);
                }
            });
            this.animate(animator2);
        }
    }

    public TransitionPort addListener(TransitionListener transitionListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        this.mListeners.add(transitionListener);
        return this;
    }

    public TransitionPort addTarget(int n2) {
        if (n2 > 0) {
            this.mTargetIds.add(n2);
        }
        return this;
    }

    public TransitionPort addTarget(View view) {
        this.mTargets.add(view);
        return this;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    protected void animate(Animator animator2) {
        if (animator2 == null) {
            this.end();
            return;
        }
        if (this.getDuration() >= 0) {
            animator2.setDuration(this.getDuration());
        }
        if (this.getStartDelay() >= 0) {
            animator2.setStartDelay(this.getStartDelay());
        }
        if (this.getInterpolator() != null) {
            animator2.setInterpolator(this.getInterpolator());
        }
        animator2.addListener((Animator.AnimatorListener)new AnimatorListenerAdapter(){

            public void onAnimationEnd(Animator animator2) {
                TransitionPort.this.end();
                animator2.removeListener((Animator.AnimatorListener)this);
            }
        });
        animator2.start();
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    protected void cancel() {
        int n2;
        for (n2 = this.mCurrentAnimators.size() - 1; n2 >= 0; --n2) {
            this.mCurrentAnimators.get(n2).cancel();
        }
        if (this.mListeners != null && this.mListeners.size() > 0) {
            ArrayList arrayList = (ArrayList)this.mListeners.clone();
            int n3 = arrayList.size();
            for (n2 = 0; n2 < n3; ++n2) {
                ((TransitionListener)arrayList.get(n2)).onTransitionCancel(this);
            }
        }
    }

    public abstract void captureEndValues(TransitionValues var1);

    public abstract void captureStartValues(TransitionValues var1);

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void captureValues(ViewGroup viewGroup, boolean bl) {
        Object object;
        int n2;
        this.clearValues(bl);
        if (this.mTargetIds.size() <= 0 && this.mTargets.size() <= 0) {
            this.captureHierarchy((View)viewGroup, bl);
            return;
        }
        if (this.mTargetIds.size() > 0) {
            for (n2 = 0; n2 < this.mTargetIds.size(); ++n2) {
                int n3 = this.mTargetIds.get(n2);
                object = viewGroup.findViewById(n3);
                if (object == null) continue;
                TransitionValues transitionValues = new TransitionValues();
                transitionValues.view = object;
                if (bl) {
                    this.captureStartValues(transitionValues);
                } else {
                    this.captureEndValues(transitionValues);
                }
                if (bl) {
                    this.mStartValues.viewValues.put((View)object, transitionValues);
                    if (n3 < 0) continue;
                    this.mStartValues.idValues.put(n3, (Object)transitionValues);
                    continue;
                }
                this.mEndValues.viewValues.put((View)object, transitionValues);
                if (n3 < 0) continue;
                this.mEndValues.idValues.put(n3, (Object)transitionValues);
            }
        }
        if (this.mTargets.size() <= 0) return;
        n2 = 0;
        while (n2 < this.mTargets.size()) {
            viewGroup = this.mTargets.get(n2);
            if (viewGroup != null) {
                object = new TransitionValues();
                object.view = viewGroup;
                if (bl) {
                    this.captureStartValues((TransitionValues)object);
                } else {
                    this.captureEndValues((TransitionValues)object);
                }
                if (bl) {
                    this.mStartValues.viewValues.put((View)viewGroup, (TransitionValues)object);
                } else {
                    this.mEndValues.viewValues.put((View)viewGroup, (TransitionValues)object);
                }
            }
            ++n2;
        }
    }

    void clearValues(boolean bl) {
        if (bl) {
            this.mStartValues.viewValues.clear();
            this.mStartValues.idValues.clear();
            this.mStartValues.itemIdValues.clear();
            return;
        }
        this.mEndValues.viewValues.clear();
        this.mEndValues.idValues.clear();
        this.mEndValues.itemIdValues.clear();
    }

    public TransitionPort clone() {
        TransitionPort transitionPort;
        TransitionPort transitionPort2 = null;
        try {
            transitionPort2 = transitionPort = (TransitionPort)super.clone();
        }
        catch (CloneNotSupportedException var2_3) {
            return transitionPort2;
        }
        transitionPort.mAnimators = new ArrayList<E>();
        transitionPort2 = transitionPort;
        transitionPort.mStartValues = new TransitionValuesMaps();
        transitionPort2 = transitionPort;
        transitionPort.mEndValues = new TransitionValuesMaps();
        return transitionPort;
    }

    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    protected void createAnimators(ViewGroup var1_1, TransitionValuesMaps var2_2, TransitionValuesMaps var3_3) {
        var17_4 = new String[](var3_3.viewValues);
        var16_5 = new SparseArray(var3_3.idValues.size());
        for (var4_6 = 0; var4_6 < var3_3.idValues.size(); ++var4_6) {
            var16_5.put(var3_3.idValues.keyAt(var4_6), var3_3.idValues.valueAt(var4_6));
        }
        var13_7 = new LongSparseArray<TransitionValues>(var3_3.itemIdValues.size());
        for (var4_6 = 0; var4_6 < var3_3.itemIdValues.size(); ++var4_6) {
            var13_7.put(var3_3.itemIdValues.keyAt(var4_6), (TransitionValues)var3_3.itemIdValues.valueAt(var4_6));
        }
        var14_8 = new ArrayList<Object>();
        var15_9 = new ArrayList<Object>();
        for (View var19_16 : var2_2.viewValues.keySet()) {
            var9_12 = null;
            var4_6 = 0;
            if (!(var19_16.getParent() instanceof ListView) || (var4_6 = 1) == 0) {
                var4_6 = var19_16.getId();
                var10_13 = var2_2.viewValues.get((Object)var19_16) != null ? var2_2.viewValues.get((Object)var19_16) : (TransitionValues)var2_2.idValues.get(var4_6);
                if (var3_3.viewValues.get((Object)var19_16) != null) {
                    var9_12 = var3_3.viewValues.get((Object)var19_16);
                    var17_4.remove((Object)var19_16);
                } else if (var4_6 != -1) {
                    var12_15 = (TransitionValues)var3_3.idValues.get(var4_6);
                    var11_14 = null;
                    for (Object var9_12 : var17_4.keySet()) {
                        if (var9_12.getId() != var4_6) continue;
                        var11_14 = var9_12;
                    }
                    var9_12 = var12_15;
                    if (var11_14 != null) {
                        var17_4.remove(var11_14);
                        var9_12 = var12_15;
                    }
                }
                var16_5.remove(var4_6);
                if (!this.isValidTarget(var19_16, var4_6)) continue;
                var14_8.add(var10_13);
                var15_9.add(var9_12);
                continue;
            }
            var9_12 = (ListView)var19_16.getParent();
            if (!var9_12.getAdapter().hasStableIds()) continue;
            var7_11 = var9_12.getItemIdAtPosition(var9_12.getPositionForView(var19_16));
            var9_12 = var2_2.itemIdValues.get(var7_11);
            var13_7.remove(var7_11);
            var14_8.add(var9_12);
            var15_9.add(null);
        }
        var5_18 = var2_2.itemIdValues.size();
        for (var4_6 = 0; var4_6 < var5_18; ++var4_6) {
            var7_11 = var2_2.itemIdValues.keyAt(var4_6);
            if (!this.isValidTarget(null, var7_11)) continue;
            var9_12 = var2_2.itemIdValues.get(var7_11);
            var10_13 = var3_3.itemIdValues.get(var7_11);
            var13_7.remove(var7_11);
            var14_8.add(var9_12);
            var15_9.add(var10_13);
        }
        var10_13 = var17_4.keySet().iterator();
        while (var10_13.hasNext()) {
            var11_14 = (View)var10_13.next();
            if (!this.isValidTarget((View)var11_14, var4_6 = var11_14.getId())) continue;
            var9_12 = var2_2.viewValues.get(var11_14) != null ? var2_2.viewValues.get(var11_14) : (TransitionValues)var2_2.idValues.get(var4_6);
            var11_14 = (TransitionValues)var17_4.get(var11_14);
            var16_5.remove(var4_6);
            var14_8.add(var9_12);
            var15_9.add(var11_14);
        }
        var5_18 = var16_5.size();
        for (var4_6 = 0; var4_6 < var5_18; ++var4_6) {
            var6_19 = var16_5.keyAt(var4_6);
            if (!this.isValidTarget(null, var6_19)) continue;
            var9_12 = (TransitionValues)var2_2.idValues.get(var6_19);
            var10_13 = (TransitionValues)var16_5.get(var6_19);
            var14_8.add(var9_12);
            var15_9.add(var10_13);
        }
        var5_18 = var13_7.size();
        for (var4_6 = 0; var4_6 < var5_18; ++var4_6) {
            var7_11 = var13_7.keyAt(var4_6);
            var9_12 = var2_2.itemIdValues.get(var7_11);
            var10_13 = (TransitionValues)var13_7.get(var7_11);
            var14_8.add(var9_12);
            var15_9.add(var10_13);
        }
        var16_5 = TransitionPort.getRunningAnimators();
        var4_6 = 0;
        block8 : do {
            if (var4_6 >= var14_8.size()) return;
            var2_2 = (TransitionValues)var14_8.get(var4_6);
            var9_12 = (TransitionValues)var15_9.get(var4_6);
            if (var2_2 == null && var9_12 == null || var2_2 != null && var2_2.equals(var9_12) || (var11_14 = this.createAnimator(var1_1, (TransitionValues)var2_2, (TransitionValues)var9_12)) == null) ** GOTO lbl133
            var13_7 = null;
            if (var9_12 == null) ** GOTO lbl114
            var12_15 = var9_12.view;
            var17_4 = this.getTransitionProperties();
            var9_12 = var11_14;
            var2_2 = var13_7;
            var10_13 = var12_15;
            if (var12_15 == null) ** GOTO lbl130
            var9_12 = var11_14;
            var2_2 = var13_7;
            var10_13 = var12_15;
            if (var17_4 == null) ** GOTO lbl130
            var9_12 = var11_14;
            var2_2 = var13_7;
            var10_13 = var12_15;
            if (var17_4.length <= 0) ** GOTO lbl130
            var13_7 = new TransitionValues();
            var13_7.view = var12_15;
            var2_2 = var3_3.viewValues.get(var12_15);
            if (var2_2 == null) ** GOTO lbl118
            for (var5_18 = 0; var5_18 < var17_4.length; ++var5_18) {
                var13_7.values.put(var17_4[var5_18], var2_2.values.get(var17_4[var5_18]));
            }
            ** GOTO lbl118
lbl114: // 1 sources:
            var10_13 = var2_2.view;
            var9_12 = var11_14;
            var2_2 = var13_7;
            ** GOTO lbl130
lbl118: // 2 sources:
            var6_19 = var16_5.size();
            var5_18 = 0;
            do {
                var9_12 = var11_14;
                var2_2 = var13_7;
                var10_13 = var12_15;
                if (var5_18 >= var6_19) ** GOTO lbl130
                var2_2 = (AnimationInfo)var16_5.get((Object)((Animator)var16_5.keyAt(var5_18)));
                if (var2_2.values != null && var2_2.view == var12_15 && (var2_2.name == null && this.getName() == null || var2_2.name.equals(this.getName())) && var2_2.values.equals(var13_7)) {
                    var9_12 = null;
                    var10_13 = var12_15;
                    var2_2 = var13_7;
lbl130: // 6 sources:
                    if (var9_12 != null) {
                        var16_5.put(var9_12, new AnimationInfo((View)var10_13, this.getName(), WindowIdPort.getWindowId((View)var1_1), (TransitionValues)var2_2));
                        this.mAnimators.add((Animator)var9_12);
                    }
lbl133: // 4 sources:
                    ++var4_6;
                    continue block8;
                }
                ++var5_18;
            } while (true);
            break;
        } while (true);
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    protected void end() {
        --this.mNumInstances;
        if (this.mNumInstances == 0) {
            ArrayList arrayList;
            int n2;
            if (this.mListeners != null && this.mListeners.size() > 0) {
                arrayList = (ArrayList)this.mListeners.clone();
                int n3 = arrayList.size();
                for (n2 = 0; n2 < n3; ++n2) {
                    ((TransitionListener)arrayList.get(n2)).onTransitionEnd(this);
                }
            }
            for (n2 = 0; n2 < this.mStartValues.itemIdValues.size(); ++n2) {
                arrayList = this.mStartValues.itemIdValues.valueAt((int)n2).view;
            }
            for (n2 = 0; n2 < this.mEndValues.itemIdValues.size(); ++n2) {
                arrayList = this.mEndValues.itemIdValues.valueAt((int)n2).view;
            }
            this.mEnded = true;
        }
    }

    public TransitionPort excludeChildren(int n2, boolean bl) {
        this.mTargetIdChildExcludes = this.excludeId(this.mTargetIdChildExcludes, n2, bl);
        return this;
    }

    public TransitionPort excludeChildren(View view, boolean bl) {
        this.mTargetChildExcludes = this.excludeView(this.mTargetChildExcludes, view, bl);
        return this;
    }

    public TransitionPort excludeChildren(Class class_, boolean bl) {
        this.mTargetTypeChildExcludes = this.excludeType(this.mTargetTypeChildExcludes, class_, bl);
        return this;
    }

    public TransitionPort excludeTarget(int n2, boolean bl) {
        this.mTargetIdExcludes = this.excludeId(this.mTargetIdExcludes, n2, bl);
        return this;
    }

    public TransitionPort excludeTarget(View view, boolean bl) {
        this.mTargetExcludes = this.excludeView(this.mTargetExcludes, view, bl);
        return this;
    }

    public TransitionPort excludeTarget(Class class_, boolean bl) {
        this.mTargetTypeExcludes = this.excludeType(this.mTargetTypeExcludes, class_, bl);
        return this;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    public String getName() {
        return this.mName;
    }

    public long getStartDelay() {
        return this.mStartDelay;
    }

    public List<Integer> getTargetIds() {
        return this.mTargetIds;
    }

    public List<View> getTargets() {
        return this.mTargets;
    }

    public String[] getTransitionProperties() {
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public TransitionValues getTransitionValues(View view, boolean bl) {
        TransitionValues transitionValues;
        if (this.mParent != null) {
            return this.mParent.getTransitionValues(view, bl);
        }
        TransitionValuesMaps transitionValuesMaps = bl ? this.mStartValues : this.mEndValues;
        TransitionValues transitionValues2 = transitionValues = transitionValuesMaps.viewValues.get((Object)view);
        if (transitionValues != null) return transitionValues2;
        int n2 = view.getId();
        if (n2 >= 0) {
            transitionValues = (TransitionValues)transitionValuesMaps.idValues.get(n2);
        }
        transitionValues2 = transitionValues;
        if (transitionValues != null) return transitionValues2;
        transitionValues2 = transitionValues;
        if (!(view.getParent() instanceof ListView)) return transitionValues2;
        transitionValues2 = (ListView)view.getParent();
        long l2 = transitionValues2.getItemIdAtPosition(transitionValues2.getPositionForView(view));
        return transitionValuesMaps.itemIdValues.get(l2);
    }

    boolean isValidTarget(View view, long l2) {
        int n2;
        if (this.mTargetIdExcludes != null && this.mTargetIdExcludes.contains((int)l2)) {
            return false;
        }
        if (this.mTargetExcludes != null && this.mTargetExcludes.contains((Object)view)) {
            return false;
        }
        if (this.mTargetTypeExcludes != null && view != null) {
            int n3 = this.mTargetTypeExcludes.size();
            for (n2 = 0; n2 < n3; ++n2) {
                if (!this.mTargetTypeExcludes.get(n2).isInstance((Object)view)) continue;
                return false;
            }
        }
        if (this.mTargetIds.size() == 0 && this.mTargets.size() == 0) {
            return true;
        }
        if (this.mTargetIds.size() > 0) {
            for (n2 = 0; n2 < this.mTargetIds.size(); ++n2) {
                if ((long)this.mTargetIds.get(n2).intValue() != l2) continue;
                return true;
            }
        }
        if (view != null && this.mTargets.size() > 0) {
            for (n2 = 0; n2 < this.mTargets.size(); ++n2) {
                if (this.mTargets.get(n2) != view) continue;
                return true;
            }
        }
        return false;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void pause(View object) {
        if (!this.mEnded) {
            ArrayMap<Animator, AnimationInfo> arrayMap = TransitionPort.getRunningAnimators();
            int n2 = arrayMap.size();
            object = WindowIdPort.getWindowId((View)object);
            --n2;
            while (n2 >= 0) {
                AnimationInfo animationInfo = arrayMap.valueAt(n2);
                if (animationInfo.view != null && object.equals(animationInfo.windowId)) {
                    arrayMap.keyAt(n2).cancel();
                }
                --n2;
            }
            if (this.mListeners != null && this.mListeners.size() > 0) {
                object = (ArrayList)this.mListeners.clone();
                int n3 = object.size();
                for (n2 = 0; n2 < n3; ++n2) {
                    ((TransitionListener)object.get(n2)).onTransitionPause(this);
                }
            }
            this.mPaused = true;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void playTransition(ViewGroup viewGroup) {
        ArrayMap<Animator, AnimationInfo> arrayMap = TransitionPort.getRunningAnimators();
        int n2 = arrayMap.size() - 1;
        do {
            Object object;
            if (n2 < 0) {
                this.createAnimators(viewGroup, this.mStartValues, this.mEndValues);
                this.runAnimators();
                return;
            }
            Animator animator2 = arrayMap.keyAt(n2);
            if (animator2 != null && (object = arrayMap.get((Object)animator2)) != null && object.view != null && object.view.getContext() == viewGroup.getContext()) {
                boolean bl;
                block10 : {
                    boolean bl2 = false;
                    TransitionValues transitionValues = object.values;
                    Object object2 = object.view;
                    object = this.mEndValues.viewValues != null ? this.mEndValues.viewValues.get(object2) : null;
                    Object object3 = object;
                    if (object == null) {
                        object3 = (TransitionValues)this.mEndValues.idValues.get(object2.getId());
                    }
                    bl = bl2;
                    if (transitionValues != null) {
                        bl = bl2;
                        if (object3 != null) {
                            Object object4;
                            object = transitionValues.values.keySet().iterator();
                            do {
                                bl = bl2;
                                if (!object.hasNext()) break block10;
                                object4 = object.next();
                                object2 = transitionValues.values.get(object4);
                                object4 = object3.values.get(object4);
                            } while (object2 == null || object4 == null || object2.equals(object4));
                            bl = true;
                        }
                    }
                }
                if (bl) {
                    if (animator2.isRunning() || animator2.isStarted()) {
                        animator2.cancel();
                    } else {
                        arrayMap.remove((Object)animator2);
                    }
                }
            }
            --n2;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public TransitionPort removeListener(TransitionListener transitionListener) {
        if (this.mListeners == null) {
            return this;
        }
        this.mListeners.remove(transitionListener);
        if (this.mListeners.size() != 0) return this;
        this.mListeners = null;
        return this;
    }

    public TransitionPort removeTarget(int n2) {
        if (n2 > 0) {
            this.mTargetIds.remove((Object)n2);
        }
        return this;
    }

    public TransitionPort removeTarget(View view) {
        if (view != null) {
            this.mTargets.remove((Object)view);
        }
        return this;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void resume(View object) {
        if (this.mPaused) {
            if (!this.mEnded) {
                ArrayMap<Animator, AnimationInfo> arrayMap = TransitionPort.getRunningAnimators();
                int n2 = arrayMap.size();
                object = WindowIdPort.getWindowId((View)object);
                --n2;
                while (n2 >= 0) {
                    AnimationInfo animationInfo = arrayMap.valueAt(n2);
                    if (animationInfo.view != null && object.equals(animationInfo.windowId)) {
                        arrayMap.keyAt(n2).end();
                    }
                    --n2;
                }
                if (this.mListeners != null && this.mListeners.size() > 0) {
                    object = (ArrayList)this.mListeners.clone();
                    int n3 = object.size();
                    for (n2 = 0; n2 < n3; ++n2) {
                        ((TransitionListener)object.get(n2)).onTransitionResume(this);
                    }
                }
            }
            this.mPaused = false;
        }
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    protected void runAnimators() {
        this.start();
        ArrayMap<Animator, AnimationInfo> arrayMap = TransitionPort.getRunningAnimators();
        for (Animator animator2 : this.mAnimators) {
            if (!arrayMap.containsKey((Object)animator2)) continue;
            this.start();
            this.runAnimator(animator2, arrayMap);
        }
        this.mAnimators.clear();
        this.end();
    }

    void setCanRemoveViews(boolean bl) {
        this.mCanRemoveViews = bl;
    }

    public TransitionPort setDuration(long l2) {
        this.mDuration = l2;
        return this;
    }

    public TransitionPort setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
        return this;
    }

    TransitionPort setSceneRoot(ViewGroup viewGroup) {
        this.mSceneRoot = viewGroup;
        return this;
    }

    public TransitionPort setStartDelay(long l2) {
        this.mStartDelay = l2;
        return this;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    protected void start() {
        if (this.mNumInstances == 0) {
            if (this.mListeners != null && this.mListeners.size() > 0) {
                ArrayList arrayList = (ArrayList)this.mListeners.clone();
                int n2 = arrayList.size();
                for (int i2 = 0; i2 < n2; ++i2) {
                    ((TransitionListener)arrayList.get(i2)).onTransitionStart(this);
                }
            }
            this.mEnded = false;
        }
        ++this.mNumInstances;
    }

    public String toString() {
        return this.toString("");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    String toString(String string2) {
        int n2;
        String string3;
        string2 = string3 = string2 + this.getClass().getSimpleName() + "@" + Integer.toHexString(this.hashCode()) + ": ";
        if (this.mDuration != -1) {
            string2 = string3 + "dur(" + this.mDuration + ") ";
        }
        string3 = string2;
        if (this.mStartDelay != -1) {
            string3 = string2 + "dly(" + this.mStartDelay + ") ";
        }
        string2 = string3;
        if (this.mInterpolator != null) {
            string2 = string3 + "interp(" + (Object)this.mInterpolator + ") ";
        }
        if (this.mTargetIds.size() <= 0) {
            string3 = string2;
            if (this.mTargets.size() <= 0) return string3;
        }
        string2 = string3 = string2 + "tgts(";
        if (this.mTargetIds.size() > 0) {
            n2 = 0;
            do {
                string2 = string3;
                if (n2 >= this.mTargetIds.size()) break;
                string2 = string3;
                if (n2 > 0) {
                    string2 = string3 + ", ";
                }
                string3 = string2 + this.mTargetIds.get(n2);
                ++n2;
            } while (true);
        }
        string3 = string2;
        if (this.mTargets.size() <= 0) return string3 + ")";
        n2 = 0;
        do {
            string3 = string2;
            if (n2 >= this.mTargets.size()) return string3 + ")";
            string3 = string2;
            if (n2 > 0) {
                string3 = string2 + ", ";
            }
            string2 = string3 + (Object)this.mTargets.get(n2);
            ++n2;
        } while (true);
    }

    private static class AnimationInfo {
        String name;
        TransitionValues values;
        View view;
        WindowIdPort windowId;

        AnimationInfo(View view, String string2, WindowIdPort windowIdPort, TransitionValues transitionValues) {
            this.view = view;
            this.name = string2;
            this.values = transitionValues;
            this.windowId = windowIdPort;
        }
    }

    private static class ArrayListManager {
        private ArrayListManager() {
        }

        static <T> ArrayList<T> add(ArrayList<T> arrayList, T t2) {
            ArrayList arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList();
            }
            if (!arrayList2.contains(t2)) {
                arrayList2.add(t2);
            }
            return arrayList2;
        }

        static <T> ArrayList<T> remove(ArrayList<T> arrayList, T t2) {
            ArrayList<T> arrayList2 = arrayList;
            if (arrayList != null) {
                arrayList.remove(t2);
                arrayList2 = arrayList;
                if (arrayList.isEmpty()) {
                    arrayList2 = null;
                }
            }
            return arrayList2;
        }
    }

    public static interface TransitionListener {
        public void onTransitionCancel(TransitionPort var1);

        public void onTransitionEnd(TransitionPort var1);

        public void onTransitionPause(TransitionPort var1);

        public void onTransitionResume(TransitionPort var1);

        public void onTransitionStart(TransitionPort var1);
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static class TransitionListenerAdapter
    implements TransitionListener {
        @Override
        public void onTransitionCancel(TransitionPort transitionPort) {
        }

        @Override
        public void onTransitionEnd(TransitionPort transitionPort) {
        }

        @Override
        public void onTransitionPause(TransitionPort transitionPort) {
        }

        @Override
        public void onTransitionResume(TransitionPort transitionPort) {
        }

        @Override
        public void onTransitionStart(TransitionPort transitionPort) {
        }
    }

}

