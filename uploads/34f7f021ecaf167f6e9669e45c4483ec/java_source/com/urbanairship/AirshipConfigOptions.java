/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  com.urbanairship.AirshipConfigOptions$1
 *  com.urbanairship.ConfigParser
 *  com.urbanairship.Logger
 *  com.urbanairship.PropertiesConfigParser
 *  com.urbanairship.XmlConfigParser
 *  com.urbanairship.util.UAStringUtil
 */
package com.urbanairship;

import android.content.Context;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.XmlRes;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.ConfigParser;
import com.urbanairship.Logger;
import com.urbanairship.PropertiesConfigParser;
import com.urbanairship.XmlConfigParser;
import com.urbanairship.util.UAStringUtil;

public class AirshipConfigOptions {
    public static final String ADM_TRANSPORT = "ADM";
    private static final int DEFAULT_DEVELOPMENT_LOG_LEVEL = 3;
    private static final int DEFAULT_PRODUCTION_LOG_LEVEL = 6;
    private static final String DEFAULT_PROPERTIES_FILENAME = "airshipconfig.properties";
    public static final String GCM_TRANSPORT = "GCM";
    private static final int MAX_BG_REPORTING_INTERVAL_MS = 86400000;
    private static final int MIN_BG_REPORTING_INTERVAL_MS = 60000;
    @Nullable
    public final String[] allowedTransports;
    public final boolean analyticsEnabled;
    public final String analyticsServer;
    public final boolean autoLaunchApplication;
    public final long backgroundReportingIntervalMS;
    public final boolean channelCaptureEnabled;
    public final boolean channelCreationDelayEnabled;
    public final boolean clearNamedUser;
    public final String developmentAppKey;
    public final String developmentAppSecret;
    public final int developmentLogLevel;
    public final String gcmSender;
    public final String hostURL;
    public final boolean inProduction;
    public final String landingPageContentURL;
    @ColorInt
    public final int notificationAccentColor;
    @DrawableRes
    public final int notificationIcon;
    public final String productionAppKey;
    public final String productionAppSecret;
    public final int productionLogLevel;
    public final String walletUrl;
    @Nullable
    public final String[] whitelist;

    private AirshipConfigOptions(Builder builder) {
        this.productionAppKey = builder.productionAppKey;
        this.productionAppSecret = builder.productionAppSecret;
        this.developmentAppKey = builder.developmentAppKey;
        this.developmentAppSecret = builder.developmentAppSecret;
        this.hostURL = builder.hostURL;
        this.analyticsServer = builder.analyticsServer;
        this.landingPageContentURL = builder.landingPageContentURL;
        this.gcmSender = builder.gcmSender;
        this.allowedTransports = builder.allowedTransports;
        this.whitelist = builder.whitelist;
        this.inProduction = builder.inProduction;
        this.analyticsEnabled = builder.analyticsEnabled;
        this.backgroundReportingIntervalMS = builder.backgroundReportingIntervalMS;
        this.clearNamedUser = builder.clearNamedUser;
        this.developmentLogLevel = builder.developmentLogLevel;
        this.productionLogLevel = builder.productionLogLevel;
        this.autoLaunchApplication = builder.autoLaunchApplication;
        this.channelCreationDelayEnabled = builder.channelCreationDelayEnabled;
        this.channelCaptureEnabled = builder.channelCaptureEnabled;
        this.notificationIcon = builder.notificationIcon;
        this.notificationAccentColor = builder.notificationAccentColor;
        this.walletUrl = builder.walletUrl;
    }

    public String getAppKey() {
        if (this.inProduction) {
            return this.productionAppKey;
        }
        return this.developmentAppKey;
    }

    public String getAppSecret() {
        if (this.inProduction) {
            return this.productionAppSecret;
        }
        return this.developmentAppSecret;
    }

