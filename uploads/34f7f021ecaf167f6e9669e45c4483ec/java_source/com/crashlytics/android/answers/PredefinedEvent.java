/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.AnswersEvent;
import com.crashlytics.android.answers.AnswersEventValidator;
import java.util.Map;

public abstract class PredefinedEvent<T extends PredefinedEvent>
extends AnswersEvent<T> {
    final AnswersAttributes predefinedAttributes;

    public PredefinedEvent() {
        this.predefinedAttributes = new AnswersAttributes(this.validator);
    }

    Map<String, Object> getPredefinedAttributes() {
        return this.predefinedAttributes.attributes;
    }

    abstract String getPredefinedType();

    public String toString() {
        return "{type:\"" + this.getPredefinedType() + '\"' + ", predefinedAttributes:" + this.predefinedAttributes + ", customAttributes:" + this.customAttributes + "}";
    }
}

