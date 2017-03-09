/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.spicerack.data.sharebar;

import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.sharebar.ShareBarItem;
import com.buzzfeed.toolkit.util.ShareItemType;

public class ShareBarItemFactory {
    private static int getBackgroundDrawable(ShareItemType shareItemType) {
        switch (.$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType[shareItemType.ordinal()]) {
            default: {
                return 0;
            }
            case 1: {
                return R.drawable.share_bar_item_facebook;
            }
            case 2: {
                return R.drawable.share_bar_item_copy_link;
            }
            case 3: {
                return R.drawable.share_bar_item_gplus;
            }
            case 4: {
                return R.drawable.share_bar_item_instagram;
            }
            case 5: {
                return R.drawable.share_bar_item_line;
            }
            case 6: {
                return R.drawable.share_bar_item_linkedin;
            }
            case 7: {
                return R.drawable.share_bar_item_facebook_messenger;
            }
            case 8: {
                return R.drawable.share_bar_item_pinterest;
            }
            case 9: {
                return R.drawable.share_bar_item_tumblr;
            }
            case 10: {
                return R.drawable.share_bar_item_twitter;
            }
            case 11: {
                return R.drawable.share_bar_item_whats_app;
            }
            case 12: {
                return R.drawable.share_bar_item_email;
            }
            case 14: {
                return R.drawable.share_bar_item_sms;
            }
            case 13: 
        }
        return R.drawable.share_bar_item_more;
    }

    private static int getImageResource(ShareItemType shareItemType) {
        switch (.$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType[shareItemType.ordinal()]) {
            default: {
                return 0;
            }
            case 1: {
                return R.drawable.icon_facebook;
            }
            case 2: {
                return R.drawable.icon_copylink;
            }
            case 3: {
                return R.drawable.icon_gplus;
            }
            case 4: {
                return R.drawable.icon_instagram;
            }
            case 5: {
                return R.drawable.icon_line;
            }
            case 6: {
                return R.drawable.icon_linkedin;
            }
            case 7: {
                return R.drawable.icon_messenger;
            }
            case 8: {
                return R.drawable.icon_pinterest;
            }
            case 9: {
                return R.drawable.icon_tumblr;
            }
            case 10: {
                return R.drawable.icon_twitter;
            }
            case 11: {
                return R.drawable.icon_whatsapp;
            }
            case 12: {
                return R.drawable.ic_email_white_24dp;
            }
            case 13: {
                return R.drawable.ic_share_white_24dp;
            }
            case 14: 
        }
        return R.drawable.ic_textsms_white_24dp;
    }

    public static ShareBarItem getShareBarItem(final ShareItemType shareItemType) {
        return new ShareBarItem(ShareBarItemFactory.getImageResource(shareItemType), ShareBarItemFactory.getBackgroundDrawable(shareItemType)){
            final /* synthetic */ int val$drawable;
            final /* synthetic */ int val$image;

            @Override
            public int getBackgroundDrawableResource() {
                return this.val$drawable;
            }

            @Override
            public int getImageResource() {
                return this.val$image;
            }

            @Override
            public ShareItemType getShareType() {
                return shareItemType;
            }
        };
    }

}

