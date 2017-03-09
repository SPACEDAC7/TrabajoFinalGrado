/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.AnimatorSet
 *  android.animation.ObjectAnimator
 *  android.animation.TimeInterpolator
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.animation.AnimationUtils
 *  android.view.animation.Interpolator
 *  android.widget.FrameLayout
 *  android.widget.ImageView
 *  android.widget.ProgressBar
 */
package com.buzzfeed.spicerack.ui.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.design.widget.AppBarLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.constant.Environment;
import com.buzzfeed.spicerack.data.constant.SpicyViewState;
import com.buzzfeed.spicerack.data.factory.SpiceFactory;
import com.buzzfeed.spicerack.data.model.subbuzz.SpiceItem;
import com.buzzfeed.spicerack.data.sharebar.ShareBarContent;
import com.buzzfeed.spicerack.data.sharebar.SpicyShareBarLocation;
import com.buzzfeed.spicerack.experiment.FixedShareBarVariant;
import com.buzzfeed.spicerack.ui.adapter.SpicyAdapter;
import com.buzzfeed.spicerack.ui.holder.HeaderSpiceViewHolder;
import com.buzzfeed.spicerack.ui.holder.LoadingSpiceViewHolder;
import com.buzzfeed.spicerack.ui.holder.ShareBarViewHolder;
import com.buzzfeed.spicerack.ui.protocol.FallbackViewListener;
import com.buzzfeed.spicerack.ui.protocol.SpicyEventListener;
import com.buzzfeed.spicerack.ui.protocol.SpicyShareBarListener;
import com.buzzfeed.spicerack.ui.protocol.SpicyTransitionStartListener;
import com.buzzfeed.spicerack.ui.utils.SpicyGlideUtils;
import com.buzzfeed.spicerack.ui.utils.SpicyUtil;
import com.buzzfeed.spicerack.ui.view.FixedShareBar;
import com.buzzfeed.spicerack.ui.view.SpicyLayoutManager;
import com.buzzfeed.spicerack.ui.view.SpicyRecyclerView;
import com.buzzfeed.spicerack.ui.view.SpicyWebView;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.ui.appbarlayout.BleedingOverlay;
import com.buzzfeed.toolkit.ui.appbarlayout.BuzzFeedAppBarLayout;
import com.buzzfeed.toolkit.ui.appbarlayout.BuzzFeedAppBarLayoutController;
import com.buzzfeed.toolkit.ui.sharedelementtransition.SharedElementUtils;
import com.buzzfeed.toolkit.ui.sharedelementtransition.SharedTransitionElement;
import com.buzzfeed.toolkit.ui.sharedelementtransition.SharedTransitionSender;
import com.buzzfeed.toolkit.util.AnimatorListener;
import com.buzzfeed.toolkit.util.ImageUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.ShareItemType;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;

