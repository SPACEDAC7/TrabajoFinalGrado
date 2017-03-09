/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Rect
 *  android.text.format.DateUtils
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.format.DateUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.adapter.PackageCardAdapter;
import com.buzzfeed.buffet.ui.holder.BaseCard;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.buffet.ui.listener.PackageItemClickListener;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.util.GlideUtils;
import com.buzzfeed.toolkit.util.ImageUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import java.util.Date;
import java.util.List;
import java.util.Stack;

public class PackageCard
extends BaseCard {
    private static final int ALWAYS_SHOW_AMOUNT = 1;
    private static final int SECONDARY_AMOUNT = 2;
    @Nullable
    private PackageCardAdapter mAdapter;
    private ImageView mHeaderImage;
    private PackageContent mNewsPackageContent;
    private TextView mPackageHeader;
    private ViewGroup mPrimaryClickableView;
    private TextView mPrimaryDek;
    private TextView mPrimaryHeader;
    private TextView mPrimaryTimestamp;
    private RecyclerView mRecyclerView;
    private ViewGroup mSecondaryClickableView;
    private TextView mSecondaryHeader;
    private TextView mSecondaryTimestamp;

    public PackageCard(View view) {
        super(view);
        this.mHeaderImage = (ImageView)UIUtil.findView(view, R.id.card_package_image);
        this.mPackageHeader = (TextView)UIUtil.findView(view, R.id.card_view_package_header);
        this.mPrimaryHeader = (TextView)UIUtil.findView(view, R.id.card_package_header_title);
        this.mPrimaryDek = (TextView)UIUtil.findView(view, R.id.card_package_header_dek);
        this.mPrimaryTimestamp = (TextView)UIUtil.findView(view, R.id.card_package_header_timestamp);
        this.mSecondaryHeader = (TextView)UIUtil.findView(view, R.id.card_package_secondary_title);
        this.mSecondaryTimestamp = (TextView)UIUtil.findView(view, R.id.card_package_secondary_timestamp);
        this.mPrimaryClickableView = (ViewGroup)UIUtil.findView(view, R.id.card_package_primary_container);
        this.mSecondaryClickableView = (ViewGroup)UIUtil.findView(view, R.id.card_package_secondary_container);
        this.mRecyclerView = (RecyclerView)UIUtil.findView(view, R.id.card_package_recycler_view);
        this.mRecyclerView.addItemDecoration(new RecyclerView.ItemDecoration(){

            @Override
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                int n2 = recyclerView.getChildAdapterPosition(view);
                int n3 = view.getContext().getResources().getDimensionPixelSize(R.dimen.padding_large);
                if (n2 == 0) {
                    rect.left = n3;
                }
                rect.right = n3;
                rect.bottom = n3;
                rect.top = view.getContext().getResources().getDimensionPixelSize(R.dimen.padding_micro);
            }
        });
        this.mRecyclerView.setNestedScrollingEnabled(false);
    }

    public String getPackageId() {
        return this.mNewsPackageContent.getId();
    }

    public RecyclerView getRecyclerView() {
        if (this.mNewsPackageContent.getPackageItems().size() > 2) {
            return this.mRecyclerView;
        }
        return null;
    }

    @Override
    public void onViewHolderRecycled() {
        super.onViewHolderRecycled();
        if (this.mAdapter != null) {
            this.mAdapter.setPackageItemClickListener(null);
            this.mAdapter = null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void populateFrom(FlowItem object) {
        this.mNewsPackageContent = (PackageContent)object.getContent();
        this.mPackageHeader.setText((CharSequence)this.mNewsPackageContent.getName());
        if (this.mNewsPackageContent.getPackageItems().size() >= 1) {
            object = this.mNewsPackageContent.getPackageItems().get(0);
            GlideUtils.loadImageStack(this.itemView.getContext().getApplicationContext(), this.mHeaderImage, object.getWideStack(), ImageUtil.getCacheableImageWidth(), ImageUtil.getCacheableImageHeight(false));
            this.mPrimaryHeader.setText((CharSequence)object.getTitle());
            this.mPrimaryDek.setText((CharSequence)object.getDescription());
            this.mPrimaryTimestamp.setText(DateUtils.getRelativeTimeSpanString((long)object.getPublished().getTime()));
            this.mPrimaryClickableView.setOnClickListener(new View.OnClickListener((PostContent)object){
                final /* synthetic */ PostContent val$primary;

                public void onClick(View view) {
                    if (PackageCard.this.getBuffetEventListener() != null) {
                        PackageCard.this.getBuffetEventListener().onNewsPackageClicked(PackageCard.this.mNewsPackageContent, this.val$primary, PackageCard.this.getAdapterPosition(), 0, PackageCard.this.mHeaderImage, this.val$primary.getWideStack(), false);
                    }
                }
            });
            if (VersionUtil.hasLollipop()) {
                this.mHeaderImage.setTransitionName(object.getId());
                this.mHeaderImage.setTag((Object)object.getId());
            }
        }
        if (this.mNewsPackageContent.getPackageItems().size() == 1) {
            this.mSecondaryClickableView.setVisibility(8);
            this.mRecyclerView.setVisibility(8);
            return;
        } else {
            if (this.mNewsPackageContent.getPackageItems().size() == 2) {
                object = this.mNewsPackageContent.getPackageItems().get(1);
                this.mSecondaryHeader.setText((CharSequence)object.getTitle());
                this.mSecondaryTimestamp.setText(DateUtils.getRelativeTimeSpanString((long)object.getPublished().getTime()));
                this.mSecondaryClickableView.setOnClickListener(new View.OnClickListener((PostContent)object){
                    final /* synthetic */ PostContent val$secondary;

                    public void onClick(View view) {
                        if (PackageCard.this.getBuffetEventListener() != null) {
                            PackageCard.this.getBuffetEventListener().onNewsPackageClicked(PackageCard.this.mNewsPackageContent, this.val$secondary, PackageCard.this.getAdapterPosition(), 1, null, this.val$secondary.getImageStack(UIUtil.getScreenDensityDpi()), true);
                        }
                    }
                });
                this.mRecyclerView.setVisibility(8);
                this.mSecondaryClickableView.setVisibility(0);
                return;
            }
            if (this.mNewsPackageContent.getPackageItems().size() <= 2) return;
            {
                this.mSecondaryClickableView.setVisibility(8);
                this.mRecyclerView.setVisibility(0);
                object = new LinearLayoutManager(this.itemView.getContext(), 0, false);
                this.mAdapter = new PackageCardAdapter(this.mNewsPackageContent, this.mNewsPackageContent.getPackageItems().subList(1, this.mNewsPackageContent.getPackageItems().size()), this.getAdapterPosition());
                this.mAdapter.setPackageItemClickListener(new InternalPackageOverflowItemClickListener());
                this.mRecyclerView.setLayoutManager((RecyclerView.LayoutManager)object);
                this.mRecyclerView.setAdapter(this.mAdapter);
                return;
            }
        }
    }

    private class InternalPackageOverflowItemClickListener
    implements PackageItemClickListener {
        private InternalPackageOverflowItemClickListener() {
        }

        @Override
        public void onPackageItemClicked(@NonNull PackageContent packageContent, @NonNull PostContent postContent, int n2, int n3, @Nullable ImageView imageView, @NonNull Stack<String> stack, boolean bl) {
            if (PackageCard.this.getBuffetEventListener() != null) {
                PackageCard.this.getBuffetEventListener().onNewsPackageClicked(packageContent, postContent, n2, n3, null, postContent.getThumbnailStack(), false);
            }
        }
    }

}

