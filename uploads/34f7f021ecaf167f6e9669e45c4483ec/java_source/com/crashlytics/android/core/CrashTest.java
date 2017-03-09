/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.AsyncTask
 */
package com.crashlytics.android.core;

import android.os.AsyncTask;
import io.fabric.sdk.android.Fabric;

public class CrashTest {
    private void privateMethodThatThrowsException(String string2) {
        throw new RuntimeException(string2);
    }

    public void crashAsyncTask(final long l2) {
        new AsyncTask<Void, Void, Void>(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            protected /* varargs */ Void doInBackground(Void ... arrvoid) {
                try {
                    Thread.sleep(l2);
                }
                catch (InterruptedException var1_2) {}
                CrashTest.this.throwRuntimeException("Background thread crash");
                return null;
            }
        }.execute((Object[])new Void[]{null});
    }

    public void indexOutOfBounds() {
        int n2 = new int[2][10];
        Fabric.getLogger().d("CrashlyticsCore", "Out of bounds value: " + n2);
    }

    public int stackOverflow() {
        return this.stackOverflow() + (int)Math.random();
    }

    public void throwFiveChainedExceptions() {
        try {
            this.privateMethodThatThrowsException("1");
            return;
        }
        catch (Exception var1_1) {
            try {
                throw new RuntimeException("2", var1_1);
            }
            catch (Exception var1_2) {
                try {
                    throw new RuntimeException("3", var1_2);
                }
                catch (Exception var1_3) {
                    try {
                        throw new RuntimeException("4", var1_3);
                    }
                    catch (Exception var1_4) {
                        throw new RuntimeException("5", var1_4);
                    }
                }
            }
        }
    }

    public void throwRuntimeException(String string2) {
        throw new RuntimeException(string2);
    }

}

