/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core.internal.models;

public class DeviceData {
    public final long availableInternalStorage;
    public final long availablePhysicalMemory;
    public final int batteryCapacity;
    public final int batteryVelocity;
    public final int orientation;
    public final boolean proximity;
    public final long totalInternalStorage;
    public final long totalPhysicalMemory;

    public DeviceData(int n2, long l2, long l3, long l4, long l5, int n3, int n4, boolean bl) {
        this.orientation = n2;
        this.totalPhysicalMemory = l2;
        this.totalInternalStorage = l3;
        this.availablePhysicalMemory = l4;
        this.availableInternalStorage = l5;
        this.batteryCapacity = n3;
        this.batteryVelocity = n4;
        this.proximity = bl;
    }
}

