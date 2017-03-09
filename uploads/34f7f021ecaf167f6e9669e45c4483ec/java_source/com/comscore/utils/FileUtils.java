/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.comscore.utils;

import android.content.Context;
import com.comscore.analytics.Core;
import com.comscore.utils.CSLog;
import com.comscore.utils.Storage;
import com.comscore.utils.Utils;
import com.comscore.utils.b;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;

public class FileUtils {
    public static boolean deleteFile(Core object, String string2) {
        Context context = object.getAppContext();
        object = object.getStorage();
        boolean bl = context.deleteFile(string2);
        if (bl) {
            CSLog.d(FileUtils.class, "File" + string2 + " was removed");
            object.remove(string2);
        }
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static ArrayList<String> getFileList(Context arrobject) {
        Object var1_1 = null;
        File file = arrobject.getFilesDir();
        arrobject = var1_1;
        if (file == null) return new ArrayList<Object>(Arrays.asList(arrobject));
        arrobject = var1_1;
        if (!file.isDirectory()) return new ArrayList<Object>(Arrays.asList(arrobject));
        arrobject = file.list(new b());
        if (arrobject != null) {
            Arrays.sort(arrobject);
            return new ArrayList<Object>(Arrays.asList(arrobject));
        }
        arrobject = new String[]{};
        return new ArrayList<Object>(Arrays.asList(arrobject));
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static String[] readCachedEvents(Context var0, String var1_4) {
        var3_6 = new LinkedList<String>();
        var2_7 = null;
        try {
            var1_4 = new BufferedReader(new InputStreamReader(var0.openFileInput((String)var1_4)));
            ** GOTO lbl12
        }
        catch (Throwable var0_3) {
            var1_4 = var2_7;
            ** GOTO lbl46
            catch (Exception var2_11) {
                var1_4 = null;
                ** GOTO lbl-1000
            }
lbl12: // 1 sources:
            do {
                var0 = var1_4;
                try {
                    try {
                        var2_7 = var1_4.readLine();
                        if (var2_7 != null) {
                            var0 = var1_4;
                            var3_6.add(var2_7);
                            continue;
                        }
                        ** GOTO lbl29
                    }
                    catch (Exception var2_8) lbl-1000: // 2 sources:
                    {
                        var0 = var1_4;
                        CSLog.printStackTrace((Exception)var2_9);
                        if (var1_4 != null) {
                            var1_4.close();
                        }
                        ** GOTO lbl38
lbl29: // 1 sources:
                        if (var1_4 != null) {
                            try {
                                var1_4.close();
                            }
                            catch (IOException var0_1) {
                                CSLog.printStackTrace(var0_1);
                            }
                        }
                        ** GOTO lbl38
                        catch (IOException var0_2) {
                            CSLog.printStackTrace(var0_2);
                        }
lbl38: // 4 sources:
                        var0 = new String[var3_6.size()];
                        var3_6.toArray(var0);
                        return var0;
                    }
                }
                catch (Throwable var2_10) {
                    var1_4 = var0;
                    var0 = var2_10;
                    break;
                }
            } while (true);
lbl46: // 2 sources:
            if (var1_4 == null) throw var0;
            try {
                var1_4.close();
            }
            catch (IOException var1_5) {
                CSLog.printStackTrace(var1_5);
                throw var0;
            }
            throw var0;
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static void writeEvent(Core object, String string2, int n2, String string3) {
        Object object2 = object.getAppContext();
        Storage storage = object.getStorage();
        Object object3 = null;
        object = null;
        int n3 = Utils.getInteger(storage.get(string2), 0);
        object = object2 = object2.openFileOutput(string2, n2);
        object3 = object2;
        object2.write(string3.getBytes());
        object = object2;
        object3 = object2;
        storage.set(string2, String.valueOf(n3 + 1));
        if (object2 == null) return;
        try {
            object2.close();
            return;
        }
        catch (IOException var0_1) {
            CSLog.printStackTrace(var0_1);
            return;
        }
        catch (Exception exception) {
            object3 = object;
            try {
                CSLog.e(FileUtils.class, "Exception in writeEvent:" + exception.getLocalizedMessage());
                object3 = object;
                CSLog.printStackTrace(exception);
                if (object == null) return;
            }
            catch (Throwable var0_3) {
                if (object3 == null) throw var0_3;
                try {
                    object3.close();
                }
                catch (IOException var1_6) {
                    CSLog.printStackTrace(var1_6);
                    throw var0_3;
                }
                throw var0_3;
            }
            try {
                object.close();
                return;
            }
            catch (IOException var0_2) {
                CSLog.printStackTrace(var0_2);
                return;
            }
        }
    }
}

