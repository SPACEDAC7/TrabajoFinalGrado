/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Process
 */
package jackpal.androidterm.compat;

import android.os.Build;
import android.os.Process;
import jackpal.androidterm.compat.AndroidCompat;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
import java.security.Security;

public final class PRNGFixes {
    private static final byte[] BUILD_FINGERPRINT_AND_DEVICE_SERIAL = PRNGFixes.getBuildFingerprintAndDeviceSerial();
    private static final int VERSION_CODE_JELLY_BEAN = 16;
    private static final int VERSION_CODE_JELLY_BEAN_MR2 = 18;

    private PRNGFixes() {
    }

    public static void apply() {
        PRNGFixes.applyOpenSSLFix();
        PRNGFixes.installLinuxPRNGSecureRandom();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void applyOpenSSLFix() throws SecurityException {
        int n;
        block4 : {
            if (AndroidCompat.SDK >= 16 && AndroidCompat.SDK <= 18) {
                Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_seed", byte[].class).invoke(null, PRNGFixes.generateSeed());
                n = (Integer)Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_load_file", String.class, Long.TYPE).invoke(null, "/dev/urandom", 1024);
                if (n != 1024) break block4;
            }
            return;
        }
        try {
            throw new IOException("Unexpected number of bytes read from Linux PRNG: " + n);
        }
        catch (Exception var0_1) {
            throw new SecurityException("Failed to seed OpenSSL PRNG", var0_1);
        }
    }

    private static byte[] generateSeed() {
        try {
            byte[] arrby = new byte[]();
            DataOutputStream dataOutputStream = new DataOutputStream((OutputStream)arrby);
            dataOutputStream.writeLong(System.currentTimeMillis());
            dataOutputStream.writeLong(System.nanoTime());
            dataOutputStream.writeInt(Process.myPid());
            dataOutputStream.writeInt(Process.myUid());
            dataOutputStream.write(BUILD_FINGERPRINT_AND_DEVICE_SERIAL);
            dataOutputStream.close();
            arrby = arrby.toByteArray();
            return arrby;
        }
        catch (IOException var0_1) {
            throw new SecurityException("Failed to generate seed", var0_1);
        }
    }

    private static byte[] getBuildFingerprintAndDeviceSerial() {
        byte[] arrby = new byte[]();
        String string2 = Build.FINGERPRINT;
        if (string2 != null) {
            arrby.append(string2);
        }
        if ((string2 = PRNGFixes.getDeviceSerialNumber()) != null) {
            arrby.append(string2);
        }
        try {
            arrby = arrby.toString().getBytes("UTF-8");
            return arrby;
        }
        catch (UnsupportedEncodingException var0_1) {
            throw new RuntimeException("UTF-8 encoding not supported");
        }
    }

    private static String getDeviceSerialNumber() {
        try {
            String string2 = (String)Build.class.getField("SERIAL").get(null);
            return string2;
        }
        catch (Exception var0_1) {
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static void installLinuxPRNGSecureRandom() throws SecurityException {
        if (AndroidCompat.SDK > 18) {
            return;
        }
        Object object = Security.getProviders("SecureRandom.SHA1PRNG");
        if (object == null || object.length < 1 || !LinuxPRNGSecureRandomProvider.class.equals(object[0].getClass())) {
            Security.insertProviderAt(new LinuxPRNGSecureRandomProvider(), 1);
        }
        if (!LinuxPRNGSecureRandomProvider.class.equals((object = new SecureRandom()).getProvider().getClass())) {
            throw new SecurityException("new SecureRandom() backed by wrong Provider: " + object.getProvider().getClass());
        }
        try {
            object = SecureRandom.getInstance("SHA1PRNG");
            if (LinuxPRNGSecureRandomProvider.class.equals(object.getProvider().getClass())) return;
            throw new SecurityException("SecureRandom.getInstance(\"SHA1PRNG\") backed by wrong Provider: " + object.getProvider().getClass());
        }
        catch (NoSuchAlgorithmException var0_1) {
            throw new SecurityException("SHA1PRNG not available", var0_1);
        }
    }

    public static class LinuxPRNGSecureRandom
    extends SecureRandomSpi {
        private static final File URANDOM_FILE = new File("/dev/urandom");
        private static final Object sLock = new Object();
        private static DataInputStream sUrandomIn;
        private static OutputStream sUrandomOut;
        private boolean mSeeded;

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        private DataInputStream getUrandomInputStream() {
            Object object = sLock;
            synchronized (object) {
                DataInputStream dataInputStream = sUrandomIn;
                if (dataInputStream != null) return sUrandomIn;
                try {
                    sUrandomIn = new DataInputStream(new FileInputStream(URANDOM_FILE));
                }
                catch (IOException var2_3) {
                    throw new SecurityException("Failed to open " + URANDOM_FILE + " for reading", var2_3);
                }
                return sUrandomIn;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        private OutputStream getUrandomOutputStream() throws IOException {
            Object object = sLock;
            synchronized (object) {
                if (sUrandomOut != null) return sUrandomOut;
                sUrandomOut = new FileOutputStream(URANDOM_FILE);
                return sUrandomOut;
            }
        }

        @Override
        protected byte[] engineGenerateSeed(int n) {
            byte[] arrby = new byte[n];
            this.engineNextBytes(arrby);
            return arrby;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Converted monitor instructions to comments
         * Lifted jumps to return sites
         */
        @Override
        protected void engineNextBytes(byte[] arrby) {
            DataInputStream dataInputStream;
            if (!this.mSeeded) {
                this.engineSetSeed(PRNGFixes.generateSeed());
            }
            try {
                Object object = sLock;
                // MONITORENTER : object
                dataInputStream = this.getUrandomInputStream();
            }
            catch (IOException var1_2) {
                throw new SecurityException("Failed to read from " + URANDOM_FILE, var1_2);
            }
            dataInputStream.readFully(arrby);
            // MONITOREXIT : dataInputStream
        }

        /*
         * Exception decompiling
         */
        @Override
        protected void engineSetSeed(byte[] var1_1) {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [4[TRYBLOCK]], but top level block is 7[CATCHBLOCK]
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:664)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:747)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
            // org.benf.cfr.reader.Main.doJar(Main.java:129)
            // org.benf.cfr.reader.Main.main(Main.java:181)
            throw new IllegalStateException("Decompilation failed");
        }
    }

    private static class LinuxPRNGSecureRandomProvider
    extends Provider {
        public LinuxPRNGSecureRandomProvider() {
            super("LinuxPRNG", 1.0, "A Linux-specific random number provider that uses /dev/urandom");
            this.put("SecureRandom.SHA1PRNG", LinuxPRNGSecureRandom.class.getName());
            this.put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
        }
    }

}

