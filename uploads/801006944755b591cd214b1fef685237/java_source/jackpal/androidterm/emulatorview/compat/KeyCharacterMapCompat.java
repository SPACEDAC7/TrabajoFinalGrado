/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.KeyCharacterMap
 */
package jackpal.androidterm.emulatorview.compat;

import android.view.KeyCharacterMap;
import jackpal.androidterm.emulatorview.compat.AndroidCompat;

public abstract class KeyCharacterMapCompat {
    public static final int MODIFIER_BEHAVIOR_CHORDED = 0;
    public static final int MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED = 1;

    public static KeyCharacterMapCompat wrap(Object object) {
        if (object != null && AndroidCompat.SDK >= 11) {
            return new KeyCharacterMapApi11OrLater(object);
        }
        return null;
    }

    public abstract int getModifierBehaviour();

    private static class KeyCharacterMapApi11OrLater
    extends KeyCharacterMapCompat {
        private KeyCharacterMap mMap;

        public KeyCharacterMapApi11OrLater(Object object) {
            this.mMap = (KeyCharacterMap)object;
        }

        @Override
        public int getModifierBehaviour() {
            return this.mMap.getModifierBehavior();
        }
    }

}

