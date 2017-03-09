/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.ParcelFileDescriptor
 *  android.os.ParcelFileDescriptor$AutoCloseInputStream
 *  android.os.ParcelFileDescriptor$AutoCloseOutputStream
 *  android.text.TextUtils
 */
package jackpal.androidterm;

import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import jackpal.androidterm.GenericTermSession;
import jackpal.androidterm.util.TermSettings;
import java.io.InputStream;
import java.io.OutputStream;

class BoundSession
extends GenericTermSession {
    private boolean fullyInitialized;
    private final String issuerTitle;

    BoundSession(ParcelFileDescriptor parcelFileDescriptor, TermSettings termSettings, String string2) {
        super(parcelFileDescriptor, termSettings, true);
        this.issuerTitle = string2;
        this.setTermIn((InputStream)new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
        this.setTermOut((OutputStream)new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor));
    }

    @Override
    public String getTitle() {
        String string2 = super.getTitle();
        if (TextUtils.isEmpty((CharSequence)string2)) {
            return this.issuerTitle;
        }
        return this.issuerTitle + " \u2014 " + string2;
    }

    @Override
    public void initializeEmulator(int n, int n2) {
        super.initializeEmulator(n, n2);
        this.fullyInitialized = true;
    }

    @Override
    boolean isFailFast() {
        if (!this.fullyInitialized) {
            return true;
        }
        return false;
    }
}

