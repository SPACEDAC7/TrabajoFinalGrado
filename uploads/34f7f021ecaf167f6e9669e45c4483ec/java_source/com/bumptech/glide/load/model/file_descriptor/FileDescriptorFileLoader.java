/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  android.os.ParcelFileDescriptor
 */
package com.bumptech.glide.load.model.file_descriptor;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.model.FileLoader;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.file_descriptor.FileDescriptorModelLoader;
import java.io.File;

public class FileDescriptorFileLoader
extends FileLoader<ParcelFileDescriptor>
implements FileDescriptorModelLoader<File> {
    public FileDescriptorFileLoader(Context context) {
        this(Glide.buildFileDescriptorModelLoader(Uri.class, context));
    }

    public FileDescriptorFileLoader(ModelLoader<Uri, ParcelFileDescriptor> modelLoader) {
        super(modelLoader);
    }

    public static class Factory
    implements ModelLoaderFactory<File, ParcelFileDescriptor> {
        @Override
        public ModelLoader<File, ParcelFileDescriptor> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new FileDescriptorFileLoader(genericLoaderFactory.buildModelLoader(Uri.class, ParcelFileDescriptor.class));
        }

        @Override
        public void teardown() {
        }
    }

}

