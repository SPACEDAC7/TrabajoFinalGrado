/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.util.DisplayMetrics
 *  android.util.FloatMath
 *  android.view.MotionEvent
 */
package hecticman.jsterm;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.MotionEvent;
import hecticman.jsterm.emulatorview.ColorScheme;
import hecticman.jsterm.emulatorview.EmulatorView;
import hecticman.jsterm.emulatorview.TermSession;
import hecticman.jsterm.util.TermSettings;

public class TermView
extends EmulatorView {
    static final int EVENT_TOUCH_MODE_DRAG = 1;
    static final int EVENT_TOUCH_MODE_NONE = 0;
    static final int EVENT_TOUCH_MODE_ZOOM = 2;
    private TermSettings mSettings;
    private int nTouchMode = 0;
    private float newDist = 1.0f;
    private float oldDist = 1.0f;

    public TermView(Context context, TermSession termSession, DisplayMetrics displayMetrics) {
        super(context, termSession, displayMetrics);
    }

    @TargetApi(value=5)
    private float spacingForTouchZoom(MotionEvent motionEvent) {
        float f = motionEvent.getX(0) - motionEvent.getX(1);
        float f2 = motionEvent.getY(0) - motionEvent.getY(1);
        return FloatMath.sqrt((float)(f * f + f2 * f2));
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean onTouchEvent(MotionEvent var1_1) {
        switch (var1_1.getAction() & 255) {
            case 2: {
                if (this.nTouchMode != 2) return super.onTouchEvent(var1_1);
                this.newDist = this.spacingForTouchZoom(var1_1);
                if (this.newDist - this.oldDist > 20.0f) {
                    this.oldDist = this.newDist;
                    this.setTextSize(true);
                    ** break;
                }
                if (this.oldDist - this.newDist <= 20.0f) return super.onTouchEvent(var1_1);
                this.oldDist = this.newDist;
                this.setTextSize(false);
                ** break;
            }
            case 1: 
            case 6: {
                this.nTouchMode = 0;
            }
lbl15: // 4 sources:
            default: {
                return super.onTouchEvent(var1_1);
            }
            case 5: 
        }
        this.nTouchMode = 2;
        this.newDist = this.spacingForTouchZoom(var1_1);
        this.oldDist = this.spacingForTouchZoom(var1_1);
        return super.onTouchEvent(var1_1);
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
        this.setCursorStyle(termSettings.getCursorStyle(), termSettings.getCursorBlink());
        this.setUseCookedIME(termSettings.useCookedIME());
        this.setColorScheme(colorScheme2);
        this.setBackKeyCharacter(termSettings.getBackKeyCharacter());
        this.setControlKeyCode(termSettings.getControlKeyCode());
        this.setFnKeyCode(termSettings.getFnKeyCode());
        this.mSettings = termSettings;
    }
}

