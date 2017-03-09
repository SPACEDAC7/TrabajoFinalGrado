/*
 * Decompiled with CFR 0_115.
 */
package com.facebook;

import com.facebook.FacebookException;
import com.facebook.GraphResponse;

public class FacebookGraphResponseException
extends FacebookException {
    private final GraphResponse graphResponse;

    public FacebookGraphResponseException(GraphResponse graphResponse, String string2) {
        super(string2);
        this.graphResponse = graphResponse;
    }

    public final GraphResponse getGraphResponse() {
        return this.graphResponse;
    }
}

