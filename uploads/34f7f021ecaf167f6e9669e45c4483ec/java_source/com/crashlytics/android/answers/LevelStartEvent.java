/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.PredefinedEvent;

public class LevelStartEvent
extends PredefinedEvent<LevelStartEvent> {
    static final String LEVEL_NAME_ATTRIBUTE = "levelName";
    static final String TYPE = "levelStart";

    @Override
    String getPredefinedType() {
        return "levelStart";
    }

    public LevelStartEvent putLevelName(String string2) {
        this.predefinedAttributes.put("levelName", string2);
        return this;
    }
}

