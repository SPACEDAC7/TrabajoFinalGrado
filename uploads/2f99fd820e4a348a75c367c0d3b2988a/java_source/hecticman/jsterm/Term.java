/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.content.BroadcastReceiver
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.content.ServiceConnection
 *  android.content.SharedPreferences
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$CompressFormat
 *  android.net.Uri
 *  android.net.wifi.WifiManager
 *  android.net.wifi.WifiManager$WifiLock
 *  android.os.Bundle
 *  android.os.Environment
 *  android.os.Handler
 *  android.os.IBinder
 *  android.os.PowerManager
 *  android.os.PowerManager$WakeLock
 *  android.preference.PreferenceManager
 *  android.text.ClipboardManager
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
package hecticman.jsterm;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.text.ClipboardManager;
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
import hecticman.jsterm.ShellTermSession;
import hecticman.jsterm.TermPreferences;
import hecticman.jsterm.TermService;
import hecticman.jsterm.TermView;
import hecticman.jsterm.TermViewFlipper;
import hecticman.jsterm.WindowList;
import hecticman.jsterm.WindowListAdapter;
import hecticman.jsterm.compat.ActionBarCompat;
import hecticman.jsterm.compat.ActivityCompat;
import hecticman.jsterm.compat.AndroidCompat;
import hecticman.jsterm.compat.MenuItemCompat;
import hecticman.jsterm.emulatorview.EmulatorView;
import hecticman.jsterm.emulatorview.TermSession;
import hecticman.jsterm.emulatorview.UpdateCallback;
import hecticman.jsterm.util.SessionList;
import hecticman.jsterm.util.TermSettings;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.Collator;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

