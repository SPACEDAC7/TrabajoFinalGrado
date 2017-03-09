/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersEventValidator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

class AnswersAttributes {
    final Map<String, Object> attributes = new ConcurrentHashMap<String, Object>();
    final AnswersEventValidator validator;

    public AnswersAttributes(AnswersEventValidator answersEventValidator) {
        this.validator = answersEventValidator;
    }

    void put(String string2, Number number) {
        if (this.validator.isNull(string2, "key") || this.validator.isNull(number, "value")) {
            return;
        }
        this.putAttribute(this.validator.limitStringLength(string2), number);
    }

    void put(String string2, String string3) {
        if (this.validator.isNull(string2, "key") || this.validator.isNull(string3, "value")) {
            return;
        }
        this.putAttribute(this.validator.limitStringLength(string2), this.validator.limitStringLength(string3));
    }

    void putAttribute(String string2, Object object) {
        if (!this.validator.isFullMap(this.attributes, string2)) {
            this.attributes.put(string2, object);
        }
    }

    public String toString() {
        return new JSONObject(this.attributes).toString();
    }
}

