/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  com.google.android.exoplayer.ParserException
 *  com.google.android.exoplayer.upstream.DataSourceInputStream
 *  com.google.android.exoplayer.upstream.DataSpec
 *  com.google.android.exoplayer.upstream.Loader
 *  com.google.android.exoplayer.upstream.Loader$Loadable
 */
package com.google.android.exoplayer.upstream;

import android.net.Uri;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSourceInputStream;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.upstream.UriDataSource;
import java.io.IOException;
import java.io.InputStream;

public final class UriLoadable<T>
implements Loader.Loadable {
    private final DataSpec dataSpec;
    private volatile boolean isCanceled;
    private final Parser<T> parser;
    private volatile T result;
    private final UriDataSource uriDataSource;

    public UriLoadable(String string2, UriDataSource uriDataSource, Parser<T> parser) {
        this.uriDataSource = uriDataSource;
        this.parser = parser;
        this.dataSpec = new DataSpec(Uri.parse((String)string2), 1);
    }

    public final void cancelLoad() {
        this.isCanceled = true;
    }

    public final T getResult() {
        return this.result;
    }

    public final boolean isLoadCanceled() {
        return this.isCanceled;
    }

    public final void load() throws IOException, InterruptedException {
        DataSourceInputStream dataSourceInputStream = new DataSourceInputStream((DataSource)this.uriDataSource, this.dataSpec);
        try {
            dataSourceInputStream.open();
            this.result = this.parser.parse(this.uriDataSource.getUri(), (InputStream)dataSourceInputStream);
            return;
        }
        finally {
            dataSourceInputStream.close();
        }
    }

    public static interface Parser<T> {
        public T parse(String var1, InputStream var2) throws ParserException, IOException;
    }

}

