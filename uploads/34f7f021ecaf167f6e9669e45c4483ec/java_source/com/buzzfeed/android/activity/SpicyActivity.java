/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.TimeInterpolator
 *  android.annotation.SuppressLint
 *  android.annotation.TargetApi
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.graphics.drawable.Drawable
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.os.Bundle
 *  android.text.TextUtils
 *  android.transition.Transition
 *  android.transition.Transition$TransitionListener
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.Window
 *  android.widget.ImageView
 *  android.widget.RelativeLayout
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.android.activity;

import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.app.SharedElementCallback;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.transition.Transition;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.buzzfeed.ads.tracking.VendorImpressionTracker;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.activity.BlankHeaderSpicyActivity;
import com.buzzfeed.android.activity.BuzzLoginActivity;
import com.buzzfeed.android.activity.CommentsActivity;
import com.buzzfeed.android.activity.PagerActivity;
import com.buzzfeed.android.activity.YouTubeActivity;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.ShareFabLabelABTest;
import com.buzzfeed.android.data.ads.NativeBPageAdTest;
import com.buzzfeed.android.data.bookmark.BFBookmarkManager;
import com.buzzfeed.android.data.tracking.LotameEventTracker;
import com.buzzfeed.android.data.tracking.SpicyTracker;
import com.buzzfeed.android.experiment.FixedShareBarABTest;
import com.buzzfeed.android.ui.reactions.ReactionsView;
import com.buzzfeed.android.ui.spicerack.ViewResponseButton;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.android.util.WebContentType;
import com.buzzfeed.android.util.chrometabs.CustomTabUtils;
import com.buzzfeed.spicerack.data.constant.SpicyViewState;
import com.buzzfeed.spicerack.data.factory.SpiceFactory;
import com.buzzfeed.spicerack.data.model.subbuzz.ImageSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.SpiceItem;
import com.buzzfeed.spicerack.data.provider.SpiceMill;
import com.buzzfeed.spicerack.data.sharebar.SpicyShareBarLocation;
import com.buzzfeed.spicerack.experiment.FixedShareBarVariant;
import com.buzzfeed.spicerack.ui.protocol.SpicyEventListener;
import com.buzzfeed.spicerack.ui.protocol.SpicyShareBarListener;
import com.buzzfeed.spicerack.ui.protocol.SpicyTransitionStartListener;
import com.buzzfeed.spicerack.ui.utils.SpicyUtil;
import com.buzzfeed.spicerack.ui.view.FixedShareBar;
import com.buzzfeed.spicerack.ui.view.SpicyView;
import com.buzzfeed.spicerack.utils.FacebookShare;
import com.buzzfeed.spicerack.utils.FacebookShareEngine;
import com.buzzfeed.toolkit.content.AuthorContent;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.sharmo.ShareManager;
import com.buzzfeed.toolkit.tenderizer.InterpolatedPound;
import com.buzzfeed.toolkit.tenderizer.Tenderizer;
import com.buzzfeed.toolkit.ui.sharedelementtransition.SharedTransitionElement;
import com.buzzfeed.toolkit.ui.sharedelementtransition.SharedTransitionSender;
import com.buzzfeed.toolkit.util.DeviceUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.ShareItemType;
import com.buzzfeed.toolkit.util.StringUtils;
import com.buzzfeed.toolkit.util.TransitionListener;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import org.json.JSONException;
import org.json.JSONObject;

