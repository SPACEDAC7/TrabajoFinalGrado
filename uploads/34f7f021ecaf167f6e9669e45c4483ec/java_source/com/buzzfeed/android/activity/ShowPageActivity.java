/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.os.Bundle
 *  android.text.TextUtils
 *  android.view.View
 *  android.widget.ImageView
 */
package com.buzzfeed.android.activity;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.activity.SpicyActivity;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.preferences.PushNotificationPreference;
import com.buzzfeed.android.experiment.ShowSubscriptionsABTest;
import com.buzzfeed.android.pushnotifications.PushNotificationUtil;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;
import com.buzzfeed.android.vcr.toolbox.AutoFocusController;
import com.buzzfeed.mediaviewer.VideoViewerFragmentActivity;
import com.buzzfeed.showx.showpage.BaseShowPageActivity;
import com.buzzfeed.showx.showpage.BaseShowPageFragment;
import com.buzzfeed.showx.showpage.data.loader.ShowPageLoader;
import com.buzzfeed.showx.showpage.data.tracker.ShowPageTracker;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.helpers.WeaverServiceHelper;
import com.buzzfeed.toolkit.sharmo.ShareManager;
import com.buzzfeed.toolkit.util.IntentUtils;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;

public final class ShowPageActivity
extends BaseShowPageActivity {
    private static final String TAG = LogUtil.makeLogTag(ShowPageActivity.class);

    @Nullable
    public static Intent getIntent(Context context, WeaverEmbed.Show show) {
        if (show != null) {
            return ShowPageActivity.getIntent(context, show.getId(), show.getName(), show.getBackgroundImageUrl());
        }
        return null;
    }

    @Nullable
    public static Intent getIntent(Context context, String string2, @Nullable String string3, @Nullable String string4) {
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            context = new Intent(context, (Class)ShowPageActivity.class);
            context.putExtra("SELECTED_SHOW_ID", string2);
            context.putExtra("SELECTED_SHOW_TITLE", string3);
            context.putExtra("SELECTED_SHOW_COVER_URI", string4);
            return context;
        }
        return null;
    }

    public static void startIntent(Context context, WeaverEmbed.Show show) {
        if (show != null) {
            ShowPageActivity.startIntent(context, show.getId(), show.getName(), show.getBackgroundImageUrl());
            return;
        }
        LogUtil.e(TAG, "Show is not available. Unable to start Activity.");
    }

    public static void startIntent(Context context, String string2, @Nullable String string3, @Nullable String string4) {
        if ((string2 = ShowPageActivity.getIntent(context, string2, string3, string4)) != null) {
            context.startActivity((Intent)string2);
            return;
        }
        LogUtil.e(TAG, "Required content is not available. Unable to start Activity.");
    }

    @Override
    protected boolean getUseShowSettingsActionForNetworkError() {
        return true;
    }

    @Override
    public String onBindShowId(@NonNull Intent intent) {
        return intent.getStringExtra("SELECTED_SHOW_ID");
    }

    @Override
    protected BaseShowPageFragment onCreateShowPageFragment() {
        ShowPageFragment showPageFragment = new ShowPageFragment();
        showPageFragment.setArguments(IntentUtils.createBundleFromIntent(this.getIntent()));
        return showPageFragment;
    }

    @NonNull
    @Override
    protected ShowPageLoader onCreateShowPageLoader(@NonNull String string2) {
        long l2 = DustbusterClient.getInstance().getUserPoundIdentifier();
        WeaverServiceHelper.QueryParamsBuilder queryParamsBuilder = new WeaverServiceHelper.QueryParamsBuilder().country(EnvironmentConfig.getWeaverEdition((Context)this)).language(EnvironmentConfig.getWeaverLanguage((Context)this)).clientId(Long.toString(l2));
        return new ShowPageLoader((Context)this, string2, EnvironmentConfig.getEnvironment(), queryParamsBuilder);
    }

    public static class ShowPageFragment
    extends BaseShowPageFragment {
        private PushNotificationPreference mPushNotificationPreference;
        @Nullable
        private ShareManager.ShareActionListener mShareActionListener;

        @Override
        public void handleShowOpened() {
            PushNotificationUtil.handleShowPageOpened(this.getActivity().getApplicationContext(), this.mShowId);
        }

        @Override
        protected boolean isPushNotificationsEnabled() {
            return this.mPushNotificationPreference.getValue();
        }

        @Override
        public boolean isShowSubscriptionsEnabled() {
            return ShowSubscriptionsABTest.shouldEnableShowSubscriptions(this.getActivity().getApplicationContext());
        }

        @Override
        public void onActivityCreated(Bundle bundle) {
            super.onActivityCreated(bundle);
            this.mPushNotificationPreference = new PushNotificationPreference(this.getActivity().getApplicationContext());
        }

        @Override
        public void onDestroy() {
            this.mShareActionListener = null;
            super.onDestroy();
        }

        @Override
        public void onGetRecipeClicked(@NonNull String string2) {
            SpicyActivity.startIntent(this.getActivity(), string2, null);
        }

        @Override
        public void onInstantAppInstall() {
        }

        @Override
        public void onShareClicked(FlowItem content, int n2) {
            String string2 = TAG + ".onShareClicked";
            if ((content = (VideoContent)content.getContent()) == null || TextUtils.isEmpty((CharSequence)content.getShareUrl())) {
                LogUtil.e(string2, "Unable to perform share action. Required content was not available.");
                return;
            }
            string2 = WeaverVideoUtils.getHlsVideoContentUri(WeaverVideoUtils.getFirstVideoFromVideoContent((VideoContent)content));
            String string3 = EnvironmentConfig.getUrlWithSSLBaseUrl(content.getUri());
            this.mShowPageTracker.trackOpenShareSheet();
            this.mShareActionListener = new ShareManager.ShareActionListener((VideoContent)content, string2, n2){
                final /* synthetic */ VideoContent val$content;
                final /* synthetic */ int val$positionInFeed;
                final /* synthetic */ String val$videoContentUri;

                @Override
                public void onShareAction(@Nullable String string2) {
                    ShowPageFragment.this.mShowPageTracker.trackVideoShareAction(this.val$content.getId(), this.val$videoContentUri, string2, this.val$positionInFeed);
                }
            };
            ShareManager.shareWithListener(this.getActivity(), content.getSubject(), string3, this.mShareActionListener);
        }

        @Override
        public void onVideoCellClicked(@NonNull VideoContent object, @Nullable ImageView imageView, long l2, int n2, boolean bl) {
            Object object2 = this.mAutoFocusController.getCurrentViewHolder();
            if (object2 != null && object2.getAdapterPosition() != n2) {
                this.mFocusedAdapterPosition = n2;
            }
            this.mShowPageTracker.trackVideoCellClicked((VideoContent)object, n2, l2, bl);
            object2 = new VideoViewerFragmentActivity.IntentBuilder();
            object2.videoContent((VideoContent)object).startPosition(l2).referrerFeedPosition(n2).referrerScreen(this.mScreenName).initialPlaybackReason("tap_to_play_auto");
            if (object.getShow() != null) {
                object2.showId(object.getShow().getId());
            }
            if (!TextUtils.isEmpty((CharSequence)object.getSourceUri()) && WeaverVideoUtils.hasTastySpecificShowContent(object.getShow())) {
                object2.recipeClickIntent(SpicyActivity.getDeepLinkIntent(this.getActivity(), object.getSourceUri(), null));
            }
            if (VersionUtil.hasLollipop()) {
                object2.withSharedElementCoverImage((View)imageView);
                object = ActivityOptionsCompat.makeSceneTransitionAnimation(this.getActivity(), (View)imageView, imageView.getTransitionName());
                this.startActivity(object2.build((Context)this.getActivity()), object.toBundle());
                return;
            }
            this.startActivity(object2.build((Context)this.getActivity()));
        }

        @Override
        protected void setPushNotificationsEnabled() {
            PushNotificationUtil.notificationStatusChanged(this.getActivity().getApplicationContext(), true);
        }

        @Override
        protected void showDisableShowSubscriptionPrompt(final BaseShowPageFragment.PushNotificationPromptCallback pushNotificationPromptCallback) {
            new BuzzFeedAlertDialog.Builder((Context)this.getActivity()).setTitle(2131296946).setMessage(2131296945).setPositiveButton(this.getString(2131296944), new DialogInterface.OnClickListener(){

                public void onClick(DialogInterface dialogInterface, int n2) {
                    if (pushNotificationPromptCallback != null) {
                        pushNotificationPromptCallback.onChangePushNotificationSetting();
                    }
                }
            }).setNegativeButton(this.getString(17039360), new DialogInterface.OnClickListener(){

                public void onClick(DialogInterface dialogInterface, int n2) {
                    if (pushNotificationPromptCallback != null) {
                        pushNotificationPromptCallback.canceled();
                    }
                }
            }).show();
        }

        @Override
        protected void showEnablePushNotificationPrompt(final BaseShowPageFragment.PushNotificationPromptCallback pushNotificationPromptCallback) {
            new BuzzFeedAlertDialog.Builder((Context)this.getActivity()).setTitle(2131296949).setMessage(2131296948).setPositiveButton(this.getString(2131296947), new DialogInterface.OnClickListener(){

                public void onClick(DialogInterface dialogInterface, int n2) {
                    if (pushNotificationPromptCallback != null) {
                        pushNotificationPromptCallback.onChangePushNotificationSetting();
                    }
                }
            }).setNegativeButton(this.getString(17039360), new DialogInterface.OnClickListener(){

                public void onClick(DialogInterface dialogInterface, int n2) {
                    if (pushNotificationPromptCallback != null) {
                        pushNotificationPromptCallback.canceled();
                    }
                }
            }).show();
        }

    }

}

