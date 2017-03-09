/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Looper
 *  android.os.ParcelFileDescriptor
 */
package jackpal.androidterm;

import android.os.Build;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import jackpal.androidterm.FdHelperHoneycomb;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class TermExec {
    public static final String SERVICE_ACTION_V1 = "jackpal.androidterm.action.START_TERM.v1";
    private static Field descriptorField;
    private final List<String> command;
    private final Map<String, String> environment;

    static {
        System.loadLibrary("jackpal-termexec2");
    }

    public TermExec(@NonNull List<String> list) {
        this.command = list;
        this.environment = new Hashtable<String, String>(System.getenv());
    }

    public /* varargs */ TermExec(@NonNull String ... arrstring) {
        this(new ArrayList<String>(Arrays.asList(arrstring)));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static int createSubprocess(ParcelFileDescriptor parcelFileDescriptor, String string2, String[] arrstring, String[] arrstring2) throws IOException {
        int n;
        if (Build.VERSION.SDK_INT >= 12) {
            n = FdHelperHoneycomb.getFd(parcelFileDescriptor);
            return TermExec.createSubprocessInternal(string2, arrstring, arrstring2, n);
        }
        try {
            if (descriptorField == null) {
                descriptorField = FileDescriptor.class.getDeclaredField("descriptor");
                descriptorField.setAccessible(true);
            }
            n = descriptorField.getInt(parcelFileDescriptor.getFileDescriptor());
            return TermExec.createSubprocessInternal(string2, arrstring, arrstring2, n);
        }
        catch (Exception var0_1) {
            throw new IOException("Unable to obtain file descriptor on this OS version: " + var0_1.getMessage());
        }
    }

    private static native int createSubprocessInternal(String var0, String[] var1, String[] var2, int var3);

    public static native void sendSignal(int var0, int var1);

    public static native int waitFor(int var0);

    @NonNull
    public TermExec command(List<String> list) {
        list.clear();
        list.addAll(list);
        return this;
    }

    @NonNull
    public /* varargs */ TermExec command(@NonNull String ... arrstring) {
        return this.command(new ArrayList<String>(Arrays.asList(arrstring)));
    }

    @NonNull
    public List<String> command() {
        return this.command;
    }

    @NonNull
    public Map<String, String> environment() {
        return this.environment;
    }

    public int start(@NonNull ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException("This method must not be called from the main thread!");
        }
        if (this.command.size() == 0) {
            throw new IllegalStateException("Empty command!");
        }
        String string2 = this.command.remove(0);
        String[] arrstring = this.command.toArray(new String[this.command.size()]);
        String[] arrstring2 = new String[this.environment.size()];
        int n = 0;
        for (Map.Entry<String, String> entry : this.environment.entrySet()) {
            arrstring2[n] = entry.getKey() + "=" + entry.getValue();
            ++n;
        }
        return TermExec.createSubprocess(parcelFileDescriptor, string2, arrstring, arrstring2);
    }
}

