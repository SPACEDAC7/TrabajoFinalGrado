/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.content;

import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;

public abstract class BaseLoader {
    protected LoaderCallback mCallback;
    protected FlowList mLocalFlowList = new FlowList();
    protected int mPage;
    protected SafeCall mRequest;

    public void cancelRequest() {
        if (this.mRequest != null) {
            this.mRequest.cancel();
        }
    }

    public FlowList getLocalFlowList() {
        return this.mLocalFlowList;
    }

    public abstract boolean hasMorePages();

    public abstract void load(boolean var1, int var2, LoaderCallback var3);

    public boolean shouldShowAds() {
        return true;
    }

    public static interface LoaderCallback {
        public void onError(Exception var1);

        public void onLoadComplete();
    }

}

