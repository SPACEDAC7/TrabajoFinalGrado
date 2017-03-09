/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.adjust.sdk;

import android.content.Context;
import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.BackoffStrategy;
import com.adjust.sdk.CustomScheduledExecutor;
import com.adjust.sdk.IActivityHandler;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.IPackageHandler;
import com.adjust.sdk.IRequestHandler;
import com.adjust.sdk.PackageBuilder;
import com.adjust.sdk.ResponseData;
import com.adjust.sdk.SessionParameters;
import com.adjust.sdk.Util;
import java.lang.ref.WeakReference;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class PackageHandler
implements IPackageHandler {
    private static final String PACKAGE_QUEUE_FILENAME = "AdjustIoPackageQueue";
    private static final String PACKAGE_QUEUE_NAME = "Package queue";
    private WeakReference<IActivityHandler> activityHandlerWeakRef;
    private BackoffStrategy backoffStrategy = AdjustFactory.getPackageHandlerBackoffStrategy();
    private Context context;
    private AtomicBoolean isSending;
    private ILogger logger = AdjustFactory.getLogger();
    private List<ActivityPackage> packageQueue;
    private boolean paused;
    private IRequestHandler requestHandler;
    private CustomScheduledExecutor scheduledExecutor = new CustomScheduledExecutor("PackageHandler");

    public PackageHandler(IActivityHandler iActivityHandler, Context context, boolean bl) {
        this.init(iActivityHandler, context, bl);
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                PackageHandler.this.initI();
            }
        });
    }

    private void addI(ActivityPackage activityPackage) {
        this.packageQueue.add(activityPackage);
        this.logger.debug("Added package %d (%s)", this.packageQueue.size(), activityPackage);
        this.logger.verbose("%s", activityPackage.getExtendedString());
        this.writePackageQueueI();
    }

    public static Boolean deletePackageQueue(Context context) {
        return context.deleteFile("AdjustIoPackageQueue");
    }

    private void initI() {
        this.requestHandler = AdjustFactory.getRequestHandler(this);
        this.isSending = new AtomicBoolean();
        this.readPackageQueueI();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void readPackageQueueI() {
        try {
            this.packageQueue = (List)Util.readObject(this.context, "AdjustIoPackageQueue", "Package queue", List.class);
        }
        catch (Exception var1_1) {
            this.logger.error("Failed to read %s file (%s)", "Package queue", var1_1.getMessage());
            this.packageQueue = null;
        }
        if (this.packageQueue != null) {
            this.logger.debug("Package handler read %d packages", this.packageQueue.size());
            return;
        }
        this.packageQueue = new ArrayList<ActivityPackage>();
    }

    private void sendFirstI() {
        if (this.packageQueue.isEmpty()) {
            return;
        }
        if (this.paused) {
            this.logger.debug("Package handler is paused", new Object[0]);
            return;
        }
        if (this.isSending.getAndSet(true)) {
            this.logger.verbose("Package handler is already sending", new Object[0]);
            return;
        }
        ActivityPackage activityPackage = this.packageQueue.get(0);
        this.requestHandler.sendPackage(activityPackage, this.packageQueue.size() - 1);
    }

    private void sendNextI() {
        this.packageQueue.remove(0);
        this.writePackageQueueI();
        this.isSending.set(false);
        this.logger.verbose("Package handler can send", new Object[0]);
        this.sendFirstI();
    }

    private void writePackageQueueI() {
        Util.writeObject(this.packageQueue, this.context, "AdjustIoPackageQueue", "Package queue");
        this.logger.debug("Package handler wrote %d packages", this.packageQueue.size());
    }

    @Override
    public void addPackage(final ActivityPackage activityPackage) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                PackageHandler.this.addI(activityPackage);
            }
        });
    }

    @Override
    public void closeFirstPackage(ResponseData object, ActivityPackage object2) {
        object.willRetry = true;
        IActivityHandler iActivityHandler = this.activityHandlerWeakRef.get();
        if (iActivityHandler != null) {
            iActivityHandler.finishedTrackingActivity((ResponseData)object);
        }
        object = new Runnable(){

            @Override
            public void run() {
                PackageHandler.this.logger.verbose("Package handler can send", new Object[0]);
                PackageHandler.this.isSending.set(false);
                PackageHandler.this.sendFirstPackage();
            }
        };
        if (object2 == null) {
            object.run();
            return;
        }
        int n2 = object2.increaseRetries();
        long l2 = Util.getWaitingTime(n2, this.backoffStrategy);
        double d2 = (double)l2 / 1000.0;
        object2 = Util.SecondsDisplayFormat.format(d2);
        this.logger.verbose("Waiting for %s seconds before retrying the %d time", object2, n2);
        this.scheduledExecutor.schedule((Runnable)object, l2, TimeUnit.MILLISECONDS);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void init(IActivityHandler iActivityHandler, Context context, boolean bl) {
        this.activityHandlerWeakRef = new WeakReference<IActivityHandler>(iActivityHandler);
        this.context = context;
        bl = !bl;
        this.paused = bl;
    }

    @Override
    public void pauseSending() {
        this.paused = true;
    }

    @Override
    public void resumeSending() {
        this.paused = false;
    }

    @Override
    public void sendFirstPackage() {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                PackageHandler.this.sendFirstI();
            }
        });
    }

    @Override
    public void sendNextPackage(ResponseData responseData) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                PackageHandler.this.sendNextI();
            }
        });
        IActivityHandler iActivityHandler = this.activityHandlerWeakRef.get();
        if (iActivityHandler != null) {
            iActivityHandler.finishedTrackingActivity(responseData);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void teardown(boolean bl) {
        this.logger.verbose("PackageHandler teardown", new Object[0]);
        if (this.scheduledExecutor != null) {
            try {
                this.scheduledExecutor.shutdownNow();
            }
            catch (SecurityException var2_2) {}
        }
        if (this.activityHandlerWeakRef != null) {
            this.activityHandlerWeakRef.clear();
        }
        if (this.requestHandler != null) {
            this.requestHandler.teardown();
        }
        if (this.packageQueue != null) {
            this.packageQueue.clear();
        }
        if (bl && this.context != null) {
            PackageHandler.deletePackageQueue(this.context);
        }
        this.scheduledExecutor = null;
        this.requestHandler = null;
        this.activityHandlerWeakRef = null;
        this.packageQueue = null;
        this.isSending = null;
        this.context = null;
        this.logger = null;
        this.backoffStrategy = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void updatePackages(final SessionParameters sessionParameters) {
        sessionParameters = sessionParameters != null ? sessionParameters.deepCopy() : null;
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                PackageHandler.this.updatePackagesI(sessionParameters);
            }
        });
    }

    public void updatePackagesI(SessionParameters sessionParameters) {
        if (sessionParameters == null) {
            return;
        }
        this.logger.debug("Updating package handler queue", new Object[0]);
        this.logger.verbose("Session callback parameters: %s", sessionParameters.callbackParameters);
        this.logger.verbose("Session partner parameters: %s", sessionParameters.partnerParameters);
        for (ActivityPackage activityPackage : this.packageQueue) {
            Map<String, String> map = activityPackage.getParameters();
            PackageBuilder.addMapJson(map, "callback_params", Util.mergeParameters(sessionParameters.callbackParameters, activityPackage.getCallbackParameters(), "Callback"));
            PackageBuilder.addMapJson(map, "partner_params", Util.mergeParameters(sessionParameters.partnerParameters, activityPackage.getPartnerParameters(), "Partner"));
        }
        this.writePackageQueueI();
    }

}

