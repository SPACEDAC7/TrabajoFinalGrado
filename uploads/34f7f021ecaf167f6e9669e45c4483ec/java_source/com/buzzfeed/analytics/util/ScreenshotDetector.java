/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.database.ContentObserver
 *  android.net.Uri
 *  android.os.Handler
 *  android.provider.MediaStore
 *  android.provider.MediaStore$Images
 *  android.provider.MediaStore$Images$Media
 */
package com.buzzfeed.analytics.util;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.MediaStore;
import com.buzzfeed.analytics.client.BuzzFeedTracker;

public class ScreenshotDetector
extends ContentObserver {
    private Context mContext;

    public ScreenshotDetector(Context context, Handler handler) {
        super(handler);
        this.mContext = context;
    }

    public void beginDetection() {
        Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        this.mContext.getApplicationContext().getContentResolver().registerContentObserver(uri, true, (ContentObserver)this);
    }

    public void endDetection() {
        this.mContext.getApplicationContext().getContentResolver().unregisterContentObserver((ContentObserver)this);
    }

    public void onChange(boolean bl, Uri uri) {
        super.onChange(bl, uri);
        if (uri.equals((Object)MediaStore.Images.Media.EXTERNAL_CONTENT_URI)) {
            BuzzFeedTracker.getInstance().trackScreenshot(this.mContext);
        }
    }
}

