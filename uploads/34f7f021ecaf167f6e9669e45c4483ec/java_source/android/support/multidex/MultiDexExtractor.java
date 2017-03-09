/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.content.pm.ApplicationInfo
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.Log
 */
package android.support.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.support.multidex.ZipUtil;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

final class MultiDexExtractor {
    private static final int BUFFER_SIZE = 16384;
    private static final String DEX_PREFIX = "classes";
    private static final String DEX_SUFFIX = ".dex";
    private static final String EXTRACTED_NAME_EXT = ".classes";
    private static final String EXTRACTED_SUFFIX = ".zip";
    private static final String KEY_CRC = "crc";
    private static final String KEY_DEX_NUMBER = "dex.number";
    private static final String KEY_TIME_STAMP = "timestamp";
    private static final int MAX_EXTRACT_ATTEMPTS = 3;
    private static final long NO_VALUE = -1;
    private static final String PREFS_FILE = "multidex.version";
    private static final String TAG = "MultiDex";
    private static Method sApplyMethod;

    static {
        try {
            sApplyMethod = SharedPreferences.Editor.class.getMethod("apply", new Class[0]);
        }
        catch (NoSuchMethodException var0) {
            sApplyMethod = null;
        }
    }

    MultiDexExtractor() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void apply(SharedPreferences.Editor editor) {
        if (sApplyMethod != null) {
            try {
                sApplyMethod.invoke((Object)editor, new Object[0]);
                return;
            }
            catch (IllegalAccessException var1_1) {
                // empty catch block
            }
            catch (InvocationTargetException var1_2) {}
        }
        editor.commit();
    }

    private static void closeQuietly(Closeable closeable) {
        try {
            closeable.close();
            return;
        }
        catch (IOException var0_1) {
            Log.w((String)"MultiDex", (String)"Failed to close resource", (Throwable)var0_1);
            return;
        }
    }

