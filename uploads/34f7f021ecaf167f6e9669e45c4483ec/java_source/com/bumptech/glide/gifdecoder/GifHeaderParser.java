/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.bumptech.glide.gifdecoder;

import android.util.Log;
import com.bumptech.glide.gifdecoder.GifFrame;
import com.bumptech.glide.gifdecoder.GifHeader;
import java.nio.Buffer;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;

public class GifHeaderParser {
    static final int DEFAULT_FRAME_DELAY = 10;
    private static final int MAX_BLOCK_SIZE = 256;
    static final int MIN_FRAME_DELAY = 3;
    public static final String TAG = "GifHeaderParser";
    private final byte[] block = new byte[256];
    private int blockSize = 0;
    private GifHeader header;
    private ByteBuffer rawData;

    private boolean err() {
        if (this.header.status != 0) {
            return true;
        }
        return false;
    }

    private int read() {
        byte by;
        try {
            by = this.rawData.get();
        }
        catch (Exception var2_2) {
            this.header.status = 1;
            return 0;
        }
        return by & 255;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void readBitmap() {
        boolean bl = true;
        this.header.currentFrame.ix = this.readShort();
        this.header.currentFrame.iy = this.readShort();
        this.header.currentFrame.iw = this.readShort();
        this.header.currentFrame.ih = this.readShort();
        int n2 = this.read();
        boolean bl2 = (n2 & 128) != 0;
        int n3 = (int)Math.pow(2.0, (n2 & 7) + 1);
        Object object = this.header.currentFrame;
        if ((n2 & 64) == 0) {
            bl = false;
        }
        object.interlace = bl;
        this.header.currentFrame.lct = bl2 ? this.readColorTable(n3) : null;
        this.header.currentFrame.bufferFrameStart = this.rawData.position();
        this.skipImageData();
        if (this.err()) {
            return;
        }
        object = this.header;
        ++object.frameCount;
        this.header.frames.add(this.header.currentFrame);
    }

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int readBlock() {
        this.blockSize = this.read();
        var4_1 = 0;
        var1_2 = 0;
        if (this.blockSize <= 0) return var4_1;
        var2_3 = 0;
        do lbl-1000: // 2 sources:
        {
            var3_4 = var2_3;
            var4_1 = var1_2;
            if (var1_2 >= this.blockSize) return var4_1;
            var3_4 = var2_3;
            break;
        } while (true);
        catch (Exception var5_5) {
            if (Log.isLoggable((String)"GifHeaderParser", (int)3)) {
                Log.d((String)"GifHeaderParser", (String)("Error Reading Block n: " + var1_2 + " count: " + var3_4 + " blockSize: " + this.blockSize), (Throwable)var5_5);
            }
            this.header.status = 1;
            return var1_2;
        }
        {
            var3_4 = var2_3 = this.blockSize - var1_2;
            this.rawData.get(this.block, var1_2, var2_3);
            var1_2 += var2_3;
            ** while (true)
        }
    }

    private int[] readColorTable(int n2) {
        int[] arrn;
        int n3;
        int n4;
        int[] arrn2;
        arrn = null;
        byte[] arrby = new byte[n2 * 3];
        try {
            this.rawData.get(arrby);
            arrn2 = new int[256];
            n4 = 0;
            n3 = 0;
        }
        catch (BufferUnderflowException var7_5) {
            if (Log.isLoggable((String)"GifHeaderParser", (int)3)) {
                Log.d((String)"GifHeaderParser", (String)"Format Error Reading Color Table", (Throwable)var7_5);
            }
            this.header.status = 1;
        }
        do {
            arrn = arrn2;
            if (n3 < n2) {
                int n5 = n4 + 1;
                n4 = arrby[n4];
                int n6 = n5 + 1;
                arrn2[n3] = -16777216 | (n4 & 255) << 16 | (arrby[n5] & 255) << 8 | arrby[n6] & 255;
                n4 = n6 + 1;
                ++n3;
                continue;
            }
            break;
            break;
        } while (true);
        return arrn;
    }

    private void readContents() {
        boolean bl = false;
        block11 : while (!bl && !this.err()) {
            switch (this.read()) {
                default: {
                    this.header.status = 1;
                    continue block11;
                }
                case 44: {
                    if (this.header.currentFrame == null) {
                        this.header.currentFrame = new GifFrame();
                    }
                    this.readBitmap();
                    continue block11;
                }
                case 33: {
                    switch (this.read()) {
                        default: {
                            this.skip();
                            continue block11;
                        }
                        case 249: {
                            this.header.currentFrame = new GifFrame();
                            this.readGraphicControlExt();
                            continue block11;
                        }
                        case 255: {
                            this.readBlock();
                            String string2 = "";
                            for (int i2 = 0; i2 < 11; ++i2) {
                                string2 = string2 + this.block[i2];
                            }
                            if (string2.equals("NETSCAPE2.0")) {
                                this.readNetscapeExt();
                                continue block11;
                            }
                            this.skip();
                            continue block11;
                        }
                        case 254: {
                            this.skip();
                            continue block11;
                        }
                        case 1: 
                    }
                    this.skip();
                    continue block11;
                }
                case 59: 
            }
            bl = true;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void readGraphicControlExt() {
        int n2;
        boolean bl = true;
        this.read();
        int n3 = this.read();
        this.header.currentFrame.dispose = (n3 & 28) >> 2;
        if (this.header.currentFrame.dispose == 0) {
            this.header.currentFrame.dispose = 1;
        }
        GifFrame gifFrame = this.header.currentFrame;
        if ((n3 & 1) == 0) {
            bl = false;
        }
        gifFrame.transparency = bl;
        n3 = n2 = this.readShort();
        if (n2 < 3) {
            n3 = 10;
        }
        this.header.currentFrame.delay = n3 * 10;
        this.header.currentFrame.transIndex = this.read();
        this.read();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void readHeader() {
        String string2 = "";
        for (int i2 = 0; i2 < 6; ++i2) {
            string2 = string2 + (char)this.read();
        }
        if (!string2.startsWith("GIF")) {
            this.header.status = 1;
            return;
        } else {
            this.readLSD();
            if (!this.header.gctFlag || this.err()) return;
            {
                this.header.gct = this.readColorTable(this.header.gctSize);
                this.header.bgColor = this.header.gct[this.header.bgIndex];
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void readLSD() {
        this.header.width = this.readShort();
        this.header.height = this.readShort();
        int n2 = this.read();
        GifHeader gifHeader = this.header;
        boolean bl = (n2 & 128) != 0;
        gifHeader.gctFlag = bl;
        this.header.gctSize = 2 << (n2 & 7);
        this.header.bgIndex = this.read();
        this.header.pixelAspect = this.read();
    }

    private void readNetscapeExt() {
        do {
            this.readBlock();
            if (this.block[0] != 1) continue;
            byte by = this.block[1];
            byte by2 = this.block[2];
            this.header.loopCount = (by2 & 255) << 8 | by & 255;
        } while (this.blockSize > 0 && !this.err());
    }

    private int readShort() {
        return this.rawData.getShort();
    }

    private void reset() {
        this.rawData = null;
        Arrays.fill(this.block, 0);
        this.header = new GifHeader();
        this.blockSize = 0;
    }

    private void skip() {
        int n2;
        do {
            n2 = this.read();
            this.rawData.position(this.rawData.position() + n2);
        } while (n2 > 0);
    }

    private void skipImageData() {
        this.read();
        this.skip();
    }

    public void clear() {
        this.rawData = null;
        this.header = null;
    }

    public GifHeader parseHeader() {
        if (this.rawData == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (this.err()) {
            return this.header;
        }
        this.readHeader();
        if (!this.err()) {
            this.readContents();
            if (this.header.frameCount < 0) {
                this.header.status = 1;
            }
        }
        return this.header;
    }

    public GifHeaderParser setData(byte[] arrby) {
        this.reset();
        if (arrby != null) {
            this.rawData = ByteBuffer.wrap(arrby);
            this.rawData.rewind();
            this.rawData.order(ByteOrder.LITTLE_ENDIAN);
            return this;
        }
        this.rawData = null;
        this.header.status = 2;
        return this;
    }
}

