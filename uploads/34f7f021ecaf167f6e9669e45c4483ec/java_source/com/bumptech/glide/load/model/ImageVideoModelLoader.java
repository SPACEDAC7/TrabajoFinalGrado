/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.ParcelFileDescriptor
 *  android.util.Log
 */
package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.InputStream;

public class ImageVideoModelLoader<A>
implements ModelLoader<A, ImageVideoWrapper> {
    private static final String TAG = "IVML";
    private final ModelLoader<A, ParcelFileDescriptor> fileDescriptorLoader;
    private final ModelLoader<A, InputStream> streamLoader;

    public ImageVideoModelLoader(ModelLoader<A, InputStream> modelLoader, ModelLoader<A, ParcelFileDescriptor> modelLoader2) {
        if (modelLoader == null && modelLoader2 == null) {
            throw new NullPointerException("At least one of streamLoader and fileDescriptorLoader must be non null");
        }
        this.streamLoader = modelLoader;
        this.fileDescriptorLoader = modelLoader2;
    }

    @Override
    public DataFetcher<ImageVideoWrapper> getResourceFetcher(A a2, int n2, int n3) {
        DataFetcher<InputStream> dataFetcher = null;
        if (this.streamLoader != null) {
            dataFetcher = this.streamLoader.getResourceFetcher(a2, n2, n3);
        }
        DataFetcher<ParcelFileDescriptor> dataFetcher2 = null;
        if (this.fileDescriptorLoader != null) {
            dataFetcher2 = this.fileDescriptorLoader.getResourceFetcher(a2, n2, n3);
        }
        if (dataFetcher != null || dataFetcher2 != null) {
            return new ImageVideoFetcher(dataFetcher, dataFetcher2);
        }
        return null;
    }

    static class ImageVideoFetcher
    implements DataFetcher<ImageVideoWrapper> {
        private final DataFetcher<ParcelFileDescriptor> fileDescriptorFetcher;
        private final DataFetcher<InputStream> streamFetcher;

        public ImageVideoFetcher(DataFetcher<InputStream> dataFetcher, DataFetcher<ParcelFileDescriptor> dataFetcher2) {
            this.streamFetcher = dataFetcher;
            this.fileDescriptorFetcher = dataFetcher2;
        }

        @Override
        public void cancel() {
            if (this.streamFetcher != null) {
                this.streamFetcher.cancel();
            }
            if (this.fileDescriptorFetcher != null) {
                this.fileDescriptorFetcher.cancel();
            }
        }

        @Override
        public void cleanup() {
            if (this.streamFetcher != null) {
                this.streamFetcher.cleanup();
            }
            if (this.fileDescriptorFetcher != null) {
                this.fileDescriptorFetcher.cleanup();
            }
        }

        @Override
        public String getId() {
            if (this.streamFetcher != null) {
                return this.streamFetcher.getId();
            }
            return this.fileDescriptorFetcher.getId();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        @Override
        public ImageVideoWrapper loadData(Priority priority) throws Exception {
            InputStream inputStream;
            InputStream inputStream2;
            InputStream inputStream3;
            block7 : {
                inputStream = inputStream3 = null;
                if (this.streamFetcher != null) {
                    try {
                        inputStream = this.streamFetcher.loadData(priority);
                    }
                    catch (Exception var4_5) {
                        if (Log.isLoggable((String)"IVML", (int)2)) {
                            Log.v((String)"IVML", (String)"Exception fetching input stream, trying ParcelFileDescriptor", (Throwable)var4_5);
                        }
                        inputStream = inputStream3;
                        if (this.fileDescriptorFetcher != null) break block7;
                        throw var4_5;
                    }
                }
            }
            inputStream3 = inputStream2 = null;
            if (this.fileDescriptorFetcher == null) return new ImageVideoWrapper(inputStream, (ParcelFileDescriptor)inputStream3);
            try {
                inputStream3 = this.fileDescriptorFetcher.loadData(priority);
                return new ImageVideoWrapper(inputStream, (ParcelFileDescriptor)inputStream3);
            }
            catch (Exception var1_2) {
                if (Log.isLoggable((String)"IVML", (int)2)) {
                    Log.v((String)"IVML", (String)"Exception fetching ParcelFileDescriptor", (Throwable)var1_2);
                }
                inputStream3 = inputStream2;
                if (inputStream != null) return new ImageVideoWrapper(inputStream, (ParcelFileDescriptor)inputStream3);
                throw var1_2;
            }
        }
    }

}

