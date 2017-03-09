/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.BackoffStrategy;
import com.adjust.sdk.CustomScheduledExecutor;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.ISdkClickHandler;
import com.adjust.sdk.ResponseData;
import com.adjust.sdk.Util;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.SocketTimeoutException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;

public class SdkClickHandler
implements ISdkClickHandler {
    private BackoffStrategy backoffStrategy;
    private ILogger logger;
    private List<ActivityPackage> packageQueue;
    private boolean paused;
    private CustomScheduledExecutor scheduledExecutor;

    public SdkClickHandler(boolean bl) {
        this.init(bl);
        this.logger = AdjustFactory.getLogger();
        this.scheduledExecutor = new CustomScheduledExecutor("SdkClickHandler");
        this.backoffStrategy = AdjustFactory.getSdkClickBackoffStrategy();
    }

    private void logErrorMessageI(ActivityPackage object, String string2, Throwable throwable) {
        object = String.format("%s. (%s)", object.getFailureMessage(), Util.getReasonString(string2, throwable));
        this.logger.error((String)object, new Object[0]);
    }

    private void retrySendingI(ActivityPackage activityPackage) {
        int n2 = activityPackage.increaseRetries();
        this.logger.error("Retrying sdk_click package for the %d time", n2);
        this.sendSdkClick(activityPackage);
    }

    private void sendNextSdkClick() {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                SdkClickHandler.this.sendNextSdkClickI();
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    private void sendNextSdkClickI() {
        if (this.paused || this.packageQueue.isEmpty()) {
            return;
        }
        Object object = this.packageQueue.remove(0);
        int n2 = object.getRetries();
        object = new Runnable((ActivityPackage)object){
            final /* synthetic */ ActivityPackage val$sdkClickPackage;

            @Override
            public void run() {
                SdkClickHandler.this.sendSdkClickI(this.val$sdkClickPackage);
                SdkClickHandler.this.sendNextSdkClick();
            }
        };
        if (n2 <= 0) {
            object.run();
            return;
        }
        long l2 = Util.getWaitingTime(n2, this.backoffStrategy);
        double d2 = (double)l2 / 1000.0;
        String string2 = Util.SecondsDisplayFormat.format(d2);
        this.logger.verbose("Waiting for %s seconds before retrying sdk_click for the %d time", string2, n2);
        this.scheduledExecutor.schedule((Runnable)object, l2, TimeUnit.MILLISECONDS);
    }

    private void sendSdkClickI(ActivityPackage activityPackage) {
        String string2 = "https://app.adjust.com" + activityPackage.getPath();
        try {
            if (Util.readHttpResponse((HttpsURLConnection)Util.createPOSTHttpsURLConnection((String)string2, (String)activityPackage.getClientSdk(), activityPackage.getParameters(), (int)(this.packageQueue.size() - 1)), (ActivityPackage)activityPackage).jsonResponse == null) {
                this.retrySendingI(activityPackage);
            }
            return;
        }
        catch (UnsupportedEncodingException var2_3) {
            this.logErrorMessageI(activityPackage, "Sdk_click failed to encode parameters", var2_3);
            return;
        }
        catch (SocketTimeoutException var2_4) {
            this.logErrorMessageI(activityPackage, "Sdk_click request timed out. Will retry later", var2_4);
            this.retrySendingI(activityPackage);
            return;
        }
        catch (IOException var2_5) {
            this.logErrorMessageI(activityPackage, "Sdk_click request failed. Will retry later", var2_5);
            this.retrySendingI(activityPackage);
            return;
        }
        catch (Throwable var2_6) {
            this.logErrorMessageI(activityPackage, "Sdk_click runtime exception", var2_6);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void init(boolean bl) {
        bl = !bl;
        this.paused = bl;
        this.packageQueue = new ArrayList<ActivityPackage>();
    }

    @Override
    public void pauseSending() {
        this.paused = true;
    }

    @Override
    public void resumeSending() {
        this.paused = false;
        this.sendNextSdkClick();
    }

    @Override
    public void sendSdkClick(final ActivityPackage activityPackage) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                SdkClickHandler.this.packageQueue.add(activityPackage);
                SdkClickHandler.this.logger.debug("Added sdk_click %d", SdkClickHandler.this.packageQueue.size());
                SdkClickHandler.this.logger.verbose("%s", activityPackage.getExtendedString());
                SdkClickHandler.this.sendNextSdkClick();
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void teardown() {
        this.logger.verbose("SdkClickHandler teardown", new Object[0]);
        if (this.scheduledExecutor != null) {
            try {
                this.scheduledExecutor.shutdownNow();
            }
            catch (SecurityException var1_1) {}
        }
        if (this.packageQueue != null) {
            this.packageQueue.clear();
        }
        this.scheduledExecutor = null;
        this.logger = null;
        this.packageQueue = null;
        this.backoffStrategy = null;
    }

}

