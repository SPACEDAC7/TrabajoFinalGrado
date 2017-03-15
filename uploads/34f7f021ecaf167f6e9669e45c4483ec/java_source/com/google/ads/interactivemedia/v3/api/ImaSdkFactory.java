/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  com.google.ads.interactivemedia.v3.api.CompanionAdSlot
 *  com.google.ads.interactivemedia.v3.api.StreamDisplayContainer
 *  com.google.ads.interactivemedia.v3.api.StreamRequest
 *  com.google.ads.interactivemedia.v3.impl.ah
 *  com.google.ads.interactivemedia.v3.impl.aj
 *  com.google.ads.interactivemedia.v3.impl.b
 *  com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration
 *  com.google.ads.interactivemedia.v3.impl.h
 *  com.google.ads.interactivemedia.v3.impl.l
 *  com.google.ads.interactivemedia.v3.impl.m
 *  com.google.ads.interactivemedia.v3.impl.r
 *  com.google.ads.interactivemedia.v3.impl.y
 */
package com.google.ads.interactivemedia.v3.api;

import android.content.Context;
import android.net.Uri;
import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.AdsLoader;
import com.google.ads.interactivemedia.v3.api.AdsRenderingSettings;
import com.google.ads.interactivemedia.v3.api.AdsRequest;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.api.ImaSdkSettings;
import com.google.ads.interactivemedia.v3.api.StreamDisplayContainer;
import com.google.ads.interactivemedia.v3.api.StreamRequest;
import com.google.ads.interactivemedia.v3.impl.ah;
import com.google.ads.interactivemedia.v3.impl.aj;
import com.google.ads.interactivemedia.v3.impl.b;
import com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration;
import com.google.ads.interactivemedia.v3.impl.h;
import com.google.ads.interactivemedia.v3.impl.l;
import com.google.ads.interactivemedia.v3.impl.m;
import com.google.ads.interactivemedia.v3.impl.r;
import com.google.ads.interactivemedia.v3.impl.y;

public class ImaSdkFactory {
    private static ImaSdkFactory instance;

    private ImaSdkFactory() {
    }

    private AdsLoader createAdsLoader(Context context, Uri uri, ImaSdkSettings imaSdkSettings, TestingConfiguration testingConfiguration) {
        context = new h(context, uri, imaSdkSettings, testingConfiguration);
        context.a();
        return context;
    }

    private AdsLoader createAdsLoader(Context context, ImaSdkSettings imaSdkSettings, TestingConfiguration testingConfiguration) {
        return this.createAdsLoader(context, y.b, imaSdkSettings, testingConfiguration);
    }

    public static ImaSdkFactory getInstance() {
        if (instance == null) {
            instance = new ImaSdkFactory();
        }
        return instance;
    }

    public AdDisplayContainer createAdDisplayContainer() {
        return new b();
    }

    public AdsLoader createAdsLoader(Context context) {
        return this.createAdsLoader(context, this.createImaSdkSettings());
    }

    public AdsLoader createAdsLoader(Context context, ImaSdkSettings imaSdkSettings) {
        return new h(context, y.b, imaSdkSettings);
    }

    public AdsRenderingSettings createAdsRenderingSettings() {
        return new l();
    }

    public AdsRequest createAdsRequest() {
        return new m();
    }

    public CompanionAdSlot createCompanionAdSlot() {
        return new r();
    }

    public ImaSdkSettings createImaSdkSettings() {
        return new ImaSdkSettings();
    }

    public StreamRequest createLiveStreamRequest(String string2, String string3, StreamDisplayContainer streamDisplayContainer) {
        aj aj2 = new aj();
        aj2.a(string2);
        aj2.d(string3);
        aj2.a(streamDisplayContainer);
        return aj2;
    }

    public StreamDisplayContainer createStreamDisplayContainer() {
        return new ah();
    }

    public StreamRequest createVodStreamRequest(String string2, String string3, String string4, StreamDisplayContainer streamDisplayContainer) {
        aj aj2 = new aj();
        aj2.b(string2);
        aj2.c(string3);
        aj2.d(string4);
        aj2.a(streamDisplayContainer);
        return aj2;
    }
}

