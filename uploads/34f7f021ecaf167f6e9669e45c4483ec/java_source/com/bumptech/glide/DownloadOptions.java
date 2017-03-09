/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide;

import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.target.Target;
import java.io.File;

interface DownloadOptions {
    public FutureTarget<File> downloadOnly(int var1, int var2);

    public <Y extends Target<File>> Y downloadOnly(Y var1);
}

