/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.hardware.fingerprint.FingerprintManager
 *  android.hardware.fingerprint.FingerprintManager$AuthenticationCallback
 *  android.hardware.fingerprint.FingerprintManager$AuthenticationResult
 *  android.hardware.fingerprint.FingerprintManager$CryptoObject
 *  android.os.CancellationSignal
 *  android.os.Handler
 */
package android.support.v4.hardware.fingerprint;

import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.os.CancellationSignal;
import android.os.Handler;
import android.support.annotation.RestrictTo;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public final class FingerprintManagerCompatApi23 {
    public static void authenticate(Context context, CryptoObject cryptoObject, int n2, Object object, AuthenticationCallback authenticationCallback, Handler handler) {
        FingerprintManagerCompatApi23.getFingerprintManager(context).authenticate(FingerprintManagerCompatApi23.wrapCryptoObject(cryptoObject), (CancellationSignal)object, n2, FingerprintManagerCompatApi23.wrapCallback(authenticationCallback), handler);
    }

    private static FingerprintManager getFingerprintManager(Context context) {
        return (FingerprintManager)context.getSystemService((Class)FingerprintManager.class);
    }

    public static boolean hasEnrolledFingerprints(Context context) {
        return FingerprintManagerCompatApi23.getFingerprintManager(context).hasEnrolledFingerprints();
    }

    public static boolean isHardwareDetected(Context context) {
        return FingerprintManagerCompatApi23.getFingerprintManager(context).isHardwareDetected();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static CryptoObject unwrapCryptoObject(FingerprintManager.CryptoObject cryptoObject) {
        if (cryptoObject == null) {
            return null;
        }
        if (cryptoObject.getCipher() != null) {
            return new CryptoObject(cryptoObject.getCipher());
        }
        if (cryptoObject.getSignature() != null) {
            return new CryptoObject(cryptoObject.getSignature());
        }
        if (cryptoObject.getMac() == null) return null;
        return new CryptoObject(cryptoObject.getMac());
    }

    private static FingerprintManager.AuthenticationCallback wrapCallback(final AuthenticationCallback authenticationCallback) {
        return new FingerprintManager.AuthenticationCallback(){

            public void onAuthenticationError(int n2, CharSequence charSequence) {
                authenticationCallback.onAuthenticationError(n2, charSequence);
            }

            public void onAuthenticationFailed() {
                authenticationCallback.onAuthenticationFailed();
            }

            public void onAuthenticationHelp(int n2, CharSequence charSequence) {
                authenticationCallback.onAuthenticationHelp(n2, charSequence);
            }

            public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult authenticationResult) {
                authenticationCallback.onAuthenticationSucceeded(new AuthenticationResultInternal(FingerprintManagerCompatApi23.unwrapCryptoObject(authenticationResult.getCryptoObject())));
            }
        };
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static FingerprintManager.CryptoObject wrapCryptoObject(CryptoObject cryptoObject) {
        if (cryptoObject == null) {
            return null;
        }
        if (cryptoObject.getCipher() != null) {
            return new FingerprintManager.CryptoObject(cryptoObject.getCipher());
        }
        if (cryptoObject.getSignature() != null) {
            return new FingerprintManager.CryptoObject(cryptoObject.getSignature());
        }
        if (cryptoObject.getMac() == null) return null;
        return new FingerprintManager.CryptoObject(cryptoObject.getMac());
    }

    public static abstract class AuthenticationCallback {
        public void onAuthenticationError(int n2, CharSequence charSequence) {
        }

        public void onAuthenticationFailed() {
        }

        public void onAuthenticationHelp(int n2, CharSequence charSequence) {
        }

        public void onAuthenticationSucceeded(AuthenticationResultInternal authenticationResultInternal) {
        }
    }

    public static final class AuthenticationResultInternal {
        private CryptoObject mCryptoObject;

        public AuthenticationResultInternal(CryptoObject cryptoObject) {
            this.mCryptoObject = cryptoObject;
        }

        public CryptoObject getCryptoObject() {
            return this.mCryptoObject;
        }
    }

    public static class CryptoObject {
        private final Cipher mCipher;
        private final Mac mMac;
        private final Signature mSignature;

        public CryptoObject(Signature signature) {
            this.mSignature = signature;
            this.mCipher = null;
            this.mMac = null;
        }

        public CryptoObject(Cipher cipher) {
            this.mCipher = cipher;
            this.mSignature = null;
            this.mMac = null;
        }

        public CryptoObject(Mac mac) {
            this.mMac = mac;
            this.mCipher = null;
            this.mSignature = null;
        }

        public Cipher getCipher() {
            return this.mCipher;
        }

        public Mac getMac() {
            return this.mMac;
        }

        public Signature getSignature() {
            return this.mSignature;
        }
    }

}

