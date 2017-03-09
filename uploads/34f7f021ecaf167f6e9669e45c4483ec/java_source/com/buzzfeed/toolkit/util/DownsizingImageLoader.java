/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.net.Uri
 *  android.net.Uri$Builder
 */
package com.buzzfeed.toolkit.util;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.stream.BaseGlideUrlLoader;
import com.buzzfeed.toolkit.R;
import java.io.InputStream;
import java.util.Set;

public class DownsizingImageLoader
extends BaseGlideUrlLoader<String> {
    private static final int[] IMAGE_WIDTH_BUCKETS = new int[]{50, 100, 200, 400, 600, 800, 1000, 1200, 1600, 1920};
    private static final int MAX_IMAGE_WIDTH = 1920;
    private static final String METHOD_DOWNSIZE = "downsize";
    private static final String METHOD_OUTPUT_FORMAT = "output-format";
    private static final String METHOD_OUTPUT_QUALITY = "output-quality";
    private static final String METHOD_RESIZE = "resize";
    private static final String PARAM_MAINTAIN_RATIO = ":*";
    private static final String VALUE_OUTPUT_FORMAT = "image/webp";
    private static final String VALUE_OUTPUT_QUALITY = "80";
    private final String[] mImageProcessingEndpoints;

    public DownsizingImageLoader(Context context, ModelLoader<GlideUrl, InputStream> modelLoader) {
        super(modelLoader);
        this.mImageProcessingEndpoints = context.getResources().getStringArray(R.array.image_processing_endpoints);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean ensureImageProcessingEndpoint(String string2) {
        if (this.mImageProcessingEndpoints == null) {
            return false;
        }
        String[] arrstring = this.mImageProcessingEndpoints;
        int n2 = arrstring.length;
        int n3 = 0;
        while (n3 < n2) {
            if (string2.contains(arrstring[n3])) {
                return true;
            }
            ++n3;
        }
        return false;
    }

    private int findBestImageBucket(int n2) {
        int n3 = 0;
        int[] arrn = IMAGE_WIDTH_BUCKETS;
        int n4 = arrn.length;
        int n5 = 0;
        while (n5 < n4 && (n3 = arrn[n5]) < n2) {
            ++n5;
        }
        return n3;
    }

    @Override
    protected String getUrl(String string2, int n2, int n3) {
        if (n2 == 0 || n3 == 0 || !this.ensureImageProcessingEndpoint(string2)) {
            return string2;
        }
        Object object = Uri.parse((String)string2);
        string2 = object.buildUpon();
        if (!(object = object.getQueryParameterNames()).contains("downsize") && !object.contains("resize")) {
            n2 = this.findBestImageBucket(n2);
            string2.appendQueryParameter("downsize", "" + n2 + ":*");
        }
        if (!object.contains("output-format")) {
            string2.appendQueryParameter("output-format", "image/webp");
        }
        if (!object.contains("output-quality")) {
            string2.appendQueryParameter("output-quality", "80");
        }
        return Uri.decode((String)string2.build().toString());
    }

    public static class Factory
    implements ModelLoaderFactory<String, InputStream> {
        @Override
        public ModelLoader<String, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new DownsizingImageLoader(context, genericLoaderFactory.buildModelLoader(GlideUrl.class, InputStream.class));
        }

        @Override
        public void teardown() {
        }
    }

}

