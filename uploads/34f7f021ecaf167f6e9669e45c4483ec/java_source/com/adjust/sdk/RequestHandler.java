/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.CustomScheduledExecutor;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.IPackageHandler;
import com.adjust.sdk.IRequestHandler;
import com.adjust.sdk.ResponseData;
import com.adjust.sdk.Util;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.SocketTimeoutException;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONObject;

public class RequestHandler
implements IRequestHandler {
    private ILogger logger = AdjustFactory.getLogger();
    private WeakReference<IPackageHandler> packageHandlerWeakRef;
    private CustomScheduledExecutor scheduledExecutor = new CustomScheduledExecutor("RequestHandler");

    public RequestHandler(IPackageHandler iPackageHandler) {
        this.init(iPackageHandler);
    }

    private void closePackageI(ActivityPackage activityPackage, String object, Throwable object2) {
        object2 = String.format("%s. (%s) Will retry later", activityPackage.getFailureMessage(), Util.getReasonString((String)object, (Throwable)object2));
        this.logger.error((String)object2, new Object[0]);
        object = ResponseData.buildResponseData(activityPackage);
        object.message = object2;
        object2 = this.packageHandlerWeakRef.get();
        if (object2 == null) {
            return;
        }
        object2.closeFirstPackage((ResponseData)object, activityPackage);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void sendI(ActivityPackage activityPackage, int n2) {
        Object object = "https://app.adjust.com" + activityPackage.getPath();
        try {
            object = Util.readHttpResponse(Util.createPOSTHttpsURLConnection((String)object, activityPackage.getClientSdk(), activityPackage.getParameters(), n2), activityPackage);
            IPackageHandler iPackageHandler = this.packageHandlerWeakRef.get();
            if (iPackageHandler == null) {
                return;
            }
            if (object.jsonResponse == null) {
                iPackageHandler.closeFirstPackage((ResponseData)object, activityPackage);
                return;
            }
            iPackageHandler.sendNextPackage((ResponseData)object);
            return;
        }
        catch (UnsupportedEncodingException var3_4) {
            this.sendNextPackageI(activityPackage, "Failed to encode parameters", var3_4);
            return;
        }
        catch (SocketTimeoutException var3_5) {
            this.closePackageI(activityPackage, "Request timed out", var3_5);
            return;
        }
        catch (IOException var3_6) {
            this.closePackageI(activityPackage, "Request failed", var3_6);
            return;
        }
        catch (Throwable var3_7) {
            this.sendNextPackageI(activityPackage, "Runtime exception", var3_7);
            return;
        }
    }

    private void sendNextPackageI(ActivityPackage object, String object2, Throwable throwable) {
        object2 = String.format("%s. (%s)", object.getFailureMessage(), Util.getReasonString((String)object2, throwable));
        this.logger.error((String)object2, new Object[0]);
        object = ResponseData.buildResponseData((ActivityPackage)object);
        object.message = object2;
        object2 = this.packageHandlerWeakRef.get();
        if (object2 == null) {
            return;
        }
        object2.sendNextPackage((ResponseData)object);
    }

    @Override
    public void init(IPackageHandler iPackageHandler) {
        this.packageHandlerWeakRef = new WeakReference<IPackageHandler>(iPackageHandler);
    }

    @Override
    public void sendPackage(final ActivityPackage activityPackage, final int n2) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                RequestHandler.this.sendI(activityPackage, n2);
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
        this.logger.verbose("RequestHandler teardown", new Object[0]);
        if (this.scheduledExecutor != null) {
            try {
                this.scheduledExecutor.shutdownNow();
            }
            catch (SecurityException var1_1) {}
        }
        if (this.packageHandlerWeakRef != null) {
            this.packageHandlerWeakRef.clear();
        }
        this.scheduledExecutor = null;
        this.packageHandlerWeakRef = null;
        this.logger = null;
    }

}

