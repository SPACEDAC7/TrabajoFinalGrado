/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.gifdecoder;

import com.bumptech.glide.gifdecoder.GifFrame;
import java.util.ArrayList;
import java.util.List;

public class GifHeader {
    int bgColor;
    int bgIndex;
    GifFrame currentFrame;
    int frameCount = 0;
    List<GifFrame> frames = new ArrayList<GifFrame>();
    int[] gct = null;
    boolean gctFlag;
    int gctSize;
    int height;
    int loopCount;
    int pixelAspect;
    int status = 0;
    int width;

    public int getHeight() {
        return this.height;
    }

    public int getNumFrames() {
        return this.frameCount;
    }

    public int getStatus() {
        return this.status;
    }

    public int getWidth() {
        return this.width;
    }
}

