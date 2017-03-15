/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.graphics.Point
 *  android.net.Uri
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.text.TextUtils
 *  android.util.Log
 *  android.view.Display
 *  android.view.Display$Mode
 *  android.view.WindowManager
 *  com.google.android.exoplayer.upstream.DataSpec
 *  com.google.android.exoplayer.util.Util$1
 *  com.google.android.exoplayer.util.Util$2
 */
package com.google.android.exoplayer.util;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class Util {
    private static final int[] CRC32_BYTES_MSBF;
    public static final String DEVICE;
    private static final Pattern ESCAPED_CHARACTER_PATTERN;
    public static final String MANUFACTURER;
    private static final long MAX_BYTES_TO_DRAIN = 2048;
    public static final String MODEL;
    public static final int SDK_INT;
    private static final String TAG = "Util";
    public static final int TYPE_DASH = 0;
    public static final int TYPE_HLS = 2;
    public static final int TYPE_OTHER = 3;
    public static final int TYPE_SS = 1;
    private static final Pattern XS_DATE_TIME_PATTERN;
    private static final Pattern XS_DURATION_PATTERN;

    /*
     * Enabled aggressive block sorting
     */
    static {
        int n2 = Build.VERSION.SDK_INT == 23 && Build.VERSION.CODENAME.charAt(0) == 'N' ? 24 : Build.VERSION.SDK_INT;
        SDK_INT = n2;
        DEVICE = Build.DEVICE;
        MANUFACTURER = Build.MANUFACTURER;
        MODEL = Build.MODEL;
        XS_DATE_TIME_PATTERN = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)(\\.(\\d+))?([Zz]|((\\+|\\-)(\\d\\d):(\\d\\d)))?");
        XS_DURATION_PATTERN = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        ESCAPED_CHARACTER_PATTERN = Pattern.compile("%([A-Fa-f0-9]{2})");
        CRC32_BYTES_MSBF = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
    }

    private Util() {
    }

    public static boolean areEqual(Object object, Object object2) {
        if (object == null) {
            if (object2 == null) {
                return true;
            }
            return false;
        }
        return object.equals(object2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static <T> int binarySearchCeil(List<? extends Comparable<? super T>> list, T t2, boolean bl, boolean bl2) {
        int n2;
        int n3 = Collections.binarySearch(list, t2);
        if (n3 < 0) {
            n2 = ~ n3;
        } else {
            n2 = n3;
            if (!bl) {
                n2 = n3 + 1;
            }
        }
        n3 = n2;
        if (!bl2) return n3;
        return Math.min(list.size() - 1, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int binarySearchCeil(long[] arrl, long l2, boolean bl, boolean bl2) {
        int n2;
        int n3 = Arrays.binarySearch(arrl, l2);
        if (n3 < 0) {
            n2 = ~ n3;
        } else {
            n2 = n3;
            if (!bl) {
                n2 = n3 + 1;
            }
        }
        n3 = n2;
        if (!bl2) return n3;
        return Math.min(arrl.length - 1, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static <T> int binarySearchFloor(List<? extends Comparable<? super T>> list, T t2, boolean bl, boolean bl2) {
        int n2;
        int n3 = Collections.binarySearch(list, t2);
        if (n3 < 0) {
            n2 = - n3 + 2;
        } else {
            n2 = n3;
            if (!bl) {
                n2 = n3 - 1;
            }
        }
        n3 = n2;
        if (!bl2) return n3;
        return Math.max(0, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int binarySearchFloor(long[] arrl, long l2, boolean bl, boolean bl2) {
        int n2;
        int n3 = Arrays.binarySearch(arrl, l2);
        if (n3 < 0) {
            n2 = - n3 + 2;
        } else {
            n2 = n3;
            if (!bl) {
                n2 = n3 - 1;
            }
        }
        n3 = n2;
        if (!bl2) return n3;
        return Math.max(0, n2);
    }

    public static int ceilDivide(int n2, int n3) {
        return (n2 + n3 - 1) / n3;
    }

    public static long ceilDivide(long l2, long l3) {
        return (l2 + l3 - 1) / l3;
    }

    public static void closeQuietly(DataSource dataSource) {
        try {
            dataSource.close();
            return;
        }
        catch (IOException var0_1) {
            return;
        }
    }

    public static void closeQuietly(OutputStream outputStream) {
        try {
            outputStream.close();
            return;
        }
        catch (IOException var0_1) {
            return;
        }
    }

    public static boolean contains(Object[] arrobject, Object object) {
        for (int i2 = 0; i2 < arrobject.length; ++i2) {
            if (!Util.areEqual(arrobject[i2], object)) continue;
            return true;
        }
        return false;
    }

    public static int crc(byte[] arrby, int n2, int n3, int n4) {
        while (n2 < n3) {
            n4 = n4 << 8 ^ CRC32_BYTES_MSBF[(n4 >>> 24 ^ arrby[n2] & 255) & 255];
            ++n2;
        }
        return n4;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String escapeFileName(String string2) {
        int n2 = string2.length();
        int n3 = 0;
        int n4 = 0;
        while (n4 < n2) {
            int n5 = n3;
            if (Util.shouldEscapeCharacter(string2.charAt(n4))) {
                n5 = n3 + 1;
            }
            ++n4;
            n3 = n5;
        }
        return string2;
    }

    /*
     * Exception decompiling
     */
    public static byte[] executePost(String var0, byte[] var1_2, Map<String, String> var2_4) throws IOException {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.IndexOutOfBoundsException: Index: 1, Size: 1
        // java.util.ArrayList.rangeCheck(ArrayList.java:635)
        // java.util.ArrayList.get(ArrayList.java:411)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.replaceReturningIf(Op03SimpleStatement.java:1211)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.replaceReturningIfs(Op03SimpleStatement.java:1252)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:524)
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

    public static int[] firstIntegersArray(int n2) {
        int[] arrn = new int[n2];
        int n3 = 0;
        while (n3 < n2) {
            arrn[n3] = n3++;
        }
        return arrn;
    }

    public static int getBottomInt(long l2) {
        return (int)l2;
    }

    public static byte[] getBytesFromHexString(String string2) {
        byte[] arrby = new byte[string2.length() / 2];
        for (int i2 = 0; i2 < arrby.length; ++i2) {
            int n2 = i2 * 2;
            arrby[i2] = (byte)((Character.digit(string2.charAt(n2), 16) << 4) + Character.digit(string2.charAt(n2 + 1), 16));
        }
        return arrby;
    }

    public static <T> String getCommaDelimitedSimpleClassNames(T[] arrT) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i2 = 0; i2 < arrT.length; ++i2) {
            stringBuilder.append(arrT[i2].getClass().getSimpleName());
            if (i2 >= arrT.length - 1) continue;
            stringBuilder.append(", ");
        }
        return stringBuilder.toString();
    }

    @TargetApi(value=16)
    private static void getDisplaySizeV16(Display display, Point point) {
        display.getSize(point);
    }

    @TargetApi(value=17)
    private static void getDisplaySizeV17(Display display, Point point) {
        display.getRealSize(point);
    }

    @TargetApi(value=23)
    private static void getDisplaySizeV23(Display display, Point point) {
        display = display.getMode();
        point.x = display.getPhysicalWidth();
        point.y = display.getPhysicalHeight();
    }

    private static void getDisplaySizeV9(Display display, Point point) {
        point.x = display.getWidth();
        point.y = display.getHeight();
    }

    public static String getHexStringFromBytes(byte[] arrby, int n2, int n3) {
        StringBuilder stringBuilder = new StringBuilder(n3 - n2);
        while (n2 < n3) {
            stringBuilder.append(String.format(Locale.US, "%02X", Byte.valueOf(arrby[n2])));
            ++n2;
        }
        return stringBuilder.toString();
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int getIntegerCodeForString(String string2) {
        int n2 = string2.length();
        boolean bl = n2 <= 4;
        Assertions.checkArgument(bl);
        int n3 = 0;
        int n4 = 0;
        while (n4 < n2) {
            n3 = n3 << 8 | string2.charAt(n4);
            ++n4;
        }
        return n3;
    }

    public static long getLong(int n2, int n3) {
        return (long)n2 << 32 | (long)n3 & 0xFFFFFFFFL;
    }

    public static int getPcmEncoding(int n2) {
        switch (n2) {
            default: {
                return 0;
            }
            case 8: {
                return 3;
            }
            case 16: {
                return 2;
            }
            case 24: {
                return Integer.MIN_VALUE;
            }
            case 32: 
        }
        return 1073741824;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Point getPhysicalDisplaySize(Context context) {
        Object object;
        if (SDK_INT < 25) {
            if ("Sony".equals(MANUFACTURER) && MODEL != null && MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
            if ("NVIDIA".equals(MANUFACTURER) && MODEL != null && MODEL.contains("SHIELD")) {
                Object object2;
                object = null;
                try {
                    object2 = Class.forName("android.os.SystemProperties");
                    object = object2 = (String)object2.getMethod("get", String.class).invoke(object2, "sys.display-size");
                }
                catch (Exception var2_4) {
                    Log.e((String)"Util", (String)"Failed to read sys.display-size", (Throwable)var2_4);
                }
                if (!TextUtils.isEmpty((CharSequence)object)) {
                    try {
                        object2 = object.trim().split("x");
                        if (object2.length == 2) {
                            int n2 = Integer.parseInt((String)object2[0]);
                            int n3 = Integer.parseInt((String)object2[1]);
                            if (n2 > 0 && n3 > 0) {
                                return new Point(n2, n3);
                            }
                        }
                    }
                    catch (NumberFormatException var2_3) {
                        // empty catch block
                    }
                    Log.e((String)"Util", (String)("Invalid sys.display-size: " + (String)object));
                }
            }
        }
        context = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        object = new Point();
        if (SDK_INT >= 23) {
            Util.getDisplaySizeV23((Display)context, (Point)object);
            return object;
        }
        if (SDK_INT >= 17) {
            Util.getDisplaySizeV17((Display)context, (Point)object);
            return object;
        }
        if (SDK_INT >= 16) {
            Util.getDisplaySizeV16((Display)context, (Point)object);
            return object;
        }
        Util.getDisplaySizeV9((Display)context, (Point)object);
        return object;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static DataSpec getRemainderDataSpec(DataSpec dataSpec, int n2) {
        long l2 = -1;
        if (n2 == 0) {
            return dataSpec;
        }
        if (dataSpec.length == -1) {
            do {
                return new DataSpec(dataSpec.uri, dataSpec.position + (long)n2, l2, dataSpec.key, dataSpec.flags);
                break;
            } while (true);
        }
        l2 = dataSpec.length - (long)n2;
        return new DataSpec(dataSpec.uri, dataSpec.position + (long)n2, l2, dataSpec.key, dataSpec.flags);
    }

    public static int getTopInt(long l2) {
        return (int)(l2 >>> 32);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String getUserAgent(Context object, String string2) {
        try {
            String string3 = object.getPackageName();
            object = object.getPackageManager().getPackageInfo((String)string3, (int)0).versionName;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            object = "?";
            return string2 + "/" + (String)object + " (Linux;Android " + Build.VERSION.RELEASE + ") ExoPlayerLib/" + "1.5.11";
        }
        do {
            return string2 + "/" + (String)object + " (Linux;Android " + Build.VERSION.RELEASE + ") ExoPlayerLib/" + "1.5.11";
            break;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static int inferContentType(String string2) {
        if (string2 == null) {
            return 3;
        }
        if (string2.endsWith(".mpd")) {
            return 0;
        }
        if (string2.endsWith(".ism")) {
            return 1;
        }
        if (!string2.endsWith(".m3u8")) return 3;
        return 2;
    }

    @SuppressLint(value={"InlinedApi"})
    public static boolean isAndroidTv(Context context) {
        return context.getPackageManager().hasSystemFeature("android.software.leanback");
    }

    public static boolean isLocalFileUri(Uri object) {
        if (TextUtils.isEmpty((CharSequence)(object = object.getScheme())) || object.equals("file")) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static void maybeTerminateInputStream(HttpURLConnection object, long l2) {
        if (SDK_INT != 19 && SDK_INT != 20) {
            return;
        }
        try {
            Object object2;
            object = object.getInputStream();
            if (l2 == -1) {
                if (object.read() == -1) return;
            } else if (l2 <= 2048) {
                return;
            }
            if (!(object2 = object.getClass().getName()).equals("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream")) {
                if (!object2.equals("com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream")) return;
            }
            object2 = object.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
            object2.setAccessible(true);
            object2.invoke(object, new Object[0]);
            return;
        }
        catch (IOException var0_1) {
            return;
        }
        catch (Exception var0_2) {
            return;
        }
    }

    public static ExecutorService newSingleThreadExecutor(String string2) {
        return Executors.newSingleThreadExecutor((ThreadFactory)new /* Unavailable Anonymous Inner Class!! */);
    }

    public static ScheduledExecutorService newSingleThreadScheduledExecutor(String string2) {
        return Executors.newSingleThreadScheduledExecutor((ThreadFactory)new /* Unavailable Anonymous Inner Class!! */);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static long parseXsDateTime(String object) throws ParseException {
        int n2;
        long l2;
        Matcher matcher = XS_DATE_TIME_PATTERN.matcher((CharSequence)object);
        if (!matcher.matches()) {
            throw new ParseException("Invalid date/time format: " + (String)object, 0);
        }
        if (matcher.group(9) == null) {
            n2 = 0;
        } else if (matcher.group(9).equalsIgnoreCase("Z")) {
            n2 = 0;
        } else {
            int n3;
            n2 = n3 = Integer.parseInt(matcher.group(12)) * 60 + Integer.parseInt(matcher.group(13));
            if (matcher.group(11).equals("-")) {
                n2 = n3 * -1;
            }
        }
        object = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        object.clear();
        object.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty((CharSequence)matcher.group(8))) {
            object.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
        }
        long l3 = l2 = object.getTimeInMillis();
        if (n2 == 0) return l3;
        return l2 - (long)(60000 * n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static long parseXsDuration(String string2) {
        long l2;
        Matcher matcher = XS_DURATION_PATTERN.matcher(string2);
        if (!matcher.matches()) {
            return (long)(Double.parseDouble(string2) * 3600.0 * 1000.0);
        }
        boolean bl = !TextUtils.isEmpty((CharSequence)matcher.group(1));
        string2 = matcher.group(3);
        double d2 = string2 != null ? Double.parseDouble(string2) * 3.1556908E7 : 0.0;
        string2 = matcher.group(5);
        double d3 = string2 != null ? Double.parseDouble(string2) * 2629739.0 : 0.0;
        string2 = matcher.group(7);
        double d4 = string2 != null ? Double.parseDouble(string2) * 86400.0 : 0.0;
        string2 = matcher.group(10);
        double d5 = string2 != null ? Double.parseDouble(string2) * 3600.0 : 0.0;
        string2 = matcher.group(12);
        double d6 = string2 != null ? Double.parseDouble(string2) * 60.0 : 0.0;
        string2 = matcher.group(14);
        double d7 = string2 != null ? Double.parseDouble(string2) : 0.0;
        long l3 = l2 = (long)(1000.0 * (d2 + d3 + d4 + d5 + d6 + d7));
        if (!bl) return l3;
        return - l2;
    }

    public static long scaleLargeTimestamp(long l2, long l3, long l4) {
        if (l4 >= l3 && l4 % l3 == 0) {
            return l2 / (l4 / l3);
        }
        if (l4 < l3 && l3 % l4 == 0) {
            return l2 * (l3 / l4);
        }
        double d2 = (double)l3 / (double)l4;
        return (long)((double)l2 * d2);
    }

    public static long[] scaleLargeTimestamps(List<Long> list, long l2, long l3) {
        long[] arrl = new long[list.size()];
        if (l3 >= l2 && l3 % l2 == 0) {
            l2 = l3 / l2;
            for (int i2 = 0; i2 < arrl.length; ++i2) {
                arrl[i2] = list.get(i2) / l2;
            }
        } else if (l3 < l2 && l2 % l3 == 0) {
            l2 /= l3;
            for (int i3 = 0; i3 < arrl.length; ++i3) {
                arrl[i3] = list.get(i3) * l2;
            }
        } else {
            double d2 = (double)l2 / (double)l3;
            for (int i4 = 0; i4 < arrl.length; ++i4) {
                arrl[i4] = (long)((double)list.get(i4).longValue() * d2);
            }
        }
        return arrl;
    }

    public static void scaleLargeTimestampsInPlace(long[] arrl, long l2, long l3) {
        if (l3 >= l2 && l3 % l2 == 0) {
            l2 = l3 / l2;
            for (int i2 = 0; i2 < arrl.length; ++i2) {
                arrl[i2] = arrl[i2] / l2;
            }
        } else if (l3 < l2 && l2 % l3 == 0) {
            l2 /= l3;
            for (int i3 = 0; i3 < arrl.length; ++i3) {
                arrl[i3] = arrl[i3] * l2;
            }
        } else {
            double d2 = (double)l2 / (double)l3;
            for (int i4 = 0; i4 < arrl.length; ++i4) {
                arrl[i4] = (long)((double)arrl[i4] * d2);
            }
        }
    }

    private static boolean shouldEscapeCharacter(char c2) {
        switch (c2) {
            default: {
                return false;
            }
            case '\"': 
            case '%': 
            case '*': 
            case '/': 
            case ':': 
            case '<': 
            case '>': 
            case '?': 
            case '\\': 
            case '|': 
        }
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int[] toArray(List<Integer> list) {
        if (list == null) {
            return null;
        }
        int n2 = list.size();
        int[] arrn = new int[n2];
        int n3 = 0;
        do {
            int[] arrn2 = arrn;
            if (n3 >= n2) return arrn2;
            arrn[n3] = list.get(n3);
            ++n3;
        } while (true);
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        int n2;
        byte[] arrby = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while ((n2 = inputStream.read(arrby)) != -1) {
            byteArrayOutputStream.write(arrby, 0, n2);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String toLowerInvariant(String string2) {
        if (string2 == null) {
            return null;
        }
        return string2.toLowerCase(Locale.US);
    }

    public static String unescapeFileName(String string2) {
        int n2;
        int n3;
        int n4 = string2.length();
        int n5 = 0;
        for (n2 = 0; n2 < n4; ++n2) {
            n3 = n5;
            if (string2.charAt(n2) == '%') {
                n3 = n5 + 1;
            }
            n5 = n3;
        }
        if (n5 == 0) {
            return string2;
        }
        n3 = n4 - n5 * 2;
        StringBuilder stringBuilder = new StringBuilder(n3);
        Matcher matcher = ESCAPED_CHARACTER_PATTERN.matcher(string2);
        n2 = 0;
        while (n5 > 0 && matcher.find()) {
            char c2 = (char)Integer.parseInt(matcher.group(1), 16);
            stringBuilder.append(string2, n2, matcher.start()).append(c2);
            n2 = matcher.end();
            --n5;
        }
        if (n2 < n4) {
            stringBuilder.append(string2, n2, n4);
        }
        if (stringBuilder.length() != n3) {
            return null;
        }
        return stringBuilder.toString();
    }
}

