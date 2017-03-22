/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.AndroidCharacter
 */
package hecticman.jsterm.emulatorview.compat;

import android.text.AndroidCharacter;
import hecticman.jsterm.emulatorview.compat.AndroidCompat;

public class AndroidCharacterCompat {
    public static final int EAST_ASIAN_WIDTH_AMBIGUOUS = 1;
    public static final int EAST_ASIAN_WIDTH_FULL_WIDTH = 3;
    public static final int EAST_ASIAN_WIDTH_HALF_WIDTH = 2;
    public static final int EAST_ASIAN_WIDTH_NARROW = 4;
    public static final int EAST_ASIAN_WIDTH_NEUTRAL = 0;
    public static final int EAST_ASIAN_WIDTH_WIDE = 5;

    public static int getEastAsianWidth(char c) {
        if (AndroidCompat.SDK >= 8) {
            return Api8OrLater.getEastAsianWidth(c);
        }
        return 4;
    }

    private static class Api8OrLater {
        private Api8OrLater() {
        }

        public static int getEastAsianWidth(char c) {
            return AndroidCharacter.getEastAsianWidth((char)c);
        }

        public static void initialize() {
        }
    }

}

