/*
 * Decompiled with CFR 0_115.
 */
package hecticman.jsterm;

import java.io.FileDescriptor;

public class Exec {
    static {
        System.loadLibrary("jackpal-androidterm4");
    }

    public static native void close(FileDescriptor var0);

    public static native FileDescriptor createSubprocess(String var0, String[] var1, String[] var2, int[] var3);

    public static native String getEnvPath(FileDescriptor var0);

    public static native void hangupProcessGroup(int var0);

    public static native void setEnvPath(FileDescriptor var0, String var1);

    public static native void setPtyUTF8Mode(FileDescriptor var0, boolean var1);

    public static native void setPtyWindowSize(FileDescriptor var0, int var1, int var2, int var3, int var4);

    public static native int waitFor(int var0);
}

