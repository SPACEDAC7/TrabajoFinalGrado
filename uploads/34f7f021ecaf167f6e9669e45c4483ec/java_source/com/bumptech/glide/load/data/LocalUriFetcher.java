/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.net.Uri
 *  android.util.Log
 */
package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.data.DataFetcher;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract class LocalUriFetcher<T>
implements DataFetcher<T> {
    private static final String TAG = "LocalUriFetcher";
    private final Context context;
    private T data;
    private final Uri uri;

    public LocalUriFetcher(Context context, Uri uri) {
        this.context = context.getApplicationContext();
        this.uri = uri;
    }

    @Override
    public void cancel() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void cleanup() {
        if (this.data == null) return;
        try {
            this.close(this.data);
            return;
        }
        catch (IOException var1_1) {
            if (!Log.isLoggable((String)"LocalUriFetcher", (int)2)) return;
            Log.v((String)"LocalUriFetcher", (String)"failed to close data", (Throwable)var1_1);
            return;
        }
    }

    protected abstract void close(T var1) throws IOException;

    @Override
    public String getId() {
        return this.uri.toString();
    }

    @Override
    public final T loadData(Priority priority) throws Exception {
        priority = this.context.getContentResolver();
        this.data = this.loadResource(this.uri, (ContentResolver)priority);
        return this.data;
    }

    protected abstract T loadResource(Uri var1, ContentResolver var2) throws FileNotFoundException;
}

