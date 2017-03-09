/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core.internal.models;

import com.crashlytics.android.core.internal.models.BinaryImageData;
import com.crashlytics.android.core.internal.models.CustomAttributeData;
import com.crashlytics.android.core.internal.models.DeviceData;
import com.crashlytics.android.core.internal.models.SignalData;
import com.crashlytics.android.core.internal.models.ThreadData;

public class SessionEventData {
    public final BinaryImageData[] binaryImages;
    public final CustomAttributeData[] customAttributes;
    public final DeviceData deviceData;
    public final SignalData signal;
    public final ThreadData[] threads;
    public final long timestamp;

    public SessionEventData(long l2, SignalData signalData, ThreadData[] arrthreadData, BinaryImageData[] arrbinaryImageData, CustomAttributeData[] arrcustomAttributeData, DeviceData deviceData) {
        this.timestamp = l2;
        this.signal = signalData;
        this.threads = arrthreadData;
        this.binaryImages = arrbinaryImageData;
        this.customAttributes = arrcustomAttributeData;
        this.deviceData = deviceData;
    }
}