public class Term
extends Activity
implements UpdateCallback {
    private static final String ACTION_PATH_BROADCAST = "hecticman.jsterm.broadcast.APPEND_TO_PATH";
    private static final String ACTION_PATH_PREPEND_BROADCAST = "hecticman.jsterm.broadcast.PREPEND_TO_PATH";
    private static final int COMMAND_HISTORY = 5;
    private static final int COPY_ALL_ID = 1;
    public static final String EXTRA_WINDOW_ID = "hecticman.jsterm.window_id";
    private static final int FLAG_INCLUDE_STOPPED_PACKAGES = 32;
    private static final int MAGICNUMBER_BACKSPACE = 127;
    private static final int MAX_COMMANDS_HISTORY = 100;
    private static final int PASTE_ID = 2;
    private static final String PERMISSION_PATH_BROADCAST = "hecticman.jsterm.permission.APPEND_TO_PATH";
    private static final String PERMISSION_PATH_PREPEND_BROADCAST = "hecticman.jsterm.permission.PREPEND_TO_PATH";
    public static final int REQUEST_CHOOSE_WINDOW = 1;
    private static final int SELECT_TEXT_ID = 0;
    private static final int SEND_CONTROL_KEY_ID = 3;
    private static final int SEND_FN_KEY_ID = 4;
    private static final int VIEW_FLIPPER = 2131492872;
    private static final int WIFI_MODE_FULL_HIGH_PERF = 3;
    private Intent TSIntent;
    private ActionBarCompat mActionBar;
    private int mActionBarMode;
    private boolean mAlreadyStarted = false;
    private View.OnKeyListener mBackKeyListener;
    private boolean mBackKeyPressed;
    private SharedPreferences mColorPrefs;
    private Handler mHandler;
    private boolean mHaveFullHwKeyboard;
    private Intent mLastNewIntent;
    private BroadcastReceiver mPathReceiver;
    private int mPendingPathBroadcasts = 0;
    private SharedPreferences mPrefs;
    private TermSettings mSettings;
    private boolean mStopServiceOnFinish = false;
    private ServiceConnection mTSConnection;
    private TermService mTermService;
    private SessionList mTermSessions;
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
                if (intent.getAction().equals("hecticman.jsterm.broadcast.PREPEND_TO_PATH")) {
                    Term.this.mSettings.setPrependPath((String)object);
                } else {
                    Term.this.mSettings.setAppendPath((String)object);
                }
                object = Term.this;
                Term.access$3((Term)object, ((Term)object).mPendingPathBroadcasts - 1);
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
                Term.access$7(Term.this, object.getService());
                if (Term.this.mPendingPathBroadcasts <= 0) {
                    Term.this.populateViewFlipper();
                    Term.this.populateWindowList();
                }
            }

            public void onServiceDisconnected(ComponentName componentName) {
                Term.access$7(Term.this, null);
            }
        };
        this.mActionBarMode = 0;
        this.mWinListItemSelected = new ActionBarCompat.OnNavigationListener(){

            @Override
            public boolean onNavigationItemSelected(int n, long l) {
                if (n != Term.this.mViewFlipper.getDisplayedChild()) {
                    Term.this.mViewFlipper.setDisplayedChild(n);
                    if (Term.this.mActionBarMode == 2) {
                        Term.this.mActionBar.hide();
                    }
                }
                return true;
            }
        };
        this.mHaveFullHwKeyboard = false;
        this.mBackKeyListener = new View.OnKeyListener(){

            public boolean onKey(View view, int n, KeyEvent keyEvent) {
                if (n == 4 && Term.this.mActionBarMode == 2 && Term.this.mActionBar.isShowing()) {
                    Term.this.onKeyUp(n, keyEvent);
                    return true;
                }
                return false;
            }
        };
        this.mHandler = new Handler();
    }

    static /* synthetic */ void access$3(Term term, int n) {
        term.mPendingPathBroadcasts = n;
    }

    static /* synthetic */ void access$7(Term term, TermService termService) {
        term.mTermService = termService;
    }

    private boolean canPaste() {
        if (((ClipboardManager)this.getSystemService("clipboard")).hasText()) {
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
        builder.setMessage(2131165316);
        builder.setPositiveButton(17039379, new DialogInterface.OnClickListener(new Runnable(){

            @Override
            public void run() {
                Term.this.doCloseWindow();
            }
        }){
            private final /* synthetic */ Runnable val$closeWindow;

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
        object.setOnKeyListener(this.mBackKeyListener);
        this.registerForContextMenu((View)object);
        return object;
    }

    private TermSession createTermSession() {
        Object object = this.mSettings;
        object = Term.createTermSession((Context)this, (TermSettings)object, object.getInitialCommand());
        object.setFinishCallback(this.mTermService);
        return object;
    }

    protected static TermSession createTermSession(Context context, TermSettings object, String string2) {
        object = new ShellTermSession((TermSettings)object, string2);
        object.setProcessExitMessage(context.getString(2131165232));
        return object;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void doCaptureScreen() {
        Object object = this.getCurrentEmulatorView();
        Resources resources = this.getResources();
        object.setDrawingCacheEnabled(true);
        object.buildDrawingCache();
        Bitmap bitmap = object.getDrawingCache();
        Log.e((String)"------------", (String)((Object)bitmap + "-------"));
        Object object2 = new SimpleDateFormat("yy-MM-dd-hh-mm-ss").format(new Date());
        object = this.mSettings.getStoreLocation() == 0 ? Environment.getExternalStorageDirectory().getAbsolutePath() : this.doFindSD();
        File file = new File((String)(object = String.valueOf(object) + "/JSTerm"));
        if (!file.exists()) {
            file.mkdirs();
        }
        object2 = new File(String.valueOf(object) + "/" + (String)object2 + ".jpg");
        try {
            object = String.format(resources.getString(2131165209), object2.getAbsolutePath());
            object2 = new FileOutputStream((File)object2);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 70, (OutputStream)object2);
            object2.close();
            Toast.makeText((Context)this.getApplicationContext(), (CharSequence)object, (int)0).show();
            return;
        }
        catch (FileNotFoundException var1_2) {
            var1_2.printStackTrace();
            Toast.makeText((Context)this.getApplicationContext(), (CharSequence)resources.getString(2131165210), (int)0).show();
            return;
        }
        catch (IOException var1_3) {
            var1_3.printStackTrace();
            Toast.makeText((Context)this.getApplicationContext(), (CharSequence)resources.getString(2131165211), (int)0).show();
            return;
        }
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
        if (this.mTermSessions.size() == 0) {
            this.mStopServiceOnFinish = true;
            this.finish();
        } else {
            this.mViewFlipper.showNext();
        }
        if (this.mTermService == null) return;
        this.mTermService.updateNotification();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void doCommandHistory() {
        block14 : {
            var2_1 = this.getResources();
            var3_2 = this.getCurrentTermSession();
            if (var3_2 == null) {
                Toast.makeText((Context)this, (CharSequence)var2_1.getString(2131165229), (int)1);
                return;
            }
            var4_3 = new String(var3_2.readCommands()).split("\r");
            var9_4 = var4_3.length - 1;
            var6_5 = 0;
            var10_6 = var4_3.length;
            var7_7 = 0;
            block0 : do {
                if (var7_7 >= var10_6) {
                    if (var6_5 < 100) {
                    } else {
                        var6_5 = 100;
                    }
                    var5_11 = new CharSequence[var6_5];
                    var7_7 = 0;
                    var6_5 = 0;
lbl19: // 2 sources:
                    if (var6_5 >= var9_4 || var6_5 >= 100) {
                        var3_2.setCmdItems(var5_11);
                        var1_8 = new AlertDialog.Builder((Context)this);
                        var1_8.setTitle((CharSequence)var2_1.getString(2131165228));
                        var1_8.setItems(var5_11, new DialogInterface.OnClickListener(){

                            public void onClick(DialogInterface object, int n) {
                                object = Term.this.getCurrentTermSession();
                                object.write(object.getCmdItems()[n].toString());
                            }
                        });
                        var1_8.setNegativeButton((CharSequence)var2_1.getString(2131165215), null);
                        var1_8.show();
                        return;
                    }
                    if (var4_3[var9_4 - var6_5 - 1].trim().length() == 0) {
                        var8_9 = var7_7;
                        break;
                    }
                    break block14;
                }
                var1_8 = var4_3[var7_7];
                do {
                    if ((var11_10 = var1_8.indexOf(127)) <= -1) {
                        var8_9 = var6_5;
                        if (var1_8.length() != 0) {
                            var8_9 = var6_5;
                            if (var1_8.trim().length() > 0) {
                                var8_9 = var6_5 + 1;
                            }
                        }
                        ++var7_7;
                        var6_5 = var8_9;
                        continue block0;
                    }
                    var8_9 = var11_10 - 1 < 0 ? 0 : var11_10 - 1;
                    var1_8 = String.valueOf(var1_8.substring(0, var8_9)) + var1_8.substring(var11_10 + 1);
                } while (true);
                break;
            } while (true);
lbl45: // 3 sources:
            do {
                ++var6_5;
                var7_7 = var8_9;
                ** GOTO lbl19
                break;
            } while (true);
        }
        var5_11[var7_7] = var4_3[var9_4 - var6_5 - 1];
        var1_8 = var5_11[var7_7].toString();
        do {
            if ((var10_6 = var1_8.indexOf(127)) > -1) ** GOTO lbl59
            var8_9 = var7_7;
            if (var1_8.length() <= 0) ** GOTO lbl45
            var5_11[var7_7] = var1_8;
            var8_9 = var7_7 + 1;
            ** continue;
lbl59: // 1 sources:
            var8_9 = var10_6 - 1 < 0 ? 0 : var10_6 - 1;
            var1_8 = String.valueOf(var1_8.substring(0, var8_9)) + var1_8.substring(var10_6 + 1);
        } while (true);
    }

    private void doCopyAll() {
        ((ClipboardManager)this.getSystemService("clipboard")).setText((CharSequence)this.getCurrentTermSession().getTranscriptText().trim());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doCreateNewWindow() {
        if (this.mTermSessions == null) {
            Log.w((String)"Term", (String)"Couldn't create new window because mTermSessions == null");
            return;
        } else {
            Object object = this.createTermSession();
            this.mTermSessions.add((TermSession)object);
            object = this.createEmulatorView((TermSession)object);
            object.updatePrefs(this.mSettings);
            this.mViewFlipper.addView((View)object);
            this.mViewFlipper.setDisplayedChild(this.mViewFlipper.getChildCount() - 1);
            if (this.mTermService == null) return;
            {
                this.mTermService.updateNotification();
                return;
            }
        }
    }

    private void doDocumentKeys() {
        AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
        Resources resources = this.getResources();
        builder.setTitle((CharSequence)resources.getString(2131165311));
        builder.setMessage((CharSequence)(String.valueOf(this.formatMessage(this.mSettings.getControlKeyId(), 7, resources, 2131099668, 2131165312, 2131165313, "CTRLKEY")) + "\n\n" + this.formatMessage(this.mSettings.getFnKeyId(), 7, resources, 2131099669, 2131165314, 2131165315, "FNKEY")));
        builder.show();
    }

    private void doEmailTranscript() {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse((String)("mailto:" + "user@example.com")));
        intent.putExtra("body", this.getCurrentTermSession().getTranscriptText().trim());
        this.startActivity(intent);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private String doFindSD() {
        var3_1 = this.getResources().getStringArray(2131099671);
        var4_2 = Environment.getExternalStorageDirectory().getAbsolutePath();
        var9_3 = var3_1.length;
        var7_4 = 0;
        block0 : do {
            if (var7_4 < var9_3) ** GOTO lbl12
            var5_7 = Environment.getExternalStorageDirectory().getAbsolutePath();
            if (var5_7.equals("/mnt")) ** GOTO lbl-1000
            var9_3 = var3_1.length;
            var7_4 = 0;
            ** GOTO lbl18
lbl12: // 1 sources:
            var5_7 = var3_1[var7_4];
            var2_6 = String.valueOf("/mnt") + var5_7;
            if (var4_2.compareToIgnoreCase(var2_6) == 0) ** GOTO lbl28
            var1_5 = var2_6;
            if (this.mTestPath(var2_6) != false) return var1_5;
            ** GOTO lbl28
lbl18: // 2 sources:
            if (var7_4 >= var9_3) lbl-1000: // 2 sources:
            {
                if (this.mTestPath(var1_5 = Environment.getExternalStorageDirectory().getAbsolutePath()) == false) return null;
                return var1_5;
            }
            var6_10 = var3_1[var7_4];
            var2_6 = String.valueOf(var5_7) + var6_10;
            if (var4_2.compareToIgnoreCase(var2_6) != 0) {
                var1_5 = var2_6;
                if (this.mTestPath(var2_6) != false) return var1_5;
                break;
            }
            break;
lbl28: // 2 sources:
            var10_9 = var3_1.length;
            var8_8 = 0;
            do {
                if (var8_8 >= var10_9) {
                    ++var7_4;
                    continue block0;
                }
                var1_5 = var3_1[var8_8];
                var2_6 = String.valueOf("/mnt") + var5_7 + var1_5;
                if (var4_2.compareToIgnoreCase(var2_6) != 0) {
                    var1_5 = var2_6;
                    if (this.mTestPath(var2_6) != false) return var1_5;
                }
                ++var8_8;
            } while (true);
            break;
        } while (true);
        var10_9 = var3_1.length;
        var8_8 = 0;
        do {
            if (var8_8 < var10_9) ** GOTO lbl47
            ++var7_4;
            ** GOTO lbl18
lbl47: // 1 sources:
            var1_5 = var3_1[var8_8];
            var2_6 = String.valueOf(var5_7) + var6_10 + var1_5;
            if (var4_2.compareToIgnoreCase(var2_6) != 0) {
                var1_5 = var2_6;
                if (this.mTestPath(var2_6) != false) return var1_5;
            }
            ++var8_8;
        } while (true);
    }

    private void doPaste() {
        CharSequence charSequence = ((ClipboardManager)this.getSystemService("clipboard")).getText();
        try {
            charSequence.toString().getBytes("UTF-8");
            this.getCurrentTermSession().write(charSequence.toString());
            return;
        }
        catch (UnsupportedEncodingException var1_2) {
            Log.e((String)"Term", (String)"UTF-8 encoding not found.");
            return;
        }
    }

    private void doPreferences() {
        this.startActivity(new Intent((Context)this, (Class)TermPreferences.class));
    }

    private void doResetTerminal() {
        TermSession termSession = this.getCurrentTermSession();
        if (termSession != null) {
            termSession.reset();
            ((ShellTermSession)termSession).sendInitialCommand();
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
        ActivityCompat.invalidateOptionsMenu(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doToggleWakeLock() {
        if (this.mWakeLock.isHeld() && !this.mSettings.isWakeLock()) {
            this.mWakeLock.release();
            return;
        } else {
            if (this.mWakeLock.isHeld() || !this.mSettings.isWakeLock()) return;
            {
                this.mWakeLock.acquire();
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doToggleWifiLock() {
        if (this.mWifiLock.isHeld() && !this.mSettings.isWifiLock()) {
            this.mWifiLock.release();
            return;
        } else {
            if (this.mWifiLock.isHeld() || !this.mSettings.isWifiLock()) return;
            {
                this.mWifiLock.acquire();
                return;
            }
        }
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
                    ** break;
                }
                ** GOTO lbl18
            }
            case 2: {
                if (this.mHaveFullHwKeyboard || var2_2 < var4_4 / 2) {
                    this.doToggleActionBar();
                    return;
                }
                this.doToggleSoftKeyboard();
            }
lbl18: // 5 sources:
            default: {
                ** GOTO lbl23
            }
            case 3: 
        }
        if (!this.mHaveFullHwKeyboard) {
            this.doToggleSoftKeyboard();
        }
lbl23: // 4 sources:
        this.getCurrentEmulatorView().requestFocus();
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
        return (TermSession)this.mTermSessions.get(this.mViewFlipper.getDisplayedChild());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean mTestPath(String object) {
        block6 : {
            Log.d((String)("HECTIC" + this.getClass().getSimpleName()), (String)("TEST SDCard = " + (String)object));
            try {
                object = new File((String)object);
                if (!object.exists()) break block6;
                Log.d((String)("HECTIC" + this.getClass().getSimpleName()), (String)"Exists");
                if (object.isDirectory()) {
                    Log.d((String)("HECTIC" + this.getClass().getSimpleName()), (String)"Directory");
                    if (!object.canRead()) {
                        Log.d((String)("HECTIC" + this.getClass().getSimpleName()), (String)"Cannot read");
                        return false;
                    }
                    if (!object.canWrite()) {
                        Log.d((String)("HECTIC" + this.getClass().getSimpleName()), (String)"Cannot write");
                        return false;
                    }
                    Log.d((String)("HECTIC" + this.getClass().getSimpleName()), (String)"finally found !!!");
                    return true;
                }
            }
            catch (Exception var1_2) {
                Log.e((String)("HECTIC" + this.getClass().getSimpleName()), (String)("mTestPath Exception " + var1_2.getLocalizedMessage()));
                return false;
            }
            Log.d((String)("HECTIC" + this.getClass().getSimpleName()), (String)"NOT Directory");
            return false;
        }
        Log.d((String)("HECTIC" + this.getClass().getSimpleName()), (String)"Does not exist");
        return false;
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
        int n2 = 0;
        while (n2 < n) {
            String string2 = bundle.getString(arrstring[n2]);
            if (string2 != null && !string2.equals("")) {
                stringBuilder.append(string2);
                stringBuilder.append(":");
            }
            ++n2;
        }
        return stringBuilder.substring(0, stringBuilder.length() - 1);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void populateViewFlipper() {
        if (this.mTermService == null) return;
        {
            this.mTermSessions = this.mTermService.getSessions();
            this.mTermSessions.addCallback(this);
            if (this.mTermSessions.size() == 0) {
                this.mTermSessions.add(this.createTermSession());
            }
            Intent intent = this.mTermSessions.iterator();
            do {
                Object object;
                if (!intent.hasNext()) {
                    this.updatePrefs();
                    intent = this.getIntent();
                    int n = intent.getFlags();
                    object = intent.getAction();
                    if ((1048576 & n) == 0 && object != null) {
                        if (object.equals("jackpal.androidterm.private.OPEN_NEW_WINDOW")) {
                            this.mViewFlipper.setDisplayedChild(this.mTermSessions.size() - 1);
                        } else if (object.equals("jackpal.androidterm.private.SWITCH_WINDOW") && (n = intent.getIntExtra("jackpal.androidterm.private.target_window", -1)) >= 0) {
                            this.mViewFlipper.setDisplayedChild(n);
                        }
                    }
                    this.mViewFlipper.resumeCurrentView();
                    return;
                }
                object = this.createEmulatorView((TermSession)intent.next());
                this.mViewFlipper.addView((View)object);
            } while (true);
        }
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
            WindowListActionBarAdapter windowListActionBarAdapter;
            this.mWinListAdapter = windowListActionBarAdapter = new WindowListActionBarAdapter(this.mTermSessions);
            this.mTermSessions.addCallback(windowListActionBarAdapter);
            this.mViewFlipper.addCallback(windowListActionBarAdapter);
            this.mActionBar.setListNavigationCallbacks((SpinnerAdapter)this.mWinListAdapter, this.mWinListItemSelected);
        } else {
            this.mWinListAdapter.setSessions(this.mTermSessions);
        }
        this.mActionBar.setSelectedNavigationItem(n);
    }

    private void restart() {
        this.startActivity(this.getIntent());
        this.finish();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void updatePrefs() {
        var1_1 = new DisplayMetrics();
        this.getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)var1_1);
        this.mViewFlipper.updatePrefs(this.mSettings);
        var2_2 = this.mViewFlipper.iterator();
        do {
            if (var2_2.hasNext()) ** GOTO lbl10
            if (this.mTermSessions != null) {
                break;
            }
            ** GOTO lbl-1000
lbl10: // 1 sources:
            var3_3 = var2_2.next();
            ((EmulatorView)var3_3).setDensity((DisplayMetrics)var1_1);
            ((TermView)var3_3).updatePrefs(this.mSettings);
        } while (true);
        var1_1 = this.mTermSessions.iterator();
        do {
            if (!var1_1.hasNext()) lbl-1000: // 2 sources:
            {
                var1_1 = this.getWindow();
                var2_2 = var1_1.getAttributes();
                var4_4 = this.mSettings.showStatusBar() != false ? 0 : 1024;
                if (var4_4 != (var2_2.flags & 1024) || AndroidCompat.SDK >= 11 && this.mActionBarMode != this.mSettings.actionBarMode()) {
                    if (this.mAlreadyStarted) {
                        this.restart();
                    } else {
                        var1_1.setFlags(var4_4, 1024);
                        if (this.mActionBarMode == 2) {
                            this.mActionBar.hide();
                        }
                    }
                }
                this.doToggleWakeLock();
                this.doToggleWifiLock();
                return;
            }
            ((ShellTermSession)((TermSession)var1_1.next())).updatePrefs(this.mSettings);
        } while (true);
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
                    n = intent.getIntExtra("hecticman.jsterm.window_id", -2);
                    if (n >= 0) {
                        this.onResumeSelectWindow = n;
                        return;
                    }
                    if (n != -1) return;
                    this.doCreateNewWindow();
                    this.onResumeSelectWindow = this.mTermSessions.size() - 1;
                    return;
                }
                if (this.mTermSessions.size() != 0) return;
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
            case 4: {
                this.doSendFnKey();
                return true;
            }
            case 5: 
        }
        this.doCommandHistory();
        return true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void onCreate(Bundle var1_1) {
        block11 : {
            super.onCreate((Bundle)var1_1);
            Log.e((String)"Term", (String)"onCreate");
            this.mPrefs = PreferenceManager.getDefaultSharedPreferences((Context)this);
            this.mColorPrefs = this.getSharedPreferences("color_preferences", 0);
            this.mSettings = new TermSettings(this.getResources(), this.mPrefs, this.mColorPrefs);
            var1_1 = new Intent("hecticman.jsterm.broadcast.APPEND_TO_PATH");
            if (AndroidCompat.SDK >= 12) {
                var1_1.addFlags(32);
            }
            ++this.mPendingPathBroadcasts;
            this.sendOrderedBroadcast((Intent)var1_1, "hecticman.jsterm.permission.APPEND_TO_PATH", this.mPathReceiver, null, -1, null, null);
            var1_1 = new Intent((Intent)var1_1);
            var1_1.setAction("hecticman.jsterm.broadcast.PREPEND_TO_PATH");
            ++this.mPendingPathBroadcasts;
            this.sendOrderedBroadcast((Intent)var1_1, "hecticman.jsterm.permission.PREPEND_TO_PATH", this.mPathReceiver, null, -1, null, null);
            this.TSIntent = new Intent((Context)this, (Class)TermService.class);
            this.startService(this.TSIntent);
            if (!this.bindService(this.TSIntent, this.mTSConnection, 1)) {
                Log.w((String)"Term", (String)"bind to service failed!");
            }
            if (AndroidCompat.SDK >= 11) {
                this.mActionBarMode = var2_2 = this.mSettings.actionBarMode();
                switch (var2_2) {
                    case 1: {
                        this.setTheme(2131361793);
                        ** break;
                    }
                    case 2: {
                        this.setTheme(2131361794);
                    }
lbl27: // 3 sources:
                    default: {
                        break block11;
                    }
                    case 3: 
                }
                this.setTheme(2131361796);
            }
        }
        this.setContentView(2130903041);
        this.mViewFlipper = (TermViewFlipper)this.findViewById(2131492872);
        this.mWakeLock = ((PowerManager)this.getSystemService("power")).newWakeLock(26, "Term");
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
        contextMenu.setHeaderTitle(2131165222);
        contextMenu.add(0, 0, 0, 2131165223);
        contextMenu.add(0, 1, 0, 2131165224);
        contextMenu.add(0, 2, 0, 2131165225);
        contextMenu.add(0, 3, 0, 2131165226);
        contextMenu.add(0, 4, 0, 2131165227);
        contextMenu.add(0, 5, 0, 2131165228);
        if (!this.canPaste()) {
            contextMenu.getItem(2).setEnabled(false);
        }
    }

    public boolean onCreateOptionsMenu(Menu menu2) {
        this.getMenuInflater().inflate(2131427328, menu2);
        MenuItemCompat.setShowAsAction(menu2.findItem(2131492876), 2);
        MenuItemCompat.setShowAsAction(menu2.findItem(2131492877), 1);
        return true;
    }

    public void onDestroy() {
        super.onDestroy();
        this.mViewFlipper.removeAllViews();
        this.unbindService(this.mTSConnection);
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
                if (this.mActionBarMode == 2 && this.mActionBar.isShowing()) {
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
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void onNewIntent(Intent object) {
        if ((object.getFlags() & 1048576) != 0) {
            return;
        }
        String string2 = object.getAction();
        if (string2 == null) return;
        if (string2.equals("jackpal.androidterm.private.OPEN_NEW_WINDOW")) {
            object = this.mTermSessions;
            int n = object.size() - 1;
            object = this.createEmulatorView((TermSession)object.get(n));
            this.mViewFlipper.addView((View)object);
            this.onResumeSelectWindow = n;
            return;
        }
        if (!string2.equals("jackpal.androidterm.private.SWITCH_WINDOW")) return;
        int n = object.getIntExtra("jackpal.androidterm.private.target_window", -1);
        if (n < 0) return;
        this.onResumeSelectWindow = n;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int n = menuItem.getItemId();
        if (n == 2131492881) {
            this.doPreferences();
        } else if (n == 2131492876) {
            this.doCreateNewWindow();
        } else if (n == 2131492877) {
            this.confirmCloseWindow();
        } else if (n == 2131492878) {
            this.startActivityForResult(new Intent((Context)this, (Class)WindowList.class), 1);
        } else if (n == 2131492882) {
            AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
            builder.setMessage(2131165216);
            builder.setPositiveButton(2131165214, new DialogInterface.OnClickListener(){

                public void onClick(DialogInterface dialogInterface, int n) {
                    Term.this.doResetTerminal();
                    dialogInterface = Toast.makeText((Context)Term.this, (int)2131165217, (int)1);
                    dialogInterface.setGravity(17, 0, 0);
                    dialogInterface.show();
                }
            });
            builder.setNegativeButton(2131165215, null);
            builder.show();
        } else if (n == 2131492883) {
            this.doEmailTranscript();
        } else if (n == 2131492884) {
            this.doCaptureScreen();
        } else if (n == 2131492880) {
            this.doDocumentKeys();
        } else if (n == 2131492879) {
            this.doToggleSoftKeyboard();
        }
        if (this.mActionBarMode == 2) {
            this.mActionBar.hide();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void onPause() {
        super.onPause();
        this.mViewFlipper.onPause();
        if (this.mTermSessions != null) {
            this.mTermSessions.removeCallback(this);
            if (this.mWinListAdapter != null) {
                this.mTermSessions.removeCallback(this.mWinListAdapter);
                this.mViewFlipper.removeCallback(this.mWinListAdapter);
            }
        }
        if (AndroidCompat.SDK < 5) {
            this.mBackKeyPressed = false;
        }
        new Thread(this.mViewFlipper.getWindowToken()){
            private final /* synthetic */ IBinder val$token;

            @Override
            public void run() {
                ((InputMethodManager)Term.this.getSystemService("input_method")).hideSoftInputFromWindow(this.val$token, 0);
            }
        }.start();
    }

    public boolean onPrepareOptionsMenu(Menu menu2) {
        return super.onPrepareOptionsMenu(menu2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onResume() {
        super.onResume();
        if (this.mTermSessions != null) {
            this.mTermSessions.addCallback(this);
            if (this.mWinListAdapter != null) {
                this.mTermSessions.addCallback(this.mWinListAdapter);
                this.mViewFlipper.addCallback(this.mWinListAdapter);
            }
        }
        if (this.mTermSessions != null && this.mTermSessions.size() < this.mViewFlipper.getChildCount()) {
            int n = 0;
            while (n < this.mViewFlipper.getChildCount()) {
                EmulatorView emulatorView = (EmulatorView)this.mViewFlipper.getChildAt(n);
                int n2 = n;
                if (!this.mTermSessions.contains(emulatorView.getTermSession())) {
                    emulatorView.onPause();
                    this.mViewFlipper.removeView((View)emulatorView);
                    n2 = n - 1;
                }
                n = n2 + 1;
            }
        }
        this.mPrefs = PreferenceManager.getDefaultSharedPreferences((Context)this);
        this.mSettings.readPrefs(this.mPrefs);
        this.updatePrefs();
        if (this.onResumeSelectWindow >= 0) {
            this.mViewFlipper.setDisplayedChild(this.onResumeSelectWindow);
            this.onResumeSelectWindow = -1;
        }
        this.mViewFlipper.onResume();
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
            if (Math.abs(f) <= 2.0f * Math.abs(f2)) return false;
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

        public boolean onSingleTapUp(MotionEvent motionEvent) {
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
            view.setText((CharSequence)Term.this.getString(2131165230, new Object[]{n + 1}));
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

