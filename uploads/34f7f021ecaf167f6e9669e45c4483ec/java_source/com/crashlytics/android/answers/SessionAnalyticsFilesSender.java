/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  io.fabric.sdk.android.services.common.AbstractSpiCall
 *  io.fabric.sdk.android.services.common.ResponseParser
 *  io.fabric.sdk.android.services.events.FilesSender
 *  io.fabric.sdk.android.services.network.HttpMethod
 *  io.fabric.sdk.android.services.network.HttpRequest
 *  io.fabric.sdk.android.services.network.HttpRequestFactory
 */
package com.crashlytics.android.answers;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.ResponseParser;
import io.fabric.sdk.android.services.events.FilesSender;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.io.File;
import java.util.List;

class SessionAnalyticsFilesSender
extends AbstractSpiCall
implements FilesSender {
    static final String FILE_CONTENT_TYPE = "application/vnd.crashlytics.android.events";
    static final String FILE_PARAM_NAME = "session_analytics_file_";
    private final String apiKey;

    public SessionAnalyticsFilesSender(Kit kit, String string2, String string3, HttpRequestFactory httpRequestFactory, String string4) {
        super(kit, string2, string3, httpRequestFactory, HttpMethod.POST);
        this.apiKey = string4;
    }

    public boolean send(List<File> list) {
        HttpRequest httpRequest = this.getHttpRequest().header("X-CRASHLYTICS-API-CLIENT-TYPE", "android").header("X-CRASHLYTICS-API-CLIENT-VERSION", this.kit.getVersion()).header("X-CRASHLYTICS-API-KEY", this.apiKey);
        int n2 = 0;
        for (File file : list) {
            httpRequest.part("session_analytics_file_" + n2, file.getName(), "application/vnd.crashlytics.android.events", file);
            ++n2;
        }
        Fabric.getLogger().d("Answers", "Sending " + list.size() + " analytics files to " + this.getUrl());
        n2 = httpRequest.code();
        Fabric.getLogger().d("Answers", "Response code for analytics file send is " + n2);
        if (ResponseParser.parse((int)n2) == 0) {
            return true;
        }
        return false;
    }
}

