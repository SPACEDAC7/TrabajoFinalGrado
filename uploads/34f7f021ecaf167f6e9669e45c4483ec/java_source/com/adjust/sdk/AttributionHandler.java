/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import android.net.Uri;
import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.AdjustAttribution;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.AttributionResponseData;
import com.adjust.sdk.CustomScheduledExecutor;
import com.adjust.sdk.IActivityHandler;
import com.adjust.sdk.IAttributionHandler;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.ResponseData;
import com.adjust.sdk.SessionResponseData;
import com.adjust.sdk.TimerOnce;
import com.adjust.sdk.Util;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;

public class AttributionHandler
implements IAttributionHandler {
    private static final String ATTRIBUTION_TIMER_NAME = "Attribution timer";
    private WeakReference<IActivityHandler> activityHandlerWeakRef;
    private ActivityPackage attributionPackage;
    public URL lastUrlUsed;
    private ILogger logger = AdjustFactory.getLogger();
    private boolean paused;
    private CustomScheduledExecutor scheduledExecutor = new CustomScheduledExecutor("AttributionHandler");
    private TimerOnce timer;

    public AttributionHandler(IActivityHandler iActivityHandler, ActivityPackage activityPackage, boolean bl) {
        this.timer = new TimerOnce(this.scheduledExecutor, new Runnable(){

            @Override
            public void run() {
                AttributionHandler.this.sendAttributionRequestI();
            }
        }, "Attribution timer");
        this.init(iActivityHandler, activityPackage, bl);
    }

    private Uri buildUriI(String object, Map<String, String> object22) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority("app.adjust.com");
        builder.appendPath((String)((Object)object));
        for (Map.Entry entry : object22.entrySet()) {
            builder.appendQueryParameter((String)entry.getKey(), (String)entry.getValue());
        }
        long l2 = System.currentTimeMillis();
        builder.appendQueryParameter("sent_at", Util.dateFormatter.format(l2));
        return builder.build();
    }

    private void checkAttributionI(IActivityHandler iActivityHandler, ResponseData responseData) {
        if (responseData.jsonResponse == null) {
            return;
        }
        long l2 = responseData.jsonResponse.optLong("ask_in", -1);
        if (l2 >= 0) {
            iActivityHandler.setAskingAttribution(true);
            this.getAttributionI(l2);
            return;
        }
        iActivityHandler.setAskingAttribution(false);
        responseData.attribution = AdjustAttribution.fromJson(responseData.jsonResponse.optJSONObject("attribution"), responseData.adid);
    }

    private void checkAttributionResponseI(IActivityHandler iActivityHandler, AttributionResponseData attributionResponseData) {
        this.checkAttributionI(iActivityHandler, attributionResponseData);
        this.checkDeeplinkI(attributionResponseData);
        iActivityHandler.launchAttributionResponseTasks(attributionResponseData);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void checkDeeplinkI(AttributionResponseData attributionResponseData) {
        Object object;
        if (attributionResponseData.jsonResponse == null || (object = attributionResponseData.jsonResponse.optJSONObject("attribution")) == null || (object = object.optString("deeplink", null)) == null) {
            return;
        }
        attributionResponseData.deeplink = Uri.parse((String)object);
    }

    private void checkSessionResponseI(IActivityHandler iActivityHandler, SessionResponseData sessionResponseData) {
        this.checkAttributionI(iActivityHandler, sessionResponseData);
        iActivityHandler.launchSessionResponseTasks(sessionResponseData);
    }

    private void getAttributionI(long l2) {
        if (this.timer.getFireIn() > l2) {
            return;
        }
        if (l2 != 0) {
            double d2 = (double)l2 / 1000.0;
            String string2 = Util.SecondsDisplayFormat.format(d2);
            this.logger.debug("Waiting to query attribution in %s seconds", string2);
        }
        this.timer.startIn(l2);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void sendAttributionRequestI() {
        if (this.paused) {
            this.logger.debug("Attribution handler is paused", new Object[0]);
            return;
        }
        this.logger.verbose("%s", this.attributionPackage.getExtendedString());
        try {
            AdjustFactory.URLGetConnection uRLGetConnection = Util.createGETHttpsURLConnection(this.buildUriI(this.attributionPackage.getPath(), this.attributionPackage.getParameters()).toString(), this.attributionPackage.getClientSdk());
            ResponseData responseData = Util.readHttpResponse(uRLGetConnection.httpsURLConnection, this.attributionPackage);
            this.lastUrlUsed = uRLGetConnection.url;
            if (!(responseData instanceof AttributionResponseData)) return;
            this.checkAttributionResponse((AttributionResponseData)responseData);
            return;
        }
        catch (Exception var1_2) {
            this.logger.error("Failed to get attribution (%s)", var1_2.getMessage());
            return;
        }
    }

    public void checkAttributionResponse(final AttributionResponseData attributionResponseData) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                IActivityHandler iActivityHandler = (IActivityHandler)AttributionHandler.this.activityHandlerWeakRef.get();
                if (iActivityHandler == null) {
                    return;
                }
                AttributionHandler.this.checkAttributionResponseI(iActivityHandler, attributionResponseData);
            }
        });
    }

    @Override
    public void checkSessionResponse(final SessionResponseData sessionResponseData) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                IActivityHandler iActivityHandler = (IActivityHandler)AttributionHandler.this.activityHandlerWeakRef.get();
                if (iActivityHandler == null) {
                    return;
                }
                AttributionHandler.this.checkSessionResponseI(iActivityHandler, sessionResponseData);
            }
        });
    }

    @Override
    public void getAttribution() {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                AttributionHandler.this.getAttributionI(0);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void init(IActivityHandler iActivityHandler, ActivityPackage activityPackage, boolean bl) {
        this.activityHandlerWeakRef = new WeakReference<IActivityHandler>(iActivityHandler);
        this.attributionPackage = activityPackage;
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

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void teardown() {
        this.logger.verbose("AttributionHandler teardown", new Object[0]);
        if (this.timer != null) {
            this.timer.teardown();
        }
        if (this.scheduledExecutor != null) {
            try {
                this.scheduledExecutor.shutdownNow();
            }
            catch (SecurityException var1_1) {}
        }
        if (this.activityHandlerWeakRef != null) {
            this.activityHandlerWeakRef.clear();
        }
        this.scheduledExecutor = null;
        this.activityHandlerWeakRef = null;
        this.logger = null;
        this.attributionPackage = null;
        this.timer = null;
    }

}

