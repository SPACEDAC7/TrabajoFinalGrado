/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.net.Uri
 *  android.os.Bundle
 *  com.google.android.youtube.player.YouTubeInitializationResult
 *  com.google.android.youtube.player.YouTubePlayer
 *  com.google.android.youtube.player.YouTubePlayer$OnInitializedListener
 *  com.google.android.youtube.player.YouTubePlayer$Provider
 *  com.google.android.youtube.player.YouTubePlayerSupportFragment
 */
package com.buzzfeed.android.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.toolkit.util.BFVault;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.android.youtube.player.YouTubeInitializationResult;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.YouTubePlayerSupportFragment;

public class YouTubeActivity
extends BaseActivity
implements YouTubePlayer.OnInitializedListener {
    private static final String KEY_VIDEO_ID = "video_id";
    private static final String TAG = YouTubeActivity.class.getSimpleName();
    private String videoId = "";

    public static Intent getStartIntent(Context context, String string2) {
        context = new Intent(context, (Class)YouTubeActivity.class);
        context.putExtra("video_id", string2);
        return context;
    }

    public static void playYoutubeOnExternalPlayer(Context context, String string2) {
        String string3 = TAG + ".playYoutubeOnExternalPlayer";
        string2 = Uri.parse((String)String.format(context.getResources().getString(2131296988), string2));
        LogUtil.d(string3, "Starting external YouTubeActivity intent with URI: " + string2);
        context.startActivity(new Intent("android.intent.action.VIEW", (Uri)string2));
    }

    @Override
    public void onBackPressed() {
        this.finish();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle object) {
        super.onCreate((Bundle)object);
        String string2 = TAG + ".onCreate";
        this.setContentView(2130903083);
        LogUtil.d(string2, "Called");
        this.videoId = this.getIntent().getStringExtra("video_id");
        StringBuilder stringBuilder = new StringBuilder().append("videoId: ");
        object = this.videoId == null ? "null" : this.videoId;
        LogUtil.d(string2, stringBuilder.append((String)object).toString());
        ((YouTubePlayerSupportFragment)this.getSupportFragmentManager().findFragmentById(2131820717)).initialize(BFVault.getInstance().getYouTubeDeveloperKey(), (YouTubePlayer.OnInitializedListener)this);
    }

    public void onInitializationFailure(YouTubePlayer.Provider provider, YouTubeInitializationResult youTubeInitializationResult) {
        LogUtil.e(TAG + ".onInitializationFailure", "Error initializing YouTubePlayer: " + youTubeInitializationResult.toString());
        this.runOnUiThread(new Runnable((Context)this){
            final /* synthetic */ Context val$context;

            @Override
            public void run() {
                YouTubeActivity.playYoutubeOnExternalPlayer(this.val$context, YouTubeActivity.this.videoId);
            }
        });
        this.finish();
    }

    public void onInitializationSuccess(YouTubePlayer.Provider provider, YouTubePlayer youTubePlayer, boolean bl) {
        youTubePlayer.addFullscreenControlFlag(8);
        youTubePlayer.setFullscreenControlFlags(youTubePlayer.getFullscreenControlFlags() | 4);
        if (!bl) {
            youTubePlayer.loadVideo(this.videoId);
        }
    }

}

