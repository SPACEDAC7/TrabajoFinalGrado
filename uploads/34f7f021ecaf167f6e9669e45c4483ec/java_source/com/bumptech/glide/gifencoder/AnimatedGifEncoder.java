/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.graphics.Canvas
 *  android.graphics.Color
 *  android.graphics.Paint
 *  android.util.Log
 */
package com.bumptech.glide.gifencoder;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.Log;
import com.bumptech.glide.gifencoder.LZWEncoder;
import com.bumptech.glide.gifencoder.NeuQuant;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class AnimatedGifEncoder {
    private static final double MIN_TRANSPARENT_PERCENTAGE = 4.0;
    private static final String TAG = "AnimatedGifEncoder";
    private boolean closeStream = false;
    private int colorDepth;
    private byte[] colorTab;
    private int delay = 0;
    private int dispose = -1;
    private boolean firstFrame = true;
    private boolean hasTransparentPixels;
    private int height;
    private Bitmap image;
    private byte[] indexedPixels;
    private OutputStream out;
    private int palSize = 7;
    private byte[] pixels;
    private int repeat = -1;
    private int sample = 10;
    private boolean sizeSet = false;
    private boolean started = false;
    private int transIndex;
    private Integer transparent = null;
    private boolean[] usedEntry = new boolean[256];
    private int width;

    /*
     * Enabled aggressive block sorting
     */
    private void analyzePixels() {
        int n2 = this.pixels.length;
        int n3 = n2 / 3;
        this.indexedPixels = new byte[n3];
        NeuQuant neuQuant = new NeuQuant(this.pixels, n2, this.sample);
        this.colorTab = neuQuant.process();
        for (n2 = 0; n2 < this.colorTab.length; n2 += 3) {
            byte by = this.colorTab[n2];
            this.colorTab[n2] = this.colorTab[n2 + 2];
            this.colorTab[n2 + 2] = by;
            this.usedEntry[n2 / 3] = false;
        }
        int n4 = 0;
        for (n2 = 0; n2 < n3; ++n2, ++n4) {
            byte[] arrby = this.pixels;
            int n5 = n4 + 1;
            byte by = arrby[n4];
            arrby = this.pixels;
            n4 = n5 + 1;
            n5 = neuQuant.map(by & 255, arrby[n5] & 255, this.pixels[n4] & 255);
            this.usedEntry[n5] = true;
            this.indexedPixels[n2] = (byte)n5;
        }
        this.pixels = null;
        this.colorDepth = 8;
        this.palSize = 7;
        if (this.transparent != null) {
            this.transIndex = this.findClosest(this.transparent);
            return;
        } else {
            if (!this.hasTransparentPixels) return;
            {
                this.transIndex = this.findClosest(0);
                return;
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int findClosest(int n2) {
        if (this.colorTab == null) {
            return -1;
        }
        int n3 = Color.red((int)n2);
        int n4 = Color.green((int)n2);
        int n5 = Color.blue((int)n2);
        n2 = 0;
        int n6 = 16777216;
        int n7 = this.colorTab.length;
        int n8 = 0;
        do {
            int n9 = n2;
            if (n8 >= n7) return n9;
            byte[] arrby = this.colorTab;
            int n10 = n8 + 1;
            n9 = n3 - (arrby[n8] & 255);
            arrby = this.colorTab;
            int n11 = n10 + 1;
            n8 = n4 - (arrby[n10] & 255);
            n10 = n5 - (this.colorTab[n11] & 255);
            int n12 = n9 * n9 + n8 * n8 + n10 * n10;
            n10 = n11 / 3;
            n8 = n6;
            n9 = n2;
            if (this.usedEntry[n10]) {
                n8 = n6;
                n9 = n2;
                if (n12 < n6) {
                    n8 = n12;
                    n9 = n10;
                }
            }
            n2 = n11 + 1;
            n6 = n8;
            n8 = n2;
            n2 = n9;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void getImagePixels() {
        int[] arrn;
        int n2 = this.image.getWidth();
        int n3 = this.image.getHeight();
        if (n2 != this.width || n3 != this.height) {
            arrn = Bitmap.createBitmap((int)this.width, (int)this.height, (Bitmap.Config)Bitmap.Config.ARGB_8888);
            new Canvas((Bitmap)arrn).drawBitmap((Bitmap)arrn, 0.0f, 0.0f, null);
            this.image = arrn;
        }
        arrn = new int[n2 * n3];
        this.image.getPixels(arrn, 0, n2, 0, 0, n2, n3);
        this.pixels = new byte[arrn.length * 3];
        this.hasTransparentPixels = false;
        int n4 = 0;
        int n5 = arrn.length;
        int n6 = 0;
        for (n2 = 0; n2 < n5; ++n2, ++n6) {
            int n7 = arrn[n2];
            n3 = n4;
            if (n7 == 0) {
                n3 = n4 + 1;
            }
            byte[] arrby = this.pixels;
            n4 = n6 + 1;
            arrby[n6] = (byte)(n7 & 255);
            arrby = this.pixels;
            n6 = n4 + 1;
            arrby[n4] = (byte)(n7 >> 8 & 255);
            this.pixels[n6] = (byte)(n7 >> 16 & 255);
            n4 = n3;
        }
        double d2 = (double)(n4 * 100) / (double)arrn.length;
        boolean bl = d2 > 4.0;
        this.hasTransparentPixels = bl;
        if (Log.isLoggable((String)"AnimatedGifEncoder", (int)3)) {
            Log.d((String)"AnimatedGifEncoder", (String)("got pixels for frame with " + d2 + "% transparent pixels"));
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void writeGraphicCtrlExt() throws IOException {
        int n2;
        int n3;
        this.out.write(33);
        this.out.write(249);
        this.out.write(4);
        if (this.transparent == null && !this.hasTransparentPixels) {
            n2 = 0;
            n3 = 0;
        } else {
            n2 = 1;
            n3 = 2;
        }
        if (this.dispose >= 0) {
            n3 = this.dispose & 7;
        }
        this.out.write(n3 << 2 | 0 | 0 | n2);
        this.writeShort(this.delay);
        this.out.write(this.transIndex);
        this.out.write(0);
    }

    private void writeImageDesc() throws IOException {
        this.out.write(44);
        this.writeShort(0);
        this.writeShort(0);
        this.writeShort(this.width);
        this.writeShort(this.height);
        if (this.firstFrame) {
            this.out.write(0);
            return;
        }
        this.out.write(this.palSize | 128);
    }

    private void writeLSD() throws IOException {
        this.writeShort(this.width);
        this.writeShort(this.height);
        this.out.write(this.palSize | 240);
        this.out.write(0);
        this.out.write(0);
    }

    private void writeNetscapeExt() throws IOException {
        this.out.write(33);
        this.out.write(255);
        this.out.write(11);
        this.writeString("NETSCAPE2.0");
        this.out.write(3);
        this.out.write(1);
        this.writeShort(this.repeat);
        this.out.write(0);
    }

    private void writePalette() throws IOException {
        this.out.write(this.colorTab, 0, this.colorTab.length);
        int n2 = this.colorTab.length;
        for (int i2 = 0; i2 < 768 - n2; ++i2) {
            this.out.write(0);
        }
    }

    private void writePixels() throws IOException {
        new LZWEncoder(this.width, this.height, this.indexedPixels, this.colorDepth).encode(this.out);
    }

    private void writeShort(int n2) throws IOException {
        this.out.write(n2 & 255);
        this.out.write(n2 >> 8 & 255);
    }

    private void writeString(String string2) throws IOException {
        for (int i2 = 0; i2 < string2.length(); ++i2) {
            this.out.write((byte)string2.charAt(i2));
        }
    }

    public boolean addFrame(Bitmap bitmap) {
        if (bitmap == null || !this.started) {
            return false;
        }
        try {
            if (!this.sizeSet) {
                this.setSize(bitmap.getWidth(), bitmap.getHeight());
            }
            this.image = bitmap;
            this.getImagePixels();
            this.analyzePixels();
            if (this.firstFrame) {
                this.writeLSD();
                this.writePalette();
                if (this.repeat >= 0) {
                    this.writeNetscapeExt();
                }
            }
            this.writeGraphicCtrlExt();
            this.writeImageDesc();
            if (!this.firstFrame) {
                this.writePalette();
            }
            this.writePixels();
            this.firstFrame = false;
            return true;
        }
        catch (IOException var1_2) {
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean finish() {
        boolean bl;
        if (!this.started) {
            return false;
        }
        boolean bl2 = true;
        this.started = false;
        try {
            this.out.write(59);
            this.out.flush();
            bl = bl2;
            if (this.closeStream) {
                this.out.close();
                bl = bl2;
            }
        }
        catch (IOException var1_3) {
            bl = false;
        }
        this.transIndex = 0;
        this.out = null;
        this.image = null;
        this.pixels = null;
        this.indexedPixels = null;
        this.colorTab = null;
        this.closeStream = false;
        this.firstFrame = true;
        return bl;
    }

    public void setDelay(int n2) {
        this.delay = Math.round((float)n2 / 10.0f);
    }

    public void setDispose(int n2) {
        if (n2 >= 0) {
            this.dispose = n2;
        }
    }

    public void setFrameRate(float f2) {
        if (f2 != 0.0f) {
            this.delay = Math.round(100.0f / f2);
        }
    }

    public void setQuality(int n2) {
        int n3 = n2;
        if (n2 < 1) {
            n3 = 1;
        }
        this.sample = n3;
    }

    public void setRepeat(int n2) {
        if (n2 >= 0) {
            this.repeat = n2;
        }
    }

    public void setSize(int n2, int n3) {
        if (this.started && !this.firstFrame) {
            return;
        }
        this.width = n2;
        this.height = n3;
        if (this.width < 1) {
            this.width = 320;
        }
        if (this.height < 1) {
            this.height = 240;
        }
        this.sizeSet = true;
    }

    public void setTransparent(int n2) {
        this.transparent = n2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean start(OutputStream outputStream) {
        if (outputStream == null) {
            return false;
        }
        boolean bl = true;
        this.closeStream = false;
        this.out = outputStream;
        try {
            this.writeString("GIF89a");
        }
        catch (IOException var1_2) {
            bl = false;
        }
        this.started = bl;
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean start(String string2) {
        boolean bl;
        try {
            this.out = new BufferedOutputStream(new FileOutputStream(string2));
            bl = this.start(this.out);
            this.closeStream = true;
        }
        catch (IOException var1_2) {
            bl = false;
        }
        this.started = bl;
        return bl;
    }
}

