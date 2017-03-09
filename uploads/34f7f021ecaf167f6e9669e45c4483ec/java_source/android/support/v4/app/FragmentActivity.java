/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentSender
 *  android.content.IntentSender$SendIntentException
 *  android.content.res.Configuration
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.Message
 *  android.os.Parcelable
 *  android.util.AttributeSet
 *  android.util.Log
 *  android.view.LayoutInflater
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.Window
 *  android.view.WindowManager
 *  android.view.WindowManager$LayoutParams
 */
package android.support.v4.app;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.ActivityCompatApi21;
import android.support.v4.app.ActivityCompatApi23;
import android.support.v4.app.ActivityCompatHoneycomb;
import android.support.v4.app.BaseFragmentActivityJB;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentController;
import android.support.v4.app.FragmentHostCallback;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManagerNonConfig;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.SharedElementCallback;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.util.SimpleArrayMap;
import android.support.v4.util.SparseArrayCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class FragmentActivity
extends BaseFragmentActivityJB
implements ActivityCompat.OnRequestPermissionsResultCallback,
ActivityCompatApi23.RequestPermissionsRequestCodeValidator {
    static final String ALLOCATED_REQUEST_INDICIES_TAG = "android:support:request_indicies";
    static final String FRAGMENTS_TAG = "android:support:fragments";
    private static final int HONEYCOMB = 11;
    static final int MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS = 65534;
    static final int MSG_REALLY_STOPPED = 1;
    static final int MSG_RESUME_PENDING = 2;
    static final String NEXT_CANDIDATE_REQUEST_INDEX_TAG = "android:support:next_request_index";
    static final String REQUEST_FRAGMENT_WHO_TAG = "android:support:request_fragment_who";
    private static final String TAG = "FragmentActivity";
    boolean mCreated;
    final FragmentController mFragments;
    final Handler mHandler;
    MediaControllerCompat mMediaController;
    int mNextCandidateRequestIndex;
    boolean mOptionsMenuInvalidated;
    SparseArrayCompat<String> mPendingFragmentActivityResults;
    boolean mReallyStopped;
    boolean mRequestedPermissionsFromFragment;
    boolean mResumed;
    boolean mRetaining;
    boolean mStopped;

    public FragmentActivity() {
        this.mHandler = new Handler(){

            /*
             * Enabled aggressive block sorting
             */
            public void handleMessage(Message message) {
                switch (message.what) {
                    default: {
                        super.handleMessage(message);
                        return;
                    }
                    case 1: {
                        if (!FragmentActivity.this.mStopped) return;
                        {
                            FragmentActivity.this.doReallyStop(false);
                            return;
                        }
                    }
                    case 2: 
                }
                FragmentActivity.this.onResumeFragments();
                FragmentActivity.this.mFragments.execPendingActions();
            }
        };
        this.mFragments = FragmentController.createController(new HostCallbacks());
    }

    private int allocateRequestIndex(Fragment fragment) {
        if (this.mPendingFragmentActivityResults.size() >= 65534) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (this.mPendingFragmentActivityResults.indexOfKey(this.mNextCandidateRequestIndex) >= 0) {
            this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % 65534;
        }
        int n2 = this.mNextCandidateRequestIndex;
        this.mPendingFragmentActivityResults.put(n2, fragment.mWho);
        this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % 65534;
        return n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void dumpViewHierarchy(String string2, PrintWriter printWriter, View view) {
        printWriter.print(string2);
        if (view == null) {
            printWriter.println("null");
            return;
        } else {
            int n2;
            printWriter.println(FragmentActivity.viewToString(view));
            if (!(view instanceof ViewGroup) || (n2 = (view = (ViewGroup)view).getChildCount()) <= 0) return;
            {
                string2 = string2 + "  ";
                int n3 = 0;
                while (n3 < n2) {
                    this.dumpViewHierarchy(string2, printWriter, view.getChildAt(n3));
                    ++n3;
                }
                return;
            }
        }
    }

    /*
     * Exception decompiling
     */
    private static String viewToString(View var0) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [7[CASE]], but top level block is 0[TRYBLOCK]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
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

    @Override
    final View dispatchFragmentsOnCreateView(View view, String string2, Context context, AttributeSet attributeSet) {
        return this.mFragments.onCreateView(view, string2, context, attributeSet);
    }

    /*
     * Enabled aggressive block sorting
     */
    void doReallyStop(boolean bl) {
        if (!this.mReallyStopped) {
            this.mReallyStopped = true;
            this.mRetaining = bl;
            this.mHandler.removeMessages(1);
            this.onReallyStop();
            return;
        } else {
            if (!bl) return;
            {
                this.mFragments.doLoaderStart();
                this.mFragments.doLoaderStop(true);
                return;
            }
        }
    }

    public void dump(String string2, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
        if (Build.VERSION.SDK_INT >= 11) {
            // empty if block
        }
        printWriter.print(string2);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String string3 = string2 + "  ";
        printWriter.print(string3);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print("mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.mReallyStopped);
        this.mFragments.dumpLoaders(string3, fileDescriptor, printWriter, arrstring);
        this.mFragments.getSupportFragmentManager().dump(string2, fileDescriptor, printWriter, arrstring);
        printWriter.print(string2);
        printWriter.println("View Hierarchy:");
        this.dumpViewHierarchy(string2 + "  ", printWriter, this.getWindow().getDecorView());
    }

    public Object getLastCustomNonConfigurationInstance() {
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances)this.getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null) {
            return nonConfigurationInstances.custom;
        }
        return null;
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mFragments.getSupportFragmentManager();
    }

    public LoaderManager getSupportLoaderManager() {
        return this.mFragments.getSupportLoaderManager();
    }

    public final MediaControllerCompat getSupportMediaController() {
        return this.mMediaController;
    }

    protected void onActivityResult(int n2, int n3, Intent intent) {
        this.mFragments.noteStateNotSaved();
        int n4 = n2 >> 16;
        if (n4 != 0) {
            String string2 = this.mPendingFragmentActivityResults.get(--n4);
            this.mPendingFragmentActivityResults.remove(n4);
            if (string2 == null) {
                Log.w((String)"FragmentActivity", (String)"Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment fragment = this.mFragments.findFragmentByWho(string2);
            if (fragment == null) {
                Log.w((String)"FragmentActivity", (String)("Activity result no fragment exists for who: " + string2));
                return;
            }
            fragment.onActivityResult(65535 & n2, n3, intent);
            return;
        }
        super.onActivityResult(n2, n3, intent);
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public void onBackPressed() {
        if (!this.mFragments.getSupportFragmentManager().popBackStackImmediate()) {
            super.onBackPressed();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.dispatchConfigurationChanged(configuration);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(@Nullable Bundle arrstring) {
        int[] arrn = null;
        this.mFragments.attachHost(null);
        super.onCreate((Bundle)arrstring);
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances)this.getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null) {
            this.mFragments.restoreLoaderNonConfig(nonConfigurationInstances.loaders);
        }
        if (arrstring != null) {
            Parcelable parcelable = arrstring.getParcelable("android:support:fragments");
            FragmentController fragmentController = this.mFragments;
            if (nonConfigurationInstances != null) {
                arrn = nonConfigurationInstances.fragments;
            }
            fragmentController.restoreAllState(parcelable, (FragmentManagerNonConfig)arrn);
            if (arrstring.containsKey("android:support:next_request_index")) {
                this.mNextCandidateRequestIndex = arrstring.getInt("android:support:next_request_index");
                arrn = arrstring.getIntArray("android:support:request_indicies");
                arrstring = arrstring.getStringArray("android:support:request_fragment_who");
                if (arrn == null || arrstring == null || arrn.length != arrstring.length) {
                    Log.w((String)"FragmentActivity", (String)"Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.mPendingFragmentActivityResults = new SparseArrayCompat(arrn.length);
                    for (int i2 = 0; i2 < arrn.length; ++i2) {
                        this.mPendingFragmentActivityResults.put(arrn[i2], arrstring[i2]);
                    }
                }
            }
        }
        if (this.mPendingFragmentActivityResults == null) {
            this.mPendingFragmentActivityResults = new SparseArrayCompat();
            this.mNextCandidateRequestIndex = 0;
        }
        this.mFragments.dispatchCreate();
    }

    public boolean onCreatePanelMenu(int n2, Menu menu2) {
        if (n2 == 0) {
            boolean bl = super.onCreatePanelMenu(n2, menu2);
            boolean bl2 = this.mFragments.dispatchCreateOptionsMenu(menu2, this.getMenuInflater());
            if (Build.VERSION.SDK_INT >= 11) {
                return bl | bl2;
            }
            return true;
        }
        return super.onCreatePanelMenu(n2, menu2);
    }

    protected void onDestroy() {
        super.onDestroy();
        this.doReallyStop(false);
        this.mFragments.dispatchDestroy();
        this.mFragments.doLoaderDestroy();
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.dispatchLowMemory();
    }

    public boolean onMenuItemSelected(int n2, MenuItem menuItem) {
        if (super.onMenuItemSelected(n2, menuItem)) {
            return true;
        }
        switch (n2) {
            default: {
                return false;
            }
            case 0: {
                return this.mFragments.dispatchOptionsItemSelected(menuItem);
            }
            case 6: 
        }
        return this.mFragments.dispatchContextItemSelected(menuItem);
    }

    @CallSuper
    public void onMultiWindowModeChanged(boolean bl) {
        this.mFragments.dispatchMultiWindowModeChanged(bl);
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.noteStateNotSaved();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onPanelClosed(int n2, Menu menu2) {
        switch (n2) {
            default: {
                break;
            }
            case 0: {
                this.mFragments.dispatchOptionsMenuClosed(menu2);
            }
        }
        super.onPanelClosed(n2, menu2);
    }

    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        if (this.mHandler.hasMessages(2)) {
            this.mHandler.removeMessages(2);
            this.onResumeFragments();
        }
        this.mFragments.dispatchPause();
    }

    @CallSuper
    public void onPictureInPictureModeChanged(boolean bl) {
        this.mFragments.dispatchPictureInPictureModeChanged(bl);
    }

    protected void onPostResume() {
        super.onPostResume();
        this.mHandler.removeMessages(2);
        this.onResumeFragments();
        this.mFragments.execPendingActions();
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    protected boolean onPrepareOptionsPanel(View view, Menu menu2) {
        return super.onPreparePanel(0, view, menu2);
    }

    public boolean onPreparePanel(int n2, View view, Menu menu2) {
        if (n2 == 0 && menu2 != null) {
            if (this.mOptionsMenuInvalidated) {
                this.mOptionsMenuInvalidated = false;
                menu2.clear();
                this.onCreatePanelMenu(n2, menu2);
            }
            return this.onPrepareOptionsPanel(view, menu2) | this.mFragments.dispatchPrepareOptionsMenu(menu2);
        }
        return super.onPreparePanel(n2, view, menu2);
    }

    void onReallyStop() {
        this.mFragments.doLoaderStop(this.mRetaining);
        this.mFragments.dispatchReallyStop();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void onRequestPermissionsResult(int n2, @NonNull String[] arrstring, @NonNull int[] arrn) {
        int n3 = n2 >> 16 & 65535;
        if (n3 == 0) return;
        String string2 = this.mPendingFragmentActivityResults.get(--n3);
        this.mPendingFragmentActivityResults.remove(n3);
        if (string2 == null) {
            Log.w((String)"FragmentActivity", (String)"Activity result delivered for unknown Fragment.");
            return;
        }
        Fragment fragment = this.mFragments.findFragmentByWho(string2);
        if (fragment == null) {
            Log.w((String)"FragmentActivity", (String)("Activity result no fragment exists for who: " + string2));
            return;
        }
        fragment.onRequestPermissionsResult(n2 & 65535, arrstring, arrn);
    }

    protected void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessage(2);
        this.mResumed = true;
        this.mFragments.execPendingActions();
    }

    protected void onResumeFragments() {
        this.mFragments.dispatchResume();
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    public final Object onRetainNonConfigurationInstance() {
        if (this.mStopped) {
            this.doReallyStop(true);
        }
        Object object = this.onRetainCustomNonConfigurationInstance();
        FragmentManagerNonConfig fragmentManagerNonConfig = this.mFragments.retainNestedNonConfig();
        SimpleArrayMap<String, LoaderManager> simpleArrayMap = this.mFragments.retainLoaderNonConfig();
        if (fragmentManagerNonConfig == null && simpleArrayMap == null && object == null) {
            return null;
        }
        NonConfigurationInstances nonConfigurationInstances = new NonConfigurationInstances();
        nonConfigurationInstances.custom = object;
        nonConfigurationInstances.fragments = fragmentManagerNonConfig;
        nonConfigurationInstances.loaders = simpleArrayMap;
        return nonConfigurationInstances;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        int[] arrn = this.mFragments.saveAllState();
        if (arrn != null) {
            bundle.putParcelable("android:support:fragments", (Parcelable)arrn);
        }
        if (this.mPendingFragmentActivityResults.size() > 0) {
            bundle.putInt("android:support:next_request_index", this.mNextCandidateRequestIndex);
            arrn = new int[this.mPendingFragmentActivityResults.size()];
            String[] arrstring = new String[this.mPendingFragmentActivityResults.size()];
            for (int i2 = 0; i2 < this.mPendingFragmentActivityResults.size(); ++i2) {
                arrn[i2] = this.mPendingFragmentActivityResults.keyAt(i2);
                arrstring[i2] = this.mPendingFragmentActivityResults.valueAt(i2);
            }
            bundle.putIntArray("android:support:request_indicies", arrn);
            bundle.putStringArray("android:support:request_fragment_who", arrstring);
        }
    }

    protected void onStart() {
        super.onStart();
        this.mStopped = false;
        this.mReallyStopped = false;
        this.mHandler.removeMessages(1);
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.dispatchActivityCreated();
        }
        this.mFragments.noteStateNotSaved();
        this.mFragments.execPendingActions();
        this.mFragments.doLoaderStart();
        this.mFragments.dispatchStart();
        this.mFragments.reportLoaderStart();
    }

    public void onStateNotSaved() {
        this.mFragments.noteStateNotSaved();
    }

    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        this.mHandler.sendEmptyMessage(1);
        this.mFragments.dispatchStop();
    }

    void requestPermissionsFromFragment(Fragment fragment, String[] arrstring, int n2) {
        if (n2 == -1) {
            ActivityCompat.requestPermissions(this, arrstring, n2);
            return;
        }
        FragmentActivity.checkForValidRequestCode(n2);
        try {
            this.mRequestedPermissionsFromFragment = true;
            ActivityCompat.requestPermissions(this, arrstring, (this.allocateRequestIndex(fragment) + 1 << 16) + (65535 & n2));
            return;
        }
        finally {
            this.mRequestedPermissionsFromFragment = false;
        }
    }

    public void setEnterSharedElementCallback(SharedElementCallback sharedElementCallback) {
        ActivityCompat.setEnterSharedElementCallback(this, sharedElementCallback);
    }

    public void setExitSharedElementCallback(SharedElementCallback sharedElementCallback) {
        ActivityCompat.setExitSharedElementCallback(this, sharedElementCallback);
    }

    public final void setSupportMediaController(MediaControllerCompat mediaControllerCompat) {
        this.mMediaController = mediaControllerCompat;
        if (Build.VERSION.SDK_INT >= 21) {
            ActivityCompatApi21.setMediaController(this, mediaControllerCompat.getMediaController());
        }
    }

    public void startActivityForResult(Intent intent, int n2) {
        if (!this.mStartedActivityFromFragment && n2 != -1) {
            FragmentActivity.checkForValidRequestCode(n2);
        }
        super.startActivityForResult(intent, n2);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int n2) {
        this.startActivityFromFragment(fragment, intent, n2, null);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int n2, @Nullable Bundle bundle) {
        this.mStartedActivityFromFragment = true;
        if (n2 == -1) {
            ActivityCompat.startActivityForResult(this, intent, -1, bundle);
            return;
        }
        try {
            FragmentActivity.checkForValidRequestCode(n2);
            ActivityCompat.startActivityForResult(this, intent, (this.allocateRequestIndex(fragment) + 1 << 16) + (65535 & n2), bundle);
            this.mStartedActivityFromFragment = false;
            return;
        }
        catch (Throwable var1_2) {
            throw var1_2;
        }
        finally {
            this.mStartedActivityFromFragment = false;
        }
    }

    public void startIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int n2, @Nullable Intent intent, int n3, int n4, int n5, Bundle bundle) throws IntentSender.SendIntentException {
        this.mStartedIntentSenderFromFragment = true;
        if (n2 == -1) {
            ActivityCompat.startIntentSenderForResult(this, intentSender, n2, intent, n3, n4, n5, bundle);
            return;
        }
        try {
            FragmentActivity.checkForValidRequestCode(n2);
            ActivityCompat.startIntentSenderForResult(this, intentSender, (this.allocateRequestIndex(fragment) + 1 << 16) + (65535 & n2), intent, n3, n4, n5, bundle);
            this.mStartedIntentSenderFromFragment = false;
            return;
        }
        catch (Throwable var1_2) {
            throw var1_2;
        }
        finally {
            this.mStartedIntentSenderFromFragment = false;
        }
    }

    public void supportFinishAfterTransition() {
        ActivityCompat.finishAfterTransition(this);
    }

    public void supportInvalidateOptionsMenu() {
        if (Build.VERSION.SDK_INT >= 11) {
            ActivityCompatHoneycomb.invalidateOptionsMenu(this);
            return;
        }
        this.mOptionsMenuInvalidated = true;
    }

    public void supportPostponeEnterTransition() {
        ActivityCompat.postponeEnterTransition(this);
    }

    public void supportStartPostponedEnterTransition() {
        ActivityCompat.startPostponedEnterTransition(this);
    }

    @Override
    public final void validateRequestPermissionsRequestCode(int n2) {
        if (!this.mRequestedPermissionsFromFragment && n2 != -1) {
            FragmentActivity.checkForValidRequestCode(n2);
        }
    }

    class HostCallbacks
    extends FragmentHostCallback<FragmentActivity> {
        public HostCallbacks() {
            super(FragmentActivity.this);
        }

        @Override
        public void onAttachFragment(Fragment fragment) {
            FragmentActivity.this.onAttachFragment(fragment);
        }

        @Override
        public void onDump(String string2, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
            FragmentActivity.this.dump(string2, fileDescriptor, printWriter, arrstring);
        }

        @Nullable
        @Override
        public View onFindViewById(int n2) {
            return FragmentActivity.this.findViewById(n2);
        }

        @Override
        public FragmentActivity onGetHost() {
            return FragmentActivity.this;
        }

        @Override
        public LayoutInflater onGetLayoutInflater() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext((Context)FragmentActivity.this);
        }

        @Override
        public int onGetWindowAnimations() {
            Window window = FragmentActivity.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override
        public boolean onHasView() {
            Window window = FragmentActivity.this.getWindow();
            if (window != null && window.peekDecorView() != null) {
                return true;
            }
            return false;
        }

        @Override
        public boolean onHasWindowAnimations() {
            if (FragmentActivity.this.getWindow() != null) {
                return true;
            }
            return false;
        }

        @Override
        public void onRequestPermissionsFromFragment(@NonNull Fragment fragment, @NonNull String[] arrstring, int n2) {
            FragmentActivity.this.requestPermissionsFromFragment(fragment, arrstring, n2);
        }

        @Override
        public boolean onShouldSaveFragmentState(Fragment fragment) {
            if (!FragmentActivity.this.isFinishing()) {
                return true;
            }
            return false;
        }

        @Override
        public boolean onShouldShowRequestPermissionRationale(@NonNull String string2) {
            return ActivityCompat.shouldShowRequestPermissionRationale(FragmentActivity.this, string2);
        }

        @Override
        public void onStartActivityFromFragment(Fragment fragment, Intent intent, int n2) {
            FragmentActivity.this.startActivityFromFragment(fragment, intent, n2);
        }

        @Override
        public void onStartActivityFromFragment(Fragment fragment, Intent intent, int n2, @Nullable Bundle bundle) {
            FragmentActivity.this.startActivityFromFragment(fragment, intent, n2, bundle);
        }

        @Override
        public void onStartIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int n2, @Nullable Intent intent, int n3, int n4, int n5, Bundle bundle) throws IntentSender.SendIntentException {
            FragmentActivity.this.startIntentSenderFromFragment(fragment, intentSender, n2, intent, n3, n4, n5, bundle);
        }

        @Override
        public void onSupportInvalidateOptionsMenu() {
            FragmentActivity.this.supportInvalidateOptionsMenu();
        }
    }

    static final class NonConfigurationInstances {
        Object custom;
        FragmentManagerNonConfig fragments;
        SimpleArrayMap<String, LoaderManager> loaders;

        NonConfigurationInstances() {
        }
    }

}

