/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSenseEventType;

public enum StreamSenseState {
    IDLE("idle", 0, StreamSenseEventType.END),
    PLAYING("playing", 1, StreamSenseEventType.PLAY),
    PAUSED("paused", 2, StreamSenseEventType.PAUSE),
    BUFFERING("buffering", 3, StreamSenseEventType.BUFFER);
    
    private String a;
    private int b;
    private StreamSenseEventType c;

    private StreamSenseState(String string3, int n3, StreamSenseEventType streamSenseEventType) {
        this.a = string3;
        this.b = n3;
        this.c = streamSenseEventType;
    }

    public int getCode() {
        return this.b;
    }

    public String getName() {
        return this.a;
    }

    public StreamSenseEventType toEventType() {
        return this.c;
    }

    public String toString() {
        return this.getName();
    }
}

