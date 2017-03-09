/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.PredefinedEvent;

public class SignUpEvent
extends PredefinedEvent<SignUpEvent> {
    static final String METHOD_ATTRIBUTE = "method";
    static final String SUCCESS_ATTRIBUTE = "success";
    static final String TYPE = "signUp";

    @Override
    String getPredefinedType() {
        return "signUp";
    }

    public SignUpEvent putMethod(String string2) {
        this.predefinedAttributes.put("method", string2);
        return this;
    }

    public SignUpEvent putSuccess(boolean bl) {
        this.predefinedAttributes.put("success", Boolean.toString(bl));
        return this;
    }
}

