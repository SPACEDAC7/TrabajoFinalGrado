/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.AnswersEvent;
import com.crashlytics.android.answers.AnswersEventValidator;

public class CustomEvent
extends AnswersEvent<CustomEvent> {
    private final String eventName;

    public CustomEvent(String string2) {
        if (string2 == null) {
            throw new NullPointerException("eventName must not be null");
        }
        this.eventName = this.validator.limitStringLength(string2);
    }

    String getCustomType() {
        return this.eventName;
    }

    public String toString() {
        return "{eventName:\"" + this.eventName + '\"' + ", customAttributes:" + this.customAttributes + "}";
    }
}

