/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Intent
 */
package com.facebook.login;

import android.app.Activity;
import android.content.Intent;

interface StartActivityDelegate {
    public Activity getActivityContext();

    public void startActivityForResult(Intent var1, int var2);
}

