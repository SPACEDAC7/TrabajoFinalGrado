/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  io.fabric.sdk.android.services.common.AbstractSpiCall
 *  io.fabric.sdk.android.services.common.ResponseParser
 *  io.fabric.sdk.android.services.network.HttpMethod
 *  io.fabric.sdk.android.services.network.HttpRequest
 *  io.fabric.sdk.android.services.network.HttpRequestFactory
 */
package com.crashlytics.android.core;

import com.crashlytics.android.core.CrashlyticsCore;
import com.crashlytics.android.core.CreateReportRequest;
import com.crashlytics.android.core.CreateReportSpiCall;
import com.crashlytics.android.core.Report;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.ResponseParser;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class DefaultCreateReportSpiCall
extends AbstractSpiCall
implements CreateReportSpiCall {
    static final String FILE_CONTENT_TYPE = "application/octet-stream";
    static final String FILE_PARAM = "report[file]";
    static final String IDENTIFIER_PARAM = "report[identifier]";

    public DefaultCreateReportSpiCall(Kit kit, String string2, String string3, HttpRequestFactory httpRequestFactory) {
        super(kit, string2, string3, httpRequestFactory, HttpMethod.POST);
    }

    DefaultCreateReportSpiCall(Kit kit, String string2, String string3, HttpRequestFactory httpRequestFactory, HttpMethod httpMethod) {
        super(kit, string2, string3, httpRequestFactory, httpMethod);
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, CreateReportRequest object) {
        httpRequest = httpRequest.header("X-CRASHLYTICS-API-KEY", object.apiKey).header("X-CRASHLYTICS-API-CLIENT-TYPE", "android").header("X-CRASHLYTICS-API-CLIENT-VERSION", CrashlyticsCore.getInstance().getVersion());
        object = object.report.getCustomHeaders().entrySet().iterator();
        while (object.hasNext()) {
            httpRequest = httpRequest.header((Map.Entry)object.next());
        }
        return httpRequest;
    }

    private HttpRequest applyMultipartDataTo(HttpRequest httpRequest, CreateReportRequest object) {
        object = object.report;
        return httpRequest.part("report[file]", object.getFileName(), "application/octet-stream", object.getFile()).part("report[identifier]", object.getIdentifier());
    }

    @Override
    public boolean invoke(CreateReportRequest createReportRequest) {
        createReportRequest = this.applyMultipartDataTo(this.applyHeadersTo(this.getHttpRequest(), createReportRequest), createReportRequest);
        Fabric.getLogger().d("CrashlyticsCore", "Sending report to: " + this.getUrl());
        int n2 = createReportRequest.code();
        Fabric.getLogger().d("CrashlyticsCore", "Create report request ID: " + createReportRequest.header("X-REQUEST-ID"));
        Fabric.getLogger().d("CrashlyticsCore", "Result was: " + n2);
        if (ResponseParser.parse((int)n2) == 0) {
            return true;
        }
        return false;
    }
}

