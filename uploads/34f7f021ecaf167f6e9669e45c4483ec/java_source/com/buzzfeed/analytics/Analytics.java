/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.analytics;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.buzzfeed.analytics.provider.LoginStatusProvider;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;

public final class Analytics {
    private static final String TAG = LogUtil.makeLogTag(Analytics.class);
    private static Analytics sInstance;
    @NonNull
    private Context mAppContext;
    @NonNull
    private Configuration mConfiguration;

    private Analytics(@NonNull Context context, @NonNull Configuration configuration) {
        this.mAppContext = context;
        this.mConfiguration = configuration;
    }

    public static Analytics getInstance() {
        return EZUtil.checkNotNull(sInstance, "Analytics must be initialized before calling getInstance().");
    }

    public static void initializeWith(@NonNull Context context, @NonNull Configuration configuration) {
        synchronized (Analytics.class) {
            if (sInstance == null) {
                EZUtil.checkNotNull(context, "Context must not be null.");
                EZUtil.checkNotNull(configuration, "Configuration must not be null.");
                sInstance = new Analytics(context.getApplicationContext(), configuration);
                LogUtil.d(TAG, "BuzzFeed Analytics module initialized.");
            }
            return;
        }
    }

    @NonNull
    public Context getApplicationContext() {
        return this.mAppContext;
    }

    @NonNull
    public Configuration getConfiguration() {
        return this.mConfiguration;
    }

    public static class Configuration {
        private final String mAppName;
        private final String mBuildEnvironment;
        private final String mEdition;
        private final boolean mIsProductionBuild;
        private final boolean mIsPushEnabled;
        @Nullable
        private final LoginStatusProvider mLoginStatusProvider;

        private Configuration(Builder builder) {
            this.mLoginStatusProvider = builder.loginStatusProvider;
            this.mEdition = builder.edition;
            this.mBuildEnvironment = builder.buildEnvironment;
            this.mIsProductionBuild = builder.isProductionBuild;
            this.mIsPushEnabled = builder.isPushEnabled;
            this.mAppName = builder.appName;
        }

        public String getAppName() {
            return this.mAppName;
        }

        public String getBuildEnvironment() {
            return this.mBuildEnvironment;
        }

        public String getEdition() {
            return this.mEdition;
        }

        @Nullable
        public LoginStatusProvider getLoginStatusProvider() {
            return this.mLoginStatusProvider;
        }

        public boolean isProductionBuild() {
            return this.mIsProductionBuild;
        }

        public boolean isPushEnabled() {
            return this.mIsPushEnabled;
        }

        public static class Builder {
            private final String appName;
            private String buildEnvironment = "";
            private String edition = "";
            private boolean isProductionBuild = false;
            private boolean isPushEnabled = false;
            private LoginStatusProvider loginStatusProvider = null;

            public Builder(String string2) {
                this.appName = string2;
            }

            public Configuration build() {
                return new Configuration(this);
            }

            public Builder withBuildEnvironment(String string2) {
                this.buildEnvironment = string2;
                return this;
            }

            public Builder withEdition(String string2) {
                this.edition = string2;
                return this;
            }

            public Builder withLoginStatusProvider(LoginStatusProvider loginStatusProvider) {
                this.loginStatusProvider = loginStatusProvider;
                return this;
            }

            public Builder withProductionEnabled(boolean bl) {
                this.isProductionBuild = bl;
                return this;
            }

            public Builder withPushNotificationsEnabled(boolean bl) {
                this.isPushEnabled = bl;
                return this;
            }
        }

    }

}

