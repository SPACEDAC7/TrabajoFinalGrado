/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.content.ClipData
 *  android.content.ClipData$Item
 *  android.content.ClipDescription
 *  android.content.ClipboardManager
 *  android.content.Context
 */
package jackpal.androidterm.emulatorview.compat;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import jackpal.androidterm.emulatorview.compat.ClipboardManagerCompat;

@SuppressLint(value={"NewApi"})
public class ClipboardManagerCompatV11
implements ClipboardManagerCompat {
    private final ClipboardManager clip;

    public ClipboardManagerCompatV11(Context context) {
        this.clip = (ClipboardManager)context.getApplicationContext().getSystemService("clipboard");
    }

    @Override
    public CharSequence getText() {
        return this.clip.getPrimaryClip().getItemAt(0).getText();
    }

    @Override
    public boolean hasText() {
        if (this.clip.hasPrimaryClip() && this.clip.getPrimaryClipDescription().hasMimeType("text/plain")) {
            return true;
        }
        return false;
    }

    @Override
    public void setText(CharSequence charSequence) {
        charSequence = ClipData.newPlainText((CharSequence)"simple text", (CharSequence)charSequence);
        this.clip.setPrimaryClip((ClipData)charSequence);
    }
}

