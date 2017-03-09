/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentSender
 *  android.content.IntentSender$SendIntentException
 *  android.os.Bundle
 *  android.os.Handler
 *  android.view.LayoutInflater
 *  android.view.View
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentContainer;
import android.support.v4.app.FragmentManagerImpl;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManagerImpl;
import android.support.v4.util.SimpleArrayMap;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class FragmentHostCallback<E>
extends FragmentContainer {
    private final Activity mActivity;
    private SimpleArrayMap<String, LoaderManager> mAllLoaderManagers;
    private boolean mCheckedForLoaderManager;
    final Context mContext;
    final FragmentManagerImpl mFragmentManager = new FragmentManagerImpl();
    private final Handler mHandler;
    private LoaderManagerImpl mLoaderManager;
    private boolean mLoadersStarted;
    private boolean mRetainLoaders;
    final int mWindowAnimations;

    FragmentHostCallback(Activity activity, Context context, Handler handler, int n2) {
        this.mActivity = activity;
        this.mContext = context;
        this.mHandler = handler;
        this.mWindowAnimations = n2;
    }

    public FragmentHostCallback(Context context, Handler handler, int n2) {
        this(null, context, handler, n2);
    }

    FragmentHostCallback(FragmentActivity fragmentActivity) {
        this(fragmentActivity, (Context)fragmentActivity, fragmentActivity.mHandler, 0);
    }

    void doLoaderDestroy() {
        if (this.mLoaderManager == null) {
            return;
        }
        this.mLoaderManager.doDestroy();
    }

    void doLoaderRetain() {
        if (this.mLoaderManager == null) {
            return;
        }
        this.mLoaderManager.doRetain();
    }

    /*
     * Enabled aggressive block sorting
     */
    void doLoaderStart() {
        if (this.mLoadersStarted) {
            return;
        }
        this.mLoadersStarted = true;
        if (this.mLoaderManager != null) {
            this.mLoaderManager.doStart();
        } else if (!this.mCheckedForLoaderManager) {
            this.mLoaderManager = this.getLoaderManager("(root)", this.mLoadersStarted, false);
            if (this.mLoaderManager != null && !this.mLoaderManager.mStarted) {
                this.mLoaderManager.doStart();
            }
        }
        this.mCheckedForLoaderManager = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    void doLoaderStop(boolean bl) {
        this.mRetainLoaders = bl;
        if (this.mLoaderManager == null || !this.mLoadersStarted) {
            return;
        }
        this.mLoadersStarted = false;
        if (bl) {
            this.mLoaderManager.doRetain();
            return;
        }
        this.mLoaderManager.doStop();
    }

    void dumpLoaders(String string2, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
        printWriter.print(string2);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.mLoadersStarted);
        if (this.mLoaderManager != null) {
            printWriter.print(string2);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.mLoaderManager)));
            printWriter.println(":");
            this.mLoaderManager.dump(string2 + "  ", fileDescriptor, printWriter, arrstring);
        }
    }

    Activity getActivity() {
        return this.mActivity;
    }

    Context getContext() {
        return this.mContext;
    }

    FragmentManagerImpl getFragmentManagerImpl() {
        return this.mFragmentManager;
    }

    Handler getHandler() {
        return this.mHandler;
    }

    LoaderManagerImpl getLoaderManager(String string2, boolean bl, boolean bl2) {
        LoaderManagerImpl loaderManagerImpl;
        if (this.mAllLoaderManagers == null) {
            this.mAllLoaderManagers = new SimpleArrayMap();
        }
        if ((loaderManagerImpl = (LoaderManagerImpl)this.mAllLoaderManagers.get(string2)) == null) {
            if (bl2) {
                loaderManagerImpl = new LoaderManagerImpl(string2, this, bl);
                this.mAllLoaderManagers.put(string2, loaderManagerImpl);
            }
            return loaderManagerImpl;
        }
        loaderManagerImpl.updateHostController(this);
        return loaderManagerImpl;
    }

    LoaderManagerImpl getLoaderManagerImpl() {
        if (this.mLoaderManager != null) {
            return this.mLoaderManager;
        }
        this.mCheckedForLoaderManager = true;
        this.mLoaderManager = this.getLoaderManager("(root)", this.mLoadersStarted, true);
        return this.mLoaderManager;
    }

    boolean getRetainLoaders() {
        return this.mRetainLoaders;
    }

    void inactivateFragment(String string2) {
        LoaderManagerImpl loaderManagerImpl;
        if (this.mAllLoaderManagers != null && (loaderManagerImpl = (LoaderManagerImpl)this.mAllLoaderManagers.get(string2)) != null && !loaderManagerImpl.mRetaining) {
            loaderManagerImpl.doDestroy();
            this.mAllLoaderManagers.remove(string2);
        }
    }

    void onAttachFragment(Fragment fragment) {
    }

    public void onDump(String string2, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
    }

    @Nullable
    @Override
    public View onFindViewById(int n2) {
        return null;
    }

    @Nullable
    public abstract E onGetHost();

    public LayoutInflater onGetLayoutInflater() {
        return (LayoutInflater)this.mContext.getSystemService("layout_inflater");
    }

    public int onGetWindowAnimations() {
        return this.mWindowAnimations;
    }

    @Override
    public boolean onHasView() {
        return true;
    }

    public boolean onHasWindowAnimations() {
        return true;
    }

    public void onRequestPermissionsFromFragment(@NonNull Fragment fragment, @NonNull String[] arrstring, int n2) {
    }

    public boolean onShouldSaveFragmentState(Fragment fragment) {
        return true;
    }

    public boolean onShouldShowRequestPermissionRationale(@NonNull String string2) {
        return false;
    }

    public void onStartActivityFromFragment(Fragment fragment, Intent intent, int n2) {
        this.onStartActivityFromFragment(fragment, intent, n2, null);
    }

    public void onStartActivityFromFragment(Fragment fragment, Intent intent, int n2, @Nullable Bundle bundle) {
        if (n2 != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        this.mContext.startActivity(intent);
    }

    public void onStartIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int n2, @Nullable Intent intent, int n3, int n4, int n5, Bundle bundle) throws IntentSender.SendIntentException {
        if (n2 != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        ActivityCompat.startIntentSenderForResult(this.mActivity, intentSender, n2, intent, n3, n4, n5, bundle);
    }

    public void onSupportInvalidateOptionsMenu() {
    }

    void reportLoaderStart() {
        if (this.mAllLoaderManagers != null) {
            int n2;
            int n3 = this.mAllLoaderManagers.size();
            LoaderManagerImpl[] arrloaderManagerImpl = new LoaderManagerImpl[n3];
            for (n2 = n3 - 1; n2 >= 0; --n2) {
                arrloaderManagerImpl[n2] = (LoaderManagerImpl)this.mAllLoaderManagers.valueAt(n2);
            }
            for (n2 = 0; n2 < n3; ++n2) {
                LoaderManagerImpl loaderManagerImpl = arrloaderManagerImpl[n2];
                loaderManagerImpl.finishRetain();
                loaderManagerImpl.doReportStart();
            }
        }
    }

    void restoreLoaderNonConfig(SimpleArrayMap<String, LoaderManager> simpleArrayMap) {
        this.mAllLoaderManagers = simpleArrayMap;
    }

    /*
     * Enabled aggressive block sorting
     */
    SimpleArrayMap<String, LoaderManager> retainLoaderNonConfig() {
        int n2;
        int n3 = 0;
        int n4 = 0;
        if (this.mAllLoaderManagers == null) return null;
        int n5 = this.mAllLoaderManagers.size();
        LoaderManagerImpl[] arrloaderManagerImpl = new LoaderManagerImpl[n5];
        for (n2 = n5 - 1; n2 >= 0; --n2) {
            arrloaderManagerImpl[n2] = (LoaderManagerImpl)this.mAllLoaderManagers.valueAt(n2);
        }
        boolean bl = this.getRetainLoaders();
        n3 = 0;
        n2 = n4;
        n4 = n3;
        do {
            n3 = n2;
            if (n4 >= n5) break;
            LoaderManagerImpl loaderManagerImpl = arrloaderManagerImpl[n4];
            if (!loaderManagerImpl.mRetaining && bl) {
                if (!loaderManagerImpl.mStarted) {
                    loaderManagerImpl.doStart();
                }
                loaderManagerImpl.doRetain();
            }
            if (loaderManagerImpl.mRetaining) {
                n2 = 1;
            } else {
                loaderManagerImpl.doDestroy();
                this.mAllLoaderManagers.remove(loaderManagerImpl.mWho);
            }
            ++n4;
        } while (true);
        if (n3 != 0) {
            return this.mAllLoaderManagers;
        }
        return null;
    }
}

