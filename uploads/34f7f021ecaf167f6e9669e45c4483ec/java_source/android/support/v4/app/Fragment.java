/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ComponentCallbacks
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentSender
 *  android.content.IntentSender$SendIntentException
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.util.AttributeSet
 *  android.util.SparseArray
 *  android.view.ContextMenu
 *  android.view.ContextMenu$ContextMenuInfo
 *  android.view.LayoutInflater
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.View$OnCreateContextMenuListener
 *  android.view.ViewGroup
 *  android.view.animation.Animation
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentContainer;
import android.support.v4.app.FragmentHostCallback;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManagerImpl;
import android.support.v4.app.FragmentManagerNonConfig;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManagerImpl;
import android.support.v4.app.SharedElementCallback;
import android.support.v4.app.SuperNotCalledException;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SimpleArrayMap;
import android.support.v4.view.LayoutInflaterCompat;
import android.support.v4.view.LayoutInflaterFactory;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class Fragment
implements ComponentCallbacks,
View.OnCreateContextMenuListener {
    static final int ACTIVITY_CREATED = 2;
    static final int CREATED = 1;
    static final int INITIALIZING = 0;
    static final int RESUMED = 5;
    static final int STARTED = 4;
    static final int STOPPED = 3;
    static final Object USE_DEFAULT_TRANSITION;
    private static final SimpleArrayMap<String, Class<?>> sClassMap;
    boolean mAdded;
    Boolean mAllowEnterTransitionOverlap;
    Boolean mAllowReturnTransitionOverlap;
    View mAnimatingAway;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mCalled;
    boolean mCheckedForLoaderManager;
    FragmentManagerImpl mChildFragmentManager;
    FragmentManagerNonConfig mChildNonConfig;
    ViewGroup mContainer;
    int mContainerId;
    boolean mDeferStart;
    boolean mDetached;
    Object mEnterTransition = null;
    SharedElementCallback mEnterTransitionCallback = null;
    Object mExitTransition = null;
    SharedElementCallback mExitTransitionCallback = null;
    int mFragmentId;
    FragmentManagerImpl mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    FragmentHostCallback mHost;
    boolean mInLayout;
    int mIndex = -1;
    View mInnerView;
    LoaderManagerImpl mLoaderManager;
    boolean mLoadersStarted;
    boolean mMenuVisible = true;
    int mNextAnim;
    Fragment mParentFragment;
    Object mReenterTransition = USE_DEFAULT_TRANSITION;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetaining;
    Object mReturnTransition = USE_DEFAULT_TRANSITION;
    Bundle mSavedFragmentState;
    SparseArray<Parcelable> mSavedViewState;
    Object mSharedElementEnterTransition = null;
    Object mSharedElementReturnTransition = USE_DEFAULT_TRANSITION;
    int mState = 0;
    int mStateAfterAnimating;
    String mTag;
    Fragment mTarget;
    int mTargetIndex = -1;
    int mTargetRequestCode;
    boolean mUserVisibleHint = true;
    View mView;
    String mWho;

    static {
        sClassMap = new SimpleArrayMap();
        USE_DEFAULT_TRANSITION = new Object();
    }

    public static Fragment instantiate(Context context, String string2) {
        return Fragment.instantiate(context, string2, null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Fragment instantiate(Context object, String string2, @Nullable Bundle bundle) {
        try {
            Class class_;
            Class class_2 = class_ = sClassMap.get(string2);
            if (class_ == null) {
                class_2 = object.getClassLoader().loadClass(string2);
                sClassMap.put(string2, class_2);
            }
            object = (Fragment)class_2.newInstance();
            if (bundle != null) {
                bundle.setClassLoader(object.getClass().getClassLoader());
                object.mArguments = bundle;
            }
            return object;
        }
        catch (ClassNotFoundException var0_1) {
            throw new InstantiationException("Unable to instantiate fragment " + string2 + ": make sure class name exists, is public, and has an" + " empty constructor that is public", var0_1);
        }
        catch (java.lang.InstantiationException var0_2) {
            throw new InstantiationException("Unable to instantiate fragment " + string2 + ": make sure class name exists, is public, and has an" + " empty constructor that is public", var0_2);
        }
        catch (IllegalAccessException var0_3) {
            throw new InstantiationException("Unable to instantiate fragment " + string2 + ": make sure class name exists, is public, and has an" + " empty constructor that is public", var0_3);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean isSupportFragmentClass(Context context, String string2) {
        Class class_;
        try {
            Class class_2;
            class_ = class_2 = sClassMap.get(string2);
            if (class_2 != null) return Fragment.class.isAssignableFrom(class_);
        }
        catch (ClassNotFoundException var0_1) {
            return false;
        }
        class_ = context.getClassLoader().loadClass(string2);
        sClassMap.put(string2, class_);
        return Fragment.class.isAssignableFrom(class_);
    }

    public void dump(String string2, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
        printWriter.print(string2);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(string2);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mIndex=");
        printWriter.print(this.mIndex);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(string2);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(string2);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(string2);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mRetaining=");
        printWriter.print(this.mRetaining);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(string2);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(string2);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(string2);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(string2);
            printWriter.print("mArguments=");
            printWriter.println((Object)this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(string2);
            printWriter.print("mSavedFragmentState=");
            printWriter.println((Object)this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(string2);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mTarget != null) {
            printWriter.print(string2);
            printWriter.print("mTarget=");
            printWriter.print(this.mTarget);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        if (this.mNextAnim != 0) {
            printWriter.print(string2);
            printWriter.print("mNextAnim=");
            printWriter.println(this.mNextAnim);
        }
        if (this.mContainer != null) {
            printWriter.print(string2);
            printWriter.print("mContainer=");
            printWriter.println((Object)this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(string2);
            printWriter.print("mView=");
            printWriter.println((Object)this.mView);
        }
        if (this.mInnerView != null) {
            printWriter.print(string2);
            printWriter.print("mInnerView=");
            printWriter.println((Object)this.mView);
        }
        if (this.mAnimatingAway != null) {
            printWriter.print(string2);
            printWriter.print("mAnimatingAway=");
            printWriter.println((Object)this.mAnimatingAway);
            printWriter.print(string2);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(this.mStateAfterAnimating);
        }
        if (this.mLoaderManager != null) {
            printWriter.print(string2);
            printWriter.println("Loader Manager:");
            this.mLoaderManager.dump(string2 + "  ", fileDescriptor, printWriter, arrstring);
        }
        if (this.mChildFragmentManager != null) {
            printWriter.print(string2);
            printWriter.println("Child " + this.mChildFragmentManager + ":");
            this.mChildFragmentManager.dump(string2 + "  ", fileDescriptor, printWriter, arrstring);
        }
    }

    public final boolean equals(Object object) {
        return super.equals(object);
    }

    Fragment findFragmentByWho(String string2) {
        if (string2.equals(this.mWho)) {
            return this;
        }
        if (this.mChildFragmentManager != null) {
            return this.mChildFragmentManager.findFragmentByWho(string2);
        }
        return null;
    }

    public final FragmentActivity getActivity() {
        if (this.mHost == null) {
            return null;
        }
        return (FragmentActivity)this.mHost.getActivity();
    }

    public boolean getAllowEnterTransitionOverlap() {
        if (this.mAllowEnterTransitionOverlap == null) {
            return true;
        }
        return this.mAllowEnterTransitionOverlap;
    }

    public boolean getAllowReturnTransitionOverlap() {
        if (this.mAllowReturnTransitionOverlap == null) {
            return true;
        }
        return this.mAllowReturnTransitionOverlap;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final FragmentManager getChildFragmentManager() {
        if (this.mChildFragmentManager != null) return this.mChildFragmentManager;
        this.instantiateChildFragmentManager();
        if (this.mState >= 5) {
            this.mChildFragmentManager.dispatchResume();
            return this.mChildFragmentManager;
        }
        if (this.mState >= 4) {
            this.mChildFragmentManager.dispatchStart();
            return this.mChildFragmentManager;
        }
        if (this.mState >= 2) {
            this.mChildFragmentManager.dispatchActivityCreated();
            return this.mChildFragmentManager;
        }
        if (this.mState < 1) return this.mChildFragmentManager;
        this.mChildFragmentManager.dispatchCreate();
        return this.mChildFragmentManager;
    }

    public Context getContext() {
        if (this.mHost == null) {
            return null;
        }
        return this.mHost.getContext();
    }

    public Object getEnterTransition() {
        return this.mEnterTransition;
    }

    public Object getExitTransition() {
        return this.mExitTransition;
    }

    public final FragmentManager getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        if (this.mHost == null) {
            return null;
        }
        return this.mHost.onGetHost();
    }

    public final int getId() {
        return this.mFragmentId;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        bundle = this.mHost.onGetLayoutInflater();
        this.getChildFragmentManager();
        LayoutInflaterCompat.setFactory((LayoutInflater)bundle, this.mChildFragmentManager.getLayoutInflaterFactory());
        return bundle;
    }

    public LoaderManager getLoaderManager() {
        if (this.mLoaderManager != null) {
            return this.mLoaderManager;
        }
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.mCheckedForLoaderManager = true;
        this.mLoaderManager = this.mHost.getLoaderManager(this.mWho, this.mLoadersStarted, true);
        return this.mLoaderManager;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public Object getReenterTransition() {
        if (this.mReenterTransition == USE_DEFAULT_TRANSITION) {
            return this.getExitTransition();
        }
        return this.mReenterTransition;
    }

    public final Resources getResources() {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        return this.mHost.getContext().getResources();
    }

    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        if (this.mReturnTransition == USE_DEFAULT_TRANSITION) {
            return this.getEnterTransition();
        }
        return this.mReturnTransition;
    }

    public Object getSharedElementEnterTransition() {
        return this.mSharedElementEnterTransition;
    }

    public Object getSharedElementReturnTransition() {
        if (this.mSharedElementReturnTransition == USE_DEFAULT_TRANSITION) {
            return this.getSharedElementEnterTransition();
        }
        return this.mSharedElementReturnTransition;
    }

    public final String getString(@StringRes int n2) {
        return this.getResources().getString(n2);
    }

    public final /* varargs */ String getString(@StringRes int n2, Object ... arrobject) {
        return this.getResources().getString(n2, arrobject);
    }

    public final String getTag() {
        return this.mTag;
    }

    public final Fragment getTargetFragment() {
        return this.mTarget;
    }

    public final int getTargetRequestCode() {
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(@StringRes int n2) {
        return this.getResources().getText(n2);
    }

    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    @Nullable
    public View getView() {
        return this.mView;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    void initState() {
        this.mIndex = -1;
        this.mWho = null;
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = null;
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
        this.mRetaining = false;
        this.mLoaderManager = null;
        this.mLoadersStarted = false;
        this.mCheckedForLoaderManager = false;
    }

    void instantiateChildFragmentManager() {
        this.mChildFragmentManager = new FragmentManagerImpl();
        this.mChildFragmentManager.attachController(this.mHost, new FragmentContainer(){

            @Nullable
            @Override
            public View onFindViewById(int n2) {
                if (Fragment.this.mView == null) {
                    throw new IllegalStateException("Fragment does not have a view");
                }
                return Fragment.this.mView.findViewById(n2);
            }

            @Override
            public boolean onHasView() {
                if (Fragment.this.mView != null) {
                    return true;
                }
                return false;
            }
        }, this);
    }

    public final boolean isAdded() {
        if (this.mHost != null && this.mAdded) {
            return true;
        }
        return false;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        return this.mHidden;
    }

    final boolean isInBackStack() {
        if (this.mBackStackNesting > 0) {
            return true;
        }
        return false;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public final boolean isMenuVisible() {
        return this.mMenuVisible;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        if (this.mState >= 5) {
            return true;
        }
        return false;
    }

    public final boolean isVisible() {
        if (this.isAdded() && !this.isHidden() && this.mView != null && this.mView.getWindowToken() != null && this.mView.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @CallSuper
    public void onActivityCreated(@Nullable Bundle bundle) {
        this.mCalled = true;
    }

    public void onActivityResult(int n2, int n3, Intent intent) {
    }

    @Deprecated
    @CallSuper
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @CallSuper
    public void onAttach(Context context) {
        this.mCalled = true;
        if (this.mHost == null) {
            return;
        }
        context = this.mHost.getActivity();
        if (context != null) {
            this.mCalled = false;
            this.onAttach((Activity)context);
        }
    }

    public void onAttachFragment(Fragment fragment) {
    }

    @CallSuper
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    @CallSuper
    public void onCreate(@Nullable Bundle bundle) {
        this.mCalled = true;
        this.restoreChildFragmentState(bundle);
        if (this.mChildFragmentManager != null && !this.mChildFragmentManager.isStateAtLeast(1)) {
            this.mChildFragmentManager.dispatchCreate();
        }
    }

    public Animation onCreateAnimation(int n2, boolean bl, int n3) {
        return null;
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.getActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(Menu menu2, MenuInflater menuInflater) {
    }

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return null;
    }

    @CallSuper
    public void onDestroy() {
        this.mCalled = true;
        if (!this.mCheckedForLoaderManager) {
            this.mCheckedForLoaderManager = true;
            this.mLoaderManager = this.mHost.getLoaderManager(this.mWho, this.mLoadersStarted, false);
        }
        if (this.mLoaderManager != null) {
            this.mLoaderManager.doDestroy();
        }
    }

    public void onDestroyOptionsMenu() {
    }

    @CallSuper
    public void onDestroyView() {
        this.mCalled = true;
    }

    @CallSuper
    public void onDetach() {
        this.mCalled = true;
    }

    public void onHiddenChanged(boolean bl) {
    }

    @Deprecated
    @CallSuper
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @CallSuper
    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        if (this.mHost == null) {
            return;
        }
        context = this.mHost.getActivity();
        if (context != null) {
            this.mCalled = false;
            this.onInflate((Activity)context, attributeSet, bundle);
        }
    }

    @CallSuper
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean bl) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu2) {
    }

    @CallSuper
    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean bl) {
    }

    public void onPrepareOptionsMenu(Menu menu2) {
    }

    public void onRequestPermissionsResult(int n2, @NonNull String[] arrstring, @NonNull int[] arrn) {
    }

    @CallSuper
    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    @CallSuper
    public void onStart() {
        this.mCalled = true;
        if (!this.mLoadersStarted) {
            this.mLoadersStarted = true;
            if (!this.mCheckedForLoaderManager) {
                this.mCheckedForLoaderManager = true;
                this.mLoaderManager = this.mHost.getLoaderManager(this.mWho, this.mLoadersStarted, false);
            }
            if (this.mLoaderManager != null) {
                this.mLoaderManager.doStart();
            }
        }
    }

    @CallSuper
    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, @Nullable Bundle bundle) {
    }

    @CallSuper
    public void onViewStateRestored(@Nullable Bundle bundle) {
        this.mCalled = true;
    }

    void performActivityCreated(Bundle bundle) {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.noteStateNotSaved();
        }
        this.mState = 2;
        this.mCalled = false;
        this.onActivityCreated(bundle);
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchActivityCreated();
        }
    }

    void performConfigurationChanged(Configuration configuration) {
        this.onConfigurationChanged(configuration);
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchConfigurationChanged(configuration);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean performContextItemSelected(MenuItem menuItem) {
        if (!this.mHidden && (this.onContextItemSelected(menuItem) || this.mChildFragmentManager != null && this.mChildFragmentManager.dispatchContextItemSelected(menuItem))) {
            return true;
        }
        return false;
    }

    void performCreate(Bundle bundle) {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.noteStateNotSaved();
        }
        this.mState = 1;
        this.mCalled = false;
        this.onCreate(bundle);
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onCreate()");
        }
    }

    boolean performCreateOptionsMenu(Menu menu2, MenuInflater menuInflater) {
        boolean bl = false;
        boolean bl2 = false;
        if (!this.mHidden) {
            boolean bl3 = bl2;
            if (this.mHasMenu) {
                bl3 = bl2;
                if (this.mMenuVisible) {
                    bl3 = true;
                    this.onCreateOptionsMenu(menu2, menuInflater);
                }
            }
            bl = bl3;
            if (this.mChildFragmentManager != null) {
                bl = bl3 | this.mChildFragmentManager.dispatchCreateOptionsMenu(menu2, menuInflater);
            }
        }
        return bl;
    }

    View performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.noteStateNotSaved();
        }
        return this.onCreateView(layoutInflater, viewGroup, bundle);
    }

    void performDestroy() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchDestroy();
        }
        this.mState = 0;
        this.mCalled = false;
        this.onDestroy();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroy()");
        }
        this.mChildFragmentManager = null;
    }

    void performDestroyView() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchDestroyView();
        }
        this.mState = 1;
        this.mCalled = false;
        this.onDestroyView();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroyView()");
        }
        if (this.mLoaderManager != null) {
            this.mLoaderManager.doReportNextStart();
        }
    }

    void performDetach() {
        this.mCalled = false;
        this.onDetach();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDetach()");
        }
        if (this.mChildFragmentManager != null) {
            if (!this.mRetaining) {
                throw new IllegalStateException("Child FragmentManager of " + this + " was not " + " destroyed and this fragment is not retaining instance");
            }
            this.mChildFragmentManager.dispatchDestroy();
            this.mChildFragmentManager = null;
        }
    }

    void performLowMemory() {
        this.onLowMemory();
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchLowMemory();
        }
    }

    void performMultiWindowModeChanged(boolean bl) {
        this.onMultiWindowModeChanged(bl);
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchMultiWindowModeChanged(bl);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean performOptionsItemSelected(MenuItem menuItem) {
        if (!this.mHidden && (this.mHasMenu && this.mMenuVisible && this.onOptionsItemSelected(menuItem) || this.mChildFragmentManager != null && this.mChildFragmentManager.dispatchOptionsItemSelected(menuItem))) {
            return true;
        }
        return false;
    }

    void performOptionsMenuClosed(Menu menu2) {
        if (!this.mHidden) {
            if (this.mHasMenu && this.mMenuVisible) {
                this.onOptionsMenuClosed(menu2);
            }
            if (this.mChildFragmentManager != null) {
                this.mChildFragmentManager.dispatchOptionsMenuClosed(menu2);
            }
        }
    }

    void performPause() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchPause();
        }
        this.mState = 4;
        this.mCalled = false;
        this.onPause();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onPause()");
        }
    }

    void performPictureInPictureModeChanged(boolean bl) {
        this.onPictureInPictureModeChanged(bl);
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchPictureInPictureModeChanged(bl);
        }
    }

    boolean performPrepareOptionsMenu(Menu menu2) {
        boolean bl = false;
        boolean bl2 = false;
        if (!this.mHidden) {
            boolean bl3 = bl2;
            if (this.mHasMenu) {
                bl3 = bl2;
                if (this.mMenuVisible) {
                    bl3 = true;
                    this.onPrepareOptionsMenu(menu2);
                }
            }
            bl = bl3;
            if (this.mChildFragmentManager != null) {
                bl = bl3 | this.mChildFragmentManager.dispatchPrepareOptionsMenu(menu2);
            }
        }
        return bl;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    void performReallyStop() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchReallyStop();
        }
        this.mState = 2;
        if (!this.mLoadersStarted) return;
        this.mLoadersStarted = false;
        if (!this.mCheckedForLoaderManager) {
            this.mCheckedForLoaderManager = true;
            this.mLoaderManager = this.mHost.getLoaderManager(this.mWho, this.mLoadersStarted, false);
        }
        if (this.mLoaderManager == null) return;
        if (this.mHost.getRetainLoaders()) {
            this.mLoaderManager.doRetain();
            return;
        }
        this.mLoaderManager.doStop();
    }

    void performResume() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.noteStateNotSaved();
            this.mChildFragmentManager.execPendingActions();
        }
        this.mState = 5;
        this.mCalled = false;
        this.onResume();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onResume()");
        }
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchResume();
            this.mChildFragmentManager.execPendingActions();
        }
    }

    void performSaveInstanceState(Bundle bundle) {
        Parcelable parcelable;
        this.onSaveInstanceState(bundle);
        if (this.mChildFragmentManager != null && (parcelable = this.mChildFragmentManager.saveAllState()) != null) {
            bundle.putParcelable("android:support:fragments", parcelable);
        }
    }

    void performStart() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.noteStateNotSaved();
            this.mChildFragmentManager.execPendingActions();
        }
        this.mState = 4;
        this.mCalled = false;
        this.onStart();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStart()");
        }
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchStart();
        }
        if (this.mLoaderManager != null) {
            this.mLoaderManager.doReportStart();
        }
    }

    void performStop() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchStop();
        }
        this.mState = 3;
        this.mCalled = false;
        this.onStop();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStop()");
        }
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener((View.OnCreateContextMenuListener)this);
    }

    public final void requestPermissions(@NonNull String[] arrstring, int n2) {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.mHost.onRequestPermissionsFromFragment(this, arrstring, n2);
    }

    void restoreChildFragmentState(@Nullable Bundle bundle) {
        if (bundle != null && (bundle = bundle.getParcelable("android:support:fragments")) != null) {
            if (this.mChildFragmentManager == null) {
                this.instantiateChildFragmentManager();
            }
            this.mChildFragmentManager.restoreAllState((Parcelable)bundle, this.mChildNonConfig);
            this.mChildNonConfig = null;
            this.mChildFragmentManager.dispatchCreate();
        }
    }

    final void restoreViewState(Bundle bundle) {
        if (this.mSavedViewState != null) {
            this.mInnerView.restoreHierarchyState(this.mSavedViewState);
            this.mSavedViewState = null;
        }
        this.mCalled = false;
        this.onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    public void setAllowEnterTransitionOverlap(boolean bl) {
        this.mAllowEnterTransitionOverlap = bl;
    }

    public void setAllowReturnTransitionOverlap(boolean bl) {
        this.mAllowReturnTransitionOverlap = bl;
    }

    public void setArguments(Bundle bundle) {
        if (this.mIndex >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(SharedElementCallback sharedElementCallback) {
        this.mEnterTransitionCallback = sharedElementCallback;
    }

    public void setEnterTransition(Object object) {
        this.mEnterTransition = object;
    }

    public void setExitSharedElementCallback(SharedElementCallback sharedElementCallback) {
        this.mExitTransitionCallback = sharedElementCallback;
    }

    public void setExitTransition(Object object) {
        this.mExitTransition = object;
    }

    public void setHasOptionsMenu(boolean bl) {
        if (this.mHasMenu != bl) {
            this.mHasMenu = bl;
            if (this.isAdded() && !this.isHidden()) {
                this.mHost.onSupportInvalidateOptionsMenu();
            }
        }
    }

    final void setIndex(int n2, Fragment fragment) {
        this.mIndex = n2;
        if (fragment != null) {
            this.mWho = fragment.mWho + ":" + this.mIndex;
            return;
        }
        this.mWho = "android:fragment:" + this.mIndex;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setInitialSavedState(SavedState savedState) {
        if (this.mIndex >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        savedState = savedState != null && savedState.mState != null ? savedState.mState : null;
        this.mSavedFragmentState = savedState;
    }

    public void setMenuVisibility(boolean bl) {
        if (this.mMenuVisible != bl) {
            this.mMenuVisible = bl;
            if (this.mHasMenu && this.isAdded() && !this.isHidden()) {
                this.mHost.onSupportInvalidateOptionsMenu();
            }
        }
    }

    public void setReenterTransition(Object object) {
        this.mReenterTransition = object;
    }

    public void setRetainInstance(boolean bl) {
        this.mRetainInstance = bl;
    }

    public void setReturnTransition(Object object) {
        this.mReturnTransition = object;
    }

    public void setSharedElementEnterTransition(Object object) {
        this.mSharedElementEnterTransition = object;
    }

    public void setSharedElementReturnTransition(Object object) {
        this.mSharedElementReturnTransition = object;
    }

    public void setTargetFragment(Fragment fragment, int n2) {
        this.mTarget = fragment;
        this.mTargetRequestCode = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setUserVisibleHint(boolean bl) {
        if (!this.mUserVisibleHint && bl && this.mState < 4 && this.mFragmentManager != null && this.isAdded()) {
            this.mFragmentManager.performPendingDeferredStart(this);
        }
        this.mUserVisibleHint = bl;
        bl = this.mState < 4 && !bl;
        this.mDeferStart = bl;
    }

    public boolean shouldShowRequestPermissionRationale(@NonNull String string2) {
        if (this.mHost != null) {
            return this.mHost.onShouldShowRequestPermissionRationale(string2);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        this.startActivity(intent, null);
    }

    public void startActivity(Intent intent, @Nullable Bundle bundle) {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.mHost.onStartActivityFromFragment(this, intent, -1, bundle);
    }

    public void startActivityForResult(Intent intent, int n2) {
        this.startActivityForResult(intent, n2, null);
    }

    public void startActivityForResult(Intent intent, int n2, @Nullable Bundle bundle) {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.mHost.onStartActivityFromFragment(this, intent, n2, bundle);
    }

    public void startIntentSenderForResult(IntentSender intentSender, int n2, @Nullable Intent intent, int n3, int n4, int n5, Bundle bundle) throws IntentSender.SendIntentException {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.mHost.onStartIntentSenderFromFragment(this, intentSender, n2, intent, n3, n4, n5, bundle);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        DebugUtils.buildShortClassTag(this, stringBuilder);
        if (this.mIndex >= 0) {
            stringBuilder.append(" #");
            stringBuilder.append(this.mIndex);
        }
        if (this.mFragmentId != 0) {
            stringBuilder.append(" id=0x");
            stringBuilder.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            stringBuilder.append(" ");
            stringBuilder.append(this.mTag);
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    public static class InstantiationException
    extends RuntimeException {
        public InstantiationException(String string2, Exception exception) {
            super(string2, exception);
        }
    }

    public static class SavedState
    implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>(){

            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            public SavedState[] newArray(int n2) {
                return new SavedState[n2];
            }
        };
        final Bundle mState;

        SavedState(Bundle bundle) {
            this.mState = bundle;
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            this.mState = parcel.readBundle();
            if (classLoader != null && this.mState != null) {
                this.mState.setClassLoader(classLoader);
            }
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int n2) {
            parcel.writeBundle(this.mState);
        }

    }

}

