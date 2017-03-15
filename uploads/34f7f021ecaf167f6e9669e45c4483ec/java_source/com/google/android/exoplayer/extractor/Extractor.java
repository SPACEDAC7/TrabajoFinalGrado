/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.exoplayer.extractor.ExtractorInput
 *  com.google.android.exoplayer.extractor.PositionHolder
 */
package com.google.android.exoplayer.extractor;

import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import java.io.IOException;

public interface Extractor {
    public static final int RESULT_CONTINUE = 0;
    public static final int RESULT_END_OF_INPUT = -1;
    public static final int RESULT_SEEK = 1;

    public void init(ExtractorOutput var1);

    public int read(ExtractorInput var1, PositionHolder var2) throws IOException, InterruptedException;

    public void release();

    public void seek();

    public boolean sniff(ExtractorInput var1) throws IOException, InterruptedException;
}

