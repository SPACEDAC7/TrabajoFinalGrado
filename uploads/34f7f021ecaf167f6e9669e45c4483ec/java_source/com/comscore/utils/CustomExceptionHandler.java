/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.utils;

import com.comscore.analytics.Core;
import com.comscore.applications.EventType;
import com.comscore.utils.CSLog;
import com.comscore.utils.OfflineMeasurementsCache;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;

public class CustomExceptionHandler
implements Thread.UncaughtExceptionHandler {
    private Thread.UncaughtExceptionHandler a = Thread.getDefaultUncaughtExceptionHandler();
    private Core b;

    public CustomExceptionHandler(Core core) {
        this.b = core;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void a(Throwable throwable) {
        Object object;
        StackTraceElement[] arrstackTraceElement = throwable.getStackTrace();
        Object object2 = "";
        for (int i2 = 0; i2 < arrstackTraceElement.length && i2 < 5; ++i2) {
            object = arrstackTraceElement[i2];
            object = object.getFileName() + "@" + object.getLineNumber() + "|" + object.getClassName() + "." + object.getMethodName();
            object2 = object2.equals("") ? object : (String)object2 + ";" + (String)object;
        }
        object = new HashMap();
        if (!object2.equals("")) {
            try {
                object.put("ns_ap_uxc", URLEncoder.encode((String)object2, "UTF-8"));
            }
            catch (UnsupportedEncodingException var3_5) {
                CSLog.e(this, "Error encoding the URL (ns_ap_uxc)");
                CSLog.printStackTrace(var3_5);
            }
        }
        try {
            object.put("ns_ap_uxs", URLEncoder.encode(throwable.toString(), "UTF-8"));
        }
        catch (UnsupportedEncodingException var1_2) {
            CSLog.e(this, "Error encoding the URL (ns_ap_uxs)");
            CSLog.printStackTrace(var1_2);
        }
        this.b.getOfflineCache().saveApplicationMeasurement(EventType.HIDDEN, (HashMap<String, String>)object, true);
    }

    @Override
    public void uncaughtException(Thread thread, Throwable throwable) {
        this.a(throwable);
        this.a.uncaughtException(thread, throwable);
    }
}

