/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  okhttp3.ResponseBody
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 *  retrofit2.Response
 */
package com.buzzfeed.android.data.loader;

import android.content.Context;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.toolkit.content.BaseLoader;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.networking.helpers.LegacyFeedServiceHelper;
import com.buzzfeed.toolkit.util.HttpErrorParser;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import com.buzzfeed.toolkit.util.retrofit.StringCallback;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public abstract class BaseFeedLoader
extends BaseLoader {
    public static final int FIRST_PAGE = 1;
    private static final String TAG = LogUtil.makeLogTag(BaseFeedLoader.class);
    protected Context mContext;
    protected Feed mFeed;
    protected String mFeedUrl;
    protected final LegacyFeedServiceHelper mLegacyFeedService;
    protected FlowList mLocalAdBackfillList;
    protected int mLocalFirstBuzzPos = 0;
    protected boolean mRefresh;

    public BaseFeedLoader(Context context, Feed feed, LegacyFeedServiceHelper legacyFeedServiceHelper) {
        this.mContext = context.getApplicationContext();
        this.mFeed = feed;
        this.mLegacyFeedService = legacyFeedServiceHelper;
        this.mLegacyFeedService.gzip();
    }

    private JSONObject optJSONObject(String string2) {
        try {
            JSONObject jSONObject = new JSONObject(string2);
            return jSONObject;
        }
        catch (JSONException var2_3) {
            LogUtil.d(TAG, "Error parsing buzzfeed JSON: " + string2);
            return null;
        }
    }

    private void parseOldFeed(String string2) throws JSONException {
        this.mLocalFlowList = this.parseFlow(new JSONArray(string2), BuffetType.POST, this.shouldShowAds());
        this.mLocalAdBackfillList.clear();
    }

    protected abstract String getBaseFeedUrl(int var1);

    public Feed getFeed() {
        return this.mFeed;
    }

    public int getPage() {
        return this.mPage;
    }

    protected Map<String, String> getUrlParameters(int n2) {
        String string2 = EnvironmentConfig.getEdition(this.mContext);
        LegacyFeedServiceHelper.QueryParamsBuilder queryParamsBuilder = new LegacyFeedServiceHelper.QueryParamsBuilder();
        queryParamsBuilder.noCache(this.mRefresh);
        if (n2 > 1) {
            queryParamsBuilder.page(String.valueOf(n2));
        }
        if (string2 != null) {
            queryParamsBuilder.country(string2);
        }
        return queryParamsBuilder.build();
    }

    @Override
    public boolean hasMorePages() {
        return false;
    }

    @Override
    public void load(boolean bl, int n2, BaseLoader.LoaderCallback loaderCallback) {
        this.mRefresh = bl;
        this.mLocalFlowList = new FlowList();
        this.mLocalAdBackfillList = new FlowList();
        this.mFeedUrl = this.getBaseFeedUrl(n2);
        this.mCallback = loaderCallback;
        this.mPage = n2;
        this.loadExecute();
    }

    protected void loadExecute() {
        this.mLegacyFeedService.loadFeeds(this.mFeedUrl, this.getUrlParameters(this.mPage), new StringCallback(){

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                LogUtil.e(TAG, "Error fetching buzz feed JSON", throwable);
                BaseFeedLoader.this.mCallback.onError(new Exception(throwable));
            }

            @Override
            public void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                object = HttpErrorParser.createExceptionOnHttpError(response.code());
                LogUtil.e(TAG, "Network Error fetching buzz feed JSON", (Throwable)object);
                BaseFeedLoader.this.mCallback.onError((Exception)object);
            }

            @Override
            public void onStringResponse(String string2) {
                BaseFeedLoader.this.parseResponse(string2);
            }
        });
    }

    protected abstract void parseFeed(JSONObject var1) throws JSONException;

    /*
     * Exception decompiling
     */
    protected FlowList parseFlow(JSONArray var1_1, BuffetType var2_2, boolean var3_4) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.IllegalStateException: Backjump on non jumping statement [] lbl38 : TryStatement: try { 1[TRYBLOCK]

        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner$1.call(Cleaner.java:44)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner$1.call(Cleaner.java:22)
        // org.benf.cfr.reader.util.graph.GraphVisitorDFS.process(GraphVisitorDFS.java:68)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner.removeUnreachableCode(Cleaner.java:54)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.RemoveDeterministicJumps.apply(RemoveDeterministicJumps.java:35)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:519)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void parseResponse(String string2) {
        if (string2 == null || string2.length() == 0) {
            this.mCallback.onLoadComplete();
            return;
        }
        JSONObject jSONObject = this.optJSONObject(string2);
        if (jSONObject != null) {
            this.parseFeed(jSONObject);
            do {
                return;
                break;
            } while (true);
        }
        try {
            this.parseOldFeed(string2);
            return;
        }
        catch (JSONException var2_4) {
            LogUtil.e(TAG, "Error Parsing buzzfeed JSON.  Response: " + string2, (Throwable)var2_4);
            return;
        }
        catch (Throwable var1_2) {
            throw var1_2;
        }
        finally {
            this.mCallback.onLoadComplete();
        }
    }

    @Override
    public boolean shouldShowAds() {
        return true;
    }

}

