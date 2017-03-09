/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.comscore.analytics;

import android.content.Context;
import com.comscore.analytics.Core;
import com.comscore.applications.EventType;
import com.comscore.utils.TransmissionMode;
import com.comscore.utils.task.TaskExecutor;
import java.util.HashMap;

public class comScore {
    private static Core a = new Core();

    public static void aggregate(HashMap<String, String> hashMap) {
        a.notify(EventType.AGGREGATE, hashMap, true);
    }

    public static void allowLiveTransmission(TransmissionMode transmissionMode) {
        a.allowLiveTransmission(transmissionMode, true);
    }

    public static void allowOfflineTransmission(TransmissionMode transmissionMode) {
        a.allowOfflineTransmission(transmissionMode, true);
    }

    public static void disableAutoUpdate() {
        a.disableAutoUpdate();
    }

    public static void enableAutoUpdate() {
        comScore.enableAutoUpdate(60, true);
    }

    public static void enableAutoUpdate(int n2) {
        comScore.enableAutoUpdate(n2, true);
    }

    public static void enableAutoUpdate(int n2, boolean bl) {
        a.enableAutoUpdate(n2, bl, true);
    }

    public static void flushCache() {
        a.flush(true);
    }

    public static String getAppName() {
        return a.getAppName();
    }

    public static String getAutoStartLabel(String string2) {
        return a.getAutoStartLabel(string2);
    }

    public static HashMap<String, String> getAutoStartLabels() {
        return a.getAutoStartLabels();
    }

    public static long getCacheFlushingInterval() {
        return a.getCacheFlushingInterval();
    }

    public static int getCacheMaxBatchFiles() {
        return a.getCacheMaxBatchFiles();
    }

    public static int getCacheMaxFlushesInARow() {
        return a.getCacheMaxFlushesInARow();
    }

    public static int getCacheMaxMeasurements() {
        return a.getCacheMaxMeasurements();
    }

    public static long getCacheMeasurementExpiry() {
        return a.getCacheMeasurementExpiry();
    }

    public static long getCacheMinutesToRetry() {
        return a.getCacheMinutesToRetry();
    }

    public static Core getCore() {
        return a;
    }

    public static String getCustomerC2() {
        return a.getCustomerC2();
    }

    public static boolean getErrorHandlingEnabled() {
        return a.getErrorHandlingEnabled();
    }

    public static long getGenesis() {
        return a.getGenesis();
    }

    public static String getLabel(String string2) {
        return a.getLabel(string2);
    }

    public static HashMap<String, String> getLabels() {
        return a.getLabels();
    }

    public static TransmissionMode getLiveTransmissionMode() {
        return a.getLiveTransmissionMode();
    }

    public static String[] getMeasurementLabelOrder() {
        return a.getMeasurementLabelOrder();
    }

    public static TransmissionMode getOfflineTransmissionMode() {
        return a.getOfflineTransmissionMode();
    }

    public static String getPixelURL() {
        return a.getPixelURL();
    }

    public static String getPublisherSecret() {
        return a.getPublisherSecret();
    }

    public static String getVersion() {
        return a.getVersion();
    }

    public static String getVisitorID() {
        return a.getVisitorId();
    }

    public static void hidden() {
        a.notify(EventType.HIDDEN, new HashMap<String, String>(), true);
    }

    public static void hidden(HashMap<String, String> hashMap) {
        a.notify(EventType.HIDDEN, hashMap, true);
    }

    public static boolean isAutoStartEnabled() {
        return a.isAutoStartEnabled();
    }

    public static boolean isEnabled() {
        return a.isEnabled();
    }

    public static boolean isKeepAliveEnabled() {
        return a.isKeepAliveEnabled();
    }

    public static boolean isSecure() {
        return a.isSecure();
    }

    public static void onEnterForeground() {
        a.onEnterForeground();
    }

    public static void onExitForeground() {
        a.onExitForeground();
    }

    public static void onUserInteraction() {
        a.onUserInteraction();
    }

    public static void onUxActive() {
        a.onUxActive();
    }

    public static void onUxInactive() {
        a.onUxInactive();
    }

    public static void setAppContext(Context context) {
        a.setAppContext(context);
    }

    public static void setAppName(String string2) {
        a.setAppName(string2, true);
    }

    public static void setAutoStartEnabled(boolean bl) {
        a.setAutoStartEnabled(bl, true);
    }

    public static void setAutoStartLabel(String string2, String string3) {
        a.setAutoStartLabel(string2, string3);
    }

    public static void setAutoStartLabels(HashMap<String, String> hashMap) {
        a.setAutoStartLabels(hashMap);
    }

    public static void setCacheFlushingInterval(long l2) {
        a.setCacheFlushingInterval(l2, true);
    }

    public static void setCacheMaxBatchFiles(int n2) {
        a.setCacheMaxBatchFiles(n2, true);
    }

    public static void setCacheMaxFlushesInARow(int n2) {
        a.setCacheMaxFlushesInARow(n2, true);
    }

    public static void setCacheMaxMeasurements(int n2) {
        a.setCacheMaxMeasurements(n2, true);
    }

    public static void setCacheMeasurementExpiry(int n2) {
        a.setCacheMeasurementExpiry(n2, true);
    }

    public static void setCacheMinutesToRetry(int n2) {
        a.setCacheMinutesToRetry(n2, true);
    }

    public static void setCustomerC2(String string2) {
        a.setCustomerC2(string2, true);
    }

    public static void setDebug(boolean bl) {
        a.setDebug(bl);
    }

    public static void setEnabled(boolean bl) {
        a.setEnabled(bl);
    }

    public static void setErrorHandlingEnabled(boolean bl) {
        a.setErrorHandlingEnabled(bl);
    }

    public static void setKeepAliveEnabled(boolean bl) {
        a.setKeepAliveEnabled(bl, true);
    }

    public static void setLabel(String string2, String string3) {
        a.setLabel(string2, string3, true);
    }

    public static void setLabels(HashMap<String, String> hashMap) {
        a.setLabels(hashMap, true);
    }

    public static void setMeasurementLabelOrder(String[] arrstring) {
        a.setMeasurementLabelOrder(arrstring, true);
    }

    public static void setOfflineURL(String string2) {
        a.setOfflineURL(string2);
    }

    public static void setPixelURL(String string2) {
        a.setPixelURL(string2, true);
    }

    public static void setPublisherSecret(String string2) {
        a.setPublisherSecret(string2, true);
    }

    public static void setSecure(boolean bl) {
        a.setSecure(bl, true);
    }

    public static void start() {
        a.notify(EventType.START, new HashMap<String, String>(), true);
    }

    public static void start(HashMap<String, String> hashMap) {
        a.notify(EventType.START, hashMap, true);
    }

    public static void update() {
        a.update();
    }

    public static void view() {
        a.notify(EventType.VIEW, new HashMap<String, String>(), true);
    }

    public static void view(HashMap<String, String> hashMap) {
        a.notify(EventType.VIEW, hashMap, true);
    }

    public static void waitForTasks() {
        a.getTaskExecutor().waitForTasks();
    }

    public boolean isAutoUpdateEnabled() {
        return a.isAutoUpdateEnabled();
    }
}

