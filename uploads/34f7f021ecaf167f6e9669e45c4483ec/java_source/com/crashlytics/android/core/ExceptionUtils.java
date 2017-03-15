/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.Closeable;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;

final class ExceptionUtils {
    private ExceptionUtils() {
    }

    private static String getMessage(Throwable object) {
        if ((object = object.getLocalizedMessage()) == null) {
            return null;
        }
        return object.replaceAll("(\r\n|\n|\f)", " ");
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static void writeStackTrace(Context var0, Throwable var1_2, String var2_7) {
        var3_8 = null;
        var4_9 = null;
        var0 = new PrintWriter(var0.openFileOutput(var2_7, 0));
        ExceptionUtils.writeStackTrace(var1_2, (Writer)var0);
        CommonUtils.closeOrLog((Closeable)var0, "Failed to close stack trace writer.");
        return;
        catch (Exception var1_3) {
            var0 = var4_9;
            ** GOTO lbl17
            catch (Throwable var1_5) {
                var3_8 = var0;
                var0 = var1_5;
                ** GOTO lbl-1000
            }
            catch (Exception var1_6) {}
lbl17: // 2 sources:
            var3_8 = var0;
            try {
                Fabric.getLogger().e("CrashlyticsCore", "Failed to create PrintWriter", (Throwable)var1_4);
            }
            catch (Throwable var0_1) lbl-1000: // 2 sources:
            {
                CommonUtils.closeOrLog((Closeable)var3_8, "Failed to close stack trace writer.");
                throw var0;
            }
            CommonUtils.closeOrLog((Closeable)var0, "Failed to close stack trace writer.");
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static void writeStackTrace(Throwable var0, OutputStream var1_4) {
        var2_6 = null;
        var3_8 = null;
        var1_4 = new PrintWriter((OutputStream)var1_4);
        ExceptionUtils.writeStackTrace((Throwable)var0, (Writer)var1_4);
        CommonUtils.closeOrLog((Closeable)var1_4, "Failed to close stack trace writer.");
        return;
        catch (Exception var1_5) {
            var0 = var3_8;
            ** GOTO lbl18
            catch (Throwable var0_3) {
                var2_6 = var1_4;
                ** GOTO lbl-1000
            }
            catch (Exception var2_7) {
                var0 = var1_4;
                var1_4 = var2_7;
            }
lbl18: // 2 sources:
            var2_6 = var0;
            try {
                Fabric.getLogger().e("CrashlyticsCore", "Failed to create PrintWriter", (Throwable)var1_4);
            }
            catch (Throwable var0_1) lbl-1000: // 2 sources:
            {
                CommonUtils.closeOrLog((Closeable)var2_6, "Failed to close stack trace writer.");
                throw var0_2;
            }
            CommonUtils.closeOrLog((Closeable)var0, "Failed to close stack trace writer.");
            return;
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static void writeStackTrace(Throwable throwable, Writer writer) {
        int n2 = 1;
        while (throwable != null) {
            void var3_6;
            StackTraceElement[] arrstackTraceElement = ExceptionUtils.getMessage(throwable);
            if (arrstackTraceElement == null) {
                arrstackTraceElement = "";
            }
            if (n2 != 0) {
                String string2 = "";
            } else {
                String string3 = "Caused by: ";
            }
            writer.write((String)var3_6 + throwable.getClass().getName() + ": " + (String)arrstackTraceElement + "\n");
            int n3 = 0;
            for (StackTraceElement stackTraceElement : throwable.getStackTrace()) {
                writer.write("\tat " + stackTraceElement.toString() + "\n");
                continue;
            }
            throwable = throwable.getCause();
            n2 = n3;
            continue;
        }
        return;
        catch (Exception exception) {
            Fabric.getLogger().e("CrashlyticsCore", "Could not write stack trace", (Throwable)exception);
        }
    }

    public static void writeStackTraceIfNotNull(Throwable throwable, OutputStream outputStream) {
        if (outputStream != null) {
            ExceptionUtils.writeStackTrace(throwable, outputStream);
        }
    }
}

