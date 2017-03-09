/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.PredefinedEvent;

public class ShareEvent
extends PredefinedEvent<ShareEvent> {
    static final String CONTENT_ID_ATTRIBUTE = "contentId";
    static final String CONTENT_NAME_ATTRIBUTE = "contentName";
    static final String CONTENT_TYPE_ATTRIBUTE = "contentType";
    static final String METHOD_ATTRIBUTE = "method";
    static final String TYPE = "share";

    @Override
    String getPredefinedType() {
        return "share";
    }

    public ShareEvent putContentId(String string2) {
        this.predefinedAttributes.put("contentId", string2);
        return this;
    }

    public ShareEvent putContentName(String string2) {
        this.predefinedAttributes.put("contentName", string2);
        return this;
    }

    public ShareEvent putContentType(String string2) {
        this.predefinedAttributes.put("contentType", string2);
        return this;
    }

    public ShareEvent putMethod(String string2) {
        this.predefinedAttributes.put("method", string2);
        return this;
    }
}

