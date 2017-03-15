/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.buzzfeed.ads.video;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Iterator;

public class TraffickingParameters {
    private int mBuzzId;
    private boolean mIsAutoPlay;
    private String mUtmTerm;
    private int mVideoId;

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public TraffickingParameters(String var1_1) {
        super();
        var1_1 = Arrays.asList(var1_1.split("\\s*,\\s*")).iterator();
        block12 : while (var1_1.hasNext() != false) {
            var3_3 = var1_1.next();
            var4_4 = var3_3.indexOf("=");
            var2_2 = var3_3.substring(0, var4_4);
            if (TextUtils.isEmpty((CharSequence)(var3_3 = var3_3.substring(var4_4 + 1)))) continue;
            var3_3 = var3_3.replaceAll("\\s+", "");
            var4_4 = -1;
            switch (var2_2.hashCode()) {
                case 97533: {
                    if (var2_2.equals("bid")) {
                        var4_4 = 0;
                        ** break;
                    }
                    ** GOTO lbl24
                }
                case 1438608771: {
                    if (var2_2.equals("autoPlay")) {
                        var4_4 = 1;
                        ** break;
                    }
                    ** GOTO lbl24
                }
                case 116753: {
                    if (var2_2.equals("vid")) {
                        var4_4 = 2;
                    }
                }
lbl24: // 8 sources:
                default: {
                    ** GOTO lbl29
                }
                case 833459293: 
            }
            if (var2_2.equals("utm_term")) {
                var4_4 = 3;
            }
lbl29: // 4 sources:
            switch (var4_4) {
                default: {
                    continue block12;
                }
                case 0: {
                    this.mBuzzId = Integer.parseInt(var3_3);
                    continue block12;
                }
                case 1: {
                    var5_5 = var3_3.equals("1") != false;
                    this.mIsAutoPlay = var5_5;
                    continue block12;
                }
                case 2: {
                    this.mVideoId = Integer.parseInt(var3_3);
                    continue block12;
                }
                case 3: 
            }
            this.mUtmTerm = var3_3;
        }
    }

    public int getBuzzId() {
        return this.mBuzzId;
    }

    public String getUtmTerm() {
        return this.mUtmTerm;
    }

    public int getVideoId() {
        return this.mVideoId;
    }

    public boolean isAutoPlay() {
        return this.mIsAutoPlay;
    }
}

