/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.PredefinedEvent;

public class SearchEvent
extends PredefinedEvent<SearchEvent> {
    static final String QUERY_ATTRIBUTE = "query";
    static final String TYPE = "search";

    @Override
    String getPredefinedType() {
        return "search";
    }

    public SearchEvent putQuery(String string2) {
        this.predefinedAttributes.put("query", string2);
        return this;
    }
}

