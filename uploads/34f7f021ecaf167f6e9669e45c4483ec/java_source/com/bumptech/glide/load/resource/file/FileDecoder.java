/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.resource.file;

import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.file.FileResource;
import java.io.File;
import java.io.IOException;

public class FileDecoder
implements ResourceDecoder<File, File> {
    @Override
    public Resource<File> decode(File file, int n2, int n3) {
        return new FileResource(file);
    }

    @Override
    public String getId() {
        return "";
    }
}

