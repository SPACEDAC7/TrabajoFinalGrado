/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

public class b {
    private static b c = null;
    private final BigInteger a = b.d();
    private BigInteger b = BigInteger.ONE;

    private b() {
    }

    public static b a() {
        synchronized (b.class) {
            if (c == null) {
                c = new b();
            }
            b b2 = c;
            return b2;
        }
    }

    private static byte[] a(long l2) {
        return BigInteger.valueOf(l2).toByteArray();
    }

    private static BigInteger d() {
        Object object;
        byte[] arrby;
        try {
            object = MessageDigest.getInstance("MD5");
            arrby = UUID.randomUUID();
            object.update(b.a(arrby.getLeastSignificantBits()));
            object.update(b.a(arrby.getMostSignificantBits()));
            arrby = new byte[9];
            arrby[0] = 0;
        }
        catch (NoSuchAlgorithmException var0_1) {
            throw new RuntimeException("Cannot find MD5 message digest algorithm.");
        }
        System.arraycopy(object.digest(), 0, arrby, 1, 8);
        object = new BigInteger(arrby);
        return object;
    }

    public BigInteger b() {
        synchronized (this) {
            BigInteger bigInteger = this.a;
            return bigInteger;
        }
    }

    public BigInteger c() {
        synchronized (this) {
            BigInteger bigInteger = this.b;
            this.b = this.b.add(BigInteger.ONE);
            return bigInteger;
        }
    }
}