public class SpicyActivity
extends BaseActivity
implements SpicyEventListener {
    private static final String KEY_DO_SHARED_ELEMENT_ANIMATION = "KEY_DO_SHARED_ELEMENT_ANIMATION";
    public static final String KEY_FEED = "KEY_FEED";
    private static final String KEY_SPICY_CONTENT = "KEY_SPICY_CONTENT";
    public static final String KEY_URL = "KEY_URL";
    public static final int REQUEST_CODE_FEED = 1;
    public static final int REQUEST_CODE_LOGIN = 0;
    private static final String TAG = LogUtil.makeLogTag(SpicyActivity.class);
    protected MenuItem mBookmarkMenuButton;
    protected MenuItem mCommentsMenuItem;
    protected boolean mDoSharedElementAnimation;
    FloatingActionButton mFab;
    private FacebookShare mFacebookShare;
    protected Feed mFeed;
    protected PostContent mHeaderContent;
    protected boolean mIsReturning;
    protected MenuItem mReactionsMenuItem;
    protected ReactionsView mReactionsView;
    protected ShareManager.ShareActionListener mShareActionListener;
    protected SpiceItem mSpiceItem;
    private SpiceMill mSpiceMill;
    protected SpicyTracker mSpicyTracker;
    protected SpicyView mSpicyView;

    private View createNativeResponseButton() {
        return new ViewResponseButton(this, new View.OnClickListener(){

            public void onClick(View view) {
                SpicyActivity.this.openResponseView();
            }
        });
    }

    private SpicyShareBarListener createShareListener() {
        return new SpicyShareBarListener(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onShareEvent(ShareItemType shareItemType, SpicyShareBarLocation spicyShareBarLocation) {
                if (shareItemType == ShareItemType.Facebook) {
                    SpicyActivity.this.mFacebookShare.shareFacebookContent(SpicyActivity.this.mSpiceItem, EnvironmentConfig.getUrlWithSSLBaseUrl(SpicyActivity.this.mSpiceItem.getUri()));
                } else {
                    ShareManager.shareContent(SpicyActivity.this, SpicyActivity.this.mSpiceItem, EnvironmentConfig.getUrlWithSSLBaseUrl(SpicyActivity.this.mSpiceItem.getUri()), shareItemType);
                }
                SpicyActivity.this.mSpicyTracker.trackShareBarShare(shareItemType, SpicyActivity.this.mSpiceItem, spicyShareBarLocation);
            }
        };
    }

    public static Intent getDeepLinkIntent(Activity activity, String string2, Feed feed) {
        activity = new Intent((Context)activity, (Class)SpicyActivity.class);
        activity.putExtra("KEY_URL", string2);
        activity.putExtra("KEY_FEED", (Serializable)feed);
        return activity;
    }

    public static Intent getDefaultIntent(Activity activity, PostContent postContent, Feed feed) {
        activity = new Intent((Context)activity, (Class)SpicyActivity.class);
        activity.putExtra("KEY_SPICY_CONTENT", (Serializable)postContent);
        activity.putExtra("KEY_FEED", (Serializable)feed);
        return activity;
    }

    public static Intent getDefaultIntentBlankHeader(Activity activity, PostContent postContent, Feed feed) {
        activity = new Intent((Context)activity, (Class)BlankHeaderSpicyActivity.class);
        activity.putExtra("KEY_SPICY_CONTENT", (Serializable)postContent);
        activity.putExtra("KEY_FEED", (Serializable)feed);
        return activity;
    }

    private ShareItemType[] getShareItems() {
        return new ShareItemType[]{ShareItemType.Facebook, ShareItemType.Pinterest, ShareItemType.Email, ShareItemType.WhatsApp, ShareItemType.Sms};
    }

    private void handleDeepLink(String string2) {
        this.loadSpicesByUrl(string2);
    }

    private void handlePageLoadingError() {
        if (this.isDeepLink()) {
            PagerActivity.startIntent(this);
        }
        this.finish();
    }

    private void handleUrlClicked(String string2, boolean bl) {
        String string3 = TAG + ".handleUrlClicked";
        this.mSpicyTracker.trackUrlClicked(this.mSpiceItem, string2, bl);
        if (BuzzUtils.isBuzzFeedUrl(string2) && !BuzzUtils.isBuzzFeedStaticImageUrl(string2)) {
            LogUtil.d(string3, "Internal URL click: " + string2);
            SpicyActivity.startIntent(this, string2, this.mFeed);
            return;
        }
        if (ShareManager.isEmailShare(string2)) {
            LogUtil.d(string3, "External email URI click: " + string2);
            ShareManager.shareEmail((Context)this, string2);
            return;
        }
        LogUtil.d(string3, "External URL click: " + string2);
        CustomTabUtils.openChromeTab(this, string2);
    }

    private boolean isDeepLink() {
        return this.getIntent().hasExtra("KEY_URL");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean isTallImage() {
        boolean bl;
        Intent intent = this.getIntent();
        if (!DeviceUtil.isTablet(this.getApplicationContext())) {
            bl = true;
            do {
                return intent.getBooleanExtra("image_large", bl);
                break;
            } while (true);
        }
        bl = false;
        return intent.getBooleanExtra("image_large", bl);
    }

    private void loadSpices(PostContent postContent) {
        this.mHeaderContent = postContent;
        SharedTransitionSender sharedTransitionSender = this.setUpSharedElementTransitionPreLollipop();
        Stack<String> stack = postContent.getImageStack(UIUtil.getScreenDensityDpi());
        if (this.getIntent().hasExtra("image_stack")) {
            ArrayList arrayList = (ArrayList)this.getIntent().getSerializableExtra("image_stack");
            stack.clear();
            stack.addAll(arrayList);
        }
        this.mSpicyView.setHeaderImageInfo(stack, this.isTallImage(), this.mDoSharedElementAnimation);
        this.mSpicyView.populateHeader(this.mHeaderContent, sharedTransitionSender);
        this.mSpiceMill.getSpicesById(postContent.getId(), new SpiceMill.SpiceMillListener(){

            @Override
            public void onError() {
                SpicyActivity.this.handlePageLoadingError();
            }

            @Override
            public void onSuccess(SpiceItem spiceItem) {
                if (SpicyActivity.this.shouldStopLoadingPage()) {
                    return;
                }
                SpicyActivity.this.mSpiceItem = spiceItem;
                SpicyActivity.this.mHeaderContent = spiceItem;
                SpicyActivity.this.updateReactionsAndCommentsMenuButton();
                SpicyActivity.this.mSpicyView.populatePost(spiceItem);
                SpicyActivity.this.mSpicyTracker.trackPageView(SpicyActivity.this.mSpiceItem, SpicyActivity.this.mFeed, SpicyActivity.this.mSpicyView.getViewState(), SpiceFactory.getUnsupportedSubbuzzs(SpicyActivity.this.getApplicationContext(), spiceItem), null);
                SpicyActivity.this.trackIfNativeAdPost();
            }
        });
    }

    private void loadSpicesByUrl(final String string2) {
        String string3 = BuzzUtils.stripSchemeAndHost(InterpolatedPound.stripInterpolatedPound(Uri.parse((String)string2))).toString();
        this.mSpiceMill.getSpicesByUrl(string3, new SpiceMill.SpiceMillListener(){

            @Override
            public void onError() {
                CustomTabUtils.openChromeTab(SpicyActivity.this, string2);
                SpicyActivity.this.finish();
            }

            @Override
            public void onSuccess(SpiceItem spiceItem) {
                if (SpicyActivity.this.shouldStopLoadingPage()) {
                    return;
                }
                SpicyActivity.this.mSpiceItem = spiceItem;
                SpicyActivity.this.mHeaderContent = spiceItem;
                SpicyActivity.this.mSpicyView.setHeaderImageInfo(spiceItem.getImageStack(UIUtil.getScreenDensityDpi()), SpicyActivity.this.isTallImage(), SpicyActivity.this.mDoSharedElementAnimation);
                SpicyActivity.this.mSpicyView.populateHeader(SpicyActivity.this.mSpiceItem);
                SpicyActivity.this.mSpicyView.onSharedElementTransitionEnd();
                SpicyActivity.this.updateReactionsAndCommentsMenuButton();
                SpicyActivity.this.mSpicyView.populatePost(spiceItem);
                SpicyActivity.this.mSpicyTracker.trackPageView(SpicyActivity.this.mSpiceItem, SpicyActivity.this.mFeed, SpicyActivity.this.mSpicyView.getViewState(), SpiceFactory.getUnsupportedSubbuzzs(SpicyActivity.this.getApplicationContext(), spiceItem), string2);
                SpicyActivity.this.trackIfNativeAdPost();
            }
        });
    }

    private void onBookmarkMenuButtonClicked() {
        if (this.mHeaderContent != null && this.mHeaderContent.isValid()) {
            BFBookmarkManager.getInstance(this.getApplicationContext()).toggleBookmark(this.mHeaderContent, new BFBookmarkManager.ToggleBookmarkInterface(){

                /*
                 * Enabled aggressive block sorting
                 */
                @Override
                public void bookmarkToggled() {
                    String string2;
                    SpicyActivity.this.updateBookmarkMenuButton();
                    boolean bl = false;
                    if (BFBookmarkManager.getInstance(SpicyActivity.this.getApplicationContext()).isBookmarked(SpicyActivity.this.mHeaderContent)) {
                        string2 = String.format(SpicyActivity.this.getString(2131296383), SpicyActivity.this.mHeaderContent.getTitle());
                        bl = true;
                    } else {
                        string2 = String.format(SpicyActivity.this.getString(2131296384), SpicyActivity.this.mHeaderContent.getTitle());
                    }
                    BuzzUtils.showToastNotification(SpicyActivity.this, string2, 0);
                    SpicyActivity.this.mSpicyTracker.trackBookmarkClick(SpicyActivity.this.mHeaderContent, bl);
                }

                @Override
                public void userLogin() {
                    BFBookmarkManager.showNotSignedInDialog(SpicyActivity.this);
                }
            });
        }
    }

    private void onContributeMenuButtonClicked() {
        this.openResponseView();
    }

    private void onFabClick() {
        if (this.mSpiceItem == null || EnvironmentConfig.getUrlWithSSLBaseUrl(this.mSpiceItem.getUri()) == null) {
            return;
        }
        this.mSpicyTracker.trackFabShare(this.mSpiceItem);
        String string2 = EnvironmentConfig.getUrlWithSSLBaseUrl(this.mSpiceItem.getUri());
        this.mShareActionListener = new ShareManager.ShareActionListener(){

            @Override
            public void onShareAction(@Nullable String string2) {
                SpicyActivity.this.mSpicyTracker.trackFabShareActivity(SpicyActivity.this.mSpiceItem, string2);
            }
        };
        ShareManager.shareWithListener((Activity)this, this.mSpiceItem.getTitle(), string2, this.mShareActionListener);
    }

    private void onReactMenuButtonClicked() {
        BuzzUser buzzUser = BuzzUser.getInstance(this.getApplicationContext());
        if (buzzUser == null || !buzzUser.isLogin()) {
            this.startLoginActivityForResult();
            return;
        }
        this.setReactionsViewVisible(true);
    }

    private void openResponseView() {
        if (this.mHeaderContent != null && EnvironmentConfig.getUrlWithSSLBaseUrl(this.mHeaderContent.getUri()) != null) {
            this.startActivity(CommentsActivity.startIntent((Context)this, this.mHeaderContent));
            this.overridePendingTransition(2130968602, 2130968601);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void setReactionsViewVisible(boolean bl) {
        if (this.mReactionsView == null) return;
        if (bl) {
            this.mReactionsView.show(this.mSpiceItem);
            return;
        }
        this.mReactionsView.hide();
    }

    private void setUpFab() {
        if (ShareFabLabelABTest.shouldUseShareFabLabel((Context)this)) {
            ((CardView)((Object)UIUtil.findView(this, 2131820891))).setOnClickListener(new View.OnClickListener(){

                public void onClick(View view) {
                    SpicyActivity.this.onFabClick();
                }
            });
            ((RelativeLayout)UIUtil.findView(this, 2131820709)).setVisibility(0);
            return;
        }
        this.mFab = (FloatingActionButton)((Object)UIUtil.findView(this, 2131820710));
        this.mFab.setVisibility(0);
        this.mFab.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                SpicyActivity.this.onFabClick();
            }
        });
    }

    @TargetApi(value=21)
    private void setUpSharedElementTransition() {
        this.postponeEnterTransition();
        this.setEnterSharedElementCallback(new SharedElementCallback(){

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public void onMapSharedElements(List<String> list, Map<String, View> map) {
                if (!SpicyActivity.this.mIsReturning) return;
                ImageView imageView = SpicyActivity.this.mSpicyView.getHeaderImageIfOnScreen();
                if (imageView == null) {
                    list.clear();
                    map.clear();
                    return;
                }
                list.clear();
                list.add(imageView.getTransitionName());
                map.clear();
                map.put(imageView.getTransitionName(), (View)imageView);
            }
        });
        Transition transition = this.getWindow().getSharedElementEnterTransition();
        transition.setInterpolator((TimeInterpolator)new FastOutSlowInInterpolator());
        transition.addListener((Transition.TransitionListener)new TransitionListener(){

            @Override
            public void onTransitionEnd(Transition transition) {
                if (SpicyActivity.this.mSpicyView != null) {
                    SpicyActivity.this.mSpicyView.onSharedElementTransitionEnd();
                }
            }
        });
        this.mSpicyView.setSpicyTransitionStartListener(new SpicyTransitionStartListener(){

            @Override
            public boolean start() {
                SpicyActivity.this.supportStartPostponedEnterTransition();
                return true;
            }
        });
    }

    private SharedTransitionSender setUpSharedElementTransitionPreLollipop() {
        if (!this.mDoSharedElementAnimation) {
            return null;
        }
        SharedTransitionElement sharedTransitionElement = (SharedTransitionElement)this.getIntent().getSerializableExtra("image");
        HashMap<String, SharedTransitionElement> hashMap = new HashMap<String, SharedTransitionElement>();
        if (sharedTransitionElement != null) {
            hashMap.put(sharedTransitionElement.getKey(), sharedTransitionElement);
        }
        return new SharedTransitionSender(hashMap);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setupSpicyTracker() {
        BuzzFeedTracker buzzFeedTracker = BuzzFeedTracker.getInstance();
        LotameEventTracker lotameEventTracker = new LotameEventTracker(buzzFeedTracker);
        boolean bl = !BuzzUtils.isPoundEnabled((Context)this);
        this.mSpicyTracker = new SpicyTracker((Context)this, buzzFeedTracker, lotameEventTracker, new Tenderizer((Context)this, bl), DustbusterClient.getInstance(), EnvironmentConfig.getEdition((Context)this));
    }

    private static void setupThumbnailTransition(Activity activity, Intent intent, View view, Stack<String> stack, boolean bl) {
        intent.putExtra("image_stack", stack);
        intent.putExtra("image_large", bl);
        if (VersionUtil.hasLollipop()) {
            activity.startActivityForResult(intent, 1, ActivityOptionsCompat.makeSceneTransitionAnimation(activity, view, view.getTransitionName()).toBundle());
            return;
        }
        intent.putExtra("image", (Serializable)new SharedTransitionElement("image", view));
        activity.startActivityForResult(intent, 1);
    }

    @SuppressLint(value={"NewApi"})
    private boolean shouldStopLoadingPage() {
        if (this.isFinishing() || VersionUtil.hasJellyBeanMR1() && this.isDestroyed()) {
            return true;
        }
        return false;
    }

    public static void startIntent(Activity activity, PostContent postContent, Feed feed, View view, Stack<String> stack, boolean bl) {
        SpicyActivity.setupThumbnailTransition(activity, SpicyActivity.getDefaultIntent(activity, postContent, feed), view, stack, bl);
    }

    public static void startIntent(Activity activity, String string2, Feed feed) {
        activity.startActivity(SpicyActivity.getDeepLinkIntent(activity, string2, feed));
    }

    public static void startIntentWithoutTransition(Activity activity, PostContent postContent, Feed feed) {
        postContent = SpicyActivity.getDefaultIntent(activity, postContent, feed);
        postContent.putExtra("KEY_DO_SHARED_ELEMENT_ANIMATION", false);
        activity.startActivityForResult((Intent)postContent, 1);
    }

    private void trackIfNativeAdPost() {
        if (!this.mSpicyView.isFallingBack() && this.mHeaderContent.isAd()) {
            VendorImpressionTracker.makeRequest(this.mHeaderContent.getId(), this.mHeaderContent.getAuthorDisplayName(), this.getApplicationContext());
        }
    }

    private void updateReactionsAndCommentsMenuButton() {
        if (this.mHeaderContent != null) {
            UIUtil.setMenuItemVisiblity(this.mReactionsMenuItem, this.mHeaderContent.isReactionsEnabled());
            UIUtil.setMenuItemVisiblity(this.mCommentsMenuItem, this.mHeaderContent.isCommentsEnabled());
        }
    }

    @Override
    public void authorClicked(AuthorContent authorContent) {
    }

    @Override
    protected void configureToolbar(@NonNull Toolbar toolbar) {
        super.configureToolbar(toolbar);
        this.mReactionsView = (ReactionsView)this.findViewById(2131820708);
    }

    protected void createSpicyOptionsMenu(Menu menu2) {
        this.getMenuInflater().inflate(2131886080, menu2);
    }

    public void finishAfterTransition() {
        this.mIsReturning = true;
        this.setResult(-1);
        super.finishAfterTransition();
    }

    protected void initLayout() {
        this.setContentView(2130903077);
        this.setToolBarAsUp(new View.OnClickListener(){

            public void onClick(View view) {
                SpicyActivity.this.onBackPressed();
            }
        });
    }

    protected void initSharedElementTransition() {
        String string2 = TAG + ".initSharedElementTransition";
        this.mDoSharedElementAnimation = this.getIntent().getBooleanExtra("KEY_DO_SHARED_ELEMENT_ANIMATION", true);
        LogUtil.d(string2, "should we do shared element transition: " + this.mDoSharedElementAnimation);
        if (VersionUtil.hasLollipop() && this.mDoSharedElementAnimation) {
            this.setUpSharedElementTransition();
        }
    }

    @Override
    protected void onActivityResult(int n2, int n3, Intent intent) {
        super.onActivityResult(n2, n3, intent);
        switch (n2) {
            default: {
                return;
            }
            case 0: 
        }
        this.updateBookmarkMenuButton();
    }

    @Override
    public void onAnalyticsEvent(String string2, String string3) {
    }

    @Override
    public void onBackPressed() {
        this.mSpicyTracker.trackBack();
        super.onBackPressed();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.initLayout();
        this.setUpSpicyView();
        this.setUpFab();
        this.mSpiceMill = new SpiceMill(this.getApplicationContext());
        this.setupFixedShareBarExperiment();
        this.initSharedElementTransition();
        this.setupSpicyTracker();
        this.mFeed = (Feed)this.getIntent().getSerializableExtra("KEY_FEED");
        this.mFacebookShare = new FacebookShare(this.getApplicationContext(), this, new FacebookShareEngine());
        if (this.getIntent().hasExtra("KEY_SPICY_CONTENT")) {
            this.loadSpices((PostContent)this.getIntent().getSerializableExtra("KEY_SPICY_CONTENT"));
            return;
        } else {
            if (!this.isDeepLink()) return;
            {
                this.handleDeepLink(this.getIntent().getStringExtra("KEY_URL"));
                return;
            }
        }
    }

    public boolean onCreateOptionsMenu(Menu menu2) {
        this.createSpicyOptionsMenu(menu2);
        this.mBookmarkMenuButton = menu2.findItem(2131821103);
        this.mReactionsMenuItem = menu2.findItem(2131821102);
        this.mCommentsMenuItem = menu2.findItem(2131821101);
        this.updateBookmarkMenuButton();
        UIUtil.setMenuItemVisiblity(this.mReactionsMenuItem, false);
        UIUtil.setMenuItemVisiblity(this.mCommentsMenuItem, false);
        return true;
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.mShareActionListener = null;
        this.mSpiceMill.cancelRequests();
    }

    @Override
    public void onImageShare(ImageSpice object) {
        this.mSpicyTracker.trackSubBuzzOpenShareSheet();
        Uri.Builder builder = Uri.parse((String)EnvironmentConfig.getEnvironment().BASE_URL).buildUpon();
        builder.appendEncodedPath(StringUtils.stripBeginningSlash(this.mSpiceItem.getUri()));
        builder.appendQueryParameter("sub", this.mSpiceItem.getId() + "_" + object.getId());
        String string2 = this.mSpiceItem.getDescription();
        if (!TextUtils.isEmpty((CharSequence)object.getHeader())) {
            string2 = object.getHeader();
        }
        object = builder.toString();
        this.mShareActionListener = new ShareManager.ShareActionListener(){

            @Override
            public void onShareAction(@Nullable String string2) {
                SpicyActivity.this.mSpicyTracker.trackSubBuzzShareActivityClicked(SpicyActivity.this.mSpiceItem, string2);
            }
        };
        ShareManager.shareWithListener((Activity)this, string2, (String)object, this.mShareActionListener);
    }

    @Override
    public void onItemDisplayed(FlowItem flowItem, int n2) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            default: {
                return super.onOptionsItemSelected(menuItem);
            }
            case 2131821103: {
                this.onBookmarkMenuButtonClicked();
                return true;
            }
            case 2131821101: {
                this.onContributeMenuButtonClicked();
                return true;
            }
            case 2131821102: {
                this.onReactMenuButtonClicked();
                return true;
            }
            case 16908332: 
        }
        this.mSpicyTracker.trackBack();
        this.supportFinishAfterTransition();
        return true;
    }

    @Override
    protected void onPause() {
        super.onPause();
        this.mSpicyView.setSpicyEventListener(null);
        this.mSpicyView.pause();
    }

    @Override
    protected void onResume() {
        super.onResume();
        this.mSpicyView.setSpicyEventListener(this);
        this.mSpicyView.resume();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onShareEvent(String string2, String string3) {
        String string4 = TAG + ".onShareEvent";
        if (TextUtils.isEmpty((CharSequence)string2) || TextUtils.isEmpty((CharSequence)string3)) {
            LogUtil.e(string4, "Unable to perform share. Invalid content: type=" + string2 + ", data=" + string3);
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(string3);
            if (string2.equals("facebook")) {
                this.mFacebookShare.shareFacebookFromJSON(jSONObject);
            } else {
                ShareManager.shareFromWeb(this, string2, jSONObject);
            }
            this.mSpicyTracker.trackWebShare(string2, this.mSpiceItem, jSONObject);
            return;
        }
        catch (JSONException var4_5) {
            LogUtil.e(string4, "Error parsing share JSON: type=" + string2 + ", data=" + string3, (Throwable)var4_5);
            return;
        }
    }

    @Override
    public boolean onUrlClicked(String string2, boolean bl) {
        String string3 = TAG + ".onUrlClicked";
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            if (WebContentType.isFacebookPlugin(string2) && !BuzzUtils.isBuzzFeedUrl(string2)) {
                LogUtil.d(string3, "Preventing URL from loading: " + string2);
                return true;
            }
            this.handleUrlClicked(string2, bl);
            return true;
        }
        LogUtil.e(string3, "Can't proceed; URL is null");
        return false;
    }

    @Override
    public void onViewStateDetermined(SpicyViewState spicyViewState) {
        this.mSpicyTracker.trackPageView(this.mSpiceItem, this.mFeed, this.mSpicyView.getViewState(), SpiceFactory.getUnsupportedSubbuzzs(this.getApplicationContext(), this.mSpiceItem), null);
        this.trackIfNativeAdPost();
    }

    @Override
    public void playYoutube(String string2) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            return;
        }
        if (DeviceUtil.isAmazonDevice() || !SpicyUtil.youTubeApiServiceIsAvailable((Context)this)) {
            YouTubeActivity.playYoutubeOnExternalPlayer((Context)this, string2);
            return;
        }
        LogUtil.d(TAG, "Starting embedded YouTube intent. videoId=" + string2);
        this.startActivity(YouTubeActivity.getStartIntent((Context)this, string2));
    }

    @Override
    public void setShareJson(String string2) {
    }

    protected void setUpSpicyView() {
        this.mSpicyView = (SpicyView)UIUtil.findView(this, 2131820707);
        this.mSpicyView.setAlwaysFallback(false);
        this.mSpicyView.setUserAgent(BuzzUtils.getBuzzFeedUserAgentSuffix(this.getApplicationContext()));
        this.mSpicyView.setBottomCustomView(this.createNativeResponseButton());
        this.mSpicyView.setSpicyShareBarInfo(this.createShareListener(), this.getShareItems());
        this.mSpicyView.setWebCacheEnabled();
        if (NativeBPageAdTest.useNativeBPageAds(this.getApplicationContext())) {
            this.mSpicyView.setAdsShouldFallback(false);
        }
    }

    protected void setupFixedShareBarExperiment() {
        FixedShareBarVariant fixedShareBarVariant = FixedShareBarABTest.getFixedShareBarVariant(this.getApplicationContext());
        this.mSpicyView.setFixedShareBarVariant(fixedShareBarVariant, new FixedShareBar.FixedShareBarListener(){

            @Override
            public void facebookButtonClicked() {
                SpicyActivity.this.mFacebookShare.shareFacebookContent(SpicyActivity.this.mSpiceItem, EnvironmentConfig.getUrlWithSSLBaseUrl(SpicyActivity.this.mSpiceItem.getUri()));
                SpicyActivity.this.mSpicyTracker.trackFixedShareBarShare(ShareItemType.Facebook, SpicyActivity.this.mSpiceItem);
            }

            @Override
            public void forumButtonClicked() {
                ShareManager.shareContent(SpicyActivity.this, SpicyActivity.this.mSpiceItem, EnvironmentConfig.getUrlWithSSLBaseUrl(SpicyActivity.this.mSpiceItem.getUri()), ShareItemType.Sms);
                SpicyActivity.this.mSpicyTracker.trackFixedShareBarShare(ShareItemType.Sms, SpicyActivity.this.mSpiceItem);
            }

            @Override
            public void shareButtonClicked() {
                if (SpicyActivity.this.mSpiceItem == null || EnvironmentConfig.getUrlWithSSLBaseUrl(SpicyActivity.this.mSpiceItem.getUri()) == null) {
                    return;
                }
                String string2 = EnvironmentConfig.getUrlWithSSLBaseUrl(SpicyActivity.this.mSpiceItem.getUri());
                SpicyActivity.this.mShareActionListener = new ShareManager.ShareActionListener(){

                    @Override
                    public void onShareAction(@Nullable String string2) {
                        SpicyActivity.this.mSpicyTracker.trackFixedShareBarGenericShareActivity(SpicyActivity.this.mSpiceItem, string2);
                    }
                };
                ShareManager.shareWithListener((Activity)SpicyActivity.this, SpicyActivity.this.mSpiceItem.getTitle(), string2, SpicyActivity.this.mShareActionListener);
                SpicyActivity.this.mSpicyTracker.trackFixedShareBarGenericShare(SpicyActivity.this.mSpiceItem);
            }

        });
        if (this.mFab != null && fixedShareBarVariant != FixedShareBarVariant.Control) {
            this.mFab.setVisibility(8);
        }
    }

    public void startLoginActivityForResult() {
        this.startActivityForResult(new Intent((Context)this, (Class)BuzzLoginActivity.class), 0);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void updateBookmarkMenuButton() {
        if (this.mHeaderContent == null || !this.mHeaderContent.isValid() || this.mBookmarkMenuButton == null) return;
        if (BFBookmarkManager.getInstance((Context)this).isBookmarked(this.mHeaderContent)) {
            this.mBookmarkMenuButton.setIcon(this.getResources().getDrawable(2130837592));
            return;
        }
        this.mBookmarkMenuButton.setIcon(this.getResources().getDrawable(2130837594));
    }

    @Override
    public void viewResponses() {
        this.openResponseView();
    }

}

