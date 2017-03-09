/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.constants;

public enum BuildFlavor {
    DEBUG,
    ALPHA,
    BETA,
    QA,
    RELEASE;
    

    private BuildFlavor() {
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static BuildFlavor convertBuildTypeToBuildFlavor(String var0) {
        var1_1 = -1;
        switch (var0.hashCode()) {
            case 95458899: {
                if (var0.equals("debug")) {
                    var1_1 = 0;
                    ** break;
                }
                ** GOTO lbl21
            }
            case 92909918: {
                if (var0.equals("alpha")) {
                    var1_1 = 1;
                    ** break;
                }
                ** GOTO lbl21
            }
            case 3020272: {
                if (var0.equals("beta")) {
                    var1_1 = 2;
                    ** break;
                }
                ** GOTO lbl21
            }
            case 3600: {
                if (var0.equals("qa")) {
                    var1_1 = 3;
                }
            }
lbl21: // 10 sources:
            default: {
                ** GOTO lbl26
            }
            case 1090594823: 
        }
        if (var0.equals("release")) {
            var1_1 = 4;
        }
lbl26: // 4 sources:
        switch (var1_1) {
            default: {
                return BuildFlavor.DEBUG;
            }
            case 0: {
                return BuildFlavor.DEBUG;
            }
            case 1: {
                return BuildFlavor.ALPHA;
            }
            case 2: {
                return BuildFlavor.BETA;
            }
            case 3: {
                return BuildFlavor.QA;
            }
            case 4: 
        }
        return BuildFlavor.RELEASE;
    }
}

