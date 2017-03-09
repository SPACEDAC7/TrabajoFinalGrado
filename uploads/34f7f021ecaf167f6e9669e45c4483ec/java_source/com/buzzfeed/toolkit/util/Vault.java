/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.Base64
 */
package com.buzzfeed.toolkit.util;

import android.content.Context;
import android.util.Base64;
import com.buzzfeed.toolkit.util.LogUtil;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public abstract class Vault {
    private static final String TAG = LogUtil.makeLogTag(Vault.class);
    private Map<String, String> mPropertiesMap = new HashMap<String, String>();

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static String decrypt(byte[] object) {
        try {
            byte[] arrby = Vault.getEncryptStr();
            Object object2 = Vault.hexStringToByteArray((String)arrby);
            arrby = Vault.hexStringToByteArray((String)arrby);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, (Key)new SecretKeySpec((byte[])object2, "AES"), new IvParameterSpec(arrby));
            object = new BufferedReader(new InputStreamReader(new CipherInputStream(new ByteArrayInputStream(Base64.decode((byte[])object, (int)0)), cipher)));
            object2 = new StringBuffer();
            int n2 = 0;
            arrby = new char[1024];
            while (n2 >= 0) {
                int n3;
                n2 = n3 = object.read((char[])arrby, 0, arrby.length);
                if (n3 <= 0) continue;
                object2.append((char[])arrby, 0, n3);
                n2 = n3;
            }
            return object2.toString();
        }
        catch (Exception var0_1) {
            LogUtil.e(TAG, "Error decrypting buzzfeed.properties file", var0_1);
            return "";
        }
    }

    private static String getEncryptStr() {
        char c2;
        CharSequence charSequence = new StringBuffer();
        for (c2 = '0'; c2 <= '9'; c2 = (char)(c2 + '\u0001')) {
            charSequence.append(c2);
        }
        for (c2 = 'A'; c2 <= 'F'; c2 = (char)(c2 + '\u0001')) {
            charSequence.append(c2);
        }
        charSequence = charSequence.toString();
        StringBuffer stringBuffer = new StringBuffer();
        Random random = new Random(Long.valueOf("53316291173"));
        while (stringBuffer.length() < 32) {
            stringBuffer.append(charSequence.charAt(random.nextInt(charSequence.length())));
        }
        charSequence = stringBuffer.toString();
        LogUtil.d(TAG, "Vault Encryption String: " + (String)charSequence);
        return charSequence;
    }

    private static byte[] hexStringToByteArray(String string2) {
        int n2 = string2.length();
        byte[] arrby = new byte[n2 / 2];
        for (int i2 = 0; i2 < n2; i2 += 2) {
            arrby[i2 / 2] = (byte)((Character.digit(string2.charAt(i2), 16) << 4) + Character.digit(string2.charAt(i2 + 1), 16));
        }
        return arrby;
    }

    protected String getProperty(String string2) {
        String string3 = this.mPropertiesMap.get(string2);
        LogUtil.d(TAG, String.format("key/value: %s=%s", string2, string3));
        return string3;
    }

    /*
     * Exception decompiling
     */
    protected void loadProperties(Context var1_1, String var2_3) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.IllegalStateException: Backjump on non jumping statement [] lbl14 : TryStatement: try { 1[TRYBLOCK]

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

    public abstract void openVault(Context var1);
}

