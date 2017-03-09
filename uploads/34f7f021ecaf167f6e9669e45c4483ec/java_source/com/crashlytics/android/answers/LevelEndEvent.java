/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.PredefinedEvent;

public class LevelEndEvent
extends PredefinedEvent<LevelEndEvent> {
    static final String LEVEL_NAME_ATTRIBUTE = "levelName";
    static final String SCORE_ATTRIBUTE = "score";
    static final String SUCCESS_ATTRIBUTE = "success";
    static final String TYPE = "levelEnd";

    @Override
    String getPredefinedType() {
        return "levelEnd";
    }

    public LevelEndEvent putLevelName(String string2) {
        this.predefinedAttributes.put("levelName", string2);
        return this;
    }

    public LevelEndEvent putScore(Number number) {
        this.predefinedAttributes.put("score", number);
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public LevelEndEvent putSuccess(boolean bl) {
        AnswersAttributes answersAttributes = this.predefinedAttributes;
        String string2 = bl ? "true" : "false";
        answersAttributes.put("success", string2);
        return this;
    }
}

