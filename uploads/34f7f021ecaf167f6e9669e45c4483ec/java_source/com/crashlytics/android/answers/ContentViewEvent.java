/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.PredefinedEvent;

public class ContentViewEvent
extends PredefinedEvent<ContentViewEvent> {
    static final String CONTENT_ID_ATTRIBUTE = "contentId";
    static final String CONTENT_NAME_ATTRIBUTE = "contentName";
    static final String CONTENT_TYPE_ATTRIBUTE = "contentType";
    static final String TYPE = "contentView";

    @Override
    String getPredefinedType() {
        return "contentView";
    }

    public ContentViewEvent putContentId(String string2) {
        this.predefinedAttributes.put("contentId", string2);
        return this;
    }

    public ContentViewEvent putContentName(String string2) {
        this.predefinedAttributes.put("contentName", string2);
        return this;
    }

    public ContentViewEvent putContentType(String string2) {
        this.predefinedAttributes.put("contentType", string2);
        return this;
    }
}

