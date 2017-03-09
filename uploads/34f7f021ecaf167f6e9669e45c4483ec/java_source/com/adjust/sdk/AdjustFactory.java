/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.adjust.sdk;

import android.content.Context;
import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.AdjustConfig;
import com.adjust.sdk.AttributionHandler;
import com.adjust.sdk.BackoffStrategy;
import com.adjust.sdk.IActivityHandler;
import com.adjust.sdk.IAttributionHandler;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.IPackageHandler;
import com.adjust.sdk.IRequestHandler;
import com.adjust.sdk.ISdkClickHandler;
import com.adjust.sdk.Logger;
import com.adjust.sdk.PackageHandler;
import com.adjust.sdk.RequestHandler;
import com.adjust.sdk.SdkClickHandler;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

public class AdjustFactory {
    private static IActivityHandler activityHandler;
    private static IAttributionHandler attributionHandler;
    private static HttpsURLConnection httpsURLConnection;
    private static ILogger logger;
    private static long maxDelayStart;
    private static IPackageHandler packageHandler;
    private static BackoffStrategy packageHandlerBackoffStrategy;
    private static IRequestHandler requestHandler;
    private static BackoffStrategy sdkClickBackoffStrategy;
    private static ISdkClickHandler sdkClickHandler;
    private static long sessionInterval;
    private static long subsessionInterval;
    private static long timerInterval;
    private static long timerStart;

    static {
        packageHandler = null;
        requestHandler = null;
        attributionHandler = null;
        activityHandler = null;
        logger = null;
        httpsURLConnection = null;
        sdkClickHandler = null;
        timerInterval = -1;
        timerStart = -1;
        sessionInterval = -1;
        subsessionInterval = -1;
        sdkClickBackoffStrategy = null;
        packageHandlerBackoffStrategy = null;
        maxDelayStart = -1;
    }

    public static IActivityHandler getActivityHandler(AdjustConfig adjustConfig) {
        if (activityHandler == null) {
            return ActivityHandler.getInstance(adjustConfig);
        }
        activityHandler.init(adjustConfig);
        return activityHandler;
    }

    public static IAttributionHandler getAttributionHandler(IActivityHandler iActivityHandler, ActivityPackage activityPackage, boolean bl) {
        if (attributionHandler == null) {
            return new AttributionHandler(iActivityHandler, activityPackage, bl);
        }
        attributionHandler.init(iActivityHandler, activityPackage, bl);
        return attributionHandler;
    }

    public static HttpsURLConnection getHttpsURLConnection(URL uRL) throws IOException {
        if (httpsURLConnection == null) {
            return (HttpsURLConnection)uRL.openConnection();
        }
        return httpsURLConnection;
    }

    public static URLGetConnection getHttpsURLGetConnection(URL uRL) throws IOException {
        if (httpsURLConnection == null) {
            return new URLGetConnection((HttpsURLConnection)uRL.openConnection(), uRL);
        }
        return new URLGetConnection(httpsURLConnection, uRL);
    }

    public static ILogger getLogger() {
        if (logger == null) {
            logger = new Logger();
        }
        return logger;
    }

    public static long getMaxDelayStart() {
        if (maxDelayStart == -1) {
            return 10000;
        }
        return maxDelayStart;
    }

    public static IPackageHandler getPackageHandler(ActivityHandler activityHandler, Context context, boolean bl) {
        if (packageHandler == null) {
            return new PackageHandler(activityHandler, context, bl);
        }
        packageHandler.init(activityHandler, context, bl);
        return packageHandler;
    }

    public static BackoffStrategy getPackageHandlerBackoffStrategy() {
        if (packageHandlerBackoffStrategy == null) {
            return BackoffStrategy.LONG_WAIT;
        }
        return packageHandlerBackoffStrategy;
    }

    public static IRequestHandler getRequestHandler(IPackageHandler iPackageHandler) {
        if (requestHandler == null) {
            return new RequestHandler(iPackageHandler);
        }
        requestHandler.init(iPackageHandler);
        return requestHandler;
    }

    public static BackoffStrategy getSdkClickBackoffStrategy() {
        if (sdkClickBackoffStrategy == null) {
            return BackoffStrategy.SHORT_WAIT;
        }
        return sdkClickBackoffStrategy;
    }

    public static ISdkClickHandler getSdkClickHandler(boolean bl) {
        if (sdkClickHandler == null) {
            return new SdkClickHandler(bl);
        }
        sdkClickHandler.init(bl);
        return sdkClickHandler;
    }

    public static long getSessionInterval() {
        if (sessionInterval == -1) {
            return 1800000;
        }
        return sessionInterval;
    }

    public static long getSubsessionInterval() {
        if (subsessionInterval == -1) {
            return 1000;
        }
        return subsessionInterval;
    }

    public static long getTimerInterval() {
        if (timerInterval == -1) {
            return 60000;
        }
        return timerInterval;
    }

    public static long getTimerStart() {
        if (timerStart == -1) {
            return 60000;
        }
        return timerStart;
    }

    public static void setActivityHandler(IActivityHandler iActivityHandler) {
        activityHandler = iActivityHandler;
    }

    public static void setAttributionHandler(IAttributionHandler iAttributionHandler) {
        attributionHandler = iAttributionHandler;
    }

    public static void setHttpsURLConnection(HttpsURLConnection httpsURLConnection) {
        AdjustFactory.httpsURLConnection = httpsURLConnection;
    }

    public static void setLogger(ILogger iLogger) {
        logger = iLogger;
    }

    public static void setPackageHandler(IPackageHandler iPackageHandler) {
        packageHandler = iPackageHandler;
    }

    public static void setPackageHandlerBackoffStrategy(BackoffStrategy backoffStrategy) {
        packageHandlerBackoffStrategy = backoffStrategy;
    }

    public static void setRequestHandler(IRequestHandler iRequestHandler) {
        requestHandler = iRequestHandler;
    }

    public static void setSdkClickBackoffStrategy(BackoffStrategy backoffStrategy) {
        sdkClickBackoffStrategy = backoffStrategy;
    }

    public static void setSdkClickHandler(ISdkClickHandler iSdkClickHandler) {
        sdkClickHandler = iSdkClickHandler;
    }

    public static void setSessionInterval(long l2) {
        sessionInterval = l2;
    }

    public static void setSubsessionInterval(long l2) {
        subsessionInterval = l2;
    }

    public static void setTimerInterval(long l2) {
        timerInterval = l2;
    }

    public static void setTimerStart(long l2) {
        timerStart = l2;
    }

    public static class URLGetConnection {
        HttpsURLConnection httpsURLConnection;
        URL url;

        URLGetConnection(HttpsURLConnection httpsURLConnection, URL uRL) {
            this.httpsURLConnection = httpsURLConnection;
            this.url = uRL;
        }
    }

}

