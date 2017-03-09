/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Handler
 */
package android.support.v4.hardware.fingerprint;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.hardware.fingerprint.FingerprintManagerCompatApi23;
import android.support.v4.os.CancellationSignal;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

public final class FingerprintManagerCompat {
    static final FingerprintManagerCompatImpl IMPL = Build.VERSION.SDK_INT >= 23 ? new Api23FingerprintManagerCompatImpl() : new LegacyFingerprintManagerCompatImpl();
    private Context mContext;

    private FingerprintManagerCompat(Context context) {
        this.mContext = context;
    }

    public static FingerprintManagerCompat from(Context context) {
        return new FingerprintManagerCompat(context);
    }

    public void authenticate(@Nullable CryptoObject cryptoObject, int n2, @Nullable CancellationSignal cancellationSignal, @NonNull AuthenticationCallback authenticationCallback, @Nullable Handler handler) {
        IMPL.authenticate(this.mContext, cryptoObject, n2, cancellationSignal, authenticationCallback, handler);
    }

    public boolean hasEnrolledFingerprints() {
        return IMPL.hasEnrolledFingerprints(this.mContext);
    }

    public boolean isHardwareDetected() {
        return IMPL.isHardwareDetected(this.mContext);
    }

    private static class Api23FingerprintManagerCompatImpl
    implements FingerprintManagerCompatImpl {
        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        static CryptoObject unwrapCryptoObject(FingerprintManagerCompatApi23.CryptoObject cryptoObject) {
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

        private static FingerprintManagerCompatApi23.AuthenticationCallback wrapCallback(final AuthenticationCallback authenticationCallback) {
            return new FingerprintManagerCompatApi23.AuthenticationCallback(){

                @Override
                public void onAuthenticationError(int n2, CharSequence charSequence) {
                    authenticationCallback.onAuthenticationError(n2, charSequence);
                }

                @Override
                public void onAuthenticationFailed() {
                    authenticationCallback.onAuthenticationFailed();
                }

                @Override
                public void onAuthenticationHelp(int n2, CharSequence charSequence) {
                    authenticationCallback.onAuthenticationHelp(n2, charSequence);
                }

                @Override
                public void onAuthenticationSucceeded(FingerprintManagerCompatApi23.AuthenticationResultInternal authenticationResultInternal) {
                    authenticationCallback.onAuthenticationSucceeded(new AuthenticationResult(Api23FingerprintManagerCompatImpl.unwrapCryptoObject(authenticationResultInternal.getCryptoObject())));
                }
            };
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        private static FingerprintManagerCompatApi23.CryptoObject wrapCryptoObject(CryptoObject cryptoObject) {
            if (cryptoObject == null) {
                return null;
            }
            if (cryptoObject.getCipher() != null) {
                return new FingerprintManagerCompatApi23.CryptoObject(cryptoObject.getCipher());
            }
            if (cryptoObject.getSignature() != null) {
                return new FingerprintManagerCompatApi23.CryptoObject(cryptoObject.getSignature());
            }
            if (cryptoObject.getMac() == null) return null;
            return new FingerprintManagerCompatApi23.CryptoObject(cryptoObject.getMac());
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void authenticate(Context context, CryptoObject object, int n2, CancellationSignal cancellationSignal, AuthenticationCallback authenticationCallback, Handler handler) {
            FingerprintManagerCompatApi23.CryptoObject cryptoObject = Api23FingerprintManagerCompatImpl.wrapCryptoObject((CryptoObject)object);
            object = cancellationSignal != null ? cancellationSignal.getCancellationSignalObject() : null;
            FingerprintManagerCompatApi23.authenticate(context, cryptoObject, n2, object, Api23FingerprintManagerCompatImpl.wrapCallback(authenticationCallback), handler);
        }

        @Override
        public boolean hasEnrolledFingerprints(Context context) {
            return FingerprintManagerCompatApi23.hasEnrolledFingerprints(context);
        }

        @Override
        public boolean isHardwareDetected(Context context) {
            return FingerprintManagerCompatApi23.isHardwareDetected(context);
        }

    }

    public static abstract class AuthenticationCallback {
        public void onAuthenticationError(int n2, CharSequence charSequence) {
        }

        public void onAuthenticationFailed() {
        }

        public void onAuthenticationHelp(int n2, CharSequence charSequence) {
        }

        public void onAuthenticationSucceeded(AuthenticationResult authenticationResult) {
        }
    }

    public static final class AuthenticationResult {
        private CryptoObject mCryptoObject;

        public AuthenticationResult(CryptoObject cryptoObject) {
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

    private static interface FingerprintManagerCompatImpl {
        public void authenticate(Context var1, CryptoObject var2, int var3, CancellationSignal var4, AuthenticationCallback var5, Handler var6);

        public boolean hasEnrolledFingerprints(Context var1);

        public boolean isHardwareDetected(Context var1);
    }

    private static class LegacyFingerprintManagerCompatImpl
    implements FingerprintManagerCompatImpl {
        @Override
        public void authenticate(Context context, CryptoObject cryptoObject, int n2, CancellationSignal cancellationSignal, AuthenticationCallback authenticationCallback, Handler handler) {
        }

        @Override
        public boolean hasEnrolledFingerprints(Context context) {
            return false;
        }

        @Override
        public boolean isHardwareDetected(Context context) {
            return false;
        }
    }

}

