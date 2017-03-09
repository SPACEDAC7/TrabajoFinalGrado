/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.EventFilter;
import com.crashlytics.android.answers.SessionEvent;
import com.crashlytics.android.answers.SessionEventMetadata;
import java.util.HashSet;
import java.util.Set;

class SamplingEventFilter
implements EventFilter {
    static final Set<SessionEvent.Type> EVENTS_TYPE_TO_SAMPLE = new HashSet<SessionEvent.Type>(){};
    final int samplingRate;

    public SamplingEventFilter(int n2) {
        this.samplingRate = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean skipEvent(SessionEvent sessionEvent) {
        boolean bl = EVENTS_TYPE_TO_SAMPLE.contains((Object)sessionEvent.type) && sessionEvent.sessionEventMetadata.betaDeviceToken == null;
        if (Math.abs(sessionEvent.sessionEventMetadata.installationId.hashCode() % this.samplingRate) == 0) return false;
        boolean bl2 = true;
        if (!bl) return false;
        if (bl2) {
            return true;
        }
        return false;
    }

}

