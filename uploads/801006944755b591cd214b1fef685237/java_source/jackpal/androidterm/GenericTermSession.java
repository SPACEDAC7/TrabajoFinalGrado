/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.ParcelFileDescriptor
 *  android.util.Log
 */
package jackpal.androidterm;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import jackpal.androidterm.Exec;
import jackpal.androidterm.FdHelperHoneycomb;
import jackpal.androidterm.emulatorview.ColorScheme;
import jackpal.androidterm.emulatorview.TermSession;
import jackpal.androidterm.emulatorview.UpdateCallback;
import jackpal.androidterm.util.TermSettings;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;

class GenericTermSession
extends TermSession {
    public static final int PROCESS_EXIT_DISPLAYS_MESSAGE = 1;
    public static final int PROCESS_EXIT_FINISHES_SESSION = 0;
    private static final boolean VTTEST_MODE = false;
    private static Field descriptorField;
    private final long createdAt;
    private String mHandle;
    private String mProcessExitMessage;
    TermSettings mSettings;
    final ParcelFileDescriptor mTermFd;
    private UpdateCallback mUTF8ModeNotify;

    GenericTermSession(ParcelFileDescriptor parcelFileDescriptor, TermSettings termSettings, boolean bl) {
        super(bl);
        this.mUTF8ModeNotify = new UpdateCallback(){

            @Override
            public void onUpdate() {
                GenericTermSession.this.setPtyUTF8Mode(GenericTermSession.this.getUTF8Mode());
            }
        };
        this.mTermFd = parcelFileDescriptor;
        this.createdAt = System.currentTimeMillis();
        this.updatePrefs(termSettings);
    }

    private static void cacheDescField() throws NoSuchFieldException {
        if (descriptorField != null) {
            return;
        }
        descriptorField = FileDescriptor.class.getDeclaredField("descriptor");
        descriptorField.setAccessible(true);
    }

    private static int getIntFd(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        if (Build.VERSION.SDK_INT >= 12) {
            return FdHelperHoneycomb.getFd(parcelFileDescriptor);
        }
        try {
            GenericTermSession.cacheDescField();
            int n = descriptorField.getInt(parcelFileDescriptor.getFileDescriptor());
            return n;
        }
        catch (Exception var0_1) {
            throw new IOException("Unable to obtain file descriptor on this OS version: " + var0_1.getMessage());
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void finish() {
        try {
            this.mTermFd.close();
        }
        catch (IOException var1_1) {}
        super.finish();
    }

    public String getHandle() {
        return this.mHandle;
    }

    public String getTitle(String string2) {
        String string3 = this.getTitle();
        if (string3 != null && string3.length() > 0) {
            return string3;
        }
        return string2;
    }

    @Override
    public void initializeEmulator(int n, int n2) {
        super.initializeEmulator(n, n2);
        this.setPtyUTF8Mode(this.getUTF8Mode());
        this.setUTF8ModeUpdateCallback(this.mUTF8ModeNotify);
    }

    boolean isFailFast() {
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    protected void onProcessExit() {
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
        catch (UnsupportedEncodingException var1_2) {
            return;
        }
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

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    void setPtyUTF8Mode(boolean bl) {
        if (!this.mTermFd.getFileDescriptor().valid()) {
            return;
        }
        try {
            Exec.setPtyUTF8ModeInternal(GenericTermSession.getIntFd(this.mTermFd), bl);
            return;
        }
        catch (IOException var2_2) {
            Log.e((String)"exec", (String)("Failed to set UTF mode: " + var2_2.getMessage()));
            if (!this.isFailFast()) return;
            throw new IllegalStateException(var2_2);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    void setPtyWindowSize(int n, int n2, int n3, int n4) {
        if (!this.mTermFd.getFileDescriptor().valid()) {
            return;
        }
        try {
            Exec.setPtyWindowSizeInternal(GenericTermSession.getIntFd(this.mTermFd), n, n2, n3, n4);
            return;
        }
        catch (IOException var5_5) {
            Log.e((String)"exec", (String)("Failed to set window size: " + var5_5.getMessage()));
            if (!this.isFailFast()) return;
            throw new IllegalStateException(var5_5);
        }
    }

    public String toString() {
        return this.getClass().getSimpleName() + '(' + this.createdAt + ',' + this.mHandle + ')';
    }

    public void updatePrefs(TermSettings termSettings) {
        this.mSettings = termSettings;
        this.setColorScheme(new ColorScheme(termSettings.getColorScheme()));
        this.setDefaultUTF8Mode(termSettings.defaultToUTF8Mode());
    }

    @Override
    public void updateSize(int n, int n2) {
        this.setPtyWindowSize(n2, n, 0, 0);
        super.updateSize(n, n2);
    }

}

