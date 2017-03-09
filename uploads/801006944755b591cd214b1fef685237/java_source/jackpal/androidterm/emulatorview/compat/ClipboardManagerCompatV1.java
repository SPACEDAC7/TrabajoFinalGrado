/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.ClipboardManager
 */
package jackpal.androidterm.emulatorview.compat;

import android.content.Context;
import android.text.ClipboardManager;
import jackpal.androidterm.emulatorview.compat.ClipboardManagerCompat;

public class ClipboardManagerCompatV1
implements ClipboardManagerCompat {
    private final ClipboardManager clip;

    public ClipboardManagerCompatV1(Context context) {
        this.clip = (ClipboardManager)context.getApplicationContext().getSystemService("clipboard");
    }

    @Override
    public CharSequence getText() {
        return this.clip.getText();
    }

    @Override
    public boolean hasText() {
        return this.clip.hasText();
    }

    @Override
    public void setText(CharSequence charSequence) {
        this.clip.setText(charSequence);
    }
}

