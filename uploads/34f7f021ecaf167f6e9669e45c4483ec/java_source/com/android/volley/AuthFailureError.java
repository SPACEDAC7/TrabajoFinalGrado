/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 */
package com.android.volley;

import android.content.Intent;
import com.android.volley.NetworkResponse;
import com.android.volley.VolleyError;

public class AuthFailureError
extends VolleyError {
    private Intent mResolutionIntent;

    public AuthFailureError() {
    }

    public AuthFailureError(Intent intent) {
        this.mResolutionIntent = intent;
    }

    public AuthFailureError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public AuthFailureError(String string2) {
        super(string2);
    }

    public AuthFailureError(String string2, Exception exception) {
        super(string2, exception);
    }

    @Override
    public String getMessage() {
        if (this.mResolutionIntent != null) {
            return "User needs to (re)enter credentials.";
        }
        return super.getMessage();
    }

    public Intent getResolutionIntent() {
        return this.mResolutionIntent;
    }
}

