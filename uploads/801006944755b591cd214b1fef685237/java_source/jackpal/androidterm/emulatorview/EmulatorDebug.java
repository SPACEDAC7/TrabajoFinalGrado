/*
 * Decompiled with CFR 0_115.
 */
package jackpal.androidterm.emulatorview;

class EmulatorDebug {
    public static final boolean DEBUG = false;
    public static final boolean LOG_CHARACTERS_FLAG = false;
    public static final boolean LOG_IME = false;
    public static final String LOG_TAG = "EmulatorView";
    public static final boolean LOG_UNKNOWN_ESCAPE_SEQUENCES = false;

    EmulatorDebug() {
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String bytesToString(byte[] arrby, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder();
        int n3 = 0;
        while (n3 < n2) {
            byte by = arrby[n + n3];
            if (by < 32 || by > 126) {
                stringBuilder.append(String.format("\\x%02x", Byte.valueOf(by)));
            } else {
                stringBuilder.append((char)by);
            }
            ++n3;
        }
        return stringBuilder.toString();
    }
}

