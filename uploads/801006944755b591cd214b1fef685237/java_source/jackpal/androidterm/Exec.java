/*
 * Decompiled with CFR 0_115.
 */
package jackpal.androidterm;

import java.io.IOException;

public class Exec {
    static {
        System.loadLibrary("jackpal-androidterm5");
    }

    static native void setPtyUTF8ModeInternal(int var0, boolean var1) throws IOException;

    static native void setPtyWindowSizeInternal(int var0, int var1, int var2, int var3, int var4) throws IOException;
}

