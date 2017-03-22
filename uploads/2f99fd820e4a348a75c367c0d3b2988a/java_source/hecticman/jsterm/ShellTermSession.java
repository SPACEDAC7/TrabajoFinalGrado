/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.Message
 *  android.util.Log
 */
package hecticman.jsterm;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import hecticman.jsterm.Exec;
import hecticman.jsterm.compat.FileCompat;
import hecticman.jsterm.emulatorview.ColorScheme;
import hecticman.jsterm.emulatorview.TermSession;
import hecticman.jsterm.emulatorview.UpdateCallback;
import hecticman.jsterm.util.TermSettings;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

public class ShellTermSession
extends TermSession {
    private static final int PROCESS_EXITED = 1;
    public static final int PROCESS_EXIT_DISPLAYS_MESSAGE = 1;
    public static final int PROCESS_EXIT_FINISHES_SESSION = 0;
    private String mHandle;
    private String mInitialCommand;
    private Handler mMsgHandler;
    private int mProcId;
    private int mProcessExitBehavior = 0;
    private String mProcessExitMessage;
    private TermSettings mSettings;
    private FileDescriptor mTermFd;
    private UpdateCallback mUTF8ModeNotify;
    private Thread mWatcherThread;

    public ShellTermSession(TermSettings termSettings, String string2) {
        this.mMsgHandler = new Handler(){

            /*
             * Enabled aggressive block sorting
             */
            public void handleMessage(Message message) {
                if (!ShellTermSession.this.isRunning() || message.what != 1) {
                    return;
                }
                ShellTermSession.this.onProcessExit((Integer)message.obj);
            }
        };
        this.mUTF8ModeNotify = new UpdateCallback(){

            @Override
            public void onUpdate() {
                Exec.setPtyUTF8Mode(ShellTermSession.this.mTermFd, ShellTermSession.this.getUTF8Mode());
            }
        };
        this.updatePrefs(termSettings);
        this.initializeSession();
        this.mInitialCommand = string2;
        this.mWatcherThread = new Thread(){

            @Override
            public void run() {
                Log.i((String)"Term", (String)("waiting for: " + ShellTermSession.this.mProcId));
                int n = Exec.waitFor(ShellTermSession.this.mProcId);
                Log.i((String)"Term", (String)("Subprocess exited: " + n));
                ShellTermSession.this.mMsgHandler.sendMessage(ShellTermSession.this.mMsgHandler.obtainMessage(1, (Object)n));
            }
        };
        this.mWatcherThread.setName("Process watcher");
    }

    private String checkPath(String charSequence) {
        String[] arrstring = charSequence.split(":");
        charSequence = new StringBuilder(charSequence.length());
        int n = arrstring.length;
        int n2 = 0;
        while (n2 < n) {
            String string2 = arrstring[n2];
            File file = new File(string2);
            if (file.isDirectory() && FileCompat.canExecute(file)) {
                charSequence.append(string2);
                charSequence.append(":");
            }
            ++n2;
        }
        return charSequence.substring(0, charSequence.length() - 1);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void createSubprocess(int[] var1_1, String var2_2, String[] var3_4) {
        var4_5 = this.parse(var2_2);
        try {
            var2_2 = var4_5.get(0);
            var5_6 = new File(var2_2);
            if (!var5_6.exists()) {
                Log.e((String)"Term", (String)("Shell " + var2_2 + " not found!"));
                throw new FileNotFoundException(var2_2);
            }
            if (!FileCompat.canExecute(var5_6)) {
                Log.e((String)"Term", (String)("Shell " + var2_2 + " not executable!"));
                throw new FileNotFoundException(var2_2);
            }
            ** GOTO lbl17
        }
        catch (Exception var2_3) {
            var4_5 = this.parse(this.mSettings.getFailsafeShell());
            var2_2 = var4_5.get(0);
            var4_5 = var4_5.toArray(new String[1]);
            ** GOTO lbl18
lbl17: // 1 sources:
            var4_5 = var4_5.toArray(new String[1]);
lbl18: // 2 sources:
            this.mTermFd = Exec.createSubprocess(var2_2, var4_5, var3_4, var1_1);
            return;
        }
    }

    private void initializeSession() {
        String string2;
        String string3;
        TermSettings termSettings = this.mSettings;
        int[] arrn = new int[1];
        String string4 = string2 = System.getenv("PATH");
        if (termSettings.doPathExtensions()) {
            string4 = termSettings.getAppendPath();
            string3 = string2;
            if (string4 != null) {
                string3 = string2;
                if (string4.length() > 0) {
                    string3 = String.valueOf(string2) + ":" + string4;
                }
            }
            string4 = string3;
            if (termSettings.allowPathPrepend()) {
                string2 = termSettings.getPrependPath();
                string4 = string3;
                if (string2 != null) {
                    string4 = string3;
                    if (string2.length() > 0) {
                        string4 = String.valueOf(string2) + ":" + string3;
                    }
                }
            }
        }
        string3 = string4;
        if (termSettings.verifyPath()) {
            string3 = this.checkPath(string4);
        }
        string4 = "TERM=" + termSettings.getTermType();
        string3 = "PATH=" + string3;
        this.createSubprocess(arrn, termSettings.getShell(), new String[]{string4, string3});
        this.mProcId = arrn[0];
        this.setTermOut(new FileOutputStream(this.mTermFd));
        this.setTermIn(new FileInputStream(this.mTermFd));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void onProcessExit(int n) {
        if (this.mSettings.closeWindowOnProcessExit()) {
            this.finish();
            return;
        }
        if (this.mProcessExitMessage == null) return;
        try {
            byte[] arrby = ("\r\n[" + this.mProcessExitMessage + "]").getBytes("UTF-8");
            this.appendToEmulator(arrby, 0, arrby.length);
            this.notifyUpdate();
            return;
        }
        catch (UnsupportedEncodingException var2_3) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private ArrayList<String> parse(String string2) {
        int n = 1;
        ArrayList<String> arrayList = new ArrayList<String>();
        int n2 = string2.length();
        StringBuilder stringBuilder = new StringBuilder();
        int n3 = 0;
        do {
            int n4;
            int n5;
            if (n3 >= n2) {
                if (stringBuilder.length() > 0) {
                    arrayList.add(stringBuilder.toString());
                }
                return arrayList;
            }
            char c = string2.charAt(n3);
            if (n == 0) {
                if (Character.isWhitespace(c)) {
                    arrayList.add(stringBuilder.toString());
                    stringBuilder.delete(0, stringBuilder.length());
                    n4 = 1;
                    n5 = n3;
                } else if (c == '\"') {
                    n4 = 2;
                    n5 = n3;
                } else {
                    stringBuilder.append(c);
                    n5 = n3;
                    n4 = n;
                }
            } else if (n == 1) {
                n5 = n3;
                n4 = n;
                if (!Character.isWhitespace(c)) {
                    if (c == '\"') {
                        n4 = 2;
                        n5 = n3;
                    } else {
                        n4 = 0;
                        stringBuilder.append(c);
                        n5 = n3;
                    }
                }
            } else {
                n5 = n3;
                n4 = n;
                if (n == 2) {
                    if (c == '\\') {
                        n5 = n3;
                        n4 = n;
                        if (n3 + 1 < n2) {
                            n5 = n3 + 1;
                            stringBuilder.append(string2.charAt(n5));
                            n4 = n;
                        }
                    } else if (c == '\"') {
                        n4 = 0;
                        n5 = n3;
                    } else {
                        stringBuilder.append(c);
                        n5 = n3;
                        n4 = n;
                    }
                }
            }
            n3 = n5 + 1;
            n = n4;
        } while (true);
    }

    private void sendInitialCommand(String string2) {
        if (string2.length() > 0) {
            this.write(String.valueOf(string2) + '\r');
        }
    }

    @Override
    public void finish() {
        Exec.hangupProcessGroup(this.mProcId);
        Exec.close(this.mTermFd);
        super.finish();
    }

    public String getEnvPath() {
        return Exec.getEnvPath(this.mTermFd);
    }

    public String getHandle() {
        return this.mHandle;
    }

    @Override
    public void initializeEmulator(int n, int n2) {
        super.initializeEmulator(n, n2);
        Exec.setPtyUTF8Mode(this.mTermFd, this.getUTF8Mode());
        this.setUTF8ModeUpdateCallback(this.mUTF8ModeNotify);
        this.mWatcherThread.start();
        this.sendInitialCommand(this.mInitialCommand);
    }

    public void sendInitialCommand() {
        this.sendInitialCommand(this.mInitialCommand);
    }

    public void setEnvPath(String string2) {
        Exec.setEnvPath(this.mTermFd, string2);
    }

    public void setHandle(String string2) {
        if (this.mHandle != null) {
            throw new IllegalStateException("Cannot change handle once set");
        }
        this.mHandle = string2;
    }

    public void setProcessExitMessage(String string2) {
        this.mProcessExitMessage = string2;
    }

    public void updatePrefs(TermSettings termSettings) {
        this.mSettings = termSettings;
        this.setColorScheme(new ColorScheme(termSettings.getColorScheme()));
        this.setDefaultUTF8Mode(termSettings.defaultToUTF8Mode());
    }

    @Override
    public void updateSize(int n, int n2) {
        Exec.setPtyWindowSize(this.mTermFd, n2, n, 0, 0);
        super.updateSize(n, n2);
    }

}

