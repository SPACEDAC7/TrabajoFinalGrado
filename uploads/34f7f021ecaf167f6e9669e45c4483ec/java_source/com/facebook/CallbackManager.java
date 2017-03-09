/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 */
package com.facebook;

import android.content.Intent;
import com.facebook.internal.CallbackManagerImpl;

public interface CallbackManager {
    public boolean onActivityResult(int var1, int var2, Intent var3);

    public static class Factory {
        public static CallbackManager create() {
            return new CallbackManagerImpl();
        }
    }

}