public class SpicyView
extends FrameLayout
implements FallbackViewListener {
    public static final String KEY_IMAGE_LARGE = "image_large";
    public static final String KEY_IMAGE_STACK = "image_stack";
    public static final String KEY_TRANSITION_IMAGE = "image";
    private static final String TAG = LogUtil.makeLogTag(SpicyView.class);
    private boolean mAdsShouldFallback = true;
    private boolean mAlwaysFallback = false;
    @Nullable
    private BuzzFeedAppBarLayout mAppBarLayout;
    private BuzzFeedAppBarLayoutController mAppBarLayoutController;
    protected BleedingOverlay mBleedingOverlay;
    private View mCustomBottomView;
    private List<FlowItem> mDisplayList;
    private SpicyWebView mFallbackView;
    private FixedShareBarVariant mFixedShareBarVariant;
    private Stack<String> mHeaderImageStack;
    private Interpolator mInterpolator;
    private boolean mIsTallHeader = false;
    private ProgressBar mLoadingSpinner;
    protected boolean mPopulatedHeader = false;
    protected SpicyRecyclerView mRecyclerView;
    private int mShareBarDelay = 0;
    private ShareItemType[] mShareBarItems;
    private SpicyAdapter mSpicyAdapter;
    private SpicyEventListener mSpicyEventListener;
    protected ImageView mSpicyHeaderFakeImageView;
    protected ImageView mSpicyHeaderImageView;
    protected SpicyLayoutManager mSpicyLayoutManager;
    private SpicyTransitionStartListener mSpicyTransitionStartListener;
    private SpicyViewState mSpicyViewState;
    protected SharedTransitionSender mTransitionSender;
    private boolean mUseCache = false;

    public SpicyView(Context context) {
        this(context, null);
    }

    public SpicyView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SpicyView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.mInterpolator = AnimationUtils.loadInterpolator((Context)this.getContext(), (int)R.interpolator.buzzfeed_interpolator);
        this.initView();
    }

    private void attachScrollListener() {
        if (this.mRecyclerView != null) {
            this.mRecyclerView.attachScrollListener();
        }
    }

    private List<FlowItem> buildDisplayList(SpiceItem spiceItem) {
        this.mSpicyViewState = this.determineSpicyViewState(spiceItem);
        if (this.isFallingBack()) {
            ArrayList<FlowItem> arrayList = new ArrayList<FlowItem>();
            if (this.mFallbackView == null) {
                this.mFallbackView = new SpicyWebView(this.getContext().getApplicationContext(), this.mUseCache);
                this.mFallbackView.setListener(this);
            }
            if (this.mSpicyEventListener != null) {
                this.mFallbackView.setExternalListener(this.mSpicyEventListener);
            }
            this.mSpicyAdapter.setFallback(this.mFallbackView);
            arrayList.add(SpiceFactory.createFallbackSpice(spiceItem));
            return arrayList;
        }
        ArrayList<FlowItem> arrayList = new ArrayList<FlowItem>();
        if (this.mFixedShareBarVariant == FixedShareBarVariant.Control) {
            arrayList.add(SpiceFactory.createShareBar(new ShareBarContent(SpicyShareBarLocation.Top, this.mShareBarItems)));
        }
        arrayList.addAll(SpiceFactory.getSubBuzzesAsFlowItems(spiceItem));
        if (this.mFixedShareBarVariant == FixedShareBarVariant.Control) {
            arrayList.add(SpiceFactory.createShareBar(new ShareBarContent(SpicyShareBarLocation.Bottom, this.mShareBarItems)));
        }
        if (this.mCustomBottomView != null) {
            arrayList.add(SpiceFactory.createCustomBottomView(spiceItem));
        }
        arrayList.add(SpiceFactory.createEmptySpice(spiceItem));
        return arrayList;
    }

    private SpicyViewState determineSpicyViewState(SpiceItem spiceItem) {
        if (this.mAlwaysFallback) {
            LogUtil.d(TAG, "Always Fallback");
            return SpicyViewState.Fallback;
        }
        if (this.mAdsShouldFallback && spiceItem.isAd()) {
            LogUtil.d(TAG, "SpiceItem Ad Fallback");
            return SpicyViewState.Fallback;
        }
        LogUtil.d(TAG, "Fallback Page Type: " + spiceItem.getFormat().getPageType());
        if ("long".equals(spiceItem.getFormat().getPageType())) {
            return SpicyViewState.Fallback;
        }
        if (this.hasDisclaimer(spiceItem)) {
            return SpicyViewState.Fallback;
        }
        return SpiceFactory.containsSupportedSubBuzz(this.getContext(), spiceItem);
    }

    private boolean hasDisclaimer(SpiceItem iterator) {
        if ((iterator = iterator.getTags()) != null && iterator.size() > 0) {
            iterator = iterator.iterator();
            while (iterator.hasNext()) {
                if (!"--disclaimer".equals((String)iterator.next())) continue;
                LogUtil.d(TAG, "Fallback Has Disclaimer");
                return true;
            }
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void runTransition() {
        SharedTransitionElement sharedTransitionElement;
        if (this.mSpicyHeaderFakeImageView == null || this.mTransitionSender == null || (sharedTransitionElement = this.mTransitionSender.getElementForKey("image")) == null) {
            return;
        }
        this.mSpicyHeaderFakeImageView.post(new Runnable(){

            @Override
            public void run() {
                AnimatorSet animatorSet = new AnimatorSet();
                ArrayList<ObjectAnimator> arrayList = new ArrayList<ObjectAnimator>();
                arrayList.addAll(SharedElementUtils.prepareViewForAnimation(sharedTransitionElement, (View)SpicyView.this.mSpicyHeaderFakeImageView));
                animatorSet.playTogether(arrayList);
                animatorSet.setDuration(350);
                animatorSet.addListener((Animator.AnimatorListener)new AnimatorListener(){

                    @Override
                    public void onAnimationEnd(Animator animator2) {
                        SpicyView.this.onSharedElementTransitionEnd();
                    }
                });
                animatorSet.setInterpolator((TimeInterpolator)SpicyView.this.mInterpolator);
                animatorSet.start();
            }

        });
    }

    private boolean shouldAnimateHeader() {
        if (this.mSpicyAdapter.getLastItemDisplayed() <= 0) {
            return true;
        }
        return false;
    }

    private boolean shouldAnimateShareBar() {
        if (this.mSpicyAdapter.getLastItemDisplayed() <= 2) {
            return true;
        }
        return false;
    }

    protected List<FlowItem> buildHeader(PostContent postContent) {
        ArrayList<FlowItem> arrayList = new ArrayList<FlowItem>();
        arrayList.add(0, SpiceFactory.createHeaderSpice(postContent));
        arrayList.add(SpiceFactory.createLoadingSpice(postContent));
        return arrayList;
    }

    protected void buildListFromPostContent(PostContent postContent) {
        this.mDisplayList = this.buildHeader(postContent);
        this.mSpicyAdapter.setList(this.mDisplayList);
    }

    protected void dismissLoading() {
        this.mLoadingSpinner.setVisibility(8);
    }

    public ImageView getHeaderImageIfOnScreen() {
        if (this.getContext() != null && this.mBleedingOverlay.getAlpha() != 1.0f) {
            return this.mSpicyHeaderImageView;
        }
        return null;
    }

    public SpicyViewState getViewState() {
        return this.mSpicyViewState;
    }

    protected void initView() {
        SpicyView.inflate((Context)this.getContext(), (int)R.layout.spicy_view, (ViewGroup)this);
    }

    public boolean isFallingBack() {
        if (this.mSpicyViewState == SpicyViewState.Fallback) {
            return true;
        }
        return false;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mAppBarLayout != null) {
            this.mAppBarLayoutController.attachView(this.mRecyclerView, this.mSpicyLayoutManager, this.mAppBarLayout);
        }
    }

    protected void onDetachedFromWindow() {
        if (this.mAppBarLayout != null) {
            this.mAppBarLayoutController.detachView();
        }
        super.onDetachedFromWindow();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mBleedingOverlay = (BleedingOverlay)((Object)UIUtil.findView((View)this, R.id.bleeding_overlay));
        this.mLoadingSpinner = (ProgressBar)UIUtil.findView((View)this, R.id.spicy_spinner);
        this.mSpicyHeaderImageView = (ImageView)UIUtil.findView((View)this, R.id.header_image);
        this.mSpicyHeaderFakeImageView = (ImageView)UIUtil.findView((View)this, R.id.header_image_fake);
        this.mRecyclerView = (SpicyRecyclerView)UIUtil.findView((View)this, R.id.recyclerView);
        this.mAppBarLayout = (BuzzFeedAppBarLayout)((Object)UIUtil.findView((View)this, R.id.appbar));
        this.mAppBarLayoutController = new BuzzFeedAppBarLayoutController();
        this.mSpicyLayoutManager = new SpicyLayoutManager(this.getContext());
        this.mRecyclerView.setLayoutManager(this.mSpicyLayoutManager);
        this.mSpicyAdapter = new SpicyAdapter();
        this.mRecyclerView.setAdapter(this.mSpicyAdapter);
        this.mSpicyLayoutManager.setScrollEnabled(false);
        this.mRecyclerView.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onChildViewAttachedToWindow(View object) {
                object = SpicyView.this.mRecyclerView.getChildViewHolder((View)object);
                if (SpicyView.this.shouldAnimateHeader() && object instanceof HeaderSpiceViewHolder) {
                    SpicyView.this.mShareBarDelay = ((HeaderSpiceViewHolder)object).animateIn();
                    return;
                } else {
                    if (!SpicyView.this.shouldAnimateShareBar() || !(object instanceof ShareBarViewHolder)) return;
                    {
                        ((ShareBarViewHolder)object).animateIn(SpicyView.this.mShareBarDelay);
                        return;
                    }
                }
            }

            @Override
            public void onChildViewDetachedFromWindow(View view) {
            }
        });
        this.setupHeader();
    }

    public void onSharedElementTransitionEnd() {
        if (this.mRecyclerView == null) {
            return;
        }
        if (this.mSpicyHeaderFakeImageView != null) {
            this.mSpicyHeaderFakeImageView.setVisibility(4);
            this.mSpicyHeaderImageView.setVisibility(0);
        }
        if (this.mSpicyLayoutManager != null) {
            this.mSpicyLayoutManager.setScrollEnabled(true);
        }
        this.mBleedingOverlay.setVisibility(0);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void pageLoaded() {
        LoadingSpiceViewHolder loadingSpiceViewHolder;
        if (this.mRecyclerView == null || (loadingSpiceViewHolder = this.mRecyclerView.getLoadingViewHolder()) == null) {
            return;
        }
        loadingSpiceViewHolder.hide();
    }

    public void pause() {
        if (this.mFallbackView != null && this.isFallingBack()) {
            this.mFallbackView.onPause();
        }
    }

    public void populateHeader(PostContent postContent) {
        this.populateHeader(postContent, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value=21)
    public void populateHeader(PostContent postContent, SharedTransitionSender stack) {
        if (this.mPopulatedHeader) {
            return;
        }
        this.mPopulatedHeader = true;
        this.mTransitionSender = stack;
        if (VersionUtil.hasLollipop()) {
            this.mSpicyHeaderImageView.setTag((Object)postContent.getId());
            this.mSpicyHeaderImageView.setTransitionName(postContent.getId());
            this.mSpicyHeaderImageView.setVisibility(0);
            this.mSpicyHeaderFakeImageView.setVisibility(4);
        } else {
            this.mSpicyHeaderFakeImageView.setVisibility(0);
            this.mSpicyHeaderImageView.setVisibility(4);
        }
        int n2 = ImageUtil.getCacheableImageWidth();
        int n3 = ImageUtil.getCacheableImageHeight(this.mIsTallHeader);
        stack = this.mHeaderImageStack != null ? this.mHeaderImageStack : postContent.getImageStack(UIUtil.getScreenDensityDpi());
        SpicyGlideUtils.loadSpiceHeader(stack, n2, n3, this.mSpicyHeaderImageView, new RequestListener<String, GlideDrawable>(){

            @Override
            public boolean onException(Exception exception, String string2, Target<GlideDrawable> target, boolean bl) {
                SpicyView.this.mRecyclerView.post(new Runnable(){

                    /*
                     * Enabled aggressive block sorting
                     * Lifted jumps to return sites
                     */
                    @Override
                    public void run() {
                        if (SpicyView.this.mRecyclerView == null) {
                            return;
                        }
                        if (VersionUtil.hasLollipop() && SpicyView.this.mSpicyTransitionStartListener != null) {
                            SpicyView.this.mSpicyTransitionStartListener.start();
                        }
                        SpicyView.this.dismissLoading();
                        HeaderSpiceViewHolder headerSpiceViewHolder = SpicyView.this.mRecyclerView.getHeaderViewHolder();
                        if (headerSpiceViewHolder == null) return;
                        headerSpiceViewHolder.animateIn();
                    }
                });
                return false;
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public boolean onResourceReady(GlideDrawable glideDrawable, String string2, Target<GlideDrawable> target, boolean bl, boolean bl2) {
                SpicyView.this.dismissLoading();
                if (VersionUtil.hasLollipop()) {
                    if (SpicyView.this.mSpicyTransitionStartListener != null) {
                        if (!SpicyView.this.mSpicyTransitionStartListener.start()) {
                            SpicyView.this.onSharedElementTransitionEnd();
                        }
                        do {
                            return false;
                            break;
                        } while (true);
                    }
                    SpicyView.this.mSpicyHeaderImageView.setImageDrawable((Drawable)glideDrawable);
                    SpicyView.this.onSharedElementTransitionEnd();
                    return false;
                }
                if (SpicyView.this.mTransitionSender != null) {
                    SpicyView.this.mSpicyHeaderFakeImageView.setImageDrawable((Drawable)glideDrawable);
                    SpicyView.this.runTransition();
                    return false;
                }
                SpicyView.this.onSharedElementTransitionEnd();
                return false;
            }

        });
        this.buildListFromPostContent(postContent);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void populatePost(final SpiceItem spiceItem) {
        if (this.mDisplayList == null) {
            throw new IllegalStateException("You must call populateHeader before calling populatePost");
        }
        this.mDisplayList.addAll(this.buildDisplayList(spiceItem));
        int n2 = this.isFallingBack() ? 2 : 3;
        this.mSpicyAdapter.notifyItemRangeChanged(n2, this.mDisplayList.size() - 1);
        if (this.isFallingBack()) {
            this.attachScrollListener();
        }
        UIUtil.runAfterLayout((View)this.mRecyclerView, new Runnable(){

            @Override
            public void run() {
                if (!SpicyView.this.isFallingBack()) {
                    SpicyView.this.pageLoaded();
                }
                if (SpicyView.this.mRecyclerView.getHeaderViewHolder() != null) {
                    SpicyView.this.mRecyclerView.getHeaderViewHolder().populatePost(spiceItem);
                }
            }
        });
    }

    public void resume() {
        if (this.mFallbackView != null && this.isFallingBack()) {
            this.mFallbackView.onResume();
        }
    }

    public void setAdsShouldFallback(boolean bl) {
        this.mAdsShouldFallback = bl;
    }

    public void setAlwaysFallback(boolean bl) {
        this.mAlwaysFallback = bl;
    }

    public void setBottomCustomView(View view) {
        this.mCustomBottomView = view;
        if (this.mSpicyAdapter != null) {
            this.mSpicyAdapter.setBottomCustomView(view);
        }
    }

    public void setFixedShareBarVariant(FixedShareBarVariant fixedShareBarVariant, FixedShareBar.FixedShareBarListener fixedShareBarListener) {
        this.mFixedShareBarVariant = fixedShareBarVariant;
        FixedShareBar fixedShareBar = (FixedShareBar)((Object)UIUtil.findView((View)this, R.id.spicy_view_fixed_share_bar));
        if (fixedShareBarVariant != FixedShareBarVariant.Control) {
            fixedShareBar.setVariant(fixedShareBarVariant, fixedShareBarListener);
            fixedShareBar.setVisibility(0);
        }
    }

    public void setHeaderImageInfo(Stack<String> stack, final boolean bl, boolean bl2) {
        this.mIsTallHeader = bl;
        this.mHeaderImageStack = stack;
        if (!bl2) {
            this.mSpicyHeaderImageView.setMinimumHeight(ImageUtil.getCacheableImageHeight(bl));
            this.mSpicyHeaderImageView.setVisibility(0);
        }
        this.mRecyclerView.addItemDecoration(new RecyclerView.ItemDecoration(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                if (recyclerView.getChildLayoutPosition(view) == 0) {
                    float f2 = UIUtil.getScreenWidth();
                    float f3 = bl ? 0.666f : 0.35f;
                    f3 = f2 *= f3;
                    if (VersionUtil.hasLollipop()) {
                        f3 = f2 - (float)UIUtil.getStatusBarHeight(SpicyView.this.getContext());
                    }
                    rect.top = (int)f3;
                }
            }
        });
    }

    public void setSpicyEventListener(SpicyEventListener spicyEventListener) {
        this.mSpicyEventListener = spicyEventListener;
        if (this.mSpicyAdapter != null) {
            this.mSpicyAdapter.setSpicyEventListener(spicyEventListener);
        }
        if (this.mFallbackView != null) {
            this.mFallbackView.setExternalListener(spicyEventListener);
        }
    }

    public void setSpicyShareBarInfo(SpicyShareBarListener spicyShareBarListener, ShareItemType[] arrshareItemType) {
        this.mShareBarItems = arrshareItemType;
        if (this.mSpicyAdapter != null) {
            this.mSpicyAdapter.setSpicyShareBarInfo(spicyShareBarListener);
        }
    }

    public void setSpicyTransitionStartListener(SpicyTransitionStartListener spicyTransitionStartListener) {
        this.mSpicyTransitionStartListener = spicyTransitionStartListener;
    }

    public void setUserAgent(String string2) {
        Environment.setUserAgent(string2);
    }

    public void setWebCacheDisabled() {
        this.mUseCache = false;
    }

    public void setWebCacheEnabled() {
        this.mUseCache = true;
    }

    protected void setupHeader() {
        if (this.mAppBarLayout == null) {
            return;
        }
        this.mAppBarLayout.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener(){

            @Override
            public void onOffsetChanged(AppBarLayout appBarLayout, int n2) {
                if (SpicyView.this.mRecyclerView == null) {
                    return;
                }
                if (SpicyView.this.mRecyclerView.getHeaderViewHolder() == null || SpicyView.this.mRecyclerView.getHeaderViewHolder().itemView == null) {
                    SpicyView.this.mBleedingOverlay.onOffsetChanged(0, true);
                    return;
                }
                n2 = Math.max(0, SpicyUtil.calculateTopOffset(SpicyView.this.getContext(), SpicyView.this.mRecyclerView.getHeaderViewHolder().itemView.getTop()));
                SpicyView.this.mBleedingOverlay.onOffsetChanged(n2, true);
            }
        });
    }

}

