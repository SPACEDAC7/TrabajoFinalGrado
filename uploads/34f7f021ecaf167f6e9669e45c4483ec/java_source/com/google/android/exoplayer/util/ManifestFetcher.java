/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.Looper
 *  android.os.SystemClock
 *  android.text.TextUtils
 *  com.google.android.exoplayer.upstream.Loader
 *  com.google.android.exoplayer.upstream.Loader$Loadable
 *  com.google.android.exoplayer.util.ManifestFetcher$1
 *  com.google.android.exoplayer.util.ManifestFetcher$2
 *  com.google.android.exoplayer.util.ManifestFetcher$3
 *  com.google.android.exoplayer.util.ManifestFetcher$EventListener
 *  com.google.android.exoplayer.util.ManifestFetcher$ManifestIOException
 *  com.google.android.exoplayer.util.ManifestFetcher$RedirectingManifest
 *  com.google.android.exoplayer.util.ManifestFetcher$SingleFetchHelper
 */
package com.google.android.exoplayer.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.upstream.UriDataSource;
import com.google.android.exoplayer.upstream.UriLoadable;
import com.google.android.exoplayer.util.ManifestFetcher;
import java.io.IOException;

public class ManifestFetcher<T>
implements Loader.Callback {
    private long currentLoadStartTimestamp;
    private UriLoadable<T> currentLoadable;
    private int enabledCount;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private ManifestIOException loadException;
    private int loadExceptionCount;
    private long loadExceptionTimestamp;
    private Loader loader;
    private volatile T manifest;
    private volatile long manifestLoadCompleteTimestamp;
    private volatile long manifestLoadStartTimestamp;
    volatile String manifestUri;
    private final UriLoadable.Parser<T> parser;
    private final UriDataSource uriDataSource;

    public ManifestFetcher(String string2, UriDataSource uriDataSource, UriLoadable.Parser<T> parser) {
        this(string2, uriDataSource, parser, null, null);
    }

    public ManifestFetcher(String string2, UriDataSource uriDataSource, UriLoadable.Parser<T> parser, Handler handler, EventListener eventListener) {
        this.parser = parser;
        this.manifestUri = string2;
        this.uriDataSource = uriDataSource;
        this.eventHandler = handler;
        this.eventListener = eventListener;
    }

    static /* synthetic */ EventListener access$000(ManifestFetcher manifestFetcher) {
        return manifestFetcher.eventListener;
    }

    private long getRetryDelayMillis(long l2) {
        return Math.min((l2 - 1) * 1000, 5000);
    }

    private void notifyManifestError(IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    private void notifyManifestRefreshStarted() {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    private void notifyManifestRefreshed() {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    public void disable() {
        int n2;
        this.enabledCount = n2 = this.enabledCount - 1;
        if (n2 == 0 && this.loader != null) {
            this.loader.release();
            this.loader = null;
        }
    }

    public void enable() {
        int n2 = this.enabledCount;
        this.enabledCount = n2 + 1;
        if (n2 == 0) {
            this.loadExceptionCount = 0;
            this.loadException = null;
        }
    }

    public T getManifest() {
        return this.manifest;
    }

    public long getManifestLoadCompleteTimestamp() {
        return this.manifestLoadCompleteTimestamp;
    }

    public long getManifestLoadStartTimestamp() {
        return this.manifestLoadStartTimestamp;
    }

    public void maybeThrowError() throws ManifestIOException {
        if (this.loadException == null || this.loadExceptionCount <= 1) {
            return;
        }
        throw this.loadException;
    }

    @Override
    public void onLoadCanceled(Loader.Loadable loadable) {
    }

    @Override
    public void onLoadCompleted(Loader.Loadable object) {
        if (this.currentLoadable != object) {
            return;
        }
        this.manifest = this.currentLoadable.getResult();
        this.manifestLoadStartTimestamp = this.currentLoadStartTimestamp;
        this.manifestLoadCompleteTimestamp = SystemClock.elapsedRealtime();
        this.loadExceptionCount = 0;
        this.loadException = null;
        if (this.manifest instanceof RedirectingManifest && !TextUtils.isEmpty((CharSequence)(object = ((RedirectingManifest)this.manifest).getNextManifestUri()))) {
            this.manifestUri = object;
        }
        this.notifyManifestRefreshed();
    }

    @Override
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        if (this.currentLoadable != loadable) {
            return;
        }
        ++this.loadExceptionCount;
        this.loadExceptionTimestamp = SystemClock.elapsedRealtime();
        this.loadException = new ManifestIOException((Throwable)iOException);
        this.notifyManifestError((IOException)this.loadException);
    }

    void onSingleFetchCompleted(T t2, long l2) {
        this.manifest = t2;
        this.manifestLoadStartTimestamp = l2;
        this.manifestLoadCompleteTimestamp = SystemClock.elapsedRealtime();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void requestRefresh() {
        if (this.loadException != null && SystemClock.elapsedRealtime() < this.loadExceptionTimestamp + this.getRetryDelayMillis(this.loadExceptionCount)) {
            return;
        }
        if (this.loader == null) {
            this.loader = new Loader("manifestLoader");
        }
        if (this.loader.isLoading()) return;
        this.currentLoadable = new UriLoadable<T>(this.manifestUri, this.uriDataSource, this.parser);
        this.currentLoadStartTimestamp = SystemClock.elapsedRealtime();
        this.loader.startLoading(this.currentLoadable, (Loader.Callback)this);
        this.notifyManifestRefreshStarted();
    }

    public void singleLoad(Looper looper, ManifestCallback<T> manifestCallback) {
        new SingleFetchHelper(this, new UriLoadable<T>(this.manifestUri, this.uriDataSource, this.parser), looper, manifestCallback).startLoading();
    }

    public void updateManifestUri(String string2) {
        this.manifestUri = string2;
    }

    public static interface ManifestCallback<T> {
        public void onSingleManifest(T var1);

        public void onSingleManifestError(IOException var1);
    }

}

