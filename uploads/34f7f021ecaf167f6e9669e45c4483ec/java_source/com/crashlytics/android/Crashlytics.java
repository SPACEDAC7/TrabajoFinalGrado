/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android;

import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.beta.Beta;
import com.crashlytics.android.core.CrashlyticsCore;
import com.crashlytics.android.core.CrashlyticsListener;
import com.crashlytics.android.core.PinningInfoProvider;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.KitGroup;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

public class Crashlytics
extends Kit<Void>
implements KitGroup {
    public static final String TAG = "Crashlytics";
    public final Answers answers;
    public final Beta beta;
    public final CrashlyticsCore core;
    public final Collection<? extends Kit> kits;

    public Crashlytics() {
        this(new Answers(), new Beta(), new CrashlyticsCore());
    }

    Crashlytics(Answers answers, Beta beta, CrashlyticsCore crashlyticsCore) {
        this.answers = answers;
        this.beta = beta;
        this.core = crashlyticsCore;
        this.kits = Collections.unmodifiableCollection(Arrays.asList(answers, beta, crashlyticsCore));
    }

    private static void checkInitialized() {
        if (Crashlytics.getInstance() == null) {
            throw new IllegalStateException("Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()");
        }
    }

    public static Crashlytics getInstance() {
        return (Crashlytics)Fabric.getKit(Crashlytics.class);
    }

    public static PinningInfoProvider getPinningInfoProvider() {
        Crashlytics.checkInitialized();
        return Crashlytics.getInstance().core.getPinningInfoProvider();
    }

    public static void log(int n2, String string2, String string3) {
        Crashlytics.checkInitialized();
        Crashlytics.getInstance().core.log(n2, string2, string3);
    }

    public static void log(String string2) {
        Crashlytics.checkInitialized();
        Crashlytics.getInstance().core.log(string2);
    }

    public static void logException(Throwable throwable) {
        Crashlytics.checkInitialized();
        Crashlytics.getInstance().core.logException(throwable);
    }

    public static void setBool(String string2, boolean bl) {
        Crashlytics.checkInitialized();
        Crashlytics.getInstance().core.setBool(string2, bl);
    }

    public static void setDouble(String string2, double d2) {
        Crashlytics.checkInitialized();
        Crashlytics.getInstance().core.setDouble(string2, d2);
    }

    public static void setFloat(String string2, float f2) {
        Crashlytics.checkInitialized();
        Crashlytics.getInstance().core.setFloat(string2, f2);
    }

    public static void setInt(String string2, int n2) {
        Crashlytics.checkInitialized();
        Crashlytics.getInstance().core.setInt(string2, n2);
    }

    public static void setLong(String string2, long l2) {
        Crashlytics.checkInitialized();
        Crashlytics.getInstance().core.setLong(string2, l2);
    }

    @Deprecated
    public static void setPinningInfoProvider(PinningInfoProvider pinningInfoProvider) {
        Fabric.getLogger().w("Crashlytics", "Use of Crashlytics.setPinningInfoProvider is deprecated");
    }

    public static void setString(String string2, String string3) {
        Crashlytics.checkInitialized();
        Crashlytics.getInstance().core.setString(string2, string3);
    }

    public static void setUserEmail(String string2) {
        Crashlytics.checkInitialized();
        Crashlytics.getInstance().core.setUserEmail(string2);
    }

    public static void setUserIdentifier(String string2) {
        Crashlytics.checkInitialized();
        Crashlytics.getInstance().core.setUserIdentifier(string2);
    }

    public static void setUserName(String string2) {
        Crashlytics.checkInitialized();
        Crashlytics.getInstance().core.setUserName(string2);
    }

    public void crash() {
        this.core.crash();
    }

    @Override
    protected Void doInBackground() {
        return null;
    }

    @Deprecated
    public boolean getDebugMode() {
        Fabric.getLogger().w("Crashlytics", "Use of Crashlytics.getDebugMode is deprecated.");
        this.getFabric();
        return Fabric.isDebuggable();
    }

    @Override
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:crashlytics";
    }

    @Override
    public Collection<? extends Kit> getKits() {
        return this.kits;
    }

    @Override
    public String getVersion() {
        return "2.5.5.97";
    }

    @Deprecated
    public void setDebugMode(boolean bl) {
        Fabric.getLogger().w("Crashlytics", "Use of Crashlytics.setDebugMode is deprecated.");
    }

    @Deprecated
    public void setListener(CrashlyticsListener crashlyticsListener) {
        synchronized (this) {
            this.core.setListener(crashlyticsListener);
            return;
        }
    }

    public boolean verifyPinning(URL uRL) {
        return this.core.verifyPinning(uRL);
    }

    public static class Builder {
        private Answers answers;
        private Beta beta;
        private CrashlyticsCore core;
        private CrashlyticsCore.Builder coreBuilder;

        private CrashlyticsCore.Builder getCoreBuilder() {
            synchronized (this) {
                if (this.coreBuilder == null) {
                    this.coreBuilder = new CrashlyticsCore.Builder();
                }
                CrashlyticsCore.Builder builder = this.coreBuilder;
                return builder;
            }
        }

        public Builder answers(Answers answers) {
            if (answers == null) {
                throw new NullPointerException("Answers Kit must not be null.");
            }
            if (this.answers != null) {
                throw new IllegalStateException("Answers Kit already set.");
            }
            this.answers = answers;
            return this;
        }

        public Builder beta(Beta beta) {
            if (beta == null) {
                throw new NullPointerException("Beta Kit must not be null.");
            }
            if (this.beta != null) {
                throw new IllegalStateException("Beta Kit already set.");
            }
            this.beta = beta;
            return this;
        }

        public Crashlytics build() {
            if (this.coreBuilder != null) {
                if (this.core != null) {
                    throw new IllegalStateException("Must not use Deprecated methods delay(), disabled(), listener(), pinningInfoProvider() with core()");
                }
                this.core = this.coreBuilder.build();
            }
            if (this.answers == null) {
                this.answers = new Answers();
            }
            if (this.beta == null) {
                this.beta = new Beta();
            }
            if (this.core == null) {
                this.core = new CrashlyticsCore();
            }
            return new Crashlytics(this.answers, this.beta, this.core);
        }

        public Builder core(CrashlyticsCore crashlyticsCore) {
            if (crashlyticsCore == null) {
                throw new NullPointerException("CrashlyticsCore Kit must not be null.");
            }
            if (this.core != null) {
                throw new IllegalStateException("CrashlyticsCore Kit already set.");
            }
            this.core = crashlyticsCore;
            return this;
        }

        @Deprecated
        public Builder delay(float f2) {
            this.getCoreBuilder().delay(f2);
            return this;
        }

        @Deprecated
        public Builder disabled(boolean bl) {
            this.getCoreBuilder().disabled(bl);
            return this;
        }

        @Deprecated
        public Builder listener(CrashlyticsListener crashlyticsListener) {
            this.getCoreBuilder().listener(crashlyticsListener);
            return this;
        }

        @Deprecated
        public Builder pinningInfo(PinningInfoProvider pinningInfoProvider) {
            this.getCoreBuilder().pinningInfo(pinningInfoProvider);
            return this;
        }
    }

}

