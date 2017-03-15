/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.Log
 *  android.util.SparseArray
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnPreDrawListener
 */
package android.support.v4.app;

import android.content.Context;
import android.os.Build;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentContainer;
import android.support.v4.app.FragmentHostCallback;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManagerImpl;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.FragmentTransitionCompat21;
import android.support.v4.app.SharedElementCallback;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LogWriter;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.Writer;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class BackStackRecord
extends FragmentTransaction
implements FragmentManager.BackStackEntry,
Runnable {
    static final int OP_ADD = 1;
    static final int OP_ATTACH = 7;
    static final int OP_DETACH = 6;
    static final int OP_HIDE = 4;
    static final int OP_NULL = 0;
    static final int OP_REMOVE = 3;
    static final int OP_REPLACE = 2;
    static final int OP_SHOW = 5;
    static final boolean SUPPORTS_TRANSITIONS;
    static final String TAG = "FragmentManager";
    boolean mAddToBackStack;
    boolean mAllowAddToBackStack = true;
    int mBreadCrumbShortTitleRes;
    CharSequence mBreadCrumbShortTitleText;
    int mBreadCrumbTitleRes;
    CharSequence mBreadCrumbTitleText;
    boolean mCommitted;
    int mEnterAnim;
    int mExitAnim;
    Op mHead;
    int mIndex = -1;
    final FragmentManagerImpl mManager;
    String mName;
    int mNumOp;
    int mPopEnterAnim;
    int mPopExitAnim;
    ArrayList<String> mSharedElementSourceNames;
    ArrayList<String> mSharedElementTargetNames;
    Op mTail;
    int mTransition;
    int mTransitionStyle;

    /*
     * Enabled aggressive block sorting
     */
    static {
        boolean bl = Build.VERSION.SDK_INT >= 21;
        SUPPORTS_TRANSITIONS = bl;
    }

    public BackStackRecord(FragmentManagerImpl fragmentManagerImpl) {
        this.mManager = fragmentManagerImpl;
    }

    private TransitionState beginTransition(SparseArray<Fragment> object, SparseArray<Fragment> sparseArray, boolean bl) {
        int n2;
        TransitionState transitionState = new TransitionState();
        transitionState.nonExistentView = new View(this.mManager.mHost.getContext());
        boolean bl2 = false;
        for (n2 = 0; n2 < object.size(); ++n2) {
            if (!this.configureTransitions(object.keyAt(n2), transitionState, bl, (SparseArray<Fragment>)object, sparseArray)) continue;
            bl2 = true;
        }
        for (n2 = 0; n2 < sparseArray.size(); ++n2) {
            int n3 = sparseArray.keyAt(n2);
            boolean bl3 = bl2;
            if (object.get(n3) == null) {
                bl3 = bl2;
                if (this.configureTransitions(n3, transitionState, bl, (SparseArray<Fragment>)object, sparseArray)) {
                    bl3 = true;
                }
            }
            bl2 = bl3;
        }
        object = transitionState;
        if (!bl2) {
            object = null;
        }
        return object;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void calculateFragments(SparseArray<Fragment> var1_1, SparseArray<Fragment> var2_2) {
        if (!this.mManager.mContainer.onHasView()) {
            return;
        }
        var3_3 = this.mHead;
        while (var3_3 != null) {
            switch (var3_3.cmd) {
                case 1: {
                    this.setLastIn(var1_1, var2_2, var3_3.fragment);
                    ** break;
                }
                case 2: {
                    var4_4 = var3_3.fragment;
                    if (this.mManager.mAdded == null) ** GOTO lbl25
                    for (var7_7 = 0; var7_7 < this.mManager.mAdded.size(); ++var7_7) {
                        var6_6 = this.mManager.mAdded.get(var7_7);
                        if (var4_4 == null) ** GOTO lbl-1000
                        var5_5 = var4_4;
                        if (var6_6.mContainerId == var4_4.mContainerId) lbl-1000: // 2 sources:
                        {
                            if (var6_6 == var4_4) {
                                var5_5 = null;
                                var2_2.remove(var6_6.mContainerId);
                            } else {
                                BackStackRecord.setFirstOut(var1_1, var2_2, var6_6);
                                var5_5 = var4_4;
                            }
                        }
                        var4_4 = var5_5;
                    }
lbl25: // 2 sources:
                    this.setLastIn(var1_1, var2_2, var3_3.fragment);
                    ** break;
                }
                case 3: {
                    BackStackRecord.setFirstOut(var1_1, var2_2, var3_3.fragment);
                    ** break;
                }
                case 4: {
                    BackStackRecord.setFirstOut(var1_1, var2_2, var3_3.fragment);
                    ** break;
                }
                case 5: {
                    this.setLastIn(var1_1, var2_2, var3_3.fragment);
                    ** break;
                }
                case 6: {
                    BackStackRecord.setFirstOut(var1_1, var2_2, var3_3.fragment);
                }
lbl38: // 7 sources:
                default: {
                    ** GOTO lbl42
                }
                case 7: 
            }
            this.setLastIn(var1_1, var2_2, var3_3.fragment);
lbl42: // 2 sources:
            var3_3 = var3_3.next;
        }
    }

    private static Object captureExitingViews(Object object, Fragment fragment, ArrayList<View> arrayList, ArrayMap<String, View> arrayMap, View view) {
        Object object2 = object;
        if (object != null) {
            object2 = FragmentTransitionCompat21.captureExitingViews(object, fragment.getView(), arrayList, arrayMap, view);
        }
        return object2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean configureTransitions(int n2, TransitionState transitionState, boolean bl, SparseArray<Fragment> object, SparseArray<Fragment> arrayList) {
        ArrayMap<String, View> arrayMap;
        ViewGroup viewGroup = (ViewGroup)this.mManager.mContainer.onFindViewById(n2);
        if (viewGroup == null) {
            return false;
        }
        Object object2 = (Fragment)arrayList.get(n2);
        Object object3 = (Fragment)object.get(n2);
        Object object4 = BackStackRecord.getEnterTransition((Fragment)object2, bl);
        ArrayList<View> arrayList2 = BackStackRecord.getSharedElementTransition((Fragment)object2, (Fragment)object3, bl);
        ArrayList<View> arrayList3 = BackStackRecord.getExitTransition((Fragment)object3, bl);
        object = null;
        ArrayList<View> arrayList4 = new ArrayList<View>();
        arrayList = arrayList2;
        if (arrayList2 != null) {
            arrayMap = this.remapSharedElements(transitionState, (Fragment)object3, bl);
            if (arrayMap.isEmpty()) {
                arrayList = null;
                object = null;
            } else {
                object = bl ? object3.mEnterTransitionCallback : object2.mEnterTransitionCallback;
                if (object != null) {
                    object.onSharedElementStart(new ArrayList<String>(arrayMap.keySet()), new ArrayList<View>(arrayMap.values()), null);
                }
                this.prepareSharedElementTransition(transitionState, (View)viewGroup, arrayList2, (Fragment)object2, (Fragment)object3, bl, arrayList4, object4, arrayList3);
                arrayList = arrayList2;
                object = arrayMap;
            }
        }
        if (object4 == null && arrayList == null && arrayList3 == null) {
            return false;
        }
        arrayList2 = new ArrayList<View>();
        arrayMap = BackStackRecord.captureExitingViews(arrayList3, (Fragment)object3, arrayList2, object, transitionState.nonExistentView);
        if (this.mSharedElementTargetNames != null && object != null && (object3 = (View)object.get(this.mSharedElementTargetNames.get(0))) != null) {
            if (arrayMap != null) {
                FragmentTransitionCompat21.setEpicenter(arrayMap, (View)object3);
            }
            if (arrayList != null) {
                FragmentTransitionCompat21.setEpicenter(arrayList, (View)object3);
            }
        }
        object3 = new FragmentTransitionCompat21.ViewRetriever((Fragment)object2){
            final /* synthetic */ Fragment val$inFragment;

            @Override
            public View getView() {
                return this.val$inFragment.getView();
            }
        };
        arrayList3 = new ArrayList<View>();
        ArrayMap<String, View> arrayMap2 = new ArrayMap<String, View>();
        boolean bl2 = true;
        if (object2 != null) {
            bl2 = bl ? object2.getAllowReturnTransitionOverlap() : object2.getAllowEnterTransitionOverlap();
        }
        if ((object2 = FragmentTransitionCompat21.mergeTransitions(object4, arrayMap, arrayList, bl2)) != null) {
            FragmentTransitionCompat21.addTransitionTargets(object4, arrayList, arrayMap, (View)viewGroup, (FragmentTransitionCompat21.ViewRetriever)object3, transitionState.nonExistentView, transitionState.enteringEpicenterView, transitionState.nameOverrides, arrayList3, arrayList2, object, arrayMap2, arrayList4);
            this.excludeHiddenFragmentsAfterEnter((View)viewGroup, transitionState, n2, object2);
            FragmentTransitionCompat21.excludeTarget(object2, transitionState.nonExistentView, true);
            this.excludeHiddenFragments(transitionState, n2, object2);
            FragmentTransitionCompat21.beginDelayedTransition(viewGroup, object2);
            FragmentTransitionCompat21.cleanupTransitions((View)viewGroup, transitionState.nonExistentView, object4, arrayList3, arrayMap, arrayList2, arrayList, arrayList4, object2, transitionState.hiddenFragmentViews, arrayMap2);
        }
        if (object2 != null) {
            return true;
        }
        return false;
    }

    private void doAddOp(int n2, Fragment fragment, String object, int n3) {
        Class class_ = fragment.getClass();
        int n4 = class_.getModifiers();
        if (class_.isAnonymousClass() || !Modifier.isPublic(n4) || class_.isMemberClass() && !Modifier.isStatic(n4)) {
            throw new IllegalStateException("Fragment " + class_.getCanonicalName() + " must be a public static class to be  properly recreated from" + " instance state.");
        }
        fragment.mFragmentManager = this.mManager;
        if (object != null) {
            if (fragment.mTag != null && !object.equals(fragment.mTag)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + (String)object);
            }
            fragment.mTag = object;
        }
        if (n2 != 0) {
            if (n2 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + (String)object + " to container view with no id");
            }
            if (fragment.mFragmentId != 0 && fragment.mFragmentId != n2) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + n2);
            }
            fragment.mFragmentId = n2;
            fragment.mContainerId = n2;
        }
        object = new Op();
        object.cmd = n3;
        object.fragment = fragment;
        this.addOp((Op)object);
    }

    private void excludeHiddenFragmentsAfterEnter(final View view, final TransitionState transitionState, final int n2, final Object object) {
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener(){

            public boolean onPreDraw() {
                view.getViewTreeObserver().removeOnPreDrawListener((ViewTreeObserver.OnPreDrawListener)this);
                BackStackRecord.this.excludeHiddenFragments(transitionState, n2, object);
                return true;
            }
        });
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Object getEnterTransition(Fragment object, boolean bl) {
        if (object == null) {
            return null;
        }
        if (bl) {
            object = object.getReenterTransition();
            do {
                return FragmentTransitionCompat21.cloneTransition(object);
                break;
            } while (true);
        }
        object = object.getEnterTransition();
        return FragmentTransitionCompat21.cloneTransition(object);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Object getExitTransition(Fragment object, boolean bl) {
        if (object == null) {
            return null;
        }
        if (bl) {
            object = object.getReturnTransition();
            do {
                return FragmentTransitionCompat21.cloneTransition(object);
                break;
            } while (true);
        }
        object = object.getExitTransition();
        return FragmentTransitionCompat21.cloneTransition(object);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Object getSharedElementTransition(Fragment object, Fragment fragment, boolean bl) {
        if (object == null || fragment == null) {
            return null;
        }
        if (bl) {
            object = fragment.getSharedElementReturnTransition();
            do {
                return FragmentTransitionCompat21.wrapSharedElementTransition(object);
                break;
            } while (true);
        }
        object = object.getSharedElementEnterTransition();
        return FragmentTransitionCompat21.wrapSharedElementTransition(object);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private ArrayMap<String, View> mapEnteringSharedElements(TransitionState arrayMap, Fragment fragment, boolean bl) {
        ArrayMap<String, View> arrayMap2 = new ArrayMap<String, View>();
        fragment = fragment.getView();
        arrayMap = arrayMap2;
        if (fragment == null) return arrayMap;
        arrayMap = arrayMap2;
        if (this.mSharedElementSourceNames == null) return arrayMap;
        FragmentTransitionCompat21.findNamedViews(arrayMap2, (View)fragment);
        if (bl) {
            return BackStackRecord.remapNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames, arrayMap2);
        }
        arrayMap2.retainAll(this.mSharedElementTargetNames);
        return arrayMap2;
    }

    private void prepareSharedElementTransition(final TransitionState transitionState, final View view, final Object object, final Fragment fragment, final Fragment fragment2, final boolean bl, final ArrayList<View> arrayList, final Object object2, final Object object3) {
        if (object != null) {
            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener(){

                public boolean onPreDraw() {
                    view.getViewTreeObserver().removeOnPreDrawListener((ViewTreeObserver.OnPreDrawListener)this);
                    FragmentTransitionCompat21.removeTargets(object, arrayList);
                    arrayList.remove((Object)transitionState.nonExistentView);
                    FragmentTransitionCompat21.excludeSharedElementViews(object2, object3, object, arrayList, false);
                    arrayList.clear();
                    ArrayMap<String, View> arrayMap = BackStackRecord.this.mapSharedElementsIn(transitionState, bl, fragment);
                    FragmentTransitionCompat21.setSharedElementTargets(object, transitionState.nonExistentView, arrayMap, arrayList);
                    BackStackRecord.this.setEpicenterIn(arrayMap, transitionState);
                    BackStackRecord.this.callSharedElementEnd(transitionState, fragment, fragment2, bl, arrayMap);
                    FragmentTransitionCompat21.excludeSharedElementViews(object2, object3, object, arrayList, true);
                    return true;
                }
            });
        }
    }

    private static ArrayMap<String, View> remapNames(ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayMap<String, View> arrayMap) {
        if (arrayMap.isEmpty()) {
            return arrayMap;
        }
        ArrayMap<String, View> arrayMap2 = new ArrayMap<String, View>();
        int n2 = arrayList.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            View view = arrayMap.get(arrayList.get(i2));
            if (view == null) continue;
            arrayMap2.put(arrayList2.get(i2), view);
        }
        return arrayMap2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private ArrayMap<String, View> remapSharedElements(TransitionState transitionState, Fragment fragment, boolean bl) {
        ArrayMap<String, View> arrayMap;
        ArrayMap<String, View> arrayMap2 = arrayMap = new ArrayMap<String, View>();
        if (this.mSharedElementSourceNames != null) {
            FragmentTransitionCompat21.findNamedViews(arrayMap, fragment.getView());
            if (bl) {
                arrayMap.retainAll(this.mSharedElementTargetNames);
                arrayMap2 = arrayMap;
            } else {
                arrayMap2 = BackStackRecord.remapNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames, arrayMap);
            }
        }
        if (bl) {
            if (fragment.mEnterTransitionCallback != null) {
                fragment.mEnterTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, arrayMap2);
            }
            this.setBackNameOverrides(transitionState, arrayMap2, false);
            return arrayMap2;
        }
        if (fragment.mExitTransitionCallback != null) {
            fragment.mExitTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, arrayMap2);
        }
        this.setNameOverrides(transitionState, arrayMap2, false);
        return arrayMap2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setBackNameOverrides(TransitionState transitionState, ArrayMap<String, View> arrayMap, boolean bl) {
        int n2 = this.mSharedElementTargetNames == null ? 0 : this.mSharedElementTargetNames.size();
        int n3 = 0;
        while (n3 < n2) {
            String string2 = this.mSharedElementSourceNames.get(n3);
            Object object = arrayMap.get(this.mSharedElementTargetNames.get(n3));
            if (object != null) {
                object = FragmentTransitionCompat21.getTransitionName((View)object);
                if (bl) {
                    BackStackRecord.setNameOverride(transitionState.nameOverrides, string2, (String)object);
                } else {
                    BackStackRecord.setNameOverride(transitionState.nameOverrides, (String)object, string2);
                }
            }
            ++n3;
        }
    }

    private static void setFirstOut(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2, Fragment fragment) {
        int n2;
        if (fragment != null && (n2 = fragment.mContainerId) != 0 && !fragment.isHidden()) {
            if (fragment.isAdded() && fragment.getView() != null && sparseArray.get(n2) == null) {
                sparseArray.put(n2, (Object)fragment);
            }
            if (sparseArray2.get(n2) == fragment) {
                sparseArray2.remove(n2);
            }
        }
    }

    private void setLastIn(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2, Fragment fragment) {
        if (fragment != null) {
            int n2 = fragment.mContainerId;
            if (n2 != 0) {
                if (!fragment.isAdded()) {
                    sparseArray2.put(n2, (Object)fragment);
                }
                if (sparseArray.get(n2) == fragment) {
                    sparseArray.remove(n2);
                }
            }
            if (fragment.mState < 1 && this.mManager.mCurState >= 1) {
                this.mManager.makeActive(fragment);
                this.mManager.moveToState(fragment, 1, 0, 0, false);
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static void setNameOverride(ArrayMap<String, String> arrayMap, String string2, String string3) {
        if (string2 == null || string3 == null) return;
        for (int i2 = 0; i2 < arrayMap.size(); ++i2) {
            if (!string2.equals(arrayMap.valueAt(i2))) continue;
            arrayMap.setValueAt(i2, string3);
            return;
        }
        arrayMap.put(string2, string3);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setNameOverrides(TransitionState transitionState, ArrayMap<String, View> arrayMap, boolean bl) {
        int n2 = arrayMap.size();
        int n3 = 0;
        while (n3 < n2) {
            String string2 = arrayMap.keyAt(n3);
            String string3 = FragmentTransitionCompat21.getTransitionName(arrayMap.valueAt(n3));
            if (bl) {
                BackStackRecord.setNameOverride(transitionState.nameOverrides, string2, string3);
            } else {
                BackStackRecord.setNameOverride(transitionState.nameOverrides, string3, string2);
            }
            ++n3;
        }
    }

    private static void setNameOverrides(TransitionState transitionState, ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        if (arrayList != null) {
            for (int i2 = 0; i2 < arrayList.size(); ++i2) {
                String string2 = arrayList.get(i2);
                String string3 = arrayList2.get(i2);
                BackStackRecord.setNameOverride(transitionState.nameOverrides, string2, string3);
            }
        }
    }

    @Override
    public FragmentTransaction add(int n2, Fragment fragment) {
        this.doAddOp(n2, fragment, null, 1);
        return this;
    }

    @Override
    public FragmentTransaction add(int n2, Fragment fragment, String string2) {
        this.doAddOp(n2, fragment, string2, 1);
        return this;
    }

    @Override
    public FragmentTransaction add(Fragment fragment, String string2) {
        this.doAddOp(0, fragment, string2, 1);
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    void addOp(Op op) {
        if (this.mHead == null) {
            this.mTail = op;
            this.mHead = op;
        } else {
            op.prev = this.mTail;
            this.mTail.next = op;
            this.mTail = op;
        }
        op.enterAnim = this.mEnterAnim;
        op.exitAnim = this.mExitAnim;
        op.popEnterAnim = this.mPopEnterAnim;
        op.popExitAnim = this.mPopExitAnim;
        ++this.mNumOp;
    }

    @Override
    public FragmentTransaction addSharedElement(View object, String string2) {
        if (SUPPORTS_TRANSITIONS) {
            if ((object = FragmentTransitionCompat21.getTransitionName((View)object)) == null) {
                throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
            }
            if (this.mSharedElementSourceNames == null) {
                this.mSharedElementSourceNames = new ArrayList();
                this.mSharedElementTargetNames = new ArrayList();
            }
            this.mSharedElementSourceNames.add((String)object);
            this.mSharedElementTargetNames.add(string2);
        }
        return this;
    }

    @Override
    public FragmentTransaction addToBackStack(String string2) {
        if (!this.mAllowAddToBackStack) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.mAddToBackStack = true;
        this.mName = string2;
        return this;
    }

    @Override
    public FragmentTransaction attach(Fragment fragment) {
        Op op = new Op();
        op.cmd = 7;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    void bumpBackStackNesting(int n2) {
        if (this.mAddToBackStack) {
            if (FragmentManagerImpl.DEBUG) {
                Log.v((String)"FragmentManager", (String)("Bump nesting in " + this + " by " + n2));
            }
            Op op = this.mHead;
            while (op != null) {
                Fragment fragment;
                if (op.fragment != null) {
                    fragment = op.fragment;
                    fragment.mBackStackNesting += n2;
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v((String)"FragmentManager", (String)("Bump nesting of " + op.fragment + " to " + op.fragment.mBackStackNesting));
                    }
                }
                if (op.removed != null) {
                    for (int i2 = op.removed.size() - 1; i2 >= 0; --i2) {
                        fragment = op.removed.get(i2);
                        fragment.mBackStackNesting += n2;
                        if (!FragmentManagerImpl.DEBUG) continue;
                        Log.v((String)"FragmentManager", (String)("Bump nesting of " + fragment + " to " + fragment.mBackStackNesting));
                    }
                }
                op = op.next;
            }
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void calculateBackFragments(SparseArray<Fragment> var1_1, SparseArray<Fragment> var2_2) {
        if (!this.mManager.mContainer.onHasView()) {
            return;
        }
        var3_3 = this.mTail;
        while (var3_3 != null) {
            switch (var3_3.cmd) {
                case 1: {
                    BackStackRecord.setFirstOut(var1_1, var2_2, var3_3.fragment);
                    ** break;
                }
                case 2: {
                    if (var3_3.removed != null) {
                        for (var4_4 = var3_3.removed.size() - 1; var4_4 >= 0; --var4_4) {
                            this.setLastIn(var1_1, var2_2, var3_3.removed.get(var4_4));
                        }
                    }
                    BackStackRecord.setFirstOut(var1_1, var2_2, var3_3.fragment);
                    ** break;
                }
                case 3: {
                    this.setLastIn(var1_1, var2_2, var3_3.fragment);
                    ** break;
                }
                case 4: {
                    this.setLastIn(var1_1, var2_2, var3_3.fragment);
                    ** break;
                }
                case 5: {
                    BackStackRecord.setFirstOut(var1_1, var2_2, var3_3.fragment);
                    ** break;
                }
                case 6: {
                    this.setLastIn(var1_1, var2_2, var3_3.fragment);
                }
lbl27: // 7 sources:
                default: {
                    ** GOTO lbl31
                }
                case 7: 
            }
            BackStackRecord.setFirstOut(var1_1, var2_2, var3_3.fragment);
lbl31: // 2 sources:
            var3_3 = var3_3.prev;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void callSharedElementEnd(TransitionState object, Fragment fragment, Fragment fragment2, boolean bl, ArrayMap<String, View> arrayMap) {
        object = bl ? fragment2.mEnterTransitionCallback : fragment.mEnterTransitionCallback;
        if (object != null) {
            object.onSharedElementEnd(new ArrayList<String>(arrayMap.keySet()), new ArrayList<View>(arrayMap.values()), null);
        }
    }

    @Override
    public int commit() {
        return this.commitInternal(false);
    }

    @Override
    public int commitAllowingStateLoss() {
        return this.commitInternal(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    int commitInternal(boolean bl) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v((String)"FragmentManager", (String)("Commit: " + this));
            this.dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), null);
        }
        this.mCommitted = true;
        this.mIndex = this.mAddToBackStack ? this.mManager.allocBackStackIndex(this) : -1;
        this.mManager.enqueueAction(this, bl);
        return this.mIndex;
    }

    @Override
    public void commitNow() {
        this.disallowAddToBackStack();
        this.mManager.execSingleAction(this, false);
    }

    @Override
    public void commitNowAllowingStateLoss() {
        this.disallowAddToBackStack();
        this.mManager.execSingleAction(this, true);
    }

    @Override
    public FragmentTransaction detach(Fragment fragment) {
        Op op = new Op();
        op.cmd = 6;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }

    @Override
    public FragmentTransaction disallowAddToBackStack() {
        if (this.mAddToBackStack) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.mAllowAddToBackStack = false;
        return this;
    }

    public void dump(String string2, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
        this.dump(string2, printWriter, true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void dump(String string2, PrintWriter printWriter, boolean bl) {
        if (bl) {
            printWriter.print(string2);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(string2);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.mTransitionStyle));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                printWriter.print(string2);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                printWriter.print(string2);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                printWriter.print(string2);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                printWriter.print(string2);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mHead == null) {
            return;
        }
        printWriter.print(string2);
        printWriter.println("Operations:");
        String string3 = string2 + "    ";
        Op op = this.mHead;
        int n2 = 0;
        while (op != null) {
            String string4;
            switch (op.cmd) {
                default: {
                    string4 = "cmd=" + op.cmd;
                    break;
                }
                case 0: {
                    string4 = "NULL";
                    break;
                }
                case 1: {
                    string4 = "ADD";
                    break;
                }
                case 2: {
                    string4 = "REPLACE";
                    break;
                }
                case 3: {
                    string4 = "REMOVE";
                    break;
                }
                case 4: {
                    string4 = "HIDE";
                    break;
                }
                case 5: {
                    string4 = "SHOW";
                    break;
                }
                case 6: {
                    string4 = "DETACH";
                    break;
                }
                case 7: {
                    string4 = "ATTACH";
                }
            }
            printWriter.print(string2);
            printWriter.print("  Op #");
            printWriter.print(n2);
            printWriter.print(": ");
            printWriter.print(string4);
            printWriter.print(" ");
            printWriter.println(op.fragment);
            if (bl) {
                if (op.enterAnim != 0 || op.exitAnim != 0) {
                    printWriter.print(string2);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(op.enterAnim));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(op.exitAnim));
                }
                if (op.popEnterAnim != 0 || op.popExitAnim != 0) {
                    printWriter.print(string2);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(op.popEnterAnim));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(op.popExitAnim));
                }
            }
            if (op.removed != null && op.removed.size() > 0) {
                for (int i2 = 0; i2 < op.removed.size(); ++i2) {
                    printWriter.print(string3);
                    if (op.removed.size() == 1) {
                        printWriter.print("Removed: ");
                    } else {
                        if (i2 == 0) {
                            printWriter.println("Removed:");
                        }
                        printWriter.print(string3);
                        printWriter.print("  #");
                        printWriter.print(i2);
                        printWriter.print(": ");
                    }
                    printWriter.println(op.removed.get(i2));
                }
            }
            op = op.next;
            ++n2;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void excludeHiddenFragments(TransitionState transitionState, int n2, Object object) {
        if (this.mManager.mAdded == null) {
            return;
        }
        int n3 = 0;
        while (n3 < this.mManager.mAdded.size()) {
            Fragment fragment = this.mManager.mAdded.get(n3);
            if (fragment.mView != null && fragment.mContainer != null && fragment.mContainerId == n2) {
                if (fragment.mHidden) {
                    if (!transitionState.hiddenFragmentViews.contains((Object)fragment.mView)) {
                        FragmentTransitionCompat21.excludeTarget(object, fragment.mView, true);
                        transitionState.hiddenFragmentViews.add(fragment.mView);
                    }
                } else {
                    FragmentTransitionCompat21.excludeTarget(object, fragment.mView, false);
                    transitionState.hiddenFragmentViews.remove((Object)fragment.mView);
                }
            }
            ++n3;
        }
    }

    @Override
    public CharSequence getBreadCrumbShortTitle() {
        if (this.mBreadCrumbShortTitleRes != 0) {
            return this.mManager.mHost.getContext().getText(this.mBreadCrumbShortTitleRes);
        }
        return this.mBreadCrumbShortTitleText;
    }

    @Override
    public int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    @Override
    public CharSequence getBreadCrumbTitle() {
        if (this.mBreadCrumbTitleRes != 0) {
            return this.mManager.mHost.getContext().getText(this.mBreadCrumbTitleRes);
        }
        return this.mBreadCrumbTitleText;
    }

    @Override
    public int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    @Override
    public int getId() {
        return this.mIndex;
    }

    @Override
    public String getName() {
        return this.mName;
    }

    public int getTransition() {
        return this.mTransition;
    }

    public int getTransitionStyle() {
        return this.mTransitionStyle;
    }

    @Override
    public FragmentTransaction hide(Fragment fragment) {
        Op op = new Op();
        op.cmd = 4;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }

    @Override
    public boolean isAddToBackStackAllowed() {
        return this.mAllowAddToBackStack;
    }

    @Override
    public boolean isEmpty() {
        if (this.mNumOp == 0) {
            return true;
        }
        return false;
    }

    ArrayMap<String, View> mapSharedElementsIn(TransitionState transitionState, boolean bl, Fragment fragment) {
        ArrayMap<String, View> arrayMap = this.mapEnteringSharedElements(transitionState, fragment, bl);
        if (bl) {
            if (fragment.mExitTransitionCallback != null) {
                fragment.mExitTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, arrayMap);
            }
            this.setBackNameOverrides(transitionState, arrayMap, true);
            return arrayMap;
        }
        if (fragment.mEnterTransitionCallback != null) {
            fragment.mEnterTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, arrayMap);
        }
        this.setNameOverrides(transitionState, arrayMap, true);
        return arrayMap;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public TransitionState popFromBackStack(boolean var1_1, TransitionState var2_2, SparseArray<Fragment> var3_3, SparseArray<Fragment> var4_4) {
        if (FragmentManagerImpl.DEBUG) {
            Log.v((String)"FragmentManager", (String)("popFromBackStack: " + this));
            this.dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), null);
        }
        var5_5 = var2_2;
        if (!BackStackRecord.SUPPORTS_TRANSITIONS) ** GOTO lbl18
        var5_5 = var2_2;
        if (this.mManager.mCurState < 1) ** GOTO lbl18
        if (var2_2 != null) ** GOTO lbl14
        if (var3_3.size() != 0) ** GOTO lbl-1000
        var5_5 = var2_2;
        if (var4_4.size() != 0) lbl-1000: // 2 sources:
        {
            var5_5 = this.beginTransition((SparseArray<Fragment>)var3_3, var4_4, true);
        }
        ** GOTO lbl18
lbl14: // 1 sources:
        var5_5 = var2_2;
        if (!var1_1) {
            BackStackRecord.setNameOverrides((TransitionState)var2_2, this.mSharedElementTargetNames, this.mSharedElementSourceNames);
            var5_5 = var2_2;
        }
lbl18: // 6 sources:
        this.bumpBackStackNesting(-1);
        var6_6 = var5_5 != null ? 0 : this.mTransitionStyle;
        var7_7 = var5_5 != null ? 0 : this.mTransition;
        var2_2 = this.mTail;
        while (var2_2 != null) {
            var8_8 = var5_5 != null ? 0 : var2_2.popEnterAnim;
            var9_9 = var5_5 != null ? 0 : var2_2.popExitAnim;
            switch (var2_2.cmd) {
                default: {
                    throw new IllegalArgumentException("Unknown cmd: " + var2_2.cmd);
                }
                case 1: {
                    var3_3 = var2_2.fragment;
                    var3_3.mNextAnim = var9_9;
                    this.mManager.removeFragment((Fragment)var3_3, FragmentManagerImpl.reverseTransit(var7_7), var6_6);
                    break;
                }
                case 2: {
                    var3_3 = var2_2.fragment;
                    if (var3_3 != null) {
                        var3_3.mNextAnim = var9_9;
                        this.mManager.removeFragment((Fragment)var3_3, FragmentManagerImpl.reverseTransit(var7_7), var6_6);
                    }
                    if (var2_2.removed == null) break;
                    for (var9_9 = 0; var9_9 < var2_2.removed.size(); ++var9_9) {
                        var3_3 = var2_2.removed.get(var9_9);
                        var3_3.mNextAnim = var8_8;
                        this.mManager.addFragment((Fragment)var3_3, false);
                    }
                    break;
                }
                case 3: {
                    var3_3 = var2_2.fragment;
                    var3_3.mNextAnim = var8_8;
                    this.mManager.addFragment((Fragment)var3_3, false);
                    break;
                }
                case 4: {
                    var3_3 = var2_2.fragment;
                    var3_3.mNextAnim = var8_8;
                    this.mManager.showFragment((Fragment)var3_3, FragmentManagerImpl.reverseTransit(var7_7), var6_6);
                    break;
                }
                case 5: {
                    var3_3 = var2_2.fragment;
                    var3_3.mNextAnim = var9_9;
                    this.mManager.hideFragment((Fragment)var3_3, FragmentManagerImpl.reverseTransit(var7_7), var6_6);
                    break;
                }
                case 6: {
                    var3_3 = var2_2.fragment;
                    var3_3.mNextAnim = var8_8;
                    this.mManager.attachFragment((Fragment)var3_3, FragmentManagerImpl.reverseTransit(var7_7), var6_6);
                    break;
                }
                case 7: {
                    var3_3 = var2_2.fragment;
                    var3_3.mNextAnim = var8_8;
                    this.mManager.detachFragment((Fragment)var3_3, FragmentManagerImpl.reverseTransit(var7_7), var6_6);
                }
            }
            var2_2 = var2_2.prev;
        }
        if (var1_1) {
            this.mManager.moveToState(this.mManager.mCurState, FragmentManagerImpl.reverseTransit(var7_7), var6_6, true);
            var5_5 = null;
        }
        if (this.mIndex < 0) return var5_5;
        this.mManager.freeBackStackIndex(this.mIndex);
        this.mIndex = -1;
        return var5_5;
    }

    @Override
    public FragmentTransaction remove(Fragment fragment) {
        Op op = new Op();
        op.cmd = 3;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }

    @Override
    public FragmentTransaction replace(int n2, Fragment fragment) {
        return this.replace(n2, fragment, null);
    }

    @Override
    public FragmentTransaction replace(int n2, Fragment fragment, String string2) {
        if (n2 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        this.doAddOp(n2, fragment, string2, 2);
        return this;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void run() {
        if (FragmentManagerImpl.DEBUG) {
            Log.v((String)"FragmentManager", (String)("Run: " + this));
        }
        if (this.mAddToBackStack && this.mIndex < 0) {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        this.bumpBackStackNesting(1);
        var2_2 = var1_1 = null;
        if (!BackStackRecord.SUPPORTS_TRANSITIONS) ** GOTO lbl-1000
        var2_2 = var1_1;
        if (this.mManager.mCurState >= 1) {
            var1_1 = new SparseArray();
            var2_2 = new SparseArray();
            this.calculateFragments((SparseArray<Fragment>)var1_1, (SparseArray<Fragment>)var2_2);
            var2_2 = this.beginTransition((SparseArray<Fragment>)var1_1, (SparseArray<Fragment>)var2_2, false);
        }
        if (var2_2 != null) {
            var6_3 = 0;
        } else lbl-1000: // 2 sources:
        {
            var6_3 = this.mTransitionStyle;
        }
        var7_4 = var2_2 != null ? 0 : this.mTransition;
        var3_5 = this.mHead;
        do {
            if (var3_5 == null) {
                this.mManager.moveToState(this.mManager.mCurState, var7_4, var6_3, true);
                if (this.mAddToBackStack == false) return;
                this.mManager.addBackStackState(this);
                return;
            }
            var8_8 = var2_2 != null ? 0 : var3_5.enterAnim;
            var9_9 = var2_2 != null ? 0 : var3_5.exitAnim;
            switch (var3_5.cmd) {
                default: {
                    throw new IllegalArgumentException("Unknown cmd: " + var3_5.cmd);
                }
                case 1: {
                    var1_1 = var3_5.fragment;
                    var1_1.mNextAnim = var8_8;
                    this.mManager.addFragment((Fragment)var1_1, false);
                    break;
                }
                case 2: {
                    var1_1 = var3_5.fragment;
                    var11_11 = var1_1.mContainerId;
                    var4_6 = var1_1;
                    if (this.mManager.mAdded != null) {
                        var10_10 = this.mManager.mAdded.size() - 1;
                        do {
                            var4_6 = var1_1;
                            if (var10_10 < 0) break;
                            var5_7 = this.mManager.mAdded.get(var10_10);
                            if (FragmentManagerImpl.DEBUG) {
                                Log.v((String)"FragmentManager", (String)("OP_REPLACE: adding=" + var1_1 + " old=" + var5_7));
                            }
                            var4_6 = var1_1;
                            if (var5_7.mContainerId == var11_11) {
                                if (var5_7 == var1_1) {
                                    var4_6 = null;
                                    var3_5.fragment = null;
                                } else {
                                    if (var3_5.removed == null) {
                                        var3_5.removed = new ArrayList<E>();
                                    }
                                    var3_5.removed.add(var5_7);
                                    var5_7.mNextAnim = var9_9;
                                    if (this.mAddToBackStack) {
                                        ++var5_7.mBackStackNesting;
                                        if (FragmentManagerImpl.DEBUG) {
                                            Log.v((String)"FragmentManager", (String)("Bump nesting of " + var5_7 + " to " + var5_7.mBackStackNesting));
                                        }
                                    }
                                    this.mManager.removeFragment(var5_7, var7_4, var6_3);
                                    var4_6 = var1_1;
                                }
                            }
                            --var10_10;
                            var1_1 = var4_6;
                        } while (true);
                    }
                    if (var4_6 == null) break;
                    var4_6.mNextAnim = var8_8;
                    this.mManager.addFragment((Fragment)var4_6, false);
                    break;
                }
                case 3: {
                    var1_1 = var3_5.fragment;
                    var1_1.mNextAnim = var9_9;
                    this.mManager.removeFragment((Fragment)var1_1, var7_4, var6_3);
                    break;
                }
                case 4: {
                    var1_1 = var3_5.fragment;
                    var1_1.mNextAnim = var9_9;
                    this.mManager.hideFragment((Fragment)var1_1, var7_4, var6_3);
                    break;
                }
                case 5: {
                    var1_1 = var3_5.fragment;
                    var1_1.mNextAnim = var8_8;
                    this.mManager.showFragment((Fragment)var1_1, var7_4, var6_3);
                    break;
                }
                case 6: {
                    var1_1 = var3_5.fragment;
                    var1_1.mNextAnim = var9_9;
                    this.mManager.detachFragment((Fragment)var1_1, var7_4, var6_3);
                    break;
                }
                case 7: {
                    var1_1 = var3_5.fragment;
                    var1_1.mNextAnim = var8_8;
                    this.mManager.attachFragment((Fragment)var1_1, var7_4, var6_3);
                }
            }
            var3_5 = var3_5.next;
        } while (true);
    }

    @Override
    public FragmentTransaction setBreadCrumbShortTitle(int n2) {
        this.mBreadCrumbShortTitleRes = n2;
        this.mBreadCrumbShortTitleText = null;
        return this;
    }

    @Override
    public FragmentTransaction setBreadCrumbShortTitle(CharSequence charSequence) {
        this.mBreadCrumbShortTitleRes = 0;
        this.mBreadCrumbShortTitleText = charSequence;
        return this;
    }

    @Override
    public FragmentTransaction setBreadCrumbTitle(int n2) {
        this.mBreadCrumbTitleRes = n2;
        this.mBreadCrumbTitleText = null;
        return this;
    }

    @Override
    public FragmentTransaction setBreadCrumbTitle(CharSequence charSequence) {
        this.mBreadCrumbTitleRes = 0;
        this.mBreadCrumbTitleText = charSequence;
        return this;
    }

    @Override
    public FragmentTransaction setCustomAnimations(int n2, int n3) {
        return this.setCustomAnimations(n2, n3, 0, 0);
    }

    @Override
    public FragmentTransaction setCustomAnimations(int n2, int n3, int n4, int n5) {
        this.mEnterAnim = n2;
        this.mExitAnim = n3;
        this.mPopEnterAnim = n4;
        this.mPopExitAnim = n5;
        return this;
    }

    void setEpicenterIn(ArrayMap<String, View> view, TransitionState transitionState) {
        if (this.mSharedElementTargetNames != null && !view.isEmpty() && (view = view.get(this.mSharedElementTargetNames.get(0))) != null) {
            transitionState.enteringEpicenterView.epicenter = view;
        }
    }

    @Override
    public FragmentTransaction setTransition(int n2) {
        this.mTransition = n2;
        return this;
    }

    @Override
    public FragmentTransaction setTransitionStyle(int n2) {
        this.mTransitionStyle = n2;
        return this;
    }

    @Override
    public FragmentTransaction show(Fragment fragment) {
        Op op = new Op();
        op.cmd = 5;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("BackStackEntry{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            stringBuilder.append(" #");
            stringBuilder.append(this.mIndex);
        }
        if (this.mName != null) {
            stringBuilder.append(" ");
            stringBuilder.append(this.mName);
        }
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    static final class Op {
        int cmd;
        int enterAnim;
        int exitAnim;
        Fragment fragment;
        Op next;
        int popEnterAnim;
        int popExitAnim;
        Op prev;
        ArrayList<Fragment> removed;

        Op() {
        }
    }

    public class TransitionState {
        public FragmentTransitionCompat21.EpicenterView enteringEpicenterView;
        public ArrayList<View> hiddenFragmentViews;
        public ArrayMap<String, String> nameOverrides;
        public View nonExistentView;

        public TransitionState() {
            this.nameOverrides = new ArrayMap();
            this.hiddenFragmentViews = new ArrayList();
            this.enteringEpicenterView = new FragmentTransitionCompat21.EpicenterView();
        }
    }

}

