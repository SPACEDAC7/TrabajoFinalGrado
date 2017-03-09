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
            var5_5 = var1_1.next();
            var2_2 = var5_5.indexOf("=");
            var4_4 = var5_5.substring(0, var2_2);
            if (TextUtils.isEmpty((CharSequence)(var5_5 = var5_5.substring(var2_2 + 1)))) continue;
            var5_5 = var5_5.replaceAll("\\s+", "");
            var2_2 = -1;
            switch (var4_4.hashCode()) {
                case 97533: {
                    if (var4_4.equals("bid")) {
                        var2_2 = 0;
                        ** break;
                    }
                    ** GOTO lbl24
                }
                case 1438608771: {
                    if (var4_4.equals("autoPlay")) {
                        var2_2 = 1;
                        ** break;
                    }
                    ** GOTO lbl24
                }
                case 116753: {
                    if (var4_4.equals("vid")) {
                        var2_2 = 2;
                    }
                }
lbl24: // 8 sources:
                default: {
                    ** GOTO lbl29
                }
                case 833459293: 
            }
            if (var4_4.equals("utm_term")) {
                var2_2 = 3;
            }
lbl29: // 4 sources:
            switch (var2_2) {
                default: {
                    continue block12;
                }
                case 0: {
                    this.mBuzzId = Integer.parseInt(var5_5);
                    continue block12;
                }
                case 1: {
                    var3_3 = var5_5.equals("1") != false;
                    this.mIsAutoPlay = var3_3;
                    continue block12;
                }
                case 2: {
                    this.mVideoId = Integer.parseInt(var5_5);
                    continue block12;
                }
                case 3: 
            }
            this.mUtmTerm = var5_5;
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

