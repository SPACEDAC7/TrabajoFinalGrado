/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  com.google.android.exoplayer.upstream.AssetDataSource
 *  com.google.android.exoplayer.upstream.ContentDataSource
 *  com.google.android.exoplayer.upstream.DataSpec
 *  com.google.android.exoplayer.upstream.DefaultHttpDataSource
 *  com.google.android.exoplayer.upstream.FileDataSource
 *  com.google.android.exoplayer.util.Predicate
 */
package com.google.android.exoplayer.upstream;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer.upstream.AssetDataSource;
import com.google.android.exoplayer.upstream.ContentDataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer.upstream.FileDataSource;
import com.google.android.exoplayer.upstream.TransferListener;
import com.google.android.exoplayer.upstream.UriDataSource;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Predicate;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

public final class DefaultUriDataSource
implements UriDataSource {
    private static final String SCHEME_ASSET = "asset";
    private static final String SCHEME_CONTENT = "content";
    private final UriDataSource assetDataSource;
    private final UriDataSource contentDataSource;
    private UriDataSource dataSource;
    private final UriDataSource fileDataSource;
    private final UriDataSource httpDataSource;

    public DefaultUriDataSource(Context context, TransferListener transferListener, UriDataSource uriDataSource) {
        this.httpDataSource = Assertions.checkNotNull(uriDataSource);
        this.fileDataSource = new FileDataSource(transferListener);
        this.assetDataSource = new AssetDataSource(context, transferListener);
        this.contentDataSource = new ContentDataSource(context, transferListener);
    }

    public DefaultUriDataSource(Context context, TransferListener transferListener, String string2) {
        this(context, transferListener, string2, false);
    }

    public DefaultUriDataSource(Context context, TransferListener transferListener, String string2, boolean bl) {
        this(context, transferListener, (UriDataSource)new DefaultHttpDataSource(string2, null, transferListener, 8000, 8000, bl));
    }

    public DefaultUriDataSource(Context context, String string2) {
        this(context, null, string2, false);
    }

    @Override
    public void close() throws IOException {
        if (this.dataSource != null) {
            this.dataSource.close();
        }
        return;
        finally {
            this.dataSource = null;
        }
    }

    @Override
    public String getUri() {
        if (this.dataSource == null) {
            return null;
        }
        return this.dataSource.getUri();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public long open(DataSpec dataSpec) throws IOException {
        boolean bl = this.dataSource == null;
        Assertions.checkState(bl);
        String string2 = dataSpec.uri.getScheme();
        if (Util.isLocalFileUri(dataSpec.uri)) {
            if (dataSpec.uri.getPath().startsWith("/android_asset/")) {
                this.dataSource = this.assetDataSource;
                return this.dataSource.open(dataSpec);
            }
            this.dataSource = this.fileDataSource;
            return this.dataSource.open(dataSpec);
        }
        if ("asset".equals(string2)) {
            this.dataSource = this.assetDataSource;
            return this.dataSource.open(dataSpec);
        }
        if ("content".equals(string2)) {
            this.dataSource = this.contentDataSource;
            return this.dataSource.open(dataSpec);
        }
        this.dataSource = this.httpDataSource;
        return this.dataSource.open(dataSpec);
    }

    @Override
    public int read(byte[] arrby, int n2, int n3) throws IOException {
        return this.dataSource.read(arrby, n2, n3);
    }
}

