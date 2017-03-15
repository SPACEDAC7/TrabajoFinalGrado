/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Path
 *  android.util.Log
 */
package android.support.graphics.drawable;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;

class PathParser {
    private static final String LOGTAG = "PathParser";

    PathParser() {
    }

    private static void addNode(ArrayList<PathDataNode> arrayList, char c2, float[] arrf) {
        arrayList.add(new PathDataNode(c2, arrf));
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean canMorph(PathDataNode[] arrpathDataNode, PathDataNode[] arrpathDataNode2) {
        if (arrpathDataNode == null) return false;
        if (arrpathDataNode2 == null) {
            return false;
        }
        if (arrpathDataNode.length != arrpathDataNode2.length) return false;
        int n2 = 0;
        while (n2 < arrpathDataNode.length) {
            if (arrpathDataNode[n2].type != arrpathDataNode2[n2].type) return false;
            if (arrpathDataNode[n2].params.length != arrpathDataNode2[n2].params.length) return false;
            ++n2;
        }
        return true;
    }

    static float[] copyOfRange(float[] arrf, int n2, int n3) {
        if (n2 > n3) {
            throw new IllegalArgumentException();
        }
        int n4 = arrf.length;
        if (n2 < 0 || n2 > n4) {
            throw new ArrayIndexOutOfBoundsException();
        }
        n4 = Math.min(n3 -= n2, n4 - n2);
        float[] arrf2 = new float[n3];
        System.arraycopy(arrf, n2, arrf2, 0, n4);
        return arrf2;
    }

    public static PathDataNode[] createNodesFromPathData(String string2) {
        if (string2 == null) {
            return null;
        }
        int n2 = 0;
        int n3 = 1;
        ArrayList<PathDataNode> arrayList = new ArrayList<PathDataNode>();
        while (n3 < string2.length()) {
            String string3 = string2.substring(n2, n3 = PathParser.nextStart(string2, n3)).trim();
            if (string3.length() > 0) {
                float[] arrf = PathParser.getFloats(string3);
                PathParser.addNode(arrayList, string3.charAt(0), arrf);
            }
            n2 = n3++;
        }
        if (n3 - n2 == 1 && n2 < string2.length()) {
            PathParser.addNode(arrayList, string2.charAt(n2), new float[0]);
        }
        return arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    public static Path createPathFromPathData(String string2) {
        Path path = new Path();
        PathDataNode[] arrpathDataNode = PathParser.createNodesFromPathData(string2);
        if (arrpathDataNode != null) {
            try {
                PathDataNode.nodesToPath(arrpathDataNode, path);
                return path;
            }
            catch (RuntimeException var1_2) {
                throw new RuntimeException("Error in parsing " + string2, var1_2);
            }
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static PathDataNode[] deepCopyNodes(PathDataNode[] arrpathDataNode) {
        if (arrpathDataNode == null) {
            return null;
        }
        PathDataNode[] arrpathDataNode2 = new PathDataNode[arrpathDataNode.length];
        int n2 = 0;
        do {
            PathDataNode[] arrpathDataNode3 = arrpathDataNode2;
            if (n2 >= arrpathDataNode.length) return arrpathDataNode3;
            arrpathDataNode2[n2] = new PathDataNode(arrpathDataNode[n2]);
            ++n2;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void extract(String string2, int n2, ExtractFloatResult extractFloatResult) {
        int n3;
        boolean bl = false;
        extractFloatResult.mEndWithNegOrDot = false;
        boolean bl2 = false;
        boolean bl3 = false;
        for (n3 = n2; n3 < string2.length(); ++n3) {
            boolean bl4;
            boolean bl5;
            boolean bl6;
            boolean bl7 = false;
            switch (string2.charAt(n3)) {
                default: {
                    bl4 = bl2;
                    bl5 = bl7;
                    bl6 = bl;
                    break;
                }
                case ' ': 
                case ',': {
                    bl6 = true;
                    bl5 = bl7;
                    bl4 = bl2;
                    break;
                }
                case '-': {
                    bl6 = bl;
                    bl5 = bl7;
                    bl4 = bl2;
                    if (n3 == n2) break;
                    bl6 = bl;
                    bl5 = bl7;
                    bl4 = bl2;
                    if (bl3) break;
                    bl6 = true;
                    extractFloatResult.mEndWithNegOrDot = true;
                    bl5 = bl7;
                    bl4 = bl2;
                    break;
                }
                case '.': {
                    if (!bl2) {
                        bl4 = true;
                        bl6 = bl;
                        bl5 = bl7;
                        break;
                    }
                    bl6 = true;
                    extractFloatResult.mEndWithNegOrDot = true;
                    bl5 = bl7;
                    bl4 = bl2;
                    break;
                }
                case 'E': 
                case 'e': {
                    bl5 = true;
                    bl6 = bl;
                    bl4 = bl2;
                }
            }
            if (bl6) break;
            bl = bl6;
            bl3 = bl5;
            bl2 = bl4;
        }
        extractFloatResult.mEndPosition = n3;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static float[] getFloats(String var0) {
        block7 : {
            var4_1 = 1;
            var3_2 = var0.charAt(0) == 'z' ? 1 : 0;
            if (var0.charAt(0) != 'Z') {
                var4_1 = 0;
            }
            if (var3_2 | var4_1) {
                return new float[0];
            }
            try {
                var1_3 = new float[var0.length()];
                var4_1 = 1;
                var2_5 = new ExtractFloatResult();
                var7_6 = var0.length();
                var3_2 = 0;
lbl13: // 3 sources:
                if (var4_1 >= var7_6) return PathParser.copyOfRange(var1_3, 0, var3_2);
                PathParser.extract(var0, var4_1, var2_5);
                var5_7 = var2_5.mEndPosition;
                if (var4_1 < var5_7) {
                    var6_8 = var3_2 + 1;
                    var1_3[var3_2] = Float.parseFloat(var0.substring(var4_1, var5_7));
                    var3_2 = var6_8;
                }
                if (!var2_5.mEndWithNegOrDot) break block7;
                var4_1 = var5_7;
                ** GOTO lbl13
            }
            catch (NumberFormatException var1_4) {
                throw new RuntimeException("error in parsing \"" + var0 + "\"", var1_4);
            }
        }
        var4_1 = var5_7 + 1;
        ** GOTO lbl13
    }

    private static int nextStart(String string2, int n2) {
        char c2;
        while (n2 < string2.length() && (((c2 = string2.charAt(n2)) - 65) * (c2 - 90) > 0 && (c2 - 97) * (c2 - 122) > 0 || c2 == 'e' || c2 == 'E')) {
            ++n2;
        }
        return n2;
    }

    public static void updateNodes(PathDataNode[] arrpathDataNode, PathDataNode[] arrpathDataNode2) {
        for (int i2 = 0; i2 < arrpathDataNode2.length; ++i2) {
            arrpathDataNode[i2].type = arrpathDataNode2[i2].type;
            for (int i3 = 0; i3 < arrpathDataNode2[i2].params.length; ++i3) {
                arrpathDataNode[i2].params[i3] = arrpathDataNode2[i2].params[i3];
            }
        }
    }

    private static class ExtractFloatResult {
        int mEndPosition;
        boolean mEndWithNegOrDot;

        ExtractFloatResult() {
        }
    }

    public static class PathDataNode {
        float[] params;
        char type;

        PathDataNode(char c2, float[] arrf) {
            this.type = c2;
            this.params = arrf;
        }

        PathDataNode(PathDataNode pathDataNode) {
            this.type = pathDataNode.type;
            this.params = PathParser.copyOfRange(pathDataNode.params, 0, pathDataNode.params.length);
        }

        /*
         * Enabled aggressive block sorting
         */
        private static void addCommand(Path path, float[] arrf, char c2, char c3, float[] arrf2) {
            int n2 = 2;
            float f2 = arrf[0];
            float f3 = arrf[1];
            float f4 = arrf[2];
            float f5 = arrf[3];
            float f6 = arrf[4];
            float f7 = arrf[5];
            switch (c3) {
                case 'Z': 
                case 'z': {
                    path.close();
                    f2 = f6;
                    f3 = f7;
                    f4 = f6;
                    f5 = f7;
                    path.moveTo(f2, f3);
                    break;
                }
                case 'L': 
                case 'M': 
                case 'T': 
                case 'l': 
                case 'm': 
                case 't': {
                    n2 = 2;
                    break;
                }
                case 'H': 
                case 'V': 
                case 'h': 
                case 'v': {
                    n2 = 1;
                    break;
                }
                case 'C': 
                case 'c': {
                    n2 = 6;
                    break;
                }
                case 'Q': 
                case 'S': 
                case 'q': 
                case 's': {
                    n2 = 4;
                    break;
                }
                case 'A': 
                case 'a': {
                    n2 = 7;
                    break;
                }
            }
            char c4 = '\u0000';
            char c5 = c2;
            c2 = c4;
            float f8 = f7;
            f7 = f6;
            float f9 = f5;
            float f10 = f4;
            while (c2 < arrf2.length) {
                switch (c3) {
                    boolean bl;
                    boolean bl2;
                    default: {
                        f5 = f8;
                        f4 = f9;
                        f6 = f10;
                        break;
                    }
                    case 'm': {
                        f2 += arrf2[c2 + '\u0000'];
                        f3 += arrf2[c2 + '\u0001'];
                        if (c2 > '\u0000') {
                            path.rLineTo(arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001']);
                            f6 = f10;
                            f4 = f9;
                            f5 = f8;
                            break;
                        }
                        path.rMoveTo(arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001']);
                        f7 = f2;
                        f5 = f3;
                        f6 = f10;
                        f4 = f9;
                        break;
                    }
                    case 'M': {
                        f2 = arrf2[c2 + '\u0000'];
                        f3 = arrf2[c2 + '\u0001'];
                        if (c2 > '\u0000') {
                            path.lineTo(arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001']);
                            f6 = f10;
                            f4 = f9;
                            f5 = f8;
                            break;
                        }
                        path.moveTo(arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001']);
                        f7 = f2;
                        f5 = f3;
                        f6 = f10;
                        f4 = f9;
                        break;
                    }
                    case 'l': {
                        path.rLineTo(arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001']);
                        f2 += arrf2[c2 + '\u0000'];
                        f3 += arrf2[c2 + '\u0001'];
                        f6 = f10;
                        f4 = f9;
                        f5 = f8;
                        break;
                    }
                    case 'L': {
                        path.lineTo(arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001']);
                        f2 = arrf2[c2 + '\u0000'];
                        f3 = arrf2[c2 + '\u0001'];
                        f6 = f10;
                        f4 = f9;
                        f5 = f8;
                        break;
                    }
                    case 'h': {
                        path.rLineTo(arrf2[c2 + '\u0000'], 0.0f);
                        f2 += arrf2[c2 + '\u0000'];
                        f6 = f10;
                        f4 = f9;
                        f5 = f8;
                        break;
                    }
                    case 'H': {
                        path.lineTo(arrf2[c2 + '\u0000'], f3);
                        f2 = arrf2[c2 + '\u0000'];
                        f6 = f10;
                        f4 = f9;
                        f5 = f8;
                        break;
                    }
                    case 'v': {
                        path.rLineTo(0.0f, arrf2[c2 + '\u0000']);
                        f3 += arrf2[c2 + '\u0000'];
                        f6 = f10;
                        f4 = f9;
                        f5 = f8;
                        break;
                    }
                    case 'V': {
                        path.lineTo(f2, arrf2[c2 + '\u0000']);
                        f3 = arrf2[c2 + '\u0000'];
                        f6 = f10;
                        f4 = f9;
                        f5 = f8;
                        break;
                    }
                    case 'c': {
                        path.rCubicTo(arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001'], arrf2[c2 + 2], arrf2[c2 + 3], arrf2[c2 + 4], arrf2[c2 + 5]);
                        f6 = f2 + arrf2[c2 + 2];
                        f4 = f3 + arrf2[c2 + 3];
                        f2 += arrf2[c2 + 4];
                        f3 += arrf2[c2 + 5];
                        f5 = f8;
                        break;
                    }
                    case 'C': {
                        path.cubicTo(arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001'], arrf2[c2 + 2], arrf2[c2 + 3], arrf2[c2 + 4], arrf2[c2 + 5]);
                        f2 = arrf2[c2 + 4];
                        f3 = arrf2[c2 + 5];
                        f6 = arrf2[c2 + 2];
                        f4 = arrf2[c2 + 3];
                        f5 = f8;
                        break;
                    }
                    case 's': {
                        f6 = 0.0f;
                        f4 = 0.0f;
                        if (c5 == 'c' || c5 == 's' || c5 == 'C' || c5 == 'S') {
                            f6 = f2 - f10;
                            f4 = f3 - f9;
                        }
                        path.rCubicTo(f6, f4, arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001'], arrf2[c2 + 2], arrf2[c2 + 3]);
                        f6 = f2 + arrf2[c2 + '\u0000'];
                        f4 = f3 + arrf2[c2 + '\u0001'];
                        f2 += arrf2[c2 + 2];
                        f3 += arrf2[c2 + 3];
                        f5 = f8;
                        break;
                    }
                    case 'S': {
                        f4 = f2;
                        f6 = f3;
                        if (c5 == 'c' || c5 == 's' || c5 == 'C' || c5 == 'S') {
                            f4 = 2.0f * f2 - f10;
                            f6 = 2.0f * f3 - f9;
                        }
                        path.cubicTo(f4, f6, arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001'], arrf2[c2 + 2], arrf2[c2 + 3]);
                        f6 = arrf2[c2 + '\u0000'];
                        f4 = arrf2[c2 + '\u0001'];
                        f2 = arrf2[c2 + 2];
                        f3 = arrf2[c2 + 3];
                        f5 = f8;
                        break;
                    }
                    case 'q': {
                        path.rQuadTo(arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001'], arrf2[c2 + 2], arrf2[c2 + 3]);
                        f6 = f2 + arrf2[c2 + '\u0000'];
                        f4 = f3 + arrf2[c2 + '\u0001'];
                        f2 += arrf2[c2 + 2];
                        f3 += arrf2[c2 + 3];
                        f5 = f8;
                        break;
                    }
                    case 'Q': {
                        path.quadTo(arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001'], arrf2[c2 + 2], arrf2[c2 + 3]);
                        f6 = arrf2[c2 + '\u0000'];
                        f4 = arrf2[c2 + '\u0001'];
                        f2 = arrf2[c2 + 2];
                        f3 = arrf2[c2 + 3];
                        f5 = f8;
                        break;
                    }
                    case 't': {
                        f4 = 0.0f;
                        f6 = 0.0f;
                        if (c5 == 'q' || c5 == 't' || c5 == 'Q' || c5 == 'T') {
                            f4 = f2 - f10;
                            f6 = f3 - f9;
                        }
                        path.rQuadTo(f4, f6, arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001']);
                        f4 = f2 + f4;
                        f5 = f3 + f6;
                        f2 += arrf2[c2 + '\u0000'];
                        f3 += arrf2[c2 + '\u0001'];
                        f6 = f4;
                        f4 = f5;
                        f5 = f8;
                        break;
                    }
                    case 'T': {
                        f4 = f2;
                        f6 = f3;
                        if (c5 == 'q' || c5 == 't' || c5 == 'Q' || c5 == 'T') {
                            f4 = 2.0f * f2 - f10;
                            f6 = 2.0f * f3 - f9;
                        }
                        path.quadTo(f4, f6, arrf2[c2 + '\u0000'], arrf2[c2 + '\u0001']);
                        f2 = f6;
                        f9 = arrf2[c2 + '\u0000'];
                        f3 = arrf2[c2 + '\u0001'];
                        f6 = f4;
                        f4 = f2;
                        f5 = f8;
                        f2 = f9;
                        break;
                    }
                    case 'a': {
                        f6 = arrf2[c2 + 5];
                        f4 = arrf2[c2 + 6];
                        f5 = arrf2[c2 + '\u0000'];
                        f9 = arrf2[c2 + '\u0001'];
                        f10 = arrf2[c2 + 2];
                        bl = arrf2[c2 + 3] != 0.0f;
                        bl2 = arrf2[c2 + 4] != 0.0f;
                        PathDataNode.drawArc(path, f2, f3, f6 + f2, f4 + f3, f5, f9, f10, bl, bl2);
                        f6 = f2 += arrf2[c2 + 5];
                        f4 = f3 += arrf2[c2 + 6];
                        f5 = f8;
                        break;
                    }
                    case 'A': {
                        f6 = arrf2[c2 + 5];
                        f4 = arrf2[c2 + 6];
                        f5 = arrf2[c2 + '\u0000'];
                        f9 = arrf2[c2 + '\u0001'];
                        f10 = arrf2[c2 + 2];
                        bl = arrf2[c2 + 3] != 0.0f;
                        bl2 = arrf2[c2 + 4] != 0.0f;
                        PathDataNode.drawArc(path, f2, f3, f6, f4, f5, f9, f10, bl, bl2);
                        f2 = arrf2[c2 + 5];
                        f3 = arrf2[c2 + 6];
                        f6 = f2;
                        f4 = f3;
                        f5 = f8;
                    }
                }
                c5 = c3;
                c2 = (char)(c2 + n2);
                f10 = f6;
                f9 = f4;
                f8 = f5;
            }
            arrf[0] = f2;
            arrf[1] = f3;
            arrf[2] = f10;
            arrf[3] = f9;
            arrf[4] = f7;
            arrf[5] = f8;
        }

        private static void arcToBezier(Path path, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
            int n2 = (int)Math.ceil(Math.abs(4.0 * d10 / 3.141592653589793));
            double d11 = d9;
            double d12 = Math.cos(d8);
            double d13 = Math.sin(d8);
            d8 = Math.cos(d11);
            d9 = Math.sin(d11);
            double d14 = (- d4) * d12 * d9 - d5 * d13 * d8;
            double d15 = (- d4) * d13 * d9 + d5 * d12 * d8;
            double d16 = d10 / (double)n2;
            d9 = d7;
            d8 = d6;
            d10 = d11;
            d7 = d15;
            d6 = d14;
            for (int i2 = 0; i2 < n2; ++i2) {
                double d17 = d10 + d16;
                d15 = Math.sin(d17);
                double d18 = Math.cos(d17);
                double d19 = d4 * d12 * d18 + d2 - d5 * d13 * d15;
                d14 = d4 * d13 * d18 + d3 + d5 * d12 * d15;
                d11 = (- d4) * d12 * d15 - d5 * d13 * d18;
                d15 = (- d4) * d13 * d15 + d5 * d12 * d18;
                d18 = Math.tan((d17 - d10) / 2.0);
                d10 = Math.sin(d17 - d10) * (Math.sqrt(4.0 + 3.0 * d18 * d18) - 1.0) / 3.0;
                path.rCubicTo((float)(d8 + d10 * d6) - (float)d8, (float)(d9 + d10 * d7) - (float)d9, (float)(d19 - d10 * d11) - (float)d8, (float)(d14 - d10 * d15) - (float)d9, (float)d19 - (float)d8, (float)d14 - (float)d9);
                d10 = d17;
                d8 = d19;
                d9 = d14;
                d6 = d11;
                d7 = d15;
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        private static void drawArc(Path path, float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean bl, boolean bl2) {
            double d2 = Math.toRadians(f8);
            double d3 = Math.cos(d2);
            double d4 = Math.sin(d2);
            double d5 = ((double)f2 * d3 + (double)f3 * d4) / (double)f6;
            double d6 = ((double)(- f2) * d4 + (double)f3 * d3) / (double)f7;
            double d7 = ((double)f4 * d3 + (double)f5 * d4) / (double)f6;
            double d8 = ((double)(- f4) * d4 + (double)f5 * d3) / (double)f7;
            double d9 = d5 - d7;
            double d10 = d6 - d8;
            double d11 = (d5 + d7) / 2.0;
            double d12 = (d6 + d8) / 2.0;
            double d13 = d9 * d9 + d10 * d10;
            if (d13 == 0.0) {
                Log.w((String)"PathParser", (String)" Points are coincident");
                return;
            }
            double d14 = 1.0 / d13 - 0.25;
            if (d14 < 0.0) {
                Log.w((String)"PathParser", (String)("Points are too far apart " + d13));
                float f9 = (float)(Math.sqrt(d13) / 1.99999);
                PathDataNode.drawArc(path, f2, f3, f4, f5, f6 * f9, f7 * f9, f8, bl, bl2);
                return;
            }
            d13 = Math.sqrt(d14);
            d9 = d13 * d9;
            d10 = d13 * d10;
            if (bl == bl2) {
                d11 -= d10;
                d12 += d9;
            } else {
                d11 += d10;
                d12 -= d9;
            }
            d5 = Math.atan2(d6 - d12, d5 - d11);
            bl = (d8 = Math.atan2(d8 - d12, d7 - d11) - d5) >= 0.0;
            d7 = d8;
            if (bl2 != bl) {
                d7 = d8 > 0.0 ? d8 - 6.283185307179586 : d8 + 6.283185307179586;
            }
            PathDataNode.arcToBezier(path, d11 * d3 - d12 * d4, (d11 *= (double)f6) * d4 + (d12 *= (double)f7) * d3, f6, f7, f2, f3, d2, d5, d7);
        }

        public static void nodesToPath(PathDataNode[] arrpathDataNode, Path path) {
            float[] arrf = new float[6];
            char c2 = 'm';
            for (int i2 = 0; i2 < arrpathDataNode.length; ++i2) {
                PathDataNode.addCommand(path, arrf, c2, arrpathDataNode[i2].type, arrpathDataNode[i2].params);
                c2 = arrpathDataNode[i2].type;
            }
        }

        public void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f2) {
            for (int i2 = 0; i2 < pathDataNode.params.length; ++i2) {
                this.params[i2] = pathDataNode.params[i2] * (1.0f - f2) + pathDataNode2.params[i2] * f2;
            }
        }
    }

}

