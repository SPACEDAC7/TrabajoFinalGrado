/*
 * Decompiled with CFR 0_115.
 */
package com.facebook.messenger;

import java.util.List;

public class MessengerThreadParams {
    public final String metadata;
    public final Origin origin;
    public final List<String> participants;
    public final String threadToken;

    public MessengerThreadParams(Origin origin, String string2, String string3, List<String> list) {
        this.threadToken = string2;
        this.metadata = string3;
        this.participants = list;
        this.origin = origin;
    }

    public static enum Origin {
        REPLY_FLOW,
        COMPOSE_FLOW,
        UNKNOWN;
        

        private Origin() {
        }
    }

}

