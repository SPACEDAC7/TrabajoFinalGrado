/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.PredefinedEvent;

public class InviteEvent
extends PredefinedEvent<InviteEvent> {
    static final String METHOD_ATTRIBUTE = "method";
    static final String TYPE = "invite";

    @Override
    String getPredefinedType() {
        return "invite";
    }

    public InviteEvent putMethod(String string2) {
        this.predefinedAttributes.put("method", string2);
        return this;
    }
}

