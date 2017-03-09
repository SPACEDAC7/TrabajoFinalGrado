/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core;

import com.crashlytics.android.core.Report;

class CreateReportRequest {
    public final String apiKey;
    public final Report report;

    public CreateReportRequest(String string2, Report report) {
        this.apiKey = string2;
        this.report = report;
    }
}

