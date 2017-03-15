/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.pm.ApplicationInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.Log
 *  dalvik.system.DexFile
 */
package android.support.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.multidex.MultiDexExtractor;
import android.util.Log;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;

public final class MultiDex {
    private static final boolean IS_VM_MULTIDEX_CAPABLE;
    private static final int MAX_SUPPORTED_SDK_VERSION = 20;
    private static final int MIN_SDK_VERSION = 4;
    private static final String OLD_SECONDARY_FOLDER_NAME = "secondary-dexes";
    private static final String SECONDARY_FOLDER_NAME;
    static final String TAG = "MultiDex";
    private static final int VM_WITH_MULTIDEX_VERSION_MAJOR = 2;
    private static final int VM_WITH_MULTIDEX_VERSION_MINOR = 1;
    private static final Set<String> installedApk;

    static {
        SECONDARY_FOLDER_NAME = "code_cache" + File.separator + "secondary-dexes";
        installedApk = new HashSet<String>();
        IS_VM_MULTIDEX_CAPABLE = MultiDex.isVMMultidexCapable(System.getProperty("java.vm.version"));
    }

    private MultiDex() {
    }

    private static boolean checkValidZipFiles(List<File> object) {
        object = object.iterator();
        while (object.hasNext()) {
            if (MultiDexExtractor.verifyZipFile((File)object.next())) continue;
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static void clearOldDexDir(Context object) throws Exception {
        if (!(object = new File(object.getFilesDir(), "secondary-dexes")).isDirectory()) return;
        Log.i((String)"MultiDex", (String)("Clearing old secondary dex dir (" + object.getPath() + ")."));
        File[] arrfile = object.listFiles();
        if (arrfile == null) {
            Log.w((String)"MultiDex", (String)("Failed to list secondary dex dir content (" + object.getPath() + ")."));
            return;
        }
        for (File file : arrfile) {
            Log.i((String)"MultiDex", (String)("Trying to delete old file " + file.getPath() + " of size " + file.length()));
            if (!file.delete()) {
                Log.w((String)"MultiDex", (String)("Failed to delete old file " + file.getPath()));
                continue;
            }
            Log.i((String)"MultiDex", (String)("Deleted old file " + file.getPath()));
        }
        if (!object.delete()) {
            Log.w((String)"MultiDex", (String)("Failed to delete secondary dex dir " + object.getPath()));
            return;
        }
        Log.i((String)"MultiDex", (String)("Deleted old secondary dex dir " + object.getPath()));
    }

    private static void expandFieldArray(Object object, String object2, Object[] arrobject) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        object2 = MultiDex.findField(object, (String)object2);
        Object[] arrobject2 = (Object[])object2.get(object);
        Object[] arrobject3 = (Object[])Array.newInstance(arrobject2.getClass().getComponentType(), arrobject2.length + arrobject.length);
        System.arraycopy(arrobject2, 0, arrobject3, 0, arrobject2.length);
        System.arraycopy(arrobject, 0, arrobject3, arrobject2.length, arrobject.length);
        object2.set(object, arrobject3);
    }

    private static Field findField(Object object, String string2) throws NoSuchFieldException {
        for (Class class_ = object.getClass(); class_ != null; class_ = class_.getSuperclass()) {
            try {
                Field field = class_.getDeclaredField(string2);
                if (!field.isAccessible()) {
                    field.setAccessible(true);
                }
                return field;
            }
            catch (NoSuchFieldException var3_3) {
                continue;
            }
        }
        throw new NoSuchFieldException("Field " + string2 + " not found in " + object.getClass());
    }

    private static /* varargs */ Method findMethod(Object object, String string2, Class<?> ... arrclass) throws NoSuchMethodException {
        for (Class class_ = object.getClass(); class_ != null; class_ = class_.getSuperclass()) {
            try {
                Method method = class_.getDeclaredMethod(string2, arrclass);
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                return method;
            }
            catch (NoSuchMethodException var4_4) {
                continue;
            }
        }
        throw new NoSuchMethodException("Method " + string2 + " with parameters " + Arrays.asList(arrclass) + " not found in " + object.getClass());
    }

    private static ApplicationInfo getApplicationInfo(Context object) throws PackageManager.NameNotFoundException {
        PackageManager packageManager;
        try {
            packageManager = object.getPackageManager();
            object = object.getPackageName();
            if (packageManager == null || object == null) {
                return null;
            }
        }
        catch (RuntimeException var0_1) {
            Log.w((String)"MultiDex", (String)"Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", (Throwable)var0_1);
            return null;
        }
        return packageManager.getApplicationInfo((String)object, 128);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public static void install(Context var0) {
        Log.i((String)"MultiDex", (String)"install");
        if (MultiDex.IS_VM_MULTIDEX_CAPABLE) {
            Log.i((String)"MultiDex", (String)"VM has multidex support, MultiDex support library is disabled.");
            return;
        }
        if (Build.VERSION.SDK_INT < 4) {
            throw new RuntimeException("Multi dex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is " + 4 + ".");
        }
        try {
            var2_3 = MultiDex.getApplicationInfo(var0);
            if (var2_3 == null) return;
            var1_4 = MultiDex.installedApk;
            // MONITORENTER : var1_4
            var3_5 = var2_3.sourceDir;
            ** if (!MultiDex.installedApk.contains((Object)var3_5)) goto lbl-1000
        }
        catch (Exception var0_1) {
            Log.e((String)"MultiDex", (String)"Multidex installation failure", (Throwable)var0_1);
            throw new RuntimeException("Multi dex installation failed (" + var0_1.getMessage() + ").");
        }
lbl-1000: // 1 sources:
        {
            // MONITOREXIT : var1_4
            return;
        }
lbl-1000: // 1 sources:
        {
        }
        MultiDex.installedApk.add((String)var3_5);
        if (Build.VERSION.SDK_INT > 20) {
            Log.w((String)"MultiDex", (String)("MultiDex is not guaranteed to work in SDK version " + Build.VERSION.SDK_INT + ": SDK version higher than " + 20 + " should be backed by " + "runtime with built-in multidex capabilty but it's not the " + "case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\""));
        }
        try {
            var3_5 = var0.getClassLoader();
            ** if (var3_5 != null) goto lbl-1000
        }
        catch (RuntimeException var0_2) {
            Log.w((String)"MultiDex", (String)"Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", (Throwable)var0_2);
            // MONITOREXIT : var1_4
            return;
        }
lbl-1000: // 1 sources:
        {
            Log.e((String)"MultiDex", (String)"Context class loader is null. Must be running in test mode. Skip patching.");
            // MONITOREXIT : var1_4
            return;
        }
lbl-1000: // 1 sources:
        {
        }
        try {
            MultiDex.clearOldDexDir(var0);
        }
        catch (Throwable var4_6) {
            Log.w((String)"MultiDex", (String)"Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning.", (Throwable)var4_6);
        }
        if (MultiDex.checkValidZipFiles(var5_8 = MultiDexExtractor.load(var0, var2_3, var4_7 = new File(var2_3.dataDir, MultiDex.SECONDARY_FOLDER_NAME), false))) {
            MultiDex.installSecondaryDexes((ClassLoader)var3_5, var4_7, var5_8);
        } else {
            Log.w((String)"MultiDex", (String)"Files were not valid zip files.  Forcing a reload.");
            var0 = MultiDexExtractor.load(var0, var2_3, var4_7, true);
            if (MultiDex.checkValidZipFiles(var0) == false) throw new RuntimeException("Zip files were not valid.");
            MultiDex.installSecondaryDexes((ClassLoader)var3_5, var4_7, var0);
        }
        // MONITOREXIT : var1_4
        Log.i((String)"MultiDex", (String)"install done");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static void installSecondaryDexes(ClassLoader classLoader, File file, List<File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException {
        if (list.isEmpty()) return;
        if (Build.VERSION.SDK_INT >= 19) {
            V19.install(classLoader, list, file);
            return;
        }
        if (Build.VERSION.SDK_INT >= 14) {
            V14.install(classLoader, list, file);
            return;
        }
        V4.install(classLoader, list);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static boolean isVMMultidexCapable(String string2) {
        boolean bl;
        Object object;
        boolean bl2 = bl = false;
        if (string2 != null) {
            object = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(string2);
            bl2 = bl;
            if (object.matches()) {
                try {
                    int n2 = Integer.parseInt(object.group(1));
                    int n3 = Integer.parseInt(object.group(2));
                    bl2 = n2 > 2 || n2 == 2 && n3 >= 1;
                }
                catch (NumberFormatException var1_4) {
                    bl2 = bl;
                }
            }
        }
        object = new StringBuilder().append("VM with version ").append(string2);
        string2 = bl2 ? " has multidex support" : " does not have multidex support";
        Log.i((String)"MultiDex", (String)object.append(string2).toString());
        return bl2;
    }

    private static final class V14 {
        private V14() {
        }

        private static void install(ClassLoader object, List<File> list, File file) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException {
            object = MultiDex.findField(object, "pathList").get(object);
            MultiDex.expandFieldArray(object, "dexElements", V14.makeDexElements(object, new ArrayList<File>(list), file));
        }

        private static Object[] makeDexElements(Object object, ArrayList<File> arrayList, File file) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
            return (Object[])MultiDex.findMethod(object, "makeDexElements", new Class[]{ArrayList.class, File.class}).invoke(object, arrayList, file);
        }
    }

    private static final class V19 {
        private V19() {
        }

        /*
         * Enabled aggressive block sorting
         */
        private static void install(ClassLoader classLoader, List<File> arriOException, File object) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException {
            IOException[] arriOException2 = MultiDex.findField(classLoader, "pathList").get(classLoader);
            ArrayList<IOException> arrayList = new ArrayList<IOException>();
            MultiDex.expandFieldArray(arriOException2, "dexElements", V19.makeDexElements(arriOException2, new ArrayList<File>((Collection<File>)arriOException), (File)object, arrayList));
            if (arrayList.size() > 0) {
                arriOException = arrayList.iterator();
                while (arriOException.hasNext()) {
                    Log.w((String)"MultiDex", (String)"Exception in makeDexElement", (Throwable)((IOException)arriOException.next()));
                }
                object = MultiDex.findField(classLoader, "dexElementsSuppressedExceptions");
                arriOException2 = (IOException[])object.get(classLoader);
                if (arriOException2 == null) {
                    arriOException = arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    arriOException = new IOException[arrayList.size() + arriOException2.length];
                    arrayList.toArray(arriOException);
                    System.arraycopy(arriOException2, 0, arriOException, arrayList.size(), arriOException2.length);
                }
                object.set(classLoader, arriOException);
            }
        }

        private static Object[] makeDexElements(Object object, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
            return (Object[])MultiDex.findMethod(object, "makeDexElements", new Class[]{ArrayList.class, File.class, ArrayList.class}).invoke(object, arrayList, file, arrayList2);
        }
    }

    private static final class V4 {
        private V4() {
        }

        private static void install(ClassLoader classLoader, List<File> object) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, IOException {
            int n2 = object.size();
            Field field = MultiDex.findField(classLoader, "path");
            StringBuilder stringBuilder = new StringBuilder((String)field.get(classLoader));
            Object[] arrobject = new String[n2];
            Object[] arrobject2 = new File[n2];
            Object[] arrobject3 = new ZipFile[n2];
            Object[] arrobject4 = new DexFile[n2];
            object = object.listIterator();
            while (object.hasNext()) {
                File file = (File)object.next();
                String string2 = file.getAbsolutePath();
                stringBuilder.append(':').append(string2);
                n2 = object.previousIndex();
                arrobject[n2] = string2;
                arrobject2[n2] = file;
                arrobject3[n2] = new ZipFile(file);
                arrobject4[n2] = DexFile.loadDex((String)string2, (String)(string2 + ".dex"), (int)0);
            }
            field.set(classLoader, stringBuilder.toString());
            MultiDex.expandFieldArray(classLoader, "mPaths", arrobject);
            MultiDex.expandFieldArray(classLoader, "mFiles", arrobject2);
            MultiDex.expandFieldArray(classLoader, "mZips", arrobject3);
            MultiDex.expandFieldArray(classLoader, "mDexs", arrobject4);
        }
    }

}

