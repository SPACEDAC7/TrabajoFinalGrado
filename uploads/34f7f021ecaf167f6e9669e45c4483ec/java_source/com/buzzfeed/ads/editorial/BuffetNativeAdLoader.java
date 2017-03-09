/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.os.AsyncTask
 *  android.util.Log
 *  okhttp3.ResponseBody
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 *  retrofit2.Response
 */
package com.buzzfeed.ads.editorial;

import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.util.Log;
import com.buzzfeed.ads.R;
import com.buzzfeed.ads.model.NativeInlineAd;
import com.buzzfeed.ads.utils.AdConfig;
import com.buzzfeed.ads.utils.AdUtils;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.Buzz;
import com.buzzfeed.toolkit.content.BuzzAd;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.networking.NetworkService;
import com.buzzfeed.toolkit.networking.helpers.AdServiceHelper;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.HttpErrorParser;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import com.buzzfeed.toolkit.util.retrofit.StringCallback;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import java.io.IOException;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class BuffetNativeAdLoader {
    private static final String AD_BUZZ_URL_KEY = "ad_buzz_url";
    private static final String DFP_STORY = "/story";
    private static final String DFP_TEMPLATE_ID = "10178413";
    private static final String TAG = BuffetNativeAdLoader.class.getSimpleName();
    protected FlowList adBackfillList;
    public int[] adPositions;
    protected final AdServiceHelper mAdServiceHelper;
    private final String mAdTag;
    private Context mContext;
    private Correlator mCorrelator;
    private final String mLanguagePath;
    private final String mVersionCode;

    public BuffetNativeAdLoader(Context context, String string2, String string3, String string4) {
        this.mContext = context.getApplicationContext();
        this.adBackfillList = new FlowList();
        this.mAdServiceHelper = NetworkService.getAdService();
        this.mContext = context.getApplicationContext();
        this.mAdTag = string2;
        this.mLanguagePath = AdUtils.getLanguagePath(string3);
        this.mVersionCode = string4;
        this.mCorrelator = new Correlator();
        this.mAdServiceHelper.gzip();
    }

    private NativeInlineAd buildNativeInlineAd(NativeCustomTemplateAd nativeCustomTemplateAd, JSONObject jSONObject) throws JSONException {
        NativeInlineAd nativeInlineAd = new NativeInlineAd();
        nativeInlineAd.setNativeAd(nativeCustomTemplateAd);
        nativeInlineAd.loadAdFromJSON(jSONObject);
        return nativeInlineAd;
    }

    private FlowItem getBaseBuzzAd() {
        NativeInlineAd nativeInlineAd = new NativeInlineAd();
        return new FlowItem(BuffetType.EDITORIAL_AD.name(), nativeInlineAd);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void loadAdBackfillList(Context var1_1) {
        block6 : {
            try {
                var1_1 = new JSONObject(EZUtil.readStringFromAsset(var1_1, "ad_backfill.json")).getJSONArray("ad_backfill");
                var2_5 = 0;
                break block6;
            }
            catch (JSONException var1_2) {}
            ** GOTO lbl-1000
            catch (IOException var1_4) {}
lbl-1000: // 2 sources:
            {
                LogUtil.e(BuffetNativeAdLoader.TAG, "Error parsing ad backfill JSON " + var1_3.getMessage());
            }
            return;
        }
        while (var2_5 < var1_1.length()) {
            var3_6 = var1_1.getJSONObject(var2_5);
            var4_7 /* !! */  = new Buzz();
            var4_7 /* !! */ .parse(var3_6);
            var4_7 /* !! */  = new FlowItem(BuffetType.POST.name(), var4_7 /* !! */ );
            if (var4_7 /* !! */ .isValid()) {
                this.adBackfillList.add((FlowItem)var4_7 /* !! */ );
            } else {
                LogUtil.e(BuffetNativeAdLoader.TAG, "flow was not valid! " + (Object)var3_6);
            }
            ++var2_5;
        }
    }

    private void startLoadBackfillTask(final int n2, final AdLoadedListener adLoadedListener) {
        new LoadAdBackfillTask(this.mContext){

            protected void onPostExecute(Void void_) {
                if (!BuffetNativeAdLoader.this.adBackfillList.isEmpty()) {
                    BuffetNativeAdLoader.this.loadAdFromBackfill(n2, adLoadedListener);
                }
            }
        }.execute((Object[])new Void[0]);
    }

    protected int getAdIndex(int n2) {
        for (int i2 = 0; i2 < this.adPositions.length; ++i2) {
            if (this.adPositions[i2] != n2) continue;
            return i2;
        }
        return -1;
    }

    public void initializeAdPositions(FlowList flowList) {
        boolean bl = AdUtils.hasBreakingBar(flowList);
        boolean bl2 = AdUtils.hasFeatured(flowList);
        boolean bl3 = AdUtils.hasVideoAd(flowList);
        int n2 = 0;
        int n3 = 0;
        int n4 = R.array.ad_positions;
        this.adPositions = this.mContext.getResources().getIntArray(n4);
        if (bl) {
            n2 = 0 + 1;
        }
        n4 = n2;
        if (bl2) {
            n4 = n2 + 1;
        }
        n2 = n3;
        n3 = n4;
        if (bl3) {
            this.adPositions[0] = this.adPositions[0] + n4;
            n3 = n4 + 1;
            n2 = 0 + 1;
        }
        while (n2 < this.adPositions.length) {
            this.adPositions[n2] = this.adPositions[n2] + n3;
            ++n2;
        }
    }

    public void insertBlankAds(int n2, FlowList flowList) {
        if (this.adPositions == null) {
            this.initializeAdPositions(flowList);
        }
        for (int n3 : this.adPositions) {
            int n4 = n3 - n2;
            if (n3 <= n2 || n4 > flowList.size()) continue;
            flowList.add(n4, this.getBaseBuzzAd());
        }
    }

    public void loadAd(final int n2, final AdLoadedListener adLoadedListener) {
        final String string2 = TAG + ".loadAd";
        final long l2 = System.currentTimeMillis();
        int n3 = this.getAdIndex(n2);
        Object object = AdUtils.buildIuBody(AdConfig.getTestAdType()) + this.mLanguagePath + this.mAdTag + "/story" + String.valueOf(n3 + 1);
        LogUtil.d(string2, "Ad Call Url: " + (String)object);
        object = new AdLoader.Builder(this.mContext, (String)object);
        object.withCorrelator(this.mCorrelator).forCustomTemplateAd("10178413", new NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener(){

            @Override
            public void onCustomTemplateAdLoaded(NativeCustomTemplateAd object) {
                object.recordImpression();
                String string22 = (String)object.getText("ad_buzz_url");
                LogUtil.d(string2, "Ad JSON: " + string22);
                if (string22 != null) {
                    object = new StringCallback((NativeCustomTemplateAd)object){
                        final /* synthetic */ NativeCustomTemplateAd val$ad;

                        @Override
                        public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                            LogUtil.e(string2, throwable.getMessage());
                            BuffetNativeAdLoader.this.loadAdFromBackfill(n2, adLoadedListener);
                        }

                        @Override
                        protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                            object = HttpErrorParser.createExceptionOnHttpError(response.code());
                            LogUtil.e(string2, "Network Response Error: " + response.code(), (Throwable)object);
                            BuffetNativeAdLoader.this.loadAdFromBackfill(n2, adLoadedListener);
                        }

                        @Override
                        public void onStringResponse(String object) {
                            try {
                                object = BuffetNativeAdLoader.this.buildNativeInlineAd(this.val$ad, new JSONObject((String)object));
                                object = new FlowItem(BuffetType.EDITORIAL_AD.name(), (Content)object);
                                adLoadedListener.onAdLoaded(n2, (FlowItem)object);
                                return;
                            }
                            catch (JSONException var1_2) {
                                LogUtil.e(string2, "Unable to parse ad");
                                BuffetNativeAdLoader.this.loadAdFromBackfill(n2, adLoadedListener);
                                return;
                            }
                        }
                    };
                    BuffetNativeAdLoader.this.mAdServiceHelper.loadAdUrl(string22, (SafeCallback<ResponseBody>)object);
                }
            }

        }, new NativeCustomTemplateAd.OnCustomClickListener(){

            @Override
            public void onCustomClick(NativeCustomTemplateAd nativeCustomTemplateAd, String string2) {
            }
        });
        object.withAdListener(new AdListener(){

            @Override
            public void onAdFailedToLoad(int n22) {
                LogUtil.d(TAG + ".onAdFailedToLoad", "Failed to load native ad: " + n22);
                BuffetNativeAdLoader.this.loadAdFromBackfill(n2, adLoadedListener);
            }

            @Override
            public void onAdLoaded() {
                String string2 = TAG + ".onAdLoaded";
                super.onAdLoaded();
                long l22 = System.currentTimeMillis();
                long l3 = l2;
                Log.d((String)string2, (String)("Time to load: " + String.valueOf(l22 - l3)));
            }

            @Override
            public void onAdOpened() {
                String string2 = TAG + ".onAdOpened";
                super.onAdOpened();
                LogUtil.d(string2, "Ad Opened");
            }
        }).build().loadAd(new PublisherAdRequest.Builder().addCustomTargeting("app", this.mVersionCode).build());
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void loadAdFromBackfill(int n2, AdLoadedListener adLoadedListener) {
        if (this.adBackfillList.isEmpty()) {
            this.startLoadBackfillTask(n2, adLoadedListener);
            return;
        } else {
            FlowItem flowItem;
            int n3 = this.getAdIndex(n2);
            if (this.adBackfillList.size() <= n3 || (flowItem = this.adBackfillList.get(n3)) == null) return;
            {
                adLoadedListener.onAdLoaded(n2, flowItem);
                return;
            }
        }
    }

    public void registerClick(BuzzAd object) {
        if ((object = ((NativeInlineAd)object).getDfpAd()) != null) {
            object.performClick("ad_buzz_url");
        }
    }

    public void resetCorrelator() {
        if (this.mCorrelator != null) {
            this.mCorrelator.reset();
        }
    }

    public static interface AdLoadedListener {
        public void onAdLoaded(int var1, FlowItem var2);
    }

    public class LoadAdBackfillTask
    extends AsyncTask<Void, Void, Void> {
        Context mContext;

        public LoadAdBackfillTask(Context context) {
            this.mContext = context;
        }

        protected /* varargs */ Void doInBackground(Void ... arrvoid) {
            BuffetNativeAdLoader.this.loadAdBackfillList(this.mContext);
            return null;
        }
    }

}

