/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.Log
 */
package com.bumptech.glide.gifdecoder;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.gifdecoder.GifFrame;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class GifDecoder {
    private static final Bitmap.Config BITMAP_CONFIG;
    private static final int DISPOSAL_BACKGROUND = 2;
    private static final int DISPOSAL_NONE = 1;
    private static final int DISPOSAL_PREVIOUS = 3;
    private static final int DISPOSAL_UNSPECIFIED = 0;
    private static final int INITIAL_FRAME_POINTER = -1;
    private static final int MAX_STACK_SIZE = 4096;
    private static final int NULL_CODE = -1;
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OPEN_ERROR = 2;
    public static final int STATUS_PARTIAL_DECODE = 3;
    private static final String TAG;
    private int[] act;
    private BitmapProvider bitmapProvider;
    private final byte[] block = new byte[256];
    private byte[] data;
    private int framePointer;
    private GifHeader header;
    private byte[] mainPixels;
    private int[] mainScratch;
    private GifHeaderParser parser;
    private byte[] pixelStack;
    private short[] prefix;
    private Bitmap previousImage;
    private ByteBuffer rawData;
    private boolean savePrevious;
    private int status;
    private byte[] suffix;

    static {
        TAG = GifDecoder.class.getSimpleName();
        BITMAP_CONFIG = Bitmap.Config.ARGB_8888;
    }

    public GifDecoder(BitmapProvider bitmapProvider) {
        this.bitmapProvider = bitmapProvider;
        this.header = new GifHeader();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void decodeBitmapData(GifFrame var1_1) {
        if (var1_1 != null) {
            this.rawData.position(var1_1.bufferFrameStart);
        }
        var12_2 = var1_1 == null ? this.header.width * this.header.height : var1_1.iw * var1_1.ih;
        if (this.mainPixels == null || this.mainPixels.length < var12_2) {
            this.mainPixels = new byte[var12_2];
        }
        if (this.prefix == null) {
            this.prefix = new short[4096];
        }
        if (this.suffix == null) {
            this.suffix = new byte[4096];
        }
        if (this.pixelStack == null) {
            this.pixelStack = new byte[4097];
        }
        var20_3 = this.read();
        var21_4 = 1 << var20_3;
        var16_5 = var21_4 + 2;
        var3_6 = -1;
        var8_7 = var20_3 + 1;
        var7_8 = (1 << var8_7) - 1;
        for (var2_9 = 0; var2_9 < var21_4; ++var2_9) {
            this.prefix[var2_9] = 0;
            this.suffix[var2_9] = (byte)var2_9;
        }
        var9_10 = 0;
        var6_11 = 0;
        var2_9 = 0;
        var10_12 = 0;
        var5_13 = 0;
        var4_14 = 0;
        var11_15 = 0;
        var13_16 = 0;
        block1 : do {
            if (var13_16 >= var12_2) ** GOTO lbl38
            var14_17 = var9_10;
            var9_10 = var5_13;
            if (var5_13 == 0) {
                var9_10 = this.readBlock();
                if (var9_10 <= 0) {
                    this.status = 3;
lbl38: // 3 sources:
                    while (var6_11 < var12_2) {
                        this.mainPixels[var6_11] = 0;
                        ++var6_11;
                    }
                    return;
                }
                var14_17 = 0;
            }
            var11_15 += (this.block[var14_17] & 255) << var4_14;
            var5_13 = var4_14 + 8;
            var18_21 = var14_17 + 1;
            var17_19 = var9_10 - 1;
            var9_10 = var16_5;
            while (var5_13 >= var8_7) {
                var4_14 = var11_15 & var7_8;
                var14_17 = var11_15 >> var8_7;
                var15_18 = var5_13 - var8_7;
                if (var4_14 == var21_4) {
                    var8_7 = var20_3 + 1;
                    var7_8 = (1 << var8_7) - 1;
                    var9_10 = var21_4 + 2;
                    var3_6 = -1;
                    var5_13 = var15_18;
                    var11_15 = var14_17;
                    continue;
                }
                if (var4_14 > var9_10) {
                    this.status = 3;
                    var16_5 = var9_10;
                    var9_10 = var18_21;
                    var4_14 = var15_18;
                    var5_13 = var17_19;
                    var11_15 = var14_17;
                    continue block1;
                }
                if (var4_14 == var21_4 + 1) {
                    var16_5 = var9_10;
                    var9_10 = var18_21;
                    var4_14 = var15_18;
                    var5_13 = var17_19;
                    var11_15 = var14_17;
                    continue block1;
                }
                if (var3_6 == -1) {
                    this.pixelStack[var2_9] = this.suffix[var4_14];
                    var3_6 = var4_14;
                    ++var2_9;
                    var5_13 = var15_18;
                    var11_15 = var14_17;
                    var10_12 = var4_14;
                    continue;
                }
                var5_13 = var4_14;
                var11_15 = var2_9;
                if (var4_14 >= var9_10) {
                    this.pixelStack[var2_9] = var10_12;
                    var5_13 = var3_6;
                    var11_15 = var2_9 + 1;
                }
                while (var5_13 >= var21_4) {
                    this.pixelStack[var11_15] = this.suffix[var5_13];
                    var5_13 = this.prefix[var5_13];
                    ++var11_15;
                }
                var19_20 = this.suffix[var5_13] & 255;
                var1_1 = this.pixelStack;
                var16_5 = var11_15 + 1;
                var1_1[var11_15] = (byte)var19_20;
                var5_13 = var9_10;
                var11_15 = var7_8;
                var10_12 = var8_7;
                if (var9_10 < 4096) {
                    this.prefix[var9_10] = (short)var3_6;
                    this.suffix[var9_10] = (byte)var19_20;
                    var5_13 = var2_9 = var9_10 + 1;
                    var11_15 = var7_8;
                    var10_12 = var8_7;
                    if ((var2_9 & var7_8) == 0) {
                        var5_13 = var2_9;
                        var11_15 = var7_8;
                        var10_12 = var8_7;
                        if (var2_9 < 4096) {
                            var10_12 = var8_7 + 1;
                            var11_15 = var7_8 + var2_9;
                            var5_13 = var2_9;
                        }
                    }
                }
                var2_9 = var6_11;
                var3_6 = var16_5;
                while (var3_6 > 0) {
                    this.mainPixels[var2_9] = this.pixelStack[--var3_6];
                    ++var13_16;
                    ++var2_9;
                }
                var16_5 = var3_6;
                var9_10 = var5_13;
                var5_13 = var15_18;
                var7_8 = var11_15;
                var8_7 = var10_12;
                var11_15 = var14_17;
                var10_12 = var19_20;
                var3_6 = var4_14;
                var6_11 = var2_9;
                var2_9 = var16_5;
            }
            var16_5 = var9_10;
            var9_10 = var18_21;
            var4_14 = var5_13;
            var5_13 = var17_19;
        } while (true);
    }

    private GifHeaderParser getHeaderParser() {
        if (this.parser == null) {
            this.parser = new GifHeaderParser();
        }
        return this.parser;
    }

    private Bitmap getNextBitmap() {
        Bitmap bitmap;
        Bitmap bitmap2 = bitmap = this.bitmapProvider.obtain(this.header.width, this.header.height, BITMAP_CONFIG);
        if (bitmap == null) {
            bitmap2 = Bitmap.createBitmap((int)this.header.width, (int)this.header.height, (Bitmap.Config)BITMAP_CONFIG);
        }
        GifDecoder.setAlpha(bitmap2);
        return bitmap2;
    }

    private int read() {
        byte by;
        try {
            by = this.rawData.get();
        }
        catch (Exception var1_2) {
            this.status = 1;
            return 0;
        }
        return by & 255;
    }

    /*
     * Loose catch block
     * Enabled aggressive exception aggregation
     */
    private int readBlock() {
        int n2;
        block4 : {
            int n3 = this.read();
            n2 = 0;
            int n4 = 0;
            if (n3 > 0) {
                do {
                    n2 = n4;
                    if (n4 >= n3) break block4;
                    n2 = n3 - n4;
                    this.rawData.get(this.block, n4, n2);
                    n4 += n2;
                } while (true);
                catch (Exception exception) {
                    Log.w((String)TAG, (String)"Error Reading Block", (Throwable)exception);
                    this.status = 1;
                    n2 = n4;
                }
            }
        }
        return n2;
    }

    @TargetApi(value=12)
    private static void setAlpha(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 12) {
            bitmap.setHasAlpha(true);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private Bitmap setPixels(GifFrame gifFrame, GifFrame gifFrame2) {
        int n2;
        int n3 = this.header.width;
        int n4 = this.header.height;
        int[] arrn = this.mainScratch;
        if (gifFrame2 != null && gifFrame2.dispose > 0) {
            if (gifFrame2.dispose == 2) {
                n2 = 0;
                if (!gifFrame.transparency) {
                    n2 = this.header.bgColor;
                }
                Arrays.fill(arrn, n2);
            } else if (gifFrame2.dispose == 3 && this.previousImage != null) {
                this.previousImage.getPixels(arrn, 0, n3, 0, 0, n3, n4);
            }
        }
        this.decodeBitmapData(gifFrame);
        int n5 = 1;
        int n6 = 8;
        int n7 = 0;
        for (int i2 = 0; i2 < gifFrame.ih; ++i2) {
            int n8 = i2;
            n2 = n7;
            int n9 = n6;
            int n10 = n5;
            if (gifFrame.interlace) {
                n2 = n7;
                n9 = n6;
                n10 = n5;
                if (n7 >= gifFrame.ih) {
                    n10 = n5 + 1;
                    switch (n10) {
                        default: {
                            n9 = n6;
                            n2 = n7;
                            break;
                        }
                        case 2: {
                            n2 = 4;
                            n9 = n6;
                            break;
                        }
                        case 3: {
                            n2 = 2;
                            n9 = 4;
                            break;
                        }
                        case 4: {
                            n2 = 1;
                            n9 = 2;
                        }
                    }
                }
                n8 = n2;
                n2 += n9;
            }
            if ((n6 = n8 + gifFrame.iy) < this.header.height) {
                n8 = n6 * this.header.width;
                n7 = n8 + gifFrame.ix;
                n6 = n5 = n7 + gifFrame.iw;
                if (this.header.width + n8 < n5) {
                    n6 = n8 + this.header.width;
                }
                n5 = i2 * gifFrame.iw;
                while (n7 < n6) {
                    n8 = this.mainPixels[n5];
                    if ((n8 = this.act[n8 & 255]) != 0) {
                        arrn[n7] = n8;
                    }
                    ++n7;
                    ++n5;
                }
            }
            n7 = n2;
            n6 = n9;
            n5 = n10;
        }
        if (this.savePrevious && (gifFrame.dispose == 0 || gifFrame.dispose == 1)) {
            if (this.previousImage == null) {
                this.previousImage = this.getNextBitmap();
            }
            this.previousImage.setPixels(arrn, 0, n3, 0, 0, n3, n4);
        }
        gifFrame = this.getNextBitmap();
        gifFrame.setPixels(arrn, 0, n3, 0, 0, n3, n4);
        return gifFrame;
    }

    public void advance() {
        this.framePointer = (this.framePointer + 1) % this.header.frameCount;
    }

    public void clear() {
        this.header = null;
        this.data = null;
        this.mainPixels = null;
        this.mainScratch = null;
        if (this.previousImage != null) {
            this.bitmapProvider.release(this.previousImage);
        }
        this.previousImage = null;
        this.rawData = null;
    }

    public int getCurrentFrameIndex() {
        return this.framePointer;
    }

    public byte[] getData() {
        return this.data;
    }

    public int getDelay(int n2) {
        int n3;
        int n4 = n3 = -1;
        if (n2 >= 0) {
            n4 = n3;
            if (n2 < this.header.frameCount) {
                n4 = this.header.frames.get((int)n2).delay;
            }
        }
        return n4;
    }

    public int getFrameCount() {
        return this.header.frameCount;
    }

    public int getHeight() {
        return this.header.height;
    }

    public int getLoopCount() {
        return this.header.loopCount;
    }

    public int getNextDelay() {
        if (this.header.frameCount <= 0 || this.framePointer < 0) {
            return -1;
        }
        return this.getDelay(this.framePointer);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Bitmap getNextFrame() {
        GifFrame gifFrame = null;
        synchronized (this) {
            GifFrame gifFrame2;
            if (this.header.frameCount <= 0 || this.framePointer < 0) {
                if (Log.isLoggable((String)TAG, (int)3)) {
                    Log.d((String)TAG, (String)("unable to decode frame, frameCount=" + this.header.frameCount + " framePointer=" + this.framePointer));
                }
                this.status = 1;
            }
            if (this.status == 1 || this.status == 2) {
                gifFrame2 = gifFrame;
                if (!Log.isLoggable((String)TAG, (int)3)) return gifFrame2;
                Log.d((String)TAG, (String)("Unable to decode frame, status=" + this.status));
                return gifFrame;
            }
            this.status = 0;
            GifFrame gifFrame3 = this.header.frames.get(this.framePointer);
            gifFrame2 = null;
            int n2 = this.framePointer - 1;
            if (n2 >= 0) {
                gifFrame2 = this.header.frames.get(n2);
            }
            if (gifFrame3.lct == null) {
                this.act = this.header.gct;
            } else {
                this.act = gifFrame3.lct;
                if (this.header.bgIndex == gifFrame3.transIndex) {
                    this.header.bgColor = 0;
                }
            }
            n2 = 0;
            if (gifFrame3.transparency) {
                n2 = this.act[gifFrame3.transIndex];
                this.act[gifFrame3.transIndex] = 0;
            }
            if (this.act == null) {
                if (Log.isLoggable((String)TAG, (int)3)) {
                    Log.d((String)TAG, (String)"No Valid Color Table");
                }
                this.status = 1;
                return gifFrame;
            }
            gifFrame2 = gifFrame = this.setPixels(gifFrame3, gifFrame2);
            if (!gifFrame3.transparency) return gifFrame2;
            this.act[gifFrame3.transIndex] = n2;
            return gifFrame;
        }
    }

    public int getStatus() {
        return this.status;
    }

    public int getWidth() {
        return this.header.width;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public int read(InputStream var1_1, int var2_3) {
        var5_4 = 16384;
        if (var1_1 == null) ** GOTO lbl17
        if (var2_3 > 0) {
            var5_4 = var2_3 + 4096;
        }
        try {
            var3_5 = new ByteArrayOutputStream(var5_4);
            var4_7 = new byte[16384];
            while ((var2_3 = var1_1.read(var4_7, 0, var4_7.length)) != -1) {
                var3_5.write(var4_7, 0, var2_3);
            }
            var3_5.flush();
            this.read(var3_5.toByteArray());
            ** GOTO lbl18
        }
        catch (IOException var3_6) {
            Log.w((String)GifDecoder.TAG, (String)"Error reading data from stream", (Throwable)var3_6);
            ** GOTO lbl18
lbl17: // 1 sources:
            this.status = 2;
lbl18: // 3 sources:
            if (var1_1 == null) return this.status;
            try {
                var1_1.close();
                return this.status;
            }
            catch (IOException var1_2) {
                Log.w((String)GifDecoder.TAG, (String)"Error closing stream", (Throwable)var1_2);
                return this.status;
            }
        }
    }

    public int read(byte[] object) {
        this.data = object;
        this.header = this.getHeaderParser().setData((byte[])object).parseHeader();
        if (object != null) {
            this.rawData = ByteBuffer.wrap((byte[])object);
            this.rawData.rewind();
            this.rawData.order(ByteOrder.LITTLE_ENDIAN);
            this.mainPixels = new byte[this.header.width * this.header.height];
            this.mainScratch = new int[this.header.width * this.header.height];
            this.savePrevious = false;
            object = this.header.frames.iterator();
            while (object.hasNext()) {
                if (((GifFrame)object.next()).dispose != 3) continue;
                this.savePrevious = true;
                break;
            }
        }
        return this.status;
    }

    public void resetFrameIndex() {
        this.framePointer = -1;
    }

    public void setData(GifHeader gifHeader, byte[] object) {
        this.header = gifHeader;
        this.data = object;
        this.status = 0;
        this.framePointer = -1;
        this.rawData = ByteBuffer.wrap((byte[])object);
        this.rawData.rewind();
        this.rawData.order(ByteOrder.LITTLE_ENDIAN);
        this.savePrevious = false;
        object = gifHeader.frames.iterator();
        while (object.hasNext()) {
            if (((GifFrame)object.next()).dispose != 3) continue;
            this.savePrevious = true;
            break;
        }
        this.mainPixels = new byte[gifHeader.width * gifHeader.height];
        this.mainScratch = new int[gifHeader.width * gifHeader.height];
    }

    public static interface BitmapProvider {
        public Bitmap obtain(int var1, int var2, Bitmap.Config var3);

        public void release(Bitmap var1);
    }

}