    public int getLoggerLevel() {
        if (this.inProduction) {
            return this.productionLogLevel;
        }
        return this.developmentLogLevel;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean isTransportAllowed(String string2) {
        if (this.allowedTransports == null || string2 == null) {
            return false;
        }
        String[] arrstring = this.allowedTransports;
        int n2 = arrstring.length;
        int n3 = 0;
        while (n3 < n2) {
            if (string2.equalsIgnoreCase(arrstring[n3])) {
                return true;
            }
            ++n3;
        }
        return false;
    }

    public static final class Builder {
        private static final String FIELD_ALLOWED_TRANSPORTS = "allowedTransports";
        private static final String FIELD_ANALYTICS_ENABLED = "analyticsEnabled";
        private static final String FIELD_ANALYTICS_SERVER = "analyticsServer";
        private static final String FIELD_AUTO_LAUNCH_APPLICATION = "autoLaunchApplication";
        private static final String FIELD_BACKGROUND_REPORTING_INTERVAL_MS = "backgroundReportingIntervalMS";
        private static final String FIELD_CHANNEL_CAPTURE_ENABLED = "channelCaptureEnabled";
        private static final String FIELD_CHANNEL_CREATION_DELAY_ENABLED = "channelCreationDelayEnabled";
        private static final String FIELD_CLEAR_NAMED_USER = "clearNamedUser";
        private static final String FIELD_DEVELOPMENT_APP_KEY = "developmentAppKey";
        private static final String FIELD_DEVELOPMENT_APP_SECRET = "developmentAppSecret";
        private static final String FIELD_DEVELOPMENT_LOG_LEVEL = "developmentLogLevel";
        private static final String FIELD_GCM_SENDER = "gcmSender";
        private static final String FIELD_HOST_URL = "hostURL";
        private static final String FIELD_IN_PRODUCTION = "inProduction";
        private static final String FIELD_LANDING_PAGE_CONTENT_URL = "landingPageContentURL";
        private static final String FIELD_NOTIFICATION_ACCENT_COLOR = "notificationAccentColor";
        private static final String FIELD_NOTIFICATION_ICON = "notificationIcon";
        private static final String FIELD_PRODUCTION_APP_KEY = "productionAppKey";
        private static final String FIELD_PRODUCTION_APP_SECRET = "productionAppSecret";
        private static final String FIELD_PRODUCTION_LOG_LEVEL = "productionLogLevel";
        private static final String FIELD_WALLET_URL = "walletUrl";
        private static final String FIELD_WHITELIST = "whitelist";
        private String[] allowedTransports = new String[]{"ADM", "GCM"};
        private boolean analyticsEnabled = true;
        private String analyticsServer = "https://combine.urbanairship.com/";
        private boolean autoLaunchApplication = true;
        private long backgroundReportingIntervalMS = 900000;
        private boolean channelCaptureEnabled = true;
        private boolean channelCreationDelayEnabled = false;
        private boolean clearNamedUser = false;
        private String developmentAppKey;
        private String developmentAppSecret;
        private int developmentLogLevel = 3;
        private String gcmSender;
        private String hostURL = "https://device-api.urbanairship.com/";
        private boolean inProduction = false;
        private String landingPageContentURL = "https://dl.urbanairship.com/aaa/";
        private int notificationAccentColor;
        private int notificationIcon;
        private String productionAppKey;
        private String productionAppSecret;
        private int productionLogLevel = 6;
        private String walletUrl = "https://wallet-api.urbanairship.com";
        private String[] whitelist = null;

        /*
         * Exception decompiling
         */
        private void applyConfig(ConfigParser var1_1) {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:143)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:385)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:65)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:425)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:664)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:747)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
            // org.benf.cfr.reader.Main.doJar(Main.java:129)
            // org.benf.cfr.reader.Main.main(Main.java:181)
            throw new IllegalStateException("Decompilation failed");
        }

        public Builder applyConfig(@NonNull Context context, @XmlRes int n2) {
            try {
                context = new XmlConfigParser(context, n2);
                this.applyConfig((ConfigParser)context);
                context.close();
                return this;
            }
            catch (Exception var1_2) {
                Logger.error((String)"AirshipConfigOptions - Unable to apply config.", (Throwable)var1_2);
                return this;
            }
        }

        public Builder applyDefaultProperties(@NonNull Context context) {
            return this.applyProperties(context, "airshipconfig.properties");
        }

        public Builder applyProperties(@NonNull Context context, @NonNull String string2) {
            try {
                this.applyConfig((ConfigParser)new PropertiesConfigParser(context, string2));
                return this;
            }
            catch (Exception var1_2) {
                Logger.error((String)"AirshipConfigOptions - Unable to apply config.", (Throwable)var1_2);
                return this;
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        public AirshipConfigOptions build() {
            String string2 = this.inProduction ? "production" : "development";
            String string3 = this.inProduction ? this.productionAppKey : this.developmentAppKey;
            if (string3 == null || string3.length() == 0 || string3.indexOf(32) > 0) {
                throw new IllegalArgumentException("AirshipConfigOptions: " + string3 + " is not a valid " + string2 + " app key");
            }
            string3 = this.inProduction ? this.productionAppSecret : this.developmentAppSecret;
            if (string3 == null || string3.length() == 0 || string3.indexOf(32) > 0) {
                throw new IllegalArgumentException("AirshipConfigOptions: " + string3 + " is not a valid " + string2 + " app secret");
            }
            if (this.analyticsEnabled && UAStringUtil.isEmpty((String)this.analyticsServer)) {
                throw new IllegalArgumentException("Invalid config - analyticsServer is empty or null.");
            }
            if (UAStringUtil.isEmpty((String)this.hostURL)) {
                throw new IllegalArgumentException("Invalid config - hostURL is empty or null.");
            }
            if (this.backgroundReportingIntervalMS < 60000) {
                Logger.warn((String)("AirshipConfigOptions - The backgroundReportingIntervalMS " + this.backgroundReportingIntervalMS + " may decrease battery life."));
            } else if (this.backgroundReportingIntervalMS > 86400000) {
                Logger.warn((String)("AirshipConfigOptions - The backgroundReportingIntervalMS " + this.backgroundReportingIntervalMS + " may provide less detailed analytic reports."));
            }
            if (this.productionAppKey != null && this.productionAppKey.equals(this.developmentAppKey)) {
                Logger.warn((String)"Production App Key matches Development App Key");
            }
            if (this.productionAppSecret != null && this.productionAppSecret.equals(this.developmentAppSecret)) {
                Logger.warn((String)"Production App Secret matches Development App Secret");
            }
            return new AirshipConfigOptions(this);
        }

        public Builder setAllowedTransports(String[] arrstring) {
            this.allowedTransports = arrstring;
            return this;
        }

        public Builder setAnalyticsEnabled(boolean bl) {
            this.analyticsEnabled = bl;
            return this;
        }

        public Builder setAnalyticsServer(String string2) {
            this.analyticsServer = string2;
            return this;
        }

        public Builder setAutoLaunchApplication(boolean bl) {
            this.autoLaunchApplication = bl;
            return this;
        }

        public Builder setBackgroundReportingIntervalMS(long l2) {
            this.backgroundReportingIntervalMS = l2;
            return this;
        }

        public Builder setChannelCaptureEnabled(boolean bl) {
            this.channelCaptureEnabled = bl;
            return this;
        }

        public Builder setChannelCreationDelayEnabled(boolean bl) {
            this.channelCreationDelayEnabled = bl;
            return this;
        }

        public Builder setClearNamedUser(boolean bl) {
            this.clearNamedUser = bl;
            return this;
        }

        public Builder setDevelopmentAppKey(String string2) {
            this.developmentAppKey = string2;
            return this;
        }

        public Builder setDevelopmentAppSecret(String string2) {
            this.developmentAppSecret = string2;
            return this;
        }

        public Builder setDevelopmentLogLevel(int n2) {
            this.developmentLogLevel = n2;
            return this;
        }

        public Builder setGcmSender(String string2) {
            this.gcmSender = string2;
            return this;
        }

        public Builder setHostURL(String string2) {
            this.hostURL = string2;
            return this;
        }

        public Builder setInProduction(boolean bl) {
            this.inProduction = bl;
            return this;
        }

        public Builder setLandingPageContentURL(String string2) {
            this.landingPageContentURL = string2;
            return this;
        }

        public Builder setNotificationAccentColor(@ColorInt int n2) {
            this.notificationAccentColor = n2;
            return this;
        }

        public Builder setNotificationIcon(@DrawableRes int n2) {
            this.notificationIcon = n2;
            return this;
        }

        public Builder setProductionAppKey(String string2) {
            this.productionAppKey = string2;
            return this;
        }

        public Builder setProductionAppSecret(String string2) {
            this.productionAppSecret = string2;
            return this;
        }

        public Builder setProductionLogLevel(int n2) {
            this.productionLogLevel = n2;
            return this;
        }

        public Builder setWalletUrl(String string2) {
            this.walletUrl = string2;
            return this;
        }

        public Builder setWhitelist(String[] arrstring) {
            this.whitelist = arrstring;
            return this;
        }
    }

}

