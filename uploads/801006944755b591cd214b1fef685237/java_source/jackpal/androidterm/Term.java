/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.content.ActivityNotFoundException
 *  android.content.BroadcastReceiver
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.content.ServiceConnection
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$OnSharedPreferenceChangeListener
 *  android.content.pm.PackageManager
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.net.Uri
 *  android.net.wifi.WifiManager
 *  android.net.wifi.WifiManager$WifiLock
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.IBinder
 *  android.os.PowerManager
 *  android.os.PowerManager$WakeLock
 *  android.preference.PreferenceManager
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.view.ContextMenu
 *  android.view.ContextMenu$ContextMenuInfo
 *  android.view.Display
 *  android.view.GestureDetector
 *  android.view.GestureDetector$OnGestureListener
 *  android.view.GestureDetector$SimpleOnGestureListener
 *  android.view.KeyEvent
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$OnKeyListener
 *  android.view.ViewGroup
 *  android.view.Window
 *  android.view.WindowManager
 *  android.view.WindowManager$LayoutParams
 *  android.view.inputmethod.InputMethodManager
 *  android.widget.SpinnerAdapter
 *  android.widget.TextView
 *  android.widget.Toast
 */
package jackpal.androidterm;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ContextMenu;
import android.view.Display;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import jackpal.androidterm.GenericTermSession;
import jackpal.androidterm.ShellTermSession;
import jackpal.androidterm.TermPreferences;
import jackpal.androidterm.TermService;
import jackpal.androidterm.TermView;
import jackpal.androidterm.TermViewFlipper;
import jackpal.androidterm.WindowList;
import jackpal.androidterm.WindowListAdapter;
import jackpal.androidterm.compat.ActionBarCompat;
import jackpal.androidterm.compat.ActivityCompat;
import jackpal.androidterm.compat.AndroidCompat;
import jackpal.androidterm.compat.MenuItemCompat;
import jackpal.androidterm.emulatorview.EmulatorView;
import jackpal.androidterm.emulatorview.TermSession;
import jackpal.androidterm.emulatorview.UpdateCallback;
import jackpal.androidterm.emulatorview.compat.ClipboardManagerCompatFactory;
import jackpal.androidterm.util.SessionList;
import jackpal.androidterm.util.TermSettings;
import java.io.IOException;
import java.text.Collator;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class Term
extends Activity
implements UpdateCallback,
SharedPreferences.OnSharedPreferenceChangeListener {
    private static final String ACTION_PATH_BROADCAST = "jackpal.androidterm.broadcast.APPEND_TO_PATH";
    private static final String ACTION_PATH_PREPEND_BROADCAST = "jackpal.androidterm.broadcast.PREPEND_TO_PATH";
    private static final int COPY_ALL_ID = 1;
    public static final String EXTRA_WINDOW_ID = "jackpal.androidterm.window_id";
    private static final int FLAG_INCLUDE_STOPPED_PACKAGES = 32;
    private static final int PASTE_ID = 2;
    private static final String PERMISSION_PATH_BROADCAST = "jackpal.androidterm.permission.APPEND_TO_PATH";
    private static final String PERMISSION_PATH_PREPEND_BROADCAST = "jackpal.androidterm.permission.PREPEND_TO_PATH";
    public static final int REQUEST_CHOOSE_WINDOW = 1;
    private static final int SELECT_TEXT_ID = 0;
    private static final int SEND_CONTROL_KEY_ID = 3;
    private static final int SEND_FN_KEY_ID = 4;
    private static final int VIEW_FLIPPER = 2131165188;
    private static final int WIFI_MODE_FULL_HIGH_PERF = 3;
    private Intent TSIntent;
    private ActionBarCompat mActionBar;
    private int mActionBarMode;
    private boolean mAlreadyStarted = false;
    private boolean mBackKeyPressed;
    private Handler mHandler;
    private boolean mHaveFullHwKeyboard;
    private View.OnKeyListener mKeyListener;
    private BroadcastReceiver mPathReceiver;
    private int mPendingPathBroadcasts = 0;
    private ComponentName mPrivateAlias;
    private TermSettings mSettings;
    private boolean mStopServiceOnFinish = false;
    private ServiceConnection mTSConnection;
    private TermService mTermService;
    private SessionList mTermSessions;
    private boolean mUseKeyboardShortcuts;
    private TermViewFlipper mViewFlipper;
    private PowerManager.WakeLock mWakeLock;
    private WifiManager.WifiLock mWifiLock;
    private WindowListAdapter mWinListAdapter;
    private ActionBarCompat.OnNavigationListener mWinListItemSelected;
    private int onResumeSelectWindow = -1;

    public Term() {
        this.mPathReceiver = new BroadcastReceiver(){

            /*
             * Enabled aggressive block sorting
             */
            public void onReceive(Context object, Intent intent) {
                object = Term.this.makePathFromBundle(this.getResultExtras(false));
                if (intent.getAction().equals("jackpal.androidterm.broadcast.PREPEND_TO_PATH")) {
                    Term.this.mSettings.setPrependPath((String)object);
                } else {
                    Term.this.mSettings.setAppendPath((String)object);
                }
                Term.access$210(Term.this);
                if (Term.this.mPendingPathBroadcasts <= 0 && Term.this.mTermService != null) {
                    Term.this.populateViewFlipper();
                    Term.this.populateWindowList();
                }
            }
        };
        this.mTSConnection = new ServiceConnection(){

            public void onServiceConnected(ComponentName object, IBinder iBinder) {
                Log.i((String)"Term", (String)"Bound to TermService");
                object = (TermService.TSBinder)iBinder;
                Term.this.mTermService = object.getService();
                if (Term.this.mPendingPathBroadcasts <= 0) {
                    Term.this.populateViewFlipper();
                    Term.this.populateWindowList();
                }
            }

            public void onServiceDisconnected(ComponentName componentName) {
                Term.this.mTermService = null;
            }
        };
        this.mActionBarMode = 0;
        this.mWinListItemSelected = new ActionBarCompat.OnNavigationListener(){

            @Override
            public boolean onNavigationItemSelected(int n, long l) {
                if (n != Term.this.mViewFlipper.getDisplayedChild()) {
                    if (n >= Term.this.mViewFlipper.getChildCount()) {
                        Term.this.mViewFlipper.addView(Term.this.createEmulatorView((TermSession)Term.this.mTermSessions.get(n)));
                    }
                    Term.this.mViewFlipper.setDisplayedChild(n);
                    if (Term.this.mActionBarMode == 2) {
                        Term.this.mActionBar.hide();
                    }
                }
                return true;
            }
        };
        this.mHaveFullHwKeyboard = false;
        this.mKeyListener = new View.OnKeyListener(){

            private boolean backkeyInterceptor(int n, KeyEvent keyEvent) {
                if (n == 4 && Term.this.mActionBarMode == 2 && Term.this.mActionBar != null && Term.this.mActionBar.isShowing()) {
                    Term.this.onKeyUp(n, keyEvent);
                    return true;
                }
                return false;
            }

            /*
             * Enabled aggressive block sorting
             */
            private boolean keyboardShortcuts(int n, KeyEvent keyEvent) {
                if (keyEvent.getAction() != 0) {
                    return false;
                }
                if (!Term.this.mUseKeyboardShortcuts) return false;
                boolean bl = (keyEvent.getMetaState() & 4096) != 0;
                boolean bl2 = (keyEvent.getMetaState() & 1) != 0;
                if (n == 61 && bl) {
                    if (bl2) {
                        Term.this.mViewFlipper.showPrevious();
                        return true;
                    }
                    Term.this.mViewFlipper.showNext();
                    return true;
                }
                if (n == 42 && bl && bl2) {
                    Term.this.doCreateNewWindow();
                    return true;
                }
                if (n != 50) return false;
                if (!bl) return false;
                if (!bl2) return false;
                Term.this.doPaste();
                return true;
            }

            public boolean onKey(View view, int n, KeyEvent keyEvent) {
                if (this.backkeyInterceptor(n, keyEvent) || this.keyboardShortcuts(n, keyEvent)) {
                    return true;
                }
                return false;
            }
        };
        this.mHandler = new Handler();
    }

    static /* synthetic */ int access$210(Term term) {
        int n = term.mPendingPathBroadcasts;
        term.mPendingPathBroadcasts = n - 1;
        return n;
    }

    private boolean canPaste() {
        if (ClipboardManagerCompatFactory.getManager(this.getApplicationContext()).hasText()) {
            return true;
        }
        return false;
    }

    private boolean checkHaveFullHwKeyboard(Configuration configuration) {
        if (configuration.keyboard == 2 && configuration.hardKeyboardHidden == 1) {
            return true;
        }
        return false;
    }

    private void confirmCloseWindow() {
        AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
        builder.setIcon(17301543);
        builder.setMessage(2131296280);
        builder.setPositiveButton(17039379, new DialogInterface.OnClickListener(new Runnable(){

            @Override
            public void run() {
                Term.this.doCloseWindow();
            }
        }){
            final /* synthetic */ Runnable val$closeWindow;

            public void onClick(DialogInterface dialogInterface, int n) {
                dialogInterface.dismiss();
                Term.this.mHandler.post(this.val$closeWindow);
            }
        });
        builder.setNegativeButton(17039369, null);
        builder.show();
    }

    private TermView createEmulatorView(TermSession object) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        object = new TermView((Context)this, (TermSession)object, displayMetrics);
        object.setExtGestureListener((GestureDetector.OnGestureListener)new EmulatorViewGestureListener((EmulatorView)((Object)object)));
        object.setOnKeyListener(this.mKeyListener);
        this.registerForContextMenu((View)object);
        return object;
    }

    private TermSession createTermSession() throws IOException {
        Object object = this.mSettings;
        object = Term.createTermSession((Context)this, (TermSettings)object, object.getInitialCommand());
        object.setFinishCallback(this.mTermService);
        return object;
    }

    protected static TermSession createTermSession(Context context, TermSettings object, String string2) throws IOException {
        object = new ShellTermSession((TermSettings)object, string2);
        object.setProcessExitMessage(context.getString(2131296339));
        return object;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void doCloseWindow() {
        if (this.mTermSessions == null) {
            return;
        }
        EmulatorView emulatorView = this.getCurrentEmulatorView();
        if (emulatorView == null) return;
        TermSession termSession = this.mTermSessions.remove(this.mViewFlipper.getDisplayedChild());
        emulatorView.onPause();
        termSession.finish();
        this.mViewFlipper.removeView((View)emulatorView);
        if (this.mTermSessions.size() == 0) return;
        this.mViewFlipper.showNext();
    }

    private void doCopyAll() {
        ClipboardManagerCompatFactory.getManager(this.getApplicationContext()).setText(this.getCurrentTermSession().getTranscriptText().trim());
    }

    private void doCreateNewWindow() {
        if (this.mTermSessions == null) {
            Log.w((String)"Term", (String)"Couldn't create new window because mTermSessions == null");
            return;
        }
        try {
            Object object = this.createTermSession();
            this.mTermSessions.add((TermSession)object);
            object = this.createEmulatorView((TermSession)object);
            object.updatePrefs(this.mSettings);
            this.mViewFlipper.addView((View)object);
            this.mViewFlipper.setDisplayedChild(this.mViewFlipper.getChildCount() - 1);
            return;
        }
        catch (IOException var1_2) {
            Toast.makeText((Context)this, (CharSequence)"Failed to create a session", (int)0).show();
            return;
        }
    }

    private void doDocumentKeys() {
        AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
        Resources resources = this.getResources();
        builder.setTitle((CharSequence)resources.getString(2131296285));
        builder.setMessage((CharSequence)(this.formatMessage(this.mSettings.getControlKeyId(), 7, resources, 2131034112, 2131296282, 2131296281, "CTRLKEY") + "\n\n" + this.formatMessage(this.mSettings.getFnKeyId(), 7, resources, 2131034136, 2131296284, 2131296283, "FNKEY")));
        builder.show();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void doEmailTranscript() {
        TermSession termSession = this.getCurrentTermSession();
        if (termSession == null) return;
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse((String)("mailto:" + "user@example.com")));
        String string2 = this.getString(2131296306);
        String string3 = termSession.getTitle();
        String string4 = string2;
        if (string3 != null) {
            string4 = string2 + " - " + string3;
        }
        intent.putExtra("android.intent.extra.SUBJECT", string4);
        intent.putExtra("android.intent.extra.TEXT", termSession.getTranscriptText().trim());
        try {
            this.startActivity(Intent.createChooser((Intent)intent, (CharSequence)this.getString(2131296304)));
            return;
        }
        catch (ActivityNotFoundException var1_6) {
            Toast.makeText((Context)this, (int)2131296305, (int)1).show();
            return;
        }
    }

    private void doPaste() {
        if (!this.canPaste()) {
            return;
        }
        CharSequence charSequence = ClipboardManagerCompatFactory.getManager(this.getApplicationContext()).getText();
        this.getCurrentTermSession().write(charSequence.toString());
    }

    private void doPreferences() {
        this.startActivity(new Intent((Context)this, (Class)TermPreferences.class));
    }

    private void doResetTerminal() {
        TermSession termSession = this.getCurrentTermSession();
        if (termSession != null) {
            termSession.reset();
        }
    }

    private void doSendControlKey() {
        this.getCurrentEmulatorView().sendControlKey();
    }

    private void doSendFnKey() {
        this.getCurrentEmulatorView().sendFnKey();
    }

    private void doToggleActionBar() {
        ActionBarCompat actionBarCompat = this.mActionBar;
        if (actionBarCompat == null) {
            return;
        }
        if (actionBarCompat.isShowing()) {
            actionBarCompat.hide();
            return;
        }
        actionBarCompat.show();
    }

    private void doToggleSoftKeyboard() {
        ((InputMethodManager)this.getSystemService("input_method")).toggleSoftInput(2, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doToggleWakeLock() {
        if (this.mWakeLock.isHeld()) {
            this.mWakeLock.release();
        } else {
            this.mWakeLock.acquire();
        }
        ActivityCompat.invalidateOptionsMenu(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doToggleWifiLock() {
        if (this.mWifiLock.isHeld()) {
            this.mWifiLock.release();
        } else {
            this.mWifiLock.acquire();
        }
        ActivityCompat.invalidateOptionsMenu(this);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void doUIToggle(int var1_1, int var2_2, int var3_3, int var4_4) {
        switch (this.mActionBarMode) {
            case 0: {
                if (AndroidCompat.SDK >= 11 && (this.mHaveFullHwKeyboard || var2_2 < var4_4 / 2)) {
                    this.openOptionsMenu();
                    return;
                }
                this.doToggleSoftKeyboard();
                ** break;
            }
            case 1: {
                if (!this.mHaveFullHwKeyboard) {
                    this.doToggleSoftKeyboard();
                }
            }
lbl11: // 5 sources:
            default: {
                ** GOTO lbl18
            }
            case 2: 
        }
        if (this.mHaveFullHwKeyboard || var2_2 < var4_4 / 2) {
            this.doToggleActionBar();
            return;
        }
        this.doToggleSoftKeyboard();
lbl18: // 2 sources:
        this.getCurrentEmulatorView().requestFocus();
    }

    private void execURL(String string2) {
        string2 = new Intent("android.intent.action.VIEW", Uri.parse((String)string2));
        if (this.getPackageManager().queryIntentActivities((Intent)string2, 0).size() > 0) {
            this.startActivity((Intent)string2);
        }
    }

    private String formatMessage(int n, int n2, Resources resources, int n3, int n4, int n5, String string2) {
        if (n == n2) {
            return resources.getString(n5);
        }
        String string3 = resources.getStringArray(n3)[n];
        return resources.getString(n4).replaceAll(string2, string3);
    }

    private EmulatorView getCurrentEmulatorView() {
        return (EmulatorView)this.mViewFlipper.getCurrentView();
    }

    private TermSession getCurrentTermSession() {
        SessionList sessionList = this.mTermSessions;
        if (sessionList == null) {
            return null;
        }
        return (TermSession)sessionList.get(this.mViewFlipper.getDisplayedChild());
    }

    private String makePathFromBundle(Bundle bundle) {
        if (bundle == null || bundle.size() == 0) {
            return "";
        }
        String[] arrstring = new String[bundle.size()];
        arrstring = bundle.keySet().toArray(arrstring);
        Arrays.sort(arrstring, Collator.getInstance(Locale.US));
        StringBuilder stringBuilder = new StringBuilder();
        int n = arrstring.length;
        for (int i = 0; i < n; ++i) {
            String string2 = bundle.getString(arrstring[i]);
            if (string2 == null || string2.equals("")) continue;
            stringBuilder.append(string2);
            stringBuilder.append(":");
        }
        return stringBuilder.substring(0, stringBuilder.length() - 1);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void populateViewFlipper() {
        if (this.mTermService == null) return;
        this.mTermSessions = this.mTermService.getSessions();
        if (this.mTermSessions.size() == 0) {
            this.mTermSessions.add(this.createTermSession());
        }
        this.mTermSessions.addCallback(this);
        var1_1 = this.mTermSessions.iterator();
        while (var1_1.hasNext()) {
            var2_3 = this.createEmulatorView((TermSession)var1_1.next());
            this.mViewFlipper.addView(var2_3);
        }
        ** GOTO lbl17
        catch (IOException var1_2) {
            Toast.makeText((Context)this, (CharSequence)"Failed to start terminal session", (int)1).show();
            this.finish();
        }
        return;
lbl17: // 1 sources:
        this.updatePrefs();
        if (this.onResumeSelectWindow >= 0) {
            this.mViewFlipper.setDisplayedChild(this.onResumeSelectWindow);
            this.onResumeSelectWindow = -1;
        }
        this.mViewFlipper.onResume();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void populateWindowList() {
        if (this.mActionBar == null || this.mTermSessions == null) {
            return;
        }
        int n = this.mViewFlipper.getDisplayedChild();
        if (this.mWinListAdapter == null) {
            this.mWinListAdapter = new WindowListActionBarAdapter(this.mTermSessions);
            this.mActionBar.setListNavigationCallbacks((SpinnerAdapter)this.mWinListAdapter, this.mWinListItemSelected);
        } else {
            this.mWinListAdapter.setSessions(this.mTermSessions);
        }
        this.mViewFlipper.addCallback(this.mWinListAdapter);
        this.mActionBar.setSelectedNavigationItem(n);
    }

    private void restart() {
        this.startActivity(this.getIntent());
        this.finish();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updatePrefs() {
        this.mUseKeyboardShortcuts = this.mSettings.getUseKeyboardShortcutsFlag();
        Object object = new DisplayMetrics();
        this.getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)object);
        this.mViewFlipper.updatePrefs(this.mSettings);
        for (View view : this.mViewFlipper) {
            ((EmulatorView)view).setDensity((DisplayMetrics)object);
            ((TermView)view).updatePrefs(this.mSettings);
        }
        if (this.mTermSessions != null) {
            object = this.mTermSessions.iterator();
            while (object.hasNext()) {
                ((GenericTermSession)((TermSession)object.next())).updatePrefs(this.mSettings);
            }
        }
        object = this.getWindow();
        WindowManager.LayoutParams layoutParams = object.getAttributes();
        int n = this.mSettings.showStatusBar() ? 0 : 1024;
        if (n != (layoutParams.flags & 1024) || AndroidCompat.SDK >= 11 && this.mActionBarMode != this.mSettings.actionBarMode()) {
            if (this.mAlreadyStarted) {
                this.restart();
            } else {
                object.setFlags(n, 1024);
                if (this.mActionBarMode == 2 && this.mActionBar != null) {
                    this.mActionBar.hide();
                }
            }
        }
        int n2 = this.mSettings.getScreenOrientation();
        n = 0;
        if (n2 == 0) {
            n = -1;
        } else if (n2 == 1) {
            n = 0;
        } else if (n2 == 2) {
            n = 1;
        }
        this.setRequestedOrientation(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onActivityResult(int n, int n2, Intent intent) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                if (n2 == -1 && intent != null) {
                    n = intent.getIntExtra("jackpal.androidterm.window_id", -2);
                    if (n >= 0) {
                        this.onResumeSelectWindow = n;
                        return;
                    }
                    if (n != -1) return;
                    this.doCreateNewWindow();
                    this.onResumeSelectWindow = this.mTermSessions.size() - 1;
                    return;
                }
                if (this.mTermSessions != null && this.mTermSessions.size() != 0) return;
                this.mStopServiceOnFinish = true;
                this.finish();
                return;
            }
        }
    }

    public void onConfigurationChanged(Configuration object) {
        super.onConfigurationChanged((Configuration)object);
        this.mHaveFullHwKeyboard = this.checkHaveFullHwKeyboard((Configuration)object);
        object = (EmulatorView)this.mViewFlipper.getCurrentView();
        if (object != null) {
            object.updateSize(false);
        }
        if (this.mWinListAdapter != null) {
            this.mWinListAdapter.notifyDataSetChanged();
        }
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            default: {
                return super.onContextItemSelected(menuItem);
            }
            case 0: {
                this.getCurrentEmulatorView().toggleSelectingText();
                return true;
            }
            case 1: {
                this.doCopyAll();
                return true;
            }
            case 2: {
                this.doPaste();
                return true;
            }
            case 3: {
                this.doSendControlKey();
                return true;
            }
            case 4: 
        }
        this.doSendFnKey();
        return true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void onCreate(Bundle var1_1) {
        super.onCreate((Bundle)var1_1);
        Log.v((String)"Term", (String)"onCreate");
        this.mPrivateAlias = new ComponentName((Context)this, "jackpal.androidterm.TermInternal");
        if (var1_1 == null) {
            this.onNewIntent(this.getIntent());
        }
        var1_1 = PreferenceManager.getDefaultSharedPreferences((Context)this);
        this.mSettings = new TermSettings(this.getResources(), (SharedPreferences)var1_1);
        var1_1.registerOnSharedPreferenceChangeListener((SharedPreferences.OnSharedPreferenceChangeListener)this);
        var1_1 = new Intent("jackpal.androidterm.broadcast.APPEND_TO_PATH");
        if (AndroidCompat.SDK >= 12) {
            var1_1.addFlags(32);
        }
        ++this.mPendingPathBroadcasts;
        this.sendOrderedBroadcast((Intent)var1_1, "jackpal.androidterm.permission.APPEND_TO_PATH", this.mPathReceiver, null, -1, null, null);
        var1_1 = new Intent((Intent)var1_1);
        var1_1.setAction("jackpal.androidterm.broadcast.PREPEND_TO_PATH");
        ++this.mPendingPathBroadcasts;
        this.sendOrderedBroadcast((Intent)var1_1, "jackpal.androidterm.permission.PREPEND_TO_PATH", this.mPathReceiver, null, -1, null, null);
        this.TSIntent = new Intent((Context)this, (Class)TermService.class);
        this.startService(this.TSIntent);
        if (AndroidCompat.SDK < 11) ** GOTO lbl32
        this.mActionBarMode = var2_2 = this.mSettings.actionBarMode();
        if (!AndroidCompat.V11ToV20) ** GOTO lbl33
        switch (var2_2) {
            case 1: {
                this.setTheme(2131361793);
            }
            default: {
                ** GOTO lbl33
            }
            case 2: 
        }
        this.setTheme(2131361794);
        ** GOTO lbl33
lbl32: // 1 sources:
        this.mActionBarMode = 1;
lbl33: // 4 sources:
        this.setContentView(2130903040);
        this.mViewFlipper = (TermViewFlipper)this.findViewById(2131165188);
        this.mWakeLock = ((PowerManager)this.getSystemService("power")).newWakeLock(1, "Term");
        var1_1 = (WifiManager)this.getSystemService("wifi");
        var2_2 = 1;
        if (AndroidCompat.SDK >= 12) {
            var2_2 = 3;
        }
        this.mWifiLock = var1_1.createWifiLock(var2_2, "Term");
        var1_1 = ActivityCompat.getActionBar(this);
        if (var1_1 != null) {
            this.mActionBar = var1_1;
            var1_1.setNavigationMode(1);
            var1_1.setDisplayOptions(0, 8);
            if (this.mActionBarMode == 2) {
                var1_1.hide();
            }
        }
        this.mHaveFullHwKeyboard = this.checkHaveFullHwKeyboard(this.getResources().getConfiguration());
        this.updatePrefs();
        this.mAlreadyStarted = true;
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        contextMenu.setHeaderTitle(2131296303);
        contextMenu.add(0, 0, 0, 2131296343);
        contextMenu.add(0, 1, 0, 2131296286);
        contextMenu.add(0, 2, 0, 2131296318);
        contextMenu.add(0, 3, 0, 2131296344);
        contextMenu.add(0, 4, 0, 2131296346);
        if (!this.canPaste()) {
            contextMenu.getItem(2).setEnabled(false);
        }
    }

    public boolean onCreateOptionsMenu(Menu menu2) {
        this.getMenuInflater().inflate(2131492864, menu2);
        MenuItemCompat.setShowAsAction(menu2.findItem(2131165192), 2);
        MenuItemCompat.setShowAsAction(menu2.findItem(2131165193), 1);
        return true;
    }

    public void onDestroy() {
        super.onDestroy();
        PreferenceManager.getDefaultSharedPreferences((Context)this).unregisterOnSharedPreferenceChangeListener((SharedPreferences.OnSharedPreferenceChangeListener)this);
        if (this.mStopServiceOnFinish) {
            this.stopService(this.TSIntent);
        }
        this.mTermService = null;
        this.mTSConnection = null;
        if (this.mWakeLock.isHeld()) {
            this.mWakeLock.release();
        }
        if (this.mWifiLock.isHeld()) {
            this.mWifiLock.release();
        }
    }

    public boolean onKeyDown(int n, KeyEvent keyEvent) {
        if (AndroidCompat.SDK < 5 && n == 4) {
            this.mBackKeyPressed = true;
            return true;
        }
        return super.onKeyDown(n, keyEvent);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean onKeyUp(int n, KeyEvent keyEvent) {
        boolean bl = false;
        switch (n) {
            default: {
                return super.onKeyUp(n, keyEvent);
            }
            case 4: {
                if (AndroidCompat.SDK < 5) {
                    if (!this.mBackKeyPressed) return bl;
                    this.mBackKeyPressed = false;
                }
                if (this.mActionBarMode == 2 && this.mActionBar != null && this.mActionBar.isShowing()) {
                    this.mActionBar.hide();
                    return true;
                }
                switch (this.mSettings.getBackKeyAction()) {
                    default: {
                        return false;
                    }
                    case 0: {
                        this.mStopServiceOnFinish = true;
                    }
                    case 2: {
                        this.finish();
                        return true;
                    }
                    case 1: 
                }
                this.doCloseWindow();
                return true;
            }
            case 82: 
        }
        if (this.mActionBar == null) return super.onKeyUp(n, keyEvent);
        if (this.mActionBar.isShowing()) return super.onKeyUp(n, keyEvent);
        this.mActionBar.show();
        return true;
    }

    /*
     * Exception decompiling
     */
    protected void onNewIntent(Intent var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Extractable last case doesn't follow previous
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:486)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:65)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:425)
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

    /*
     * Enabled aggressive block sorting
     */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int n = menuItem.getItemId();
        if (n == 2131165197) {
            this.doPreferences();
        } else if (n == 2131165192) {
            this.doCreateNewWindow();
        } else if (n == 2131165193) {
            this.confirmCloseWindow();
        } else if (n == 2131165194) {
            this.startActivityForResult(new Intent((Context)this, (Class)WindowList.class), 1);
        } else if (n == 2131165198) {
            this.doResetTerminal();
            Toast toast = Toast.makeText((Context)this, (int)2131296341, (int)1);
            toast.setGravity(17, 0, 0);
            toast.show();
        } else if (n == 2131165199) {
            this.doEmailTranscript();
        } else if (n == 2131165196) {
            this.doDocumentKeys();
        } else if (n == 2131165195) {
            this.doToggleSoftKeyboard();
        } else if (n == 2131165200) {
            this.doToggleWakeLock();
        } else if (n == 2131165201) {
            this.doToggleWifiLock();
        } else if (n == 2131165202) {
            this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse((String)this.getString(2131296314))));
        }
        if (this.mActionBarMode == 2) {
            this.mActionBar.hide();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void onPause() {
        super.onPause();
        if (AndroidCompat.SDK < 5) {
            this.mBackKeyPressed = false;
        }
        new Thread(this.mViewFlipper.getWindowToken()){
            final /* synthetic */ IBinder val$token;

            @Override
            public void run() {
                ((InputMethodManager)Term.this.getSystemService("input_method")).hideSoftInputFromWindow(this.val$token, 0);
            }
        }.start();
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onPrepareOptionsMenu(Menu menu2) {
        MenuItem menuItem = menu2.findItem(2131165200);
        MenuItem menuItem2 = menu2.findItem(2131165201);
        if (this.mWakeLock.isHeld()) {
            menuItem.setTitle(2131296301);
        } else {
            menuItem.setTitle(2131296307);
        }
        if (this.mWifiLock.isHeld()) {
            menuItem2.setTitle(2131296302);
            return super.onPrepareOptionsMenu(menu2);
        }
        menuItem2.setTitle(2131296308);
        return super.onPrepareOptionsMenu(menu2);
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String string2) {
        this.mSettings.readPrefs(sharedPreferences);
    }

    protected void onStart() {
        super.onStart();
        if (!this.bindService(this.TSIntent, this.mTSConnection, 1)) {
            throw new IllegalStateException("Failed to bind to TermService!");
        }
    }

    protected void onStop() {
        this.mViewFlipper.onPause();
        if (this.mTermSessions != null) {
            this.mTermSessions.removeCallback(this);
            if (this.mWinListAdapter != null) {
                this.mTermSessions.removeCallback(this.mWinListAdapter);
                this.mTermSessions.removeTitleChangedListener(this.mWinListAdapter);
                this.mViewFlipper.removeCallback(this.mWinListAdapter);
            }
        }
        this.mViewFlipper.removeAllViews();
        this.unbindService(this.mTSConnection);
        super.onStop();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onUpdate() {
        SessionList sessionList = this.mTermSessions;
        if (sessionList == null) {
            return;
        }
        if (sessionList.size() == 0) {
            this.mStopServiceOnFinish = true;
            this.finish();
            return;
        }
        if (sessionList.size() >= this.mViewFlipper.getChildCount()) return;
        int n = 0;
        while (n < this.mViewFlipper.getChildCount()) {
            EmulatorView emulatorView = (EmulatorView)this.mViewFlipper.getChildAt(n);
            int n2 = n;
            if (!sessionList.contains(emulatorView.getTermSession())) {
                emulatorView.onPause();
                this.mViewFlipper.removeView((View)emulatorView);
                n2 = n - 1;
            }
            n = n2 + 1;
        }
    }

    private class EmulatorViewGestureListener
    extends GestureDetector.SimpleOnGestureListener {
        private EmulatorView view;

        public EmulatorViewGestureListener(EmulatorView emulatorView) {
            this.view = emulatorView;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            float f3 = Math.abs(f);
            if ((double)f3 <= Math.max(1000.0, 2.0 * (double)(f2 = Math.abs(f2)))) return false;
            if (f > 0.0f) {
                Term.this.mViewFlipper.showPrevious();
                do {
                    return true;
                    break;
                } while (true);
            }
            Term.this.mViewFlipper.showNext();
            return true;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (this.view.isMouseTrackingActive()) {
                return false;
            }
            String string2 = this.view.getURLat(motionEvent.getX(), motionEvent.getY());
            if (string2 != null) {
                Term.this.execURL(string2);
                do {
                    return true;
                    break;
                } while (true);
            }
            Term.this.doUIToggle((int)motionEvent.getX(), (int)motionEvent.getY(), this.view.getVisibleWidth(), this.view.getVisibleHeight());
            return true;
        }
    }

    private class WindowListActionBarAdapter
    extends WindowListAdapter
    implements UpdateCallback {
        private static final int TextAppearance_Holo_Widget_ActionBar_Title = 16974098;

        public WindowListActionBarAdapter(SessionList sessionList) {
            super(sessionList);
        }

        public View getDropDownView(int n, View view, ViewGroup viewGroup) {
            return super.getView(n, view, viewGroup);
        }

        @Override
        public View getView(int n, View view, ViewGroup viewGroup) {
            view = new TextView((Context)Term.this);
            view.setText((CharSequence)this.getSessionTitle(n, Term.this.getString(2131296398, new Object[]{n + 1})));
            if (AndroidCompat.SDK >= 13) {
                view.setTextAppearance((Context)Term.this, 16974098);
                return view;
            }
            view.setTextAppearance((Context)Term.this, 16973892);
            return view;
        }

        @Override
        public void onUpdate() {
            this.notifyDataSetChanged();
            Term.this.mActionBar.setSelectedNavigationItem(Term.this.mViewFlipper.getDisplayedChild());
        }
    }

}

