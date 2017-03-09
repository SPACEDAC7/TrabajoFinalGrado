/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package jackpal.androidterm.emulatorview.compat;

import android.content.Context;
import jackpal.androidterm.emulatorview.compat.AndroidCompat;
import jackpal.androidterm.emulatorview.compat.ClipboardManagerCompat;
import jackpal.androidterm.emulatorview.compat.ClipboardManagerCompatV1;
import jackpal.androidterm.emulatorview.compat.ClipboardManagerCompatV11;

public class ClipboardManagerCompatFactory {
    private ClipboardManagerCompatFactory() {
    }

    public static ClipboardManagerCompat getManager(Context context) {
        if (AndroidCompat.SDK < 11) {
            return new ClipboardManagerCompatV1(context);
        }
        return new ClipboardManagerCompatV11(context);
    }
}