    /*
     * Exception decompiling
     */
    private static void extract(ZipFile var0, ZipEntry var1_4, File var2_6, String var3_7) throws IOException, FileNotFoundException {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [1[TRYBLOCK]], but top level block is 2[TRYBLOCK]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
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

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static SharedPreferences getMultiDexPreferences(Context context) {
        int n2;
        if (Build.VERSION.SDK_INT < 11) {
            n2 = 0;
            do {
                return context.getSharedPreferences("multidex.version", n2);
                break;
            } while (true);
        }
        n2 = 4;
        return context.getSharedPreferences("multidex.version", n2);
    }

    private static long getTimeStamp(File file) {
        long l2;
        long l3 = l2 = file.lastModified();
        if (l2 == -1) {
            l3 = l2 - 1;
        }
        return l3;
    }

    private static long getZipCrc(File file) throws IOException {
        long l2;
        long l3 = l2 = ZipUtil.getZipCrc(file);
        if (l2 == -1) {
            l3 = l2 - 1;
        }
        return l3;
    }

    private static boolean isModified(Context context, File file, long l2) {
        if ((context = MultiDexExtractor.getMultiDexPreferences(context)).getLong("timestamp", -1) != MultiDexExtractor.getTimeStamp(file) || context.getLong("crc", -1) != l2) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static List<File> load(Context list, ApplicationInfo list2, File file, boolean bl) throws IOException {
        Log.i((String)"MultiDex", (String)("MultiDexExtractor.load(" + list2.sourceDir + ", " + bl + ")"));
        File file2 = new File(list2.sourceDir);
        long l2 = MultiDexExtractor.getZipCrc(file2);
        if (!bl && !MultiDexExtractor.isModified(list, file2, l2)) {
            try {
                list = list2 = MultiDexExtractor.loadExistingExtractions(list, file2, file);
            }
            catch (IOException var1_2) {
                Log.w((String)"MultiDex", (String)"Failed to reload existing extracted secondary dex files, falling back to fresh extraction", (Throwable)var1_2);
                List<File> list3 = MultiDexExtractor.performExtractions(file2, file);
                MultiDexExtractor.putStoredApkInfo(list, MultiDexExtractor.getTimeStamp(file2), l2, list3.size() + 1);
                list = list3;
            }
        } else {
            Log.i((String)"MultiDex", (String)"Detected that extraction must be performed.");
            list2 = MultiDexExtractor.performExtractions(file2, file);
            MultiDexExtractor.putStoredApkInfo(list, MultiDexExtractor.getTimeStamp(file2), l2, list2.size() + 1);
            list = list2;
        }
        Log.i((String)"MultiDex", (String)("load found " + list.size() + " secondary dex files"));
        return list;
    }

    private static List<File> loadExistingExtractions(Context object, File object2, File file) throws IOException {
        Log.i((String)"MultiDex", (String)"loading existing secondary dex files");
        object2 = object2.getName() + ".classes";
        int n2 = MultiDexExtractor.getMultiDexPreferences((Context)object).getInt("dex.number", 1);
        object = new ArrayList(n2);
        for (int i2 = 2; i2 <= n2; ++i2) {
            File file2 = new File(file, (String)object2 + i2 + ".zip");
            if (file2.isFile()) {
                object.add(file2);
                if (MultiDexExtractor.verifyZipFile(file2)) continue;
                Log.i((String)"MultiDex", (String)("Invalid zip file: " + file2));
                throw new IOException("Invalid ZIP file.");
            }
            throw new IOException("Missing extracted secondary dex file '" + file2.getPath() + "'");
        }
        return object;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static void mkdirChecked(File file) throws IOException {
        file.mkdir();
        if (file.isDirectory()) return;
        File file2 = file.getParentFile();
        if (file2 == null) {
            Log.e((String)"MultiDex", (String)("Failed to create dir " + file.getPath() + ". Parent file is null."));
            do {
                throw new IOException("Failed to create cache directory " + file.getPath());
                break;
            } while (true);
        }
        Log.e((String)"MultiDex", (String)("Failed to create dir " + file.getPath() + ". parent file is a dir " + file2.isDirectory() + ", a file " + file2.isFile() + ", exists " + file2.exists() + ", readable " + file2.canRead() + ", writable " + file2.canWrite()));
        throw new IOException("Failed to create cache directory " + file.getPath());
    }

    /*
     * Exception decompiling
     */
    private static List<File> performExtractions(File var0, File var1_3) throws IOException {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.IllegalStateException: Backjump on non jumping statement [] lbl42 : TryStatement: try { 3[TRYBLOCK]

        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner$1.call(Cleaner.java:44)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner$1.call(Cleaner.java:22)
        // org.benf.cfr.reader.util.graph.GraphVisitorDFS.process(GraphVisitorDFS.java:68)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner.removeUnreachableCode(Cleaner.java:54)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.RemoveDeterministicJumps.apply(RemoveDeterministicJumps.java:35)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:519)
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

    /*
     * Enabled aggressive block sorting
     */
    private static void prepareDexDir(File file, String arrfile) throws IOException {
        MultiDexExtractor.mkdirChecked(file.getParentFile());
        MultiDexExtractor.mkdirChecked(file);
        arrfile = file.listFiles(new FileFilter((String)arrfile){
            final /* synthetic */ String val$extractedFilePrefix;

            @Override
            public boolean accept(File file) {
                if (!file.getName().startsWith(this.val$extractedFilePrefix)) {
                    return true;
                }
                return false;
            }
        });
        if (arrfile == null) {
            Log.w((String)"MultiDex", (String)("Failed to list secondary dex dir content (" + file.getPath() + ")."));
            return;
        }
        int n2 = arrfile.length;
        int n3 = 0;
        while (n3 < n2) {
            file = arrfile[n3];
            Log.i((String)"MultiDex", (String)("Trying to delete old file " + file.getPath() + " of size " + file.length()));
            if (!file.delete()) {
                Log.w((String)"MultiDex", (String)("Failed to delete old file " + file.getPath()));
            } else {
                Log.i((String)"MultiDex", (String)("Deleted old file " + file.getPath()));
            }
            ++n3;
        }
    }

    private static void putStoredApkInfo(Context context, long l2, long l3, int n2) {
        context = MultiDexExtractor.getMultiDexPreferences(context).edit();
        context.putLong("timestamp", l2);
        context.putLong("crc", l3);
        context.putInt("dex.number", n2);
        MultiDexExtractor.apply((SharedPreferences.Editor)context);
    }

    /*
     * Loose catch block
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean verifyZipFile(File file) {
        ZipFile zipFile = new ZipFile(file);
        {
            catch (IOException iOException) {
                Log.w((String)"MultiDex", (String)("Got an IOException trying to open zip file: " + file.getAbsolutePath()), (Throwable)iOException);
                return false;
            }
        }
        try {
            zipFile.close();
            return true;
        }
        catch (IOException var1_2) {
            try {
                Log.w((String)"MultiDex", (String)("Failed to close zip file: " + file.getAbsolutePath()));
                do {
                    return false;
                    break;
                } while (true);
            }
            catch (ZipException var1_3) {
                Log.w((String)"MultiDex", (String)("File " + file.getAbsolutePath() + " is not a valid zip file."), (Throwable)var1_3);
                return false;
            }
        }
    }

}

