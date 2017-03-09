/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.DisplayMetrics
 */
package jackpal.androidterm;

import android.content.Context;
import android.util.DisplayMetrics;
import jackpal.androidterm.emulatorview.ColorScheme;
import jackpal.androidterm.emulatorview.EmulatorView;
import jackpal.androidterm.emulatorview.TermSession;
import jackpal.androidterm.util.TermSettings;

public class TermView
extends EmulatorView {
    public TermView(Context context, TermSession termSession, DisplayMetrics displayMetrics) {
        super(context, termSession, displayMetrics);
    }

    public String toString() {
        return this.getClass().toString() + '(' + this.getTermSession() + ')';
    }

    public void updatePrefs(TermSettings termSettings) {
        this.updatePrefs(termSettings, null);
    }

    public void updatePrefs(TermSettings termSettings, ColorScheme colorScheme) {
        ColorScheme colorScheme2 = colorScheme;
        if (colorScheme == null) {
            colorScheme2 = new ColorScheme(termSettings.getColorScheme());
        }
        this.setTextSize(termSettings.getFontSize());
        this.setUseCookedIME(termSettings.useCookedIME());
        this.setColorScheme(colorScheme2);
        this.setBackKeyCharacter(termSettings.getBackKeyCharacter());
        this.setAltSendsEsc(termSettings.getAltSendsEscFlag());
        this.setControlKeyCode(termSettings.getControlKeyCode());
        this.setFnKeyCode(termSettings.getFnKeyCode());
        this.setTermType(termSettings.getTermType());
        this.setMouseTracking(termSettings.getMouseTrackingFlag());
    }
}

