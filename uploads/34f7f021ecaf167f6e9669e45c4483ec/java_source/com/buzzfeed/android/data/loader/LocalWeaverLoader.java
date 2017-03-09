/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  com.google.gson.JsonParseException
 */
package com.buzzfeed.android.data.loader;

import android.content.Context;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.buzzfeed.toolkit.content.BaseLoader;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.networking.NetworkService;
import com.buzzfeed.toolkit.networking.helpers.WeaverServiceHelper;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.weaver.loader.WeaverLoader;
import com.buzzfeed.toolkit.weaver.model.WeaverResponse;
import com.google.gson.JsonParseException;
import java.io.IOException;

public class LocalWeaverLoader
extends WeaverLoader {
    private static final String LOCAL_WEAVER_ASSET = "local_weaver.json";
    private static final String TAG = LogUtil.makeLogTag(LocalWeaverLoader.class);
    private final Context mAppContext;

    public LocalWeaverLoader(Context context) {
        super(context, null, NetworkService.getWeaverService(), "local_weaver.json", false);
        this.mAppContext = context.getApplicationContext();
    }

    private String loadFromAssets() {
        try {
            String string2 = EZUtil.readStringFromAsset(this.mAppContext, "local_weaver.json");
            return string2;
        }
        catch (IOException var1_2) {
            LogUtil.e(TAG, "Unable to load local Weaver asset: local_weaver.json", var1_2);
            return null;
        }
    }

    @Override
    public boolean hasMorePages() {
        return false;
    }

    @Override
    public void load(boolean bl, int n2, @NonNull BaseLoader.LoaderCallback loaderCallback) {
        String string2 = this.loadFromAssets();
        if (TextUtils.isEmpty((CharSequence)string2)) {
            loaderCallback.onError(new Exception("Unable to perform load. Empty response."));
            return;
        }
        try {
            this.mLocalFlowList = this.parseModules(WeaverResponse.fromJson(string2));
            loaderCallback.onLoadComplete();
            return;
        }
        catch (JsonParseException var4_5) {
            LogUtil.e(TAG, "Unable to parse local response.", (Throwable)var4_5);
            loaderCallback.onError((Exception)var4_5);
            return;
        }
    }

    @Override
    public boolean shouldShowAds() {
        return true;
    }
}

