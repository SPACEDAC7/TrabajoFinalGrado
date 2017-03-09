/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.PredefinedEvent;

public class RatingEvent
extends PredefinedEvent<RatingEvent> {
    static final String CONTENT_ID_ATTRIBUTE = "contentId";
    static final String CONTENT_NAME_ATTRIBUTE = "contentName";
    static final String CONTENT_TYPE_ATTRIBUTE = "contentType";
    static final String RATING_ATTRIBUTE = "rating";
    static final String TYPE = "rating";

    @Override
    String getPredefinedType() {
        return "rating";
    }

    public RatingEvent putContentId(String string2) {
        this.predefinedAttributes.put("contentId", string2);
        return this;
    }

    public RatingEvent putContentName(String string2) {
        this.predefinedAttributes.put("contentName", string2);
        return this;
    }

    public RatingEvent putContentType(String string2) {
        this.predefinedAttributes.put("contentType", string2);
        return this;
    }

    public RatingEvent putRating(int n2) {
        this.predefinedAttributes.put("rating", n2);
        return this;
    }
}

