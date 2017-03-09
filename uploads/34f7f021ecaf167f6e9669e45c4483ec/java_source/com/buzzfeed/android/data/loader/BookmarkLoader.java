/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  okhttp3.ResponseBody
 */
package com.buzzfeed.android.data.loader;

import com.buzzfeed.android.data.bookmark.BFBookmarkManager;
import com.buzzfeed.toolkit.content.BaseLoader;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import java.util.Collection;
import okhttp3.ResponseBody;

public class BookmarkLoader
extends BaseLoader {
    private static final String TAG = LogUtil.makeLogTag(BookmarkLoader.class);
    private BFBookmarkManager mBookmarkManager;

    public BookmarkLoader(BFBookmarkManager bFBookmarkManager) {
        this.mBookmarkManager = bFBookmarkManager;
    }

    @Override
    public boolean hasMorePages() {
        return false;
    }

    @Override
    public void load(boolean bl, int n2, final BaseLoader.LoaderCallback loaderCallback) {
        this.mRequest = this.mBookmarkManager.syncBookmarks(true, new BFBookmarkManager.SyncCompleteListener(){

            @Override
            public void onBookmarkSyncCompleted() {
                BookmarkLoader.this.mLocalFlowList.clear();
                BookmarkLoader.this.mLocalFlowList.addAll(BookmarkLoader.this.mBookmarkManager.getBookmarks());
                loaderCallback.onLoadComplete();
            }

            @Override
            public void onBookmarkSyncError(Exception exception) {
                loaderCallback.onError(exception);
            }
        });
    }

    @Override
    public boolean shouldShowAds() {
        return false;
    }

}

