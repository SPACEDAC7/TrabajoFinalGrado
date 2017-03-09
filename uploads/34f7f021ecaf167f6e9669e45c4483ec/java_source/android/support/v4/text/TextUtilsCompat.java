/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package android.support.v4.text;

import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.text.ICUCompat;
import android.support.v4.text.TextUtilsCompatJellybeanMr1;
import java.util.Locale;

public final class TextUtilsCompat {
    static String ARAB_SCRIPT_SUBTAG;
    static String HEBR_SCRIPT_SUBTAG;
    private static final TextUtilsCompatImpl IMPL;
    public static final Locale ROOT;

    /*
     * Enabled aggressive block sorting
     */
    static {
        IMPL = Build.VERSION.SDK_INT >= 17 ? new TextUtilsCompatJellybeanMr1Impl() : new TextUtilsCompatImpl();
        ROOT = new Locale("", "");
        ARAB_SCRIPT_SUBTAG = "Arab";
        HEBR_SCRIPT_SUBTAG = "Hebr";
    }

    private TextUtilsCompat() {
    }

    public static int getLayoutDirectionFromLocale(@Nullable Locale locale) {
        return IMPL.getLayoutDirectionFromLocale(locale);
    }

    @NonNull
    public static String htmlEncode(@NonNull String string2) {
        return IMPL.htmlEncode(string2);
    }

    private static class TextUtilsCompatImpl {
        TextUtilsCompatImpl() {
        }

        private static int getLayoutDirectionFromFirstChar(@NonNull Locale locale) {
            switch (Character.getDirectionality(locale.getDisplayName(locale).charAt(0))) {
                default: {
                    return 0;
                }
                case 1: 
                case 2: 
            }
            return 1;
        }

        public int getLayoutDirectionFromLocale(@Nullable Locale locale) {
            if (locale != null && !locale.equals(TextUtilsCompat.ROOT)) {
                String string2 = ICUCompat.maximizeAndGetScript(locale);
                if (string2 == null) {
                    return TextUtilsCompatImpl.getLayoutDirectionFromFirstChar(locale);
                }
                if (string2.equalsIgnoreCase(TextUtilsCompat.ARAB_SCRIPT_SUBTAG) || string2.equalsIgnoreCase(TextUtilsCompat.HEBR_SCRIPT_SUBTAG)) {
                    return 1;
                }
            }
            return 0;
        }

        /*
         * Enabled aggressive block sorting
         */
        @NonNull
        public String htmlEncode(@NonNull String string2) {
            StringBuilder stringBuilder = new StringBuilder();
            int n2 = 0;
            while (n2 < string2.length()) {
                char c2 = string2.charAt(n2);
                switch (c2) {
                    default: {
                        stringBuilder.append(c2);
                        break;
                    }
                    case '<': {
                        stringBuilder.append("&lt;");
                        break;
                    }
                    case '>': {
                        stringBuilder.append("&gt;");
                        break;
                    }
                    case '&': {
                        stringBuilder.append("&amp;");
                        break;
                    }
                    case '\'': {
                        stringBuilder.append("&#39;");
                        break;
                    }
                    case '\"': {
                        stringBuilder.append("&quot;");
                    }
                }
                ++n2;
            }
            return stringBuilder.toString();
        }
    }

    private static class TextUtilsCompatJellybeanMr1Impl
    extends TextUtilsCompatImpl {
        TextUtilsCompatJellybeanMr1Impl() {
        }

        @Override
        public int getLayoutDirectionFromLocale(@Nullable Locale locale) {
            return TextUtilsCompatJellybeanMr1.getLayoutDirectionFromLocale(locale);
        }

        @NonNull
        @Override
        public String htmlEncode(@NonNull String string2) {
            return TextUtilsCompatJellybeanMr1.htmlEncode(string2);
        }
    }

}

