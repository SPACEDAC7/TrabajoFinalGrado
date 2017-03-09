/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.metrics;

public enum EventType {
    VIEW,
    HIDDEN;
    

    private EventType() {
    }

    public String toString() {
        return super.toString().toLowerCase();
    }
}

