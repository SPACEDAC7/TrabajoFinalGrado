/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Configuration
 *  android.content.res.TypedArray
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.Looper
 *  android.os.Parcelable
 *  android.util.AttributeSet
 *  android.util.Log
 *  android.util.SparseArray
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.animation.AccelerateInterpolator
 *  android.view.animation.AlphaAnimation
 *  android.view.animation.Animation
 *  android.view.animation.Animation$AnimationListener
 *  android.view.animation.AnimationSet
 *  android.view.animation.AnimationUtils
 *  android.view.animation.DecelerateInterpolator
 *  android.view.animation.Interpolator
 *  android.view.animation.ScaleAnimation
 */
package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.v4.app.BackStackRecord;
import android.support.v4.app.BackStackState;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentContainer;
import android.support.v4.app.FragmentController;
import android.support.v4.app.FragmentHostCallback;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManagerNonConfig;
import android.support.v4.app.FragmentManagerState;
import android.support.v4.app.FragmentState;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.LoaderManagerImpl;
import android.support.v4.os.BuildCompat;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.support.v4.view.LayoutInflaterFactory;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.Writer;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class FragmentManagerImpl
extends FragmentManager
implements LayoutInflaterFactory {
    static final Interpolator ACCELERATE_CUBIC;
    static final Interpolator ACCELERATE_QUINT;
    static final int ANIM_DUR = 220;
    public static final int ANIM_STYLE_CLOSE_ENTER = 3;
    public static final int ANIM_STYLE_CLOSE_EXIT = 4;
    public static final int ANIM_STYLE_FADE_ENTER = 5;
    public static final int ANIM_STYLE_FADE_EXIT = 6;
    public static final int ANIM_STYLE_OPEN_ENTER = 1;
    public static final int ANIM_STYLE_OPEN_EXIT = 2;
    static boolean DEBUG = false;
    static final Interpolator DECELERATE_CUBIC;
    static final Interpolator DECELERATE_QUINT;
    static final boolean HONEYCOMB;
    static final String TAG = "FragmentManager";
    static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    static final String TARGET_STATE_TAG = "android:target_state";
    static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    static final String VIEW_STATE_TAG = "android:view_state";
    static Field sAnimationListenerField;
    ArrayList<Fragment> mActive;
    ArrayList<Fragment> mAdded;
    ArrayList<Integer> mAvailBackStackIndices;
    ArrayList<Integer> mAvailIndices;
    ArrayList<BackStackRecord> mBackStack;
    ArrayList<FragmentManager.OnBackStackChangedListener> mBackStackChangeListeners;
    ArrayList<BackStackRecord> mBackStackIndices;
    FragmentContainer mContainer;
    FragmentController mController;
    ArrayList<Fragment> mCreatedMenus;
    int mCurState = 0;
    boolean mDestroyed;
    Runnable mExecCommit;
    boolean mExecutingActions;
    boolean mHavePendingDeferredStart;
    FragmentHostCallback mHost;
    boolean mNeedMenuInvalidate;
    String mNoTransactionsBecause;
    Fragment mParent;
    ArrayList<Runnable> mPendingActions;
    SparseArray<Parcelable> mStateArray = null;
    Bundle mStateBundle = null;
    boolean mStateSaved;
    Runnable[] mTmpActions;

    static {
        boolean bl = false;
        DEBUG = false;
        if (Build.VERSION.SDK_INT >= 11) {
            bl = true;
        }
        HONEYCOMB = bl;
        sAnimationListenerField = null;
        DECELERATE_QUINT = new DecelerateInterpolator(2.5f);
        DECELERATE_CUBIC = new DecelerateInterpolator(1.5f);
        ACCELERATE_QUINT = new AccelerateInterpolator(2.5f);
        ACCELERATE_CUBIC = new AccelerateInterpolator(1.5f);
    }

    FragmentManagerImpl() {
        this.mExecCommit = new Runnable(){

            @Override
            public void run() {
                FragmentManagerImpl.this.execPendingActions();
            }
        };
    }

    private void checkStateLoss() {
        if (this.mStateSaved) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.mNoTransactionsBecause != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
        }
    }

    static Animation makeFadeAnimation(Context context, float f2, float f3) {
        context = new AlphaAnimation(f2, f3);
        context.setInterpolator(DECELERATE_CUBIC);
        context.setDuration(220);
        return context;
    }

    static Animation makeOpenCloseAnimation(Context context, float f2, float f3, float f4, float f5) {
        context = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f2, f3, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(DECELERATE_QUINT);
        scaleAnimation.setDuration(220);
        context.addAnimation((Animation)scaleAnimation);
        scaleAnimation = new AlphaAnimation(f4, f5);
        scaleAnimation.setInterpolator(DECELERATE_CUBIC);
        scaleAnimation.setDuration(220);
        context.addAnimation((Animation)scaleAnimation);
        return context;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static boolean modifiesAlpha(Animation object) {
        if (object instanceof AlphaAnimation) {
            return true;
        }
        if (!(object instanceof AnimationSet)) return false;
        object = ((AnimationSet)object).getAnimations();
        int n2 = 0;
        while (n2 < object.size()) {
            if (object.get(n2) instanceof AlphaAnimation) return true;
            ++n2;
        }
        return false;
    }

    public static int reverseTransit(int n2) {
        switch (n2) {
            default: {
                return 0;
            }
            case 4097: {
                return 8194;
            }
            case 8194: {
                return 4097;
            }
            case 4099: 
        }
        return 4099;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void setHWLayerAnimListenerIfAlpha(View view, Animation animation) {
        if (view == null || animation == null || !FragmentManagerImpl.shouldRunOnHWLayer(view, animation)) {
            return;
        }
        Animation.AnimationListener animationListener = null;
        try {
            Animation.AnimationListener animationListener2;
            if (sAnimationListenerField == null) {
                sAnimationListenerField = Animation.class.getDeclaredField("mListener");
                sAnimationListenerField.setAccessible(true);
            }
            animationListener = animationListener2 = (Animation.AnimationListener)sAnimationListenerField.get((Object)animation);
        }
        catch (NoSuchFieldException var4_5) {
            Log.e((String)"FragmentManager", (String)"No field with the name mListener is found in Animation class", (Throwable)var4_5);
        }
        catch (IllegalAccessException var4_6) {
            Log.e((String)"FragmentManager", (String)"Cannot access Animation's mListener field", (Throwable)var4_6);
        }
        ViewCompat.setLayerType(view, 2, null);
        animation.setAnimationListener((Animation.AnimationListener)new AnimateOnHWLayerIfNeededListener(view, animation, animationListener));
    }

    static boolean shouldRunOnHWLayer(View view, Animation animation) {
        if (Build.VERSION.SDK_INT >= 19 && ViewCompat.getLayerType(view) == 0 && ViewCompat.hasOverlappingRendering(view) && FragmentManagerImpl.modifiesAlpha(animation)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void throwException(RuntimeException runtimeException) {
        Log.e((String)"FragmentManager", (String)runtimeException.getMessage());
        Log.e((String)"FragmentManager", (String)"Activity state:");
        PrintWriter printWriter = new PrintWriter(new LogWriter("FragmentManager"));
        if (this.mHost != null) {
            try {
                this.mHost.onDump("  ", null, printWriter, new String[0]);
            }
            catch (Exception var2_3) {
                Log.e((String)"FragmentManager", (String)"Failed dumping state", (Throwable)var2_3);
                throw runtimeException;
            }
            do {
                throw runtimeException;
                break;
            } while (true);
        }
        try {
            this.dump("  ", null, printWriter, new String[0]);
            throw runtimeException;
        }
        catch (Exception var2_4) {
            Log.e((String)"FragmentManager", (String)"Failed dumping state", (Throwable)var2_4);
            throw runtimeException;
        }
    }

    public static int transitToStyleIndex(int n2, boolean bl) {
        switch (n2) {
            default: {
                return -1;
            }
            case 4097: {
                if (bl) {
                    return 1;
                }
                return 2;
            }
            case 8194: {
                if (bl) {
                    return 3;
                }
                return 4;
            }
            case 4099: 
        }
        if (bl) {
            return 5;
        }
        return 6;
    }

    void addBackStackState(BackStackRecord backStackRecord) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList();
        }
        this.mBackStack.add(backStackRecord);
        this.reportBackStackChanged();
    }

    public void addFragment(Fragment fragment, boolean bl) {
        if (this.mAdded == null) {
            this.mAdded = new ArrayList();
        }
        if (DEBUG) {
            Log.v((String)"FragmentManager", (String)("add: " + fragment));
        }
        this.makeActive(fragment);
        if (!fragment.mDetached) {
            if (this.mAdded.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            this.mAdded.add(fragment);
            fragment.mAdded = true;
            fragment.mRemoving = false;
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            if (bl) {
                this.moveToState(fragment);
            }
        }
    }

    @Override
    public void addOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList();
        }
        this.mBackStackChangeListeners.add(onBackStackChangedListener);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public int allocBackStackIndex(BackStackRecord backStackRecord) {
        synchronized (this) {
            if (this.mAvailBackStackIndices == null || this.mAvailBackStackIndices.size() <= 0) {
                if (this.mBackStackIndices == null) {
                    this.mBackStackIndices = new ArrayList();
                }
                int n2 = this.mBackStackIndices.size();
                if (DEBUG) {
                    Log.v((String)"FragmentManager", (String)("Setting back stack index " + n2 + " to " + backStackRecord));
                }
                this.mBackStackIndices.add(backStackRecord);
                return n2;
            }
            int n3 = this.mAvailBackStackIndices.remove(this.mAvailBackStackIndices.size() - 1);
            if (DEBUG) {
                Log.v((String)"FragmentManager", (String)("Adding back stack index " + n3 + " with " + backStackRecord));
            }
            this.mBackStackIndices.set(n3, backStackRecord);
            return n3;
        }
    }

    public void attachController(FragmentHostCallback fragmentHostCallback, FragmentContainer fragmentContainer, Fragment fragment) {
        if (this.mHost != null) {
            throw new IllegalStateException("Already attached");
        }
        this.mHost = fragmentHostCallback;
        this.mContainer = fragmentContainer;
        this.mParent = fragment;
    }

    public void attachFragment(Fragment fragment, int n2, int n3) {
        if (DEBUG) {
            Log.v((String)"FragmentManager", (String)("attach: " + fragment));
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                if (this.mAdded == null) {
                    this.mAdded = new ArrayList();
                }
                if (this.mAdded.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (DEBUG) {
                    Log.v((String)"FragmentManager", (String)("add from attach: " + fragment));
                }
                this.mAdded.add(fragment);
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                this.moveToState(fragment, this.mCurState, n2, n3, false);
            }
        }
    }

    @Override
    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    public void detachFragment(Fragment fragment, int n2, int n3) {
        if (DEBUG) {
            Log.v((String)"FragmentManager", (String)("detach: " + fragment));
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (this.mAdded != null) {
                    if (DEBUG) {
                        Log.v((String)"FragmentManager", (String)("remove from detach: " + fragment));
                    }
                    this.mAdded.remove(fragment);
                }
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                fragment.mAdded = false;
                this.moveToState(fragment, 1, n2, n3, false);
            }
        }
    }

    public void dispatchActivityCreated() {
        this.mStateSaved = false;
        this.moveToState(2, false);
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
        if (this.mAdded != null) {
            for (int i2 = 0; i2 < this.mAdded.size(); ++i2) {
                Fragment fragment = this.mAdded.get(i2);
                if (fragment == null) continue;
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    public boolean dispatchContextItemSelected(MenuItem menuItem) {
        if (this.mAdded != null) {
            for (int i2 = 0; i2 < this.mAdded.size(); ++i2) {
                Fragment fragment = this.mAdded.get(i2);
                if (fragment == null || !fragment.performContextItemSelected(menuItem)) continue;
                return true;
            }
        }
        return false;
    }

    public void dispatchCreate() {
        this.mStateSaved = false;
        this.moveToState(1, false);
    }

    public boolean dispatchCreateOptionsMenu(Menu object, MenuInflater menuInflater) {
        int n2;
        boolean bl = false;
        boolean bl2 = false;
        ArrayList<Fragment> arrayList = null;
        ArrayList<Fragment> arrayList2 = null;
        if (this.mAdded != null) {
            n2 = 0;
            do {
                arrayList = arrayList2;
                bl = bl2;
                if (n2 >= this.mAdded.size()) break;
                Fragment fragment = this.mAdded.get(n2);
                arrayList = arrayList2;
                bl = bl2;
                if (fragment != null) {
                    arrayList = arrayList2;
                    bl = bl2;
                    if (fragment.performCreateOptionsMenu((Menu)object, menuInflater)) {
                        bl = true;
                        arrayList = arrayList2;
                        if (arrayList2 == null) {
                            arrayList = new ArrayList<Fragment>();
                        }
                        arrayList.add(fragment);
                    }
                }
                ++n2;
                arrayList2 = arrayList;
                bl2 = bl;
            } while (true);
        }
        if (this.mCreatedMenus != null) {
            for (n2 = 0; n2 < this.mCreatedMenus.size(); ++n2) {
                object = this.mCreatedMenus.get(n2);
                if (arrayList != null && arrayList.contains(object)) continue;
                object.onDestroyOptionsMenu();
            }
        }
        this.mCreatedMenus = arrayList;
        return bl;
    }

    public void dispatchDestroy() {
        this.mDestroyed = true;
        this.execPendingActions();
        this.moveToState(0, false);
        this.mHost = null;
        this.mContainer = null;
        this.mParent = null;
    }

    public void dispatchDestroyView() {
        this.moveToState(1, false);
    }

    public void dispatchLowMemory() {
        if (this.mAdded != null) {
            for (int i2 = 0; i2 < this.mAdded.size(); ++i2) {
                Fragment fragment = this.mAdded.get(i2);
                if (fragment == null) continue;
                fragment.performLowMemory();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void dispatchMultiWindowModeChanged(boolean bl) {
        if (this.mAdded != null) {
            for (int i2 = this.mAdded.size() - 1; i2 >= 0; --i2) {
                Fragment fragment = this.mAdded.get(i2);
                if (fragment == null) continue;
                fragment.performMultiWindowModeChanged(bl);
            }
        }
    }

    public boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        if (this.mAdded != null) {
            for (int i2 = 0; i2 < this.mAdded.size(); ++i2) {
                Fragment fragment = this.mAdded.get(i2);
                if (fragment == null || !fragment.performOptionsItemSelected(menuItem)) continue;
                return true;
            }
        }
        return false;
    }

    public void dispatchOptionsMenuClosed(Menu menu2) {
        if (this.mAdded != null) {
            for (int i2 = 0; i2 < this.mAdded.size(); ++i2) {
                Fragment fragment = this.mAdded.get(i2);
                if (fragment == null) continue;
                fragment.performOptionsMenuClosed(menu2);
            }
        }
    }

    public void dispatchPause() {
        this.moveToState(4, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void dispatchPictureInPictureModeChanged(boolean bl) {
        if (this.mAdded != null) {
            for (int i2 = this.mAdded.size() - 1; i2 >= 0; --i2) {
                Fragment fragment = this.mAdded.get(i2);
                if (fragment == null) continue;
                fragment.performPictureInPictureModeChanged(bl);
            }
        }
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu2) {
        boolean bl = false;
        boolean bl2 = false;
        if (this.mAdded != null) {
            int n2 = 0;
            do {
                bl = bl2;
                if (n2 >= this.mAdded.size()) break;
                Fragment fragment = this.mAdded.get(n2);
                bl = bl2;
                if (fragment != null) {
                    bl = bl2;
                    if (fragment.performPrepareOptionsMenu(menu2)) {
                        bl = true;
                    }
                }
                ++n2;
                bl2 = bl;
            } while (true);
        }
        return bl;
    }

    public void dispatchReallyStop() {
        this.moveToState(2, false);
    }

    public void dispatchResume() {
        this.mStateSaved = false;
        this.moveToState(5, false);
    }

    public void dispatchStart() {
        this.mStateSaved = false;
        this.moveToState(4, false);
    }

    public void dispatchStop() {
        this.mStateSaved = true;
        this.moveToState(3, false);
    }

    void doPendingDeferredStart() {
        if (this.mHavePendingDeferredStart) {
            boolean bl = false;
            for (int i2 = 0; i2 < this.mActive.size(); ++i2) {
                Fragment fragment = this.mActive.get(i2);
                boolean bl2 = bl;
                if (fragment != null) {
                    bl2 = bl;
                    if (fragment.mLoaderManager != null) {
                        bl2 = bl | fragment.mLoaderManager.hasRunningLoaders();
                    }
                }
                bl = bl2;
            }
            if (!bl) {
                this.mHavePendingDeferredStart = false;
                this.startPendingDeferredFragments();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public void dump(String string2, FileDescriptor object, PrintWriter printWriter, String[] arrstring) {
        int n2;
        int n3;
        Object object2;
        String string3 = string2 + "    ";
        if (this.mActive != null && (n2 = this.mActive.size()) > 0) {
            printWriter.print(string2);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (n3 = 0; n3 < n2; ++n3) {
                object2 = this.mActive.get(n3);
                printWriter.print(string2);
                printWriter.print("  #");
                printWriter.print(n3);
                printWriter.print(": ");
                printWriter.println(object2);
                if (object2 == null) continue;
                object2.dump(string3, (FileDescriptor)object, printWriter, arrstring);
            }
        }
        if (this.mAdded != null && (n2 = this.mAdded.size()) > 0) {
            printWriter.print(string2);
            printWriter.println("Added Fragments:");
            for (n3 = 0; n3 < n2; ++n3) {
                object2 = this.mAdded.get(n3);
                printWriter.print(string2);
                printWriter.print("  #");
                printWriter.print(n3);
                printWriter.print(": ");
                printWriter.println(object2.toString());
            }
        }
        if (this.mCreatedMenus != null && (n2 = this.mCreatedMenus.size()) > 0) {
            printWriter.print(string2);
            printWriter.println("Fragments Created Menus:");
            for (n3 = 0; n3 < n2; ++n3) {
                object2 = this.mCreatedMenus.get(n3);
                printWriter.print(string2);
                printWriter.print("  #");
                printWriter.print(n3);
                printWriter.print(": ");
                printWriter.println(object2.toString());
            }
        }
        if (this.mBackStack != null && (n2 = this.mBackStack.size()) > 0) {
            printWriter.print(string2);
            printWriter.println("Back Stack:");
            for (n3 = 0; n3 < n2; ++n3) {
                object2 = this.mBackStack.get(n3);
                printWriter.print(string2);
                printWriter.print("  #");
                printWriter.print(n3);
                printWriter.print(": ");
                printWriter.println(object2.toString());
                object2.dump(string3, (FileDescriptor)object, printWriter, arrstring);
            }
        }
        // MONITORENTER : this
        if (this.mBackStackIndices != null && (n2 = this.mBackStackIndices.size()) > 0) {
            printWriter.print(string2);
            printWriter.println("Back Stack Indices:");
            for (n3 = 0; n3 < n2; ++n3) {
                object = this.mBackStackIndices.get(n3);
                printWriter.print(string2);
                printWriter.print("  #");
                printWriter.print(n3);
                printWriter.print(": ");
                printWriter.println(object);
            }
        }
        if (this.mAvailBackStackIndices != null && this.mAvailBackStackIndices.size() > 0) {
            printWriter.print(string2);
            printWriter.print("mAvailBackStackIndices: ");
            printWriter.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
        }
        // MONITOREXIT : this
        if (this.mPendingActions != null && (n2 = this.mPendingActions.size()) > 0) {
            printWriter.print(string2);
            printWriter.println("Pending Actions:");
            for (n3 = 0; n3 < n2; ++n3) {
                object = this.mPendingActions.get(n3);
                printWriter.print(string2);
                printWriter.print("  #");
                printWriter.print(n3);
                printWriter.print(": ");
                printWriter.println(object);
            }
        }
        printWriter.print(string2);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(string2);
        printWriter.print("  mHost=");
        printWriter.println(this.mHost);
        printWriter.print(string2);
        printWriter.print("  mContainer=");
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(string2);
            printWriter.print("  mParent=");
            printWriter.println(this.mParent);
        }
        printWriter.print(string2);
        printWriter.print("  mCurState=");
        printWriter.print(this.mCurState);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.mStateSaved);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(string2);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.mNeedMenuInvalidate);
        }
        if (this.mNoTransactionsBecause != null) {
            printWriter.print(string2);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.mNoTransactionsBecause);
        }
        if (this.mAvailIndices == null) return;
        if (this.mAvailIndices.size() <= 0) return;
        printWriter.print(string2);
        printWriter.print("  mAvailIndices: ");
        printWriter.println(Arrays.toString(this.mAvailIndices.toArray()));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void enqueueAction(Runnable runnable, boolean bl) {
        if (!bl) {
            this.checkStateLoss();
        }
        synchronized (this) {
            if (this.mDestroyed || this.mHost == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.mPendingActions == null) {
                this.mPendingActions = new ArrayList();
            }
            this.mPendingActions.add(runnable);
            if (this.mPendingActions.size() == 1) {
                this.mHost.getHandler().removeCallbacks(this.mExecCommit);
                this.mHost.getHandler().post(this.mExecCommit);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean execPendingActions() {
        if (this.mExecutingActions) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (Looper.myLooper() != this.mHost.getHandler().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        boolean bl = false;
        do {
            int n2;
            synchronized (this) {
                if (this.mPendingActions == null || this.mPendingActions.size() == 0) {
                    // MONITOREXIT [3, 4, 7] lbl9 : MonitorExitStatement: MONITOREXIT : this
                    this.doPendingDeferredStart();
                    return bl;
                }
                n2 = this.mPendingActions.size();
                if (this.mTmpActions == null || this.mTmpActions.length < n2) {
                    this.mTmpActions = new Runnable[n2];
                }
                this.mPendingActions.toArray(this.mTmpActions);
                this.mPendingActions.clear();
                this.mHost.getHandler().removeCallbacks(this.mExecCommit);
            }
            this.mExecutingActions = true;
            for (int i2 = 0; i2 < n2; ++i2) {
                this.mTmpActions[i2].run();
                this.mTmpActions[i2] = null;
            }
            this.mExecutingActions = false;
            bl = true;
        } while (true);
    }

    public void execSingleAction(Runnable runnable, boolean bl) {
        if (this.mExecutingActions) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (Looper.myLooper() != this.mHost.getHandler().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!bl) {
            this.checkStateLoss();
        }
        this.mExecutingActions = true;
        runnable.run();
        this.mExecutingActions = false;
        this.doPendingDeferredStart();
    }

    @Override
    public boolean executePendingTransactions() {
        return this.execPendingActions();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Fragment findFragmentById(int n2) {
        int n3;
        Fragment fragment;
        if (this.mAdded != null) {
            for (n3 = this.mAdded.size() - 1; n3 >= 0; --n3) {
                fragment = this.mAdded.get(n3);
                if (fragment != null && fragment.mFragmentId == n2) return fragment;
                {
                    continue;
                }
            }
        } else {
            if (this.mActive == null) return null;
            {
                for (n3 = this.mActive.size() - 1; n3 >= 0; --n3) {
                    Fragment fragment2 = this.mActive.get(n3);
                    if (fragment2 == null) continue;
                    fragment = fragment2;
                    if (fragment2.mFragmentId == n2) return fragment;
                    {
                        continue;
                    }
                }
            }
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Fragment findFragmentByTag(String string2) {
        int n2;
        Fragment fragment;
        if (this.mAdded != null && string2 != null) {
            for (n2 = this.mAdded.size() - 1; n2 >= 0; --n2) {
                fragment = this.mAdded.get(n2);
                if (fragment != null && string2.equals(fragment.mTag)) return fragment;
                {
                    continue;
                }
            }
        } else {
            if (this.mActive == null || string2 == null) return null;
            {
                for (n2 = this.mActive.size() - 1; n2 >= 0; --n2) {
                    Fragment fragment2 = this.mActive.get(n2);
                    if (fragment2 == null) continue;
                    fragment = fragment2;
                    if (string2.equals(fragment2.mTag)) return fragment;
                    {
                        continue;
                    }
                }
            }
            return null;
        }
    }

    public Fragment findFragmentByWho(String string2) {
        if (this.mActive != null && string2 != null) {
            for (int i2 = this.mActive.size() - 1; i2 >= 0; --i2) {
                Fragment fragment = this.mActive.get(i2);
                if (fragment == null || (fragment = fragment.findFragmentByWho(string2)) == null) continue;
                return fragment;
            }
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void freeBackStackIndex(int n2) {
        synchronized (this) {
            this.mBackStackIndices.set(n2, null);
            if (this.mAvailBackStackIndices == null) {
                this.mAvailBackStackIndices = new ArrayList();
            }
            if (DEBUG) {
                Log.v((String)"FragmentManager", (String)("Freeing back stack index " + n2));
            }
            this.mAvailBackStackIndices.add(n2);
            return;
        }
    }

    @Override
    public FragmentManager.BackStackEntry getBackStackEntryAt(int n2) {
        return this.mBackStack.get(n2);
    }

    @Override
    public int getBackStackEntryCount() {
        if (this.mBackStack != null) {
            return this.mBackStack.size();
        }
        return 0;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public Fragment getFragment(Bundle object, String string2) {
        Fragment fragment;
        int n2 = object.getInt(string2, -1);
        if (n2 == -1) {
            return null;
        }
        if (n2 >= this.mActive.size()) {
            this.throwException(new IllegalStateException("Fragment no longer exists for key " + string2 + ": index " + n2));
        }
        object = fragment = this.mActive.get(n2);
        if (fragment != null) return object;
        this.throwException(new IllegalStateException("Fragment no longer exists for key " + string2 + ": index " + n2));
        return fragment;
    }

    @Override
    public List<Fragment> getFragments() {
        return this.mActive;
    }

    LayoutInflaterFactory getLayoutInflaterFactory() {
        return this;
    }

    public void hideFragment(Fragment fragment, int n2, int n3) {
        if (DEBUG) {
            Log.v((String)"FragmentManager", (String)("hide: " + fragment));
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            if (fragment.mView != null) {
                Animation animation = this.loadAnimation(fragment, n2, false, n3);
                if (animation != null) {
                    this.setHWLayerAnimListenerIfAlpha(fragment.mView, animation);
                    fragment.mView.startAnimation(animation);
                }
                fragment.mView.setVisibility(8);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(true);
        }
    }

    @Override
    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    boolean isStateAtLeast(int n2) {
        if (this.mCurState >= n2) {
            return true;
        }
        return false;
    }

    Animation loadAnimation(Fragment fragment, int n2, boolean bl, int n3) {
        Animation animation = fragment.onCreateAnimation(n2, bl, fragment.mNextAnim);
        if (animation != null) {
            return animation;
        }
        if (fragment.mNextAnim != 0 && (fragment = AnimationUtils.loadAnimation((Context)this.mHost.getContext(), (int)fragment.mNextAnim)) != null) {
            return fragment;
        }
        if (n2 == 0) {
            return null;
        }
        if ((n2 = FragmentManagerImpl.transitToStyleIndex(n2, bl)) < 0) {
            return null;
        }
        switch (n2) {
            default: {
                n2 = n3;
                if (n3 == 0) {
                    n2 = n3;
                    if (this.mHost.onHasWindowAnimations()) {
                        n2 = this.mHost.onGetWindowAnimations();
                    }
                }
                if (n2 != 0) break;
                return null;
            }
            case 1: {
                return FragmentManagerImpl.makeOpenCloseAnimation(this.mHost.getContext(), 1.125f, 1.0f, 0.0f, 1.0f);
            }
            case 2: {
                return FragmentManagerImpl.makeOpenCloseAnimation(this.mHost.getContext(), 1.0f, 0.975f, 1.0f, 0.0f);
            }
            case 3: {
                return FragmentManagerImpl.makeOpenCloseAnimation(this.mHost.getContext(), 0.975f, 1.0f, 0.0f, 1.0f);
            }
            case 4: {
                return FragmentManagerImpl.makeOpenCloseAnimation(this.mHost.getContext(), 1.0f, 1.075f, 1.0f, 0.0f);
            }
            case 5: {
                return FragmentManagerImpl.makeFadeAnimation(this.mHost.getContext(), 0.0f, 1.0f);
            }
            case 6: {
                return FragmentManagerImpl.makeFadeAnimation(this.mHost.getContext(), 1.0f, 0.0f);
            }
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void makeActive(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            return;
        }
        if (this.mAvailIndices == null || this.mAvailIndices.size() <= 0) {
            if (this.mActive == null) {
                this.mActive = new ArrayList();
            }
            fragment.setIndex(this.mActive.size(), this.mParent);
            this.mActive.add(fragment);
        } else {
            fragment.setIndex(this.mAvailIndices.remove(this.mAvailIndices.size() - 1), this.mParent);
            this.mActive.set(fragment.mIndex, fragment);
        }
        if (!DEBUG) return;
        Log.v((String)"FragmentManager", (String)("Allocated fragment index " + fragment));
    }

    void makeInactive(Fragment fragment) {
        if (fragment.mIndex < 0) {
            return;
        }
        if (DEBUG) {
            Log.v((String)"FragmentManager", (String)("Freeing fragment index " + fragment));
        }
        this.mActive.set(fragment.mIndex, null);
        if (this.mAvailIndices == null) {
            this.mAvailIndices = new ArrayList();
        }
        this.mAvailIndices.add(fragment.mIndex);
        this.mHost.inactivateFragment(fragment.mWho);
        fragment.initState();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void moveToState(int n2, int n3, int n4, boolean bl) {
        if (this.mHost == null && n2 != 0) {
            throw new IllegalStateException("No host");
        }
        if (!bl && this.mCurState == n2) {
            return;
        }
        this.mCurState = n2;
        if (this.mActive == null) return;
        boolean bl2 = false;
        int n5 = 0;
        do {
            if (n5 >= this.mActive.size()) {
                this.startPendingDeferredFragments();
                if (!this.mNeedMenuInvalidate) return;
                if (this.mHost == null) return;
                if (this.mCurState != 5) return;
                this.mHost.onSupportInvalidateOptionsMenu();
                this.mNeedMenuInvalidate = false;
                return;
            }
            Fragment fragment = this.mActive.get(n5);
            boolean bl3 = bl2;
            if (fragment != null) {
                this.moveToState(fragment, n2, n3, n4, false);
                bl3 = bl2;
                if (fragment.mLoaderManager != null) {
                    bl3 = bl2 | fragment.mLoaderManager.hasRunningLoaders();
                }
            }
            ++n5;
            bl2 = bl3;
        } while (true);
    }

    void moveToState(int n2, boolean bl) {
        this.moveToState(n2, 0, 0, bl);
    }

    void moveToState(Fragment fragment) {
        this.moveToState(fragment, this.mCurState, 0, 0, false);
    }

    /*
     * Exception decompiling
     */
    void moveToState(Fragment var1_1, int var2_2, int var3_3, int var4_4, boolean var5_5) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:143)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:385)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.rebuildSwitches(SwitchReplacer.java:334)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:539)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    public void noteStateNotSaved() {
        this.mStateSaved = false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public View onCreateView(View object, String object2, Context context, AttributeSet attributeSet) {
        if (!"fragment".equals(object2)) {
            return null;
        }
        object2 = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, FragmentTag.Fragment);
        Object object3 = object2;
        if (object2 == null) {
            object3 = typedArray.getString(0);
        }
        int n2 = typedArray.getResourceId(1, -1);
        String string2 = typedArray.getString(2);
        typedArray.recycle();
        if (!Fragment.isSupportFragmentClass(this.mHost.getContext(), (String)object3)) return null;
        int n3 = object != null ? object.getId() : 0;
        if (n3 == -1 && n2 == -1 && string2 == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + (String)object3);
        }
        object2 = n2 != -1 ? this.findFragmentById(n2) : null;
        object = object2;
        if (object2 == null) {
            object = object2;
            if (string2 != null) {
                object = this.findFragmentByTag(string2);
            }
        }
        object2 = object;
        if (object == null) {
            object2 = object;
            if (n3 != -1) {
                object2 = this.findFragmentById(n3);
            }
        }
        if (DEBUG) {
            Log.v((String)"FragmentManager", (String)("onCreateView: id=0x" + Integer.toHexString(n2) + " fname=" + (String)object3 + " existing=" + object2));
        }
        if (object2 == null) {
            object = Fragment.instantiate(context, (String)object3);
            object.mFromLayout = true;
            int n4 = n2 != 0 ? n2 : n3;
            object.mFragmentId = n4;
            object.mContainerId = n3;
            object.mTag = string2;
            object.mInLayout = true;
            object.mFragmentManager = this;
            object.mHost = this.mHost;
            object.onInflate(this.mHost.getContext(), attributeSet, object.mSavedFragmentState);
            this.addFragment((Fragment)object, true);
        } else {
            if (object2.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(n2) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(n3) + " with another fragment for " + (String)object3);
            }
            object2.mInLayout = true;
            object2.mHost = this.mHost;
            object = object2;
            if (!object2.mRetaining) {
                object2.onInflate(this.mHost.getContext(), attributeSet, object2.mSavedFragmentState);
                object = object2;
            }
        }
        if (this.mCurState < 1 && object.mFromLayout) {
            this.moveToState((Fragment)object, 1, 0, 0, false);
        } else {
            this.moveToState((Fragment)object);
        }
        if (object.mView == null) {
            throw new IllegalStateException("Fragment " + (String)object3 + " did not create a view.");
        }
        if (n2 != 0) {
            object.mView.setId(n2);
        }
        if (object.mView.getTag() != null) return object.mView;
        object.mView.setTag((Object)string2);
        return object.mView;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void performPendingDeferredStart(Fragment fragment) {
        if (!fragment.mDeferStart) return;
        if (this.mExecutingActions) {
            this.mHavePendingDeferredStart = true;
            return;
        }
        fragment.mDeferStart = false;
        this.moveToState(fragment, this.mCurState, 0, 0, false);
    }

    @Override
    public void popBackStack() {
        this.enqueueAction(new Runnable(){

            @Override
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), null, -1, 0);
            }
        }, false);
    }

    @Override
    public void popBackStack(final int n2, final int n3) {
        if (n2 < 0) {
            throw new IllegalArgumentException("Bad id: " + n2);
        }
        this.enqueueAction(new Runnable(){

            @Override
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), null, n2, n3);
            }
        }, false);
    }

    @Override
    public void popBackStack(final String string2, final int n2) {
        this.enqueueAction(new Runnable(){

            @Override
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), string2, -1, n2);
            }
        }, false);
    }

    @Override
    public boolean popBackStackImmediate() {
        this.checkStateLoss();
        this.executePendingTransactions();
        return this.popBackStackState(this.mHost.getHandler(), null, -1, 0);
    }

    @Override
    public boolean popBackStackImmediate(int n2, int n3) {
        this.checkStateLoss();
        this.executePendingTransactions();
        if (n2 < 0) {
            throw new IllegalArgumentException("Bad id: " + n2);
        }
        return this.popBackStackState(this.mHost.getHandler(), null, n2, n3);
    }

    @Override
    public boolean popBackStackImmediate(String string2, int n2) {
        this.checkStateLoss();
        this.executePendingTransactions();
        return this.popBackStackState(this.mHost.getHandler(), string2, -1, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean popBackStackState(Handler object, String sparseArray, int n2, int n3) {
        if (this.mBackStack == null) {
            return false;
        }
        if (sparseArray == null && n2 < 0 && (n3 & 1) == 0) {
            n2 = this.mBackStack.size() - 1;
            if (n2 < 0) {
                return false;
            }
            object = this.mBackStack.remove(n2);
            sparseArray = new SparseArray();
            SparseArray sparseArray2 = new SparseArray();
            if (this.mCurState >= 1) {
                object.calculateBackFragments(sparseArray, sparseArray2);
            }
            object.popFromBackStack(true, null, sparseArray, sparseArray2);
            this.reportBackStackChanged();
            return true;
        }
        int n4 = -1;
        if (sparseArray != null || n2 >= 0) {
            int n5;
            for (n5 = this.mBackStack.size() - 1; n5 >= 0; --n5) {
                object = this.mBackStack.get(n5);
                if (sparseArray != null && sparseArray.equals(object.getName()) || n2 >= 0 && n2 == object.mIndex) break;
            }
            if (n5 < 0) {
                return false;
            }
            n4 = n5;
            if ((n3 & 1) != 0) {
                n3 = n5 - 1;
                do {
                    n4 = n3;
                    if (n3 < 0) break;
                    object = this.mBackStack.get(n3);
                    if (sparseArray == null || !sparseArray.equals(object.getName())) {
                        n4 = n3;
                        if (n2 < 0) break;
                        n4 = n3;
                        if (n2 != object.mIndex) break;
                    }
                    --n3;
                } while (true);
            }
        }
        if (n4 == this.mBackStack.size() - 1) {
            return false;
        }
        sparseArray = new SparseArray();
        for (n2 = this.mBackStack.size() - 1; n2 > n4; --n2) {
            sparseArray.add(this.mBackStack.remove(n2));
        }
        n3 = sparseArray.size() - 1;
        SparseArray sparseArray3 = new SparseArray();
        SparseArray sparseArray4 = new SparseArray();
        if (this.mCurState >= 1) {
            for (n2 = 0; n2 <= n3; ++n2) {
                ((BackStackRecord)sparseArray.get(n2)).calculateBackFragments(sparseArray3, sparseArray4);
            }
        }
        object = null;
        n2 = 0;
        do {
            if (n2 > n3) {
                this.reportBackStackChanged();
                return true;
            }
            if (DEBUG) {
                Log.v((String)"FragmentManager", (String)("Popping back stack state: " + sparseArray.get(n2)));
            }
            BackStackRecord backStackRecord = (BackStackRecord)sparseArray.get(n2);
            boolean bl = n2 == n3;
            object = backStackRecord.popFromBackStack(bl, (BackStackRecord.TransitionState)object, sparseArray3, sparseArray4);
            ++n2;
        } while (true);
    }

    @Override
    public void putFragment(Bundle bundle, String string2, Fragment fragment) {
        if (fragment.mIndex < 0) {
            this.throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(string2, fragment.mIndex);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void removeFragment(Fragment fragment, int n2, int n3) {
        if (DEBUG) {
            Log.v((String)"FragmentManager", (String)("remove: " + fragment + " nesting=" + fragment.mBackStackNesting));
        }
        int n4 = !fragment.isInBackStack() ? 1 : 0;
        if (!fragment.mDetached || n4 != 0) {
            if (this.mAdded != null) {
                this.mAdded.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
            n4 = n4 != 0 ? 0 : 1;
            this.moveToState(fragment, n4, n2, n3, false);
        }
    }

    @Override
    public void removeOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners != null) {
            this.mBackStackChangeListeners.remove(onBackStackChangedListener);
        }
    }

    void reportBackStackChanged() {
        if (this.mBackStackChangeListeners != null) {
            for (int i2 = 0; i2 < this.mBackStackChangeListeners.size(); ++i2) {
                this.mBackStackChangeListeners.get(i2).onBackStackChanged();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void restoreAllState(Parcelable object, FragmentManagerNonConfig object2) {
        List<Fragment> list;
        FragmentState fragmentState;
        int n2;
        List<Fragment> list2;
        int n3;
        if (object == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState)object;
        if (fragmentManagerState.mActive == null) return;
        object = null;
        if (object2 != null) {
            list2 = object2.getFragments();
            list = object2.getChildNonConfigs();
            n2 = list2 != null ? list2.size() : 0;
            n3 = 0;
            do {
                object = list;
                if (n3 >= n2) break;
                object = list2.get(n3);
                if (DEBUG) {
                    Log.v((String)"FragmentManager", (String)("restoreAllState: re-attaching retained " + object));
                }
                fragmentState = fragmentManagerState.mActive[object.mIndex];
                fragmentState.mInstance = object;
                object.mSavedViewState = null;
                object.mBackStackNesting = 0;
                object.mInLayout = false;
                object.mAdded = false;
                object.mTarget = null;
                if (fragmentState.mSavedFragmentState != null) {
                    fragmentState.mSavedFragmentState.setClassLoader(this.mHost.getContext().getClassLoader());
                    object.mSavedViewState = fragmentState.mSavedFragmentState.getSparseParcelableArray("android:view_state");
                    object.mSavedFragmentState = fragmentState.mSavedFragmentState;
                }
                ++n3;
            } while (true);
        }
        this.mActive = new ArrayList(fragmentManagerState.mActive.length);
        if (this.mAvailIndices != null) {
            this.mAvailIndices.clear();
        }
        for (n2 = 0; n2 < fragmentManagerState.mActive.length; ++n2) {
            fragmentState = fragmentManagerState.mActive[n2];
            if (fragmentState != null) {
                list = list2 = null;
                if (object != null) {
                    list = list2;
                    if (n2 < object.size()) {
                        list = (FragmentManagerNonConfig)((Object)object.get(n2));
                    }
                }
                list = fragmentState.instantiate(this.mHost, this.mParent, (FragmentManagerNonConfig)((Object)list));
                if (DEBUG) {
                    Log.v((String)"FragmentManager", (String)("restoreAllState: active #" + n2 + ": " + list));
                }
                this.mActive.add((Fragment)((Object)list));
                fragmentState.mInstance = null;
                continue;
            }
            this.mActive.add(null);
            if (this.mAvailIndices == null) {
                this.mAvailIndices = new ArrayList();
            }
            if (DEBUG) {
                Log.v((String)"FragmentManager", (String)("restoreAllState: avail #" + n2));
            }
            this.mAvailIndices.add(n2);
        }
        if (object2 != null) {
            object = object2.getFragments();
            n2 = object != null ? object.size() : 0;
            for (n3 = 0; n3 < n2; ++n3) {
                object2 = object.get(n3);
                if (object2.mTargetIndex < 0) continue;
                if (object2.mTargetIndex < this.mActive.size()) {
                    object2.mTarget = this.mActive.get(object2.mTargetIndex);
                    continue;
                }
                Log.w((String)"FragmentManager", (String)("Re-attaching retained fragment " + object2 + " target no longer exists: " + object2.mTargetIndex));
                object2.mTarget = null;
            }
        }
        if (fragmentManagerState.mAdded == null) {
            this.mAdded = null;
        } else {
            this.mAdded = new ArrayList(fragmentManagerState.mAdded.length);
            for (n2 = 0; n2 < fragmentManagerState.mAdded.length; ++n2) {
                object = this.mActive.get(fragmentManagerState.mAdded[n2]);
                if (object == null) {
                    this.throwException(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.mAdded[n2]));
                }
                object.mAdded = true;
                if (DEBUG) {
                    Log.v((String)"FragmentManager", (String)("restoreAllState: added #" + n2 + ": " + object));
                }
                if (this.mAdded.contains(object)) {
                    throw new IllegalStateException("Already added!");
                }
                this.mAdded.add((Fragment)object);
            }
        }
        if (fragmentManagerState.mBackStack == null) {
            this.mBackStack = null;
            return;
        }
        this.mBackStack = new ArrayList(fragmentManagerState.mBackStack.length);
        n2 = 0;
        while (n2 < fragmentManagerState.mBackStack.length) {
            object = fragmentManagerState.mBackStack[n2].instantiate(this);
            if (DEBUG) {
                Log.v((String)"FragmentManager", (String)("restoreAllState: back stack #" + n2 + " (index " + object.mIndex + "): " + object));
                object.dump("  ", new PrintWriter(new LogWriter("FragmentManager")), false);
            }
            this.mBackStack.add((BackStackRecord)object);
            if (object.mIndex >= 0) {
                this.setBackStackIndex(object.mIndex, (BackStackRecord)object);
            }
            ++n2;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    FragmentManagerNonConfig retainNonConfig() {
        ArrayList<ArrayList<Fragment>> arrayList = null;
        ArrayList<ArrayList<Fragment>> arrayList2 = null;
        ArrayList<ArrayList<Fragment>> arrayList3 = null;
        ArrayList<ArrayList<Fragment>> arrayList4 = null;
        if (this.mActive == null) return null;
        int n2 = 0;
        do {
            arrayList3 = arrayList4;
            arrayList = arrayList2;
            if (n2 >= this.mActive.size()) break;
            Fragment fragment = this.mActive.get(n2);
            arrayList = arrayList4;
            ArrayList<ArrayList<Fragment>> arrayList5 = arrayList2;
            if (fragment != null) {
                int n3;
                int n4;
                arrayList3 = arrayList2;
                if (fragment.mRetainInstance) {
                    arrayList = arrayList2;
                    if (arrayList2 == null) {
                        arrayList = new ArrayList<ArrayList<Fragment>>();
                    }
                    arrayList.add((ArrayList<Fragment>)((Object)fragment));
                    fragment.mRetaining = true;
                    n4 = fragment.mTarget != null ? fragment.mTarget.mIndex : -1;
                    fragment.mTargetIndex = n4;
                    arrayList3 = arrayList;
                    if (DEBUG) {
                        Log.v((String)"FragmentManager", (String)("retainNonConfig: keeping retained " + fragment));
                        arrayList3 = arrayList;
                    }
                }
                n4 = n3 = 0;
                arrayList2 = arrayList4;
                if (fragment.mChildFragmentManager != null) {
                    arrayList = fragment.mChildFragmentManager.retainNonConfig();
                    n4 = n3;
                    arrayList2 = arrayList4;
                    if (arrayList != null) {
                        arrayList2 = arrayList4;
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                            n4 = 0;
                            do {
                                arrayList2 = arrayList4;
                                if (n4 >= n2) break;
                                arrayList4.add(null);
                                ++n4;
                            } while (true);
                        }
                        arrayList2.add(arrayList);
                        n4 = 1;
                    }
                }
                arrayList = arrayList2;
                arrayList5 = arrayList3;
                if (arrayList2 != null) {
                    arrayList = arrayList2;
                    arrayList5 = arrayList3;
                    if (n4 == 0) {
                        arrayList2.add(null);
                        arrayList5 = arrayList3;
                        arrayList = arrayList2;
                    }
                }
            }
            ++n2;
            arrayList4 = arrayList;
            arrayList2 = arrayList5;
        } while (true);
        if (arrayList == null && arrayList3 == null) {
            return null;
        }
        return new FragmentManagerNonConfig(arrayList, arrayList3);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    Parcelable saveAllState() {
        this.execPendingActions();
        if (HONEYCOMB) {
            this.mStateSaved = true;
        }
        if (this.mActive == null) return null;
        if (this.mActive.size() <= 0) {
            return null;
        }
        int n2 = this.mActive.size();
        FragmentState[] arrfragmentState = new FragmentState[n2];
        int n3 = 0;
        int n4 = 0;
        do {
            if (n4 >= n2) {
                if (!DEBUG) return null;
                Log.v((String)"FragmentManager", (String)"saveAllState: no fragments!");
                return null;
            }
            int[] arrn = this.mActive.get(n4);
            if (arrn != null) {
                int[] arrn2;
                if (arrn.mIndex < 0) {
                    this.throwException(new IllegalStateException("Failure saving state: active " + arrn + " has cleared index: " + arrn.mIndex));
                }
                int n5 = 1;
                arrfragmentState[n4] = arrn2 = new int[]((Fragment)arrn);
                if (arrn.mState > 0 && arrn2.mSavedFragmentState == null) {
                    arrn2.mSavedFragmentState = this.saveFragmentBasicState((Fragment)arrn);
                    if (arrn.mTarget != null) {
                        if (arrn.mTarget.mIndex < 0) {
                            this.throwException(new IllegalStateException("Failure saving state: " + arrn + " has target not in fragment manager: " + arrn.mTarget));
                        }
                        if (arrn2.mSavedFragmentState == null) {
                            arrn2.mSavedFragmentState = new Bundle();
                        }
                        this.putFragment(arrn2.mSavedFragmentState, "android:target_state", arrn.mTarget);
                        if (arrn.mTargetRequestCode != 0) {
                            arrn2.mSavedFragmentState.putInt("android:target_req_state", arrn.mTargetRequestCode);
                        }
                    }
                } else {
                    arrn2.mSavedFragmentState = arrn.mSavedFragmentState;
                }
                n3 = n5;
                if (DEBUG) {
                    Log.v((String)"FragmentManager", (String)("Saved state of " + arrn + ": " + (Object)arrn2.mSavedFragmentState));
                    n3 = n5;
                }
            }
            ++n4;
        } while (true);
    }

    Bundle saveFragmentBasicState(Fragment fragment) {
        Bundle bundle = null;
        if (this.mStateBundle == null) {
            this.mStateBundle = new Bundle();
        }
        fragment.performSaveInstanceState(this.mStateBundle);
        if (!this.mStateBundle.isEmpty()) {
            bundle = this.mStateBundle;
            this.mStateBundle = null;
        }
        if (fragment.mView != null) {
            this.saveFragmentViewState(fragment);
        }
        Bundle bundle2 = bundle;
        if (fragment.mSavedViewState != null) {
            bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putSparseParcelableArray("android:view_state", fragment.mSavedViewState);
        }
        bundle = bundle2;
        if (!fragment.mUserVisibleHint) {
            bundle = bundle2;
            if (bundle2 == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.mUserVisibleHint);
        }
        return bundle;
    }

    @Override
    public Fragment.SavedState saveFragmentInstanceState(Fragment fragment) {
        Fragment.SavedState savedState = null;
        if (fragment.mIndex < 0) {
            this.throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        Fragment.SavedState savedState2 = savedState;
        if (fragment.mState > 0) {
            fragment = this.saveFragmentBasicState(fragment);
            savedState2 = savedState;
            if (fragment != null) {
                savedState2 = new Fragment.SavedState((Bundle)fragment);
            }
        }
        return savedState2;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void saveFragmentViewState(Fragment fragment) {
        if (fragment.mInnerView == null) {
            return;
        }
        if (this.mStateArray == null) {
            this.mStateArray = new SparseArray();
        } else {
            this.mStateArray.clear();
        }
        fragment.mInnerView.saveHierarchyState(this.mStateArray);
        if (this.mStateArray.size() <= 0) return;
        fragment.mSavedViewState = this.mStateArray;
        this.mStateArray = null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void setBackStackIndex(int n2, BackStackRecord backStackRecord) {
        synchronized (this) {
            int n3;
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList();
            }
            if (n2 < n3) {
                if (DEBUG) {
                    Log.v((String)"FragmentManager", (String)("Setting back stack index " + n2 + " to " + backStackRecord));
                }
                this.mBackStackIndices.set(n2, backStackRecord);
            } else {
                for (int i2 = n3 = this.mBackStackIndices.size(); i2 < n2; ++i2) {
                    this.mBackStackIndices.add(null);
                    if (this.mAvailBackStackIndices == null) {
                        this.mAvailBackStackIndices = new ArrayList();
                    }
                    if (DEBUG) {
                        Log.v((String)"FragmentManager", (String)("Adding available back stack index " + i2));
                    }
                    this.mAvailBackStackIndices.add(i2);
                }
                if (DEBUG) {
                    Log.v((String)"FragmentManager", (String)("Adding back stack index " + n2 + " with " + backStackRecord));
                }
                this.mBackStackIndices.add(backStackRecord);
            }
            return;
        }
    }

    public void showFragment(Fragment fragment, int n2, int n3) {
        if (DEBUG) {
            Log.v((String)"FragmentManager", (String)("show: " + fragment));
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            if (fragment.mView != null) {
                Animation animation = this.loadAnimation(fragment, n2, true, n3);
                if (animation != null) {
                    this.setHWLayerAnimListenerIfAlpha(fragment.mView, animation);
                    fragment.mView.startAnimation(animation);
                }
                fragment.mView.setVisibility(0);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(false);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    void startPendingDeferredFragments() {
        if (this.mActive == null) {
            return;
        }
        int n2 = 0;
        while (n2 < this.mActive.size()) {
            Fragment fragment = this.mActive.get(n2);
            if (fragment != null) {
                this.performPendingDeferredStart(fragment);
            }
            ++n2;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("FragmentManager{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringBuilder.append(" in ");
        if (this.mParent != null) {
            DebugUtils.buildShortClassTag(this.mParent, stringBuilder);
        } else {
            DebugUtils.buildShortClassTag(this.mHost, stringBuilder);
        }
        stringBuilder.append("}}");
        return stringBuilder.toString();
    }

    static class AnimateOnHWLayerIfNeededListener
    implements Animation.AnimationListener {
        private Animation.AnimationListener mOriginalListener;
        private boolean mShouldRunOnHWLayer;
        View mView;

        public AnimateOnHWLayerIfNeededListener(View view, Animation animation) {
            if (view == null || animation == null) {
                return;
            }
            this.mView = view;
        }

        public AnimateOnHWLayerIfNeededListener(View view, Animation animation, Animation.AnimationListener animationListener) {
            if (view == null || animation == null) {
                return;
            }
            this.mOriginalListener = animationListener;
            this.mView = view;
            this.mShouldRunOnHWLayer = true;
        }

        /*
         * Enabled aggressive block sorting
         */
        @CallSuper
        public void onAnimationEnd(Animation animation) {
            if (this.mView != null && this.mShouldRunOnHWLayer) {
                if (ViewCompat.isAttachedToWindow(this.mView) || BuildCompat.isAtLeastN()) {
                    this.mView.post(new Runnable(){

                        @Override
                        public void run() {
                            ViewCompat.setLayerType(AnimateOnHWLayerIfNeededListener.this.mView, 0, null);
                        }
                    });
                } else {
                    ViewCompat.setLayerType(this.mView, 0, null);
                }
            }
            if (this.mOriginalListener != null) {
                this.mOriginalListener.onAnimationEnd(animation);
            }
        }

        public void onAnimationRepeat(Animation animation) {
            if (this.mOriginalListener != null) {
                this.mOriginalListener.onAnimationRepeat(animation);
            }
        }

        @CallSuper
        public void onAnimationStart(Animation animation) {
            if (this.mOriginalListener != null) {
                this.mOriginalListener.onAnimationStart(animation);
            }
        }

    }

    static class FragmentTag {
        public static final int[] Fragment = new int[]{16842755, 16842960, 16842961};
        public static final int Fragment_id = 1;
        public static final int Fragment_name = 0;
        public static final int Fragment_tag = 2;

        FragmentTag() {
        }
    }

}

