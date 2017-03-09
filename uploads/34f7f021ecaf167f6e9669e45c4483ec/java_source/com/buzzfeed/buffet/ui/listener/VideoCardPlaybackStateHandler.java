/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.buffet.ui.listener;

import android.support.v7.widget.RecyclerView;
import com.buzzfeed.android.vcr.view.VCRMediaRecyclerView;
import com.buzzfeed.buffet.ui.holder.VideoCard;

public class VideoCardPlaybackStateHandler
implements VCRMediaRecyclerView.PlaybackStateListener {
    private void applyTargetUiState(RecyclerView.ViewHolder viewHolder, VideoCard.State state) {
        if (viewHolder == null) {
            return;
        }
        ((VideoCard)viewHolder).applyUiState(state);
    }

    @Override
    public void onAudioMuteStateChanged(RecyclerView.ViewHolder viewHolder, boolean bl) {
    }

    @Override
    public void onPlaybackError(RecyclerView.ViewHolder viewHolder) {
        this.applyTargetUiState(viewHolder, VideoCard.State.ERROR);
    }

    @Override
    public void onPlaybackPreparing(RecyclerView.ViewHolder viewHolder) {
        this.applyTargetUiState(viewHolder, VideoCard.State.PREPARING);
    }

    @Override
    public void onPlaybackStarted(RecyclerView.ViewHolder viewHolder) {
        this.applyTargetUiState(viewHolder, VideoCard.State.PLAYING);
    }

    @Override
    public void onPlaybackStopped(RecyclerView.ViewHolder viewHolder) {
        this.applyTargetUiState(viewHolder, VideoCard.State.STOPPED);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onVideoSizeChanged(RecyclerView.ViewHolder viewHolder, int n2, int n3, int n4, float f2) {
        if (viewHolder == null) {
            return;
        }
        VideoCard videoCard = (VideoCard)viewHolder;
        f2 = n3 == 0 ? 1.0f : (float)n2 * f2 / (float)n3;
        videoCard.updateVideoAspectRatio(f2);
        this.applyTargetUiState(viewHolder, VideoCard.State.PLAYING);
    }
}

