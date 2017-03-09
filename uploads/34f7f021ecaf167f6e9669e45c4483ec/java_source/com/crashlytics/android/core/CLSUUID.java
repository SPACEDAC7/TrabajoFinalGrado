/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Process
 */
package com.crashlytics.android.core;

import android.os.Process;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.IdManager;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;

class CLSUUID {
    private static String _clsId;
    private static final AtomicLong _sequenceNumber;

    static {
        _sequenceNumber = new AtomicLong(0);
    }

    public CLSUUID(IdManager object) {
        Object object2 = new byte[10];
        this.populateTime((byte[])object2);
        this.populateSequenceNumber((byte[])object2);
        this.populatePID((byte[])object2);
        object = CommonUtils.sha1(object.getAppInstallIdentifier());
        object2 = CommonUtils.hexify((byte[])object2);
        _clsId = String.format(Locale.US, "%s-%s-%s-%s", object2.substring(0, 12), object2.substring(12, 16), object2.subSequence(16, 20), object.substring(0, 12)).toUpperCase(Locale.US);
    }

    private static byte[] convertLongToFourByteBuffer(long l2) {
        ByteBuffer byteBuffer = ByteBuffer.allocate(4);
        byteBuffer.putInt((int)l2);
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
        byteBuffer.position(0);
        return byteBuffer.array();
    }

    private static byte[] convertLongToTwoByteBuffer(long l2) {
        ByteBuffer byteBuffer = ByteBuffer.allocate(2);
        byteBuffer.putShort((short)l2);
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
        byteBuffer.position(0);
        return byteBuffer.array();
    }

    private void populatePID(byte[] arrby) {
        byte[] arrby2 = CLSUUID.convertLongToTwoByteBuffer(Integer.valueOf(Process.myPid()).shortValue());
        arrby[8] = arrby2[0];
        arrby[9] = arrby2[1];
    }

    private void populateSequenceNumber(byte[] arrby) {
        byte[] arrby2 = CLSUUID.convertLongToTwoByteBuffer(_sequenceNumber.incrementAndGet());
        arrby[6] = arrby2[0];
        arrby[7] = arrby2[1];
    }

    private void populateTime(byte[] arrby) {
        long l2 = new Date().getTime();
        byte[] arrby2 = CLSUUID.convertLongToFourByteBuffer(l2 / 1000);
        arrby[0] = arrby2[0];
        arrby[1] = arrby2[1];
        arrby[2] = arrby2[2];
        arrby[3] = arrby2[3];
        arrby2 = CLSUUID.convertLongToTwoByteBuffer(l2 % 1000);
        arrby[4] = arrby2[0];
        arrby[5] = arrby2[1];
    }

    public String toString() {
        return _clsId;
    }
}

