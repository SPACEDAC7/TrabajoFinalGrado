/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  okhttp3.logging.HttpLoggingInterceptor
 *  okhttp3.logging.HttpLoggingInterceptor$Level
 *  okhttp3.logging.HttpLoggingInterceptor$Logger
 */
package com.buzzfeed.toolkit.networking;

import com.buzzfeed.toolkit.util.LogUtil;
import okhttp3.logging.HttpLoggingInterceptor;

public class NetworkConfig {
    private static NetworkConfig sInstance;
    private HttpLoggingInterceptor mHttpLoggingInterceptor;

    private NetworkConfig() {
        this.mHttpLoggingInterceptor = new HttpLoggingInterceptor((HttpLoggingInterceptor.Logger)new NetworkLogger());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static NetworkConfig getInstance() {
        if (sInstance == null) {
            synchronized (NetworkConfig.class) {
                if (sInstance == null) {
                    sInstance = new NetworkConfig();
                }
            }
        }
        return sInstance;
    }

    public HttpLoggingInterceptor getHttpLoggingInterceptor() {
        return this.mHttpLoggingInterceptor;
    }

    public void setLogLevel(LogLevel logLevel) {
        this.mHttpLoggingInterceptor.setLevel(logLevel.LEVEL);
    }

    public static enum LogLevel {
        NONE(HttpLoggingInterceptor.Level.NONE),
        BASIC(HttpLoggingInterceptor.Level.BASIC),
        HEADERS(HttpLoggingInterceptor.Level.HEADERS),
        BODY(HttpLoggingInterceptor.Level.BODY);
        
        HttpLoggingInterceptor.Level LEVEL;

        private LogLevel(HttpLoggingInterceptor.Level level) {
            this.LEVEL = level;
        }

        public static LogLevel getLogLevelWithName(String string2) {
            for (LogLevel logLevel : LogLevel.values()) {
                if (!logLevel.name().equals(string2)) continue;
                return logLevel;
            }
            return null;
        }

        public static LogLevel getLogLevelWithOrdinal(int n2) {
            return LogLevel.values()[n2];
        }

        public static String[] nameValues() {
            LogLevel[] arrlogLevel = LogLevel.values();
            String[] arrstring = new String[arrlogLevel.length];
            for (int i2 = 0; i2 < arrlogLevel.length; ++i2) {
                arrstring[i2] = arrlogLevel[i2].name();
            }
            return arrstring;
        }
    }

    private class NetworkLogger
    implements HttpLoggingInterceptor.Logger {
        private NetworkLogger() {
        }

        public void log(String string2) {
            LogUtil.d("NetworkLogger.log", string2);
        }
    }

}

