/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.graphics.BitmapFactory
 *  android.graphics.BitmapFactory$Options
 *  android.graphics.Rect
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.Log
 */
package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.util.MarkEnforcingInputStream;
import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.util.EnumSet;
import java.util.Queue;
import java.util.Set;

public abstract class Downsampler
implements BitmapDecoder<InputStream> {
    public static final Downsampler AT_LEAST;
    public static final Downsampler AT_MOST;
    private static final int MARK_POSITION = 5242880;
    public static final Downsampler NONE;
    private static final Queue<BitmapFactory.Options> OPTIONS_QUEUE;
    private static final String TAG = "Downsampler";
    private static final Set<ImageHeaderParser.ImageType> TYPES_THAT_USE_POOL;

    static {
        TYPES_THAT_USE_POOL = EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG);
        OPTIONS_QUEUE = Util.createQueue(0);
        AT_LEAST = new Downsampler(){

            @Override
            public String getId() {
                return "AT_LEAST.com.bumptech.glide.load.data.bitmap";
            }

            @Override
            protected int getSampleSize(int n2, int n3, int n4, int n5) {
                return Math.min(n3 / n5, n2 / n4);
            }
        };
        AT_MOST = new Downsampler(){

            @Override
            public String getId() {
                return "AT_MOST.com.bumptech.glide.load.data.bitmap";
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            protected int getSampleSize(int n2, int n3, int n4, int n5) {
                int n6 = 1;
                n2 = (int)Math.ceil(Math.max((float)n3 / (float)n5, (float)n2 / (float)n4));
                n3 = Math.max(1, Integer.highestOneBit(n2));
                if (n3 < n2) {
                    n2 = n6;
                    do {
                        return n3 << n2;
                        break;
                    } while (true);
                }
                n2 = 0;
                return n3 << n2;
            }
        };
        NONE = new Downsampler(){

            @Override
            public String getId() {
                return "NONE.com.bumptech.glide.load.data.bitmap";
            }

            @Override
            protected int getSampleSize(int n2, int n3, int n4, int n5) {
                return 0;
            }
        };
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static Bitmap decodeStream(MarkEnforcingInputStream markEnforcingInputStream, RecyclableBufferedInputStream recyclableBufferedInputStream, BitmapFactory.Options options) {
        if (options.inJustDecodeBounds) {
            markEnforcingInputStream.mark(5242880);
        } else {
            recyclableBufferedInputStream.fixMarkLimit();
        }
        recyclableBufferedInputStream = BitmapFactory.decodeStream((InputStream)markEnforcingInputStream, (Rect)null, (BitmapFactory.Options)options);
        try {
            if (!options.inJustDecodeBounds) return recyclableBufferedInputStream;
            {
                markEnforcingInputStream.reset();
                return recyclableBufferedInputStream;
            }
        }
        catch (IOException var0_1) {
            if (!Log.isLoggable((String)"Downsampler", (int)6)) return recyclableBufferedInputStream;
            Log.e((String)"Downsampler", (String)("Exception loading inDecodeBounds=" + options.inJustDecodeBounds + " sample=" + options.inSampleSize), (Throwable)var0_1);
            return recyclableBufferedInputStream;
        }
    }

    private Bitmap downsampleWithSize(MarkEnforcingInputStream markEnforcingInputStream, RecyclableBufferedInputStream recyclableBufferedInputStream, BitmapFactory.Options options, BitmapPool bitmapPool, int n2, int n3, int n4, DecodeFormat decodeFormat) {
        decodeFormat = Downsampler.getConfig(markEnforcingInputStream, decodeFormat);
        options.inSampleSize = n4;
        options.inPreferredConfig = decodeFormat;
        if ((options.inSampleSize == 1 || 19 <= Build.VERSION.SDK_INT) && Downsampler.shouldUsePool(markEnforcingInputStream)) {
            Downsampler.setInBitmap(options, bitmapPool.getDirty((int)Math.ceil((double)n2 / (double)n4), (int)Math.ceil((double)n3 / (double)n4), (Bitmap.Config)decodeFormat));
        }
        return Downsampler.decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, options);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static Bitmap.Config getConfig(InputStream var0, DecodeFormat var1_4) {
        if (var1_4 == DecodeFormat.ALWAYS_ARGB_8888) return Bitmap.Config.ARGB_8888;
        if (var1_4 == DecodeFormat.PREFER_ARGB_8888) return Bitmap.Config.ARGB_8888;
        if (Build.VERSION.SDK_INT == 16) {
            return Bitmap.Config.ARGB_8888;
        }
        var3_6 = false;
        var0.mark(1024);
        var3_6 = var2_7 = new ImageHeaderParser(var0).hasAlpha();
        try {
            var0.reset();
            var2_7 = var3_6;
        }
        catch (IOException var0_1) {
            var2_7 = var3_6;
            if (Log.isLoggable((String)"Downsampler", (int)5)) {
                Log.w((String)"Downsampler", (String)"Cannot reset the input stream", (Throwable)var0_1);
                var2_7 = var3_6;
            }
            ** GOTO lbl41
        }
        catch (IOException var4_8) {
            block13 : {
                block12 : {
                    try {
                        if (!Log.isLoggable((String)"Downsampler", (int)5)) break block12;
                        Log.w((String)"Downsampler", (String)("Cannot determine whether the image has alpha or not from header for format " + (Object)var1_4), (Throwable)var4_8);
                    }
                    catch (Throwable var1_5) {
                        try {
                            var0.reset();
                        }
                        catch (IOException var0_3) {
                            if (Log.isLoggable((String)"Downsampler", (int)5) == false) throw var1_5;
                            Log.w((String)"Downsampler", (String)"Cannot reset the input stream", (Throwable)var0_3);
                            throw var1_5;
                        }
                        throw var1_5;
                    }
                }
                try {
                    var0.reset();
                    var2_7 = var3_6;
                }
                catch (IOException var0_2) {
                    var2_7 = var3_6;
                    if (!Log.isLoggable((String)"Downsampler", (int)5)) break block13;
                    Log.w((String)"Downsampler", (String)"Cannot reset the input stream", (Throwable)var0_2);
                    var2_7 = var3_6;
                }
            }
            if (var2_7 == false) return Bitmap.Config.RGB_565;
            return Bitmap.Config.ARGB_8888;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @TargetApi(value=11)
    private static BitmapFactory.Options getDefaultOptions() {
        synchronized (Downsampler.class) {
            BitmapFactory.Options options;
            BitmapFactory.Options options2 = OPTIONS_QUEUE;
            synchronized (options2) {
                options = OPTIONS_QUEUE.poll();
            }
            options2 = options;
            if (options == null) {
                options2 = new BitmapFactory.Options();
                Downsampler.resetOptions(options2);
            }
            return options2;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private int getRoundedSampleSize(int n2, int n3, int n4, int n5, int n6) {
        if (n6 == Integer.MIN_VALUE) {
            n6 = n4;
        }
        if (n5 == Integer.MIN_VALUE) {
            n5 = n3;
        }
        n2 = n2 == 90 || n2 == 270 ? this.getSampleSize(n4, n3, n5, n6) : this.getSampleSize(n3, n4, n5, n6);
        if (n2 == 0) {
            n2 = 0;
            return Math.max(1, n2);
        }
        n2 = Integer.highestOneBit(n2);
        return Math.max(1, n2);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void releaseOptions(BitmapFactory.Options options) {
        Downsampler.resetOptions(options);
        Queue<BitmapFactory.Options> queue = OPTIONS_QUEUE;
        synchronized (queue) {
            OPTIONS_QUEUE.offer(options);
            return;
        }
    }

    @TargetApi(value=11)
    private static void resetOptions(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        if (11 <= Build.VERSION.SDK_INT) {
            options.inBitmap = null;
            options.inMutable = true;
        }
    }

    @TargetApi(value=11)
    private static void setInBitmap(BitmapFactory.Options options, Bitmap bitmap) {
        if (11 <= Build.VERSION.SDK_INT) {
            options.inBitmap = bitmap;
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static boolean shouldUsePool(InputStream inputStream) {
        if (19 <= Build.VERSION.SDK_INT) {
            return true;
        }
        inputStream.mark(1024);
        ImageHeaderParser.ImageType imageType = new ImageHeaderParser(inputStream).getType();
        boolean bl = TYPES_THAT_USE_POOL.contains((Object)imageType);
        try {
            inputStream.reset();
            return bl;
        }
        catch (IOException var0_1) {
            boolean bl2 = bl;
            if (!Log.isLoggable((String)"Downsampler", (int)5)) return bl2;
            Log.w((String)"Downsampler", (String)"Cannot reset the input stream", (Throwable)var0_1);
            return bl;
        }
        catch (IOException iOException) {
            block11 : {
                try {
                    if (!Log.isLoggable((String)"Downsampler", (int)5)) break block11;
                    Log.w((String)"Downsampler", (String)"Cannot determine the image type from header", (Throwable)iOException);
                }
                catch (Throwable var3_7) {
                    try {
                        inputStream.reset();
                    }
                    catch (IOException var0_3) {
                        if (!Log.isLoggable((String)"Downsampler", (int)5)) throw var3_7;
                        Log.w((String)"Downsampler", (String)"Cannot reset the input stream", (Throwable)var0_3);
                        throw var3_7;
                    }
                    throw var3_7;
                }
            }
            try {
                inputStream.reset();
                return false;
            }
            catch (IOException var0_2) {
                if (!Log.isLoggable((String)"Downsampler", (int)5)) return false;
                Log.w((String)"Downsampler", (String)"Cannot reset the input stream", (Throwable)var0_2);
                return false;
            }
        }
    }

    /*
     * Exception decompiling
     */
    @Override
    public Bitmap decode(InputStream var1_1, BitmapPool var2_4, int var3_6, int var4_7, DecodeFormat var5_8) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:371)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:449)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    public int[] getDimensions(MarkEnforcingInputStream markEnforcingInputStream, RecyclableBufferedInputStream recyclableBufferedInputStream, BitmapFactory.Options options) {
        options.inJustDecodeBounds = true;
        Downsampler.decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, options);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    protected abstract int getSampleSize(int var1, int var2, int var3, int var4);

}

