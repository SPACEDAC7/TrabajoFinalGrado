/*
 * Decompiled with CFR 0_115.
 */
package jackpal.androidterm.compat;

import jackpal.androidterm.compat.AndroidCompat;
import java.io.File;

public class FileCompat {
    public static boolean canExecute(File file) {
        if (AndroidCompat.SDK < 9) {
            return Api8OrEarlier.canExecute(file);
        }
        return Api9OrLater.canExecute(file);
    }

    private static class Api8OrEarlier {
        static {
            System.loadLibrary("jackpal-androidterm5");
        }

        private Api8OrEarlier() {
        }

        public static boolean canExecute(File file) {
            return Api8OrEarlier.testExecute(file.getAbsolutePath());
        }

        private static native boolean testExecute(String var0);
    }

    private static class Api9OrLater {
        private Api9OrLater() {
        }

        public static boolean canExecute(File file) {
            return file.canExecute();
        }
    }

}

