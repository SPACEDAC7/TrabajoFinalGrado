/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.Html
 */
package android.support.v4.app;

import android.text.Html;

class ShareCompatJB {
    ShareCompatJB() {
    }

    public static String escapeHtml(CharSequence charSequence) {
        return Html.escapeHtml((CharSequence)charSequence);
    }
}

