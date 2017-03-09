/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.Message
 *  android.os.ParcelFileDescriptor
 *  android.os.ParcelFileDescriptor$AutoCloseInputStream
 *  android.os.ParcelFileDescriptor$AutoCloseOutputStream
 *  android.util.Log
 */
package jackpal.androidterm;

import android.os.Handler;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import jackpal.androidterm.GenericTermSession;
import jackpal.androidterm.TermExec;
import jackpal.androidterm.compat.FileCompat;
import jackpal.androidterm.util.TermSettings;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;

public class ShellTermSession
extends GenericTermSession {
    private static final int PROCESS_EXITED = 1;
    private String mInitialCommand;
    private Handler mMsgHandler;
    private int mProcId;
    private Thread mWatcherThread;

    public ShellTermSession(TermSettings termSettings, String string2) throws IOException {
        super(ParcelFileDescriptor.open((File)new File("/dev/ptmx"), (int)805306368), termSettings, false);
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
        this.initializeSession();
        this.setTermOut((OutputStream)new ParcelFileDescriptor.AutoCloseOutputStream(this.mTermFd));
        this.setTermIn((InputStream)new ParcelFileDescriptor.AutoCloseInputStream(this.mTermFd));
        this.mInitialCommand = string2;
        this.mWatcherThread = new Thread(){

            @Override
            public void run() {
                Log.i((String)"Term", (String)("waiting for: " + ShellTermSession.this.mProcId));
                int n = TermExec.waitFor(ShellTermSession.this.mProcId);
                Log.i((String)"Term", (String)("Subprocess exited: " + n));
                ShellTermSession.this.mMsgHandler.sendMessage(ShellTermSession.this.mMsgHandler.obtainMessage(1, (Object)n));
            }
        };
        this.mWatcherThread.setName("Process watcher");
    }

    private String checkPath(String charSequence) {
        String[] arrstring = charSequence.split(":");
        charSequence = new StringBuilder(charSequence.length());
        for (String string2 : arrstring) {
            File file = new File(string2);
            if (!file.isDirectory() || !FileCompat.canExecute(file)) continue;
            charSequence.append(string2);
            charSequence.append(":");
        }
        return charSequence.substring(0, charSequence.length() - 1);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private int createSubprocess(String string2, String[] arrstring) throws IOException {
        String[] arrstring2 = this.parse(string2);
        try {
            string2 = arrstring2.get(0);
            File file = new File(string2);
            if (!file.exists()) {
                Log.e((String)"Term", (String)("Shell " + string2 + " not found!"));
                throw new FileNotFoundException(string2);
            }
            if (!FileCompat.canExecute(file)) {
                Log.e((String)"Term", (String)("Shell " + string2 + " not executable!"));
                throw new FileNotFoundException(string2);
            }
        }
        catch (Exception var1_2) {
            arrstring2 = this.parse(this.mSettings.getFailsafeShell());
            string2 = arrstring2.get(0);
            arrstring2 = arrstring2.toArray(new String[1]);
            return TermExec.createSubprocess(this.mTermFd, string2, arrstring2, arrstring);
        }
        arrstring2 = arrstring2.toArray(new String[1]);
        return TermExec.createSubprocess(this.mTermFd, string2, arrstring2, arrstring);
    }

    private void initializeSession() throws IOException {
        String string2;
        String string3;
        TermSettings termSettings = this.mSettings;
        String string4 = string3 = System.getenv("PATH");
        if (termSettings.doPathExtensions()) {
            string4 = termSettings.getAppendPath();
            string2 = string3;
            if (string4 != null) {
                string2 = string3;
                if (string4.length() > 0) {
                    string2 = string3 + ":" + string4;
                }
            }
            string4 = string2;
            if (termSettings.allowPathPrepend()) {
                string3 = termSettings.getPrependPath();
                string4 = string2;
                if (string3 != null) {
                    string4 = string2;
                    if (string3.length() > 0) {
                        string4 = string3 + ":" + string2;
                    }
                }
            }
        }
        string2 = string4;
        if (termSettings.verifyPath()) {
            string2 = this.checkPath(string4);
        }
        string4 = "TERM=" + termSettings.getTermType();
        string2 = "PATH=" + string2;
        string3 = "HOME=" + termSettings.getHomePath();
        this.mProcId = this.createSubprocess(termSettings.getShell(), new String[]{string4, string2, string3});
    }

    private void onProcessExit(int n) {
        this.onProcessExit();
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
        while (n3 < n2) {
            int n4;
            int n5;
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
        }
        if (stringBuilder.length() > 0) {
            arrayList.add(stringBuilder.toString());
        }
        return arrayList;
    }

    private void sendInitialCommand(String string2) {
        if (string2.length() > 0) {
            this.write(string2 + '\r');
        }
    }

    @Override
    public void finish() {
        this.hangupProcessGroup();
        super.finish();
    }

    void hangupProcessGroup() {
        TermExec.sendSignal(- this.mProcId, 1);
    }

    @Override
    public void initializeEmulator(int n, int n2) {
        super.initializeEmulator(n, n2);
        this.mWatcherThread.start();
        this.sendInitialCommand(this.mInitialCommand);
    }

}

