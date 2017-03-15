/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.ActivityManager
 *  android.app.ActivityManager$RunningAppProcessInfo
 *  android.os.Build
 *  android.os.Build$VERSION
 *  io.fabric.sdk.android.services.common.IdManager$DeviceIdentifierType
 */
package com.crashlytics.android.core;

import android.app.ActivityManager;
import android.os.Build;
import com.crashlytics.android.core.ByteString;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.LogFileManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.IdManager;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class SessionProtobufHelper {
    private static final String SIGNAL_DEFAULT = "0";
    private static final ByteString SIGNAL_DEFAULT_BYTE_STRING = ByteString.copyFromUtf8("0");
    private static final ByteString UNITY_PLATFORM_BYTE_STRING = ByteString.copyFromUtf8("Unity");

    private SessionProtobufHelper() {
    }

    private static int getBinaryImageSize(ByteString byteString, ByteString byteString2) {
        int n2;
        int n3 = n2 = 0 + CodedOutputStream.computeUInt64Size(1, 0) + CodedOutputStream.computeUInt64Size(2, 0) + CodedOutputStream.computeBytesSize(3, byteString);
        if (byteString2 != null) {
            n3 = n2 + CodedOutputStream.computeBytesSize(4, byteString2);
        }
        return n3;
    }

    private static int getDeviceIdentifierSize(IdManager deviceIdentifierType, String string2) {
        return CodedOutputStream.computeEnumSize(1, deviceIdentifierType.protobufIndex) + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(string2));
    }

    private static int getEventAppCustomAttributeSize(String string2, String string3) {
        int n2 = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(string2));
        string2 = string3;
        if (string3 == null) {
            string2 = "";
        }
        return n2 + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(string2));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static int getEventAppExecutionExceptionSize(Throwable throwable, int n2, int n3) {
        int n4 = 0 + CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(throwable.getClass().getName()));
        StackTraceElement[] arrstackTraceElement = throwable.getLocalizedMessage();
        int n5 = n4;
        if (arrstackTraceElement != null) {
            n5 = n4 + CodedOutputStream.computeBytesSize(3, ByteString.copyFromUtf8((String)arrstackTraceElement));
        }
        arrstackTraceElement = throwable.getStackTrace();
        int n6 = arrstackTraceElement.length;
        for (n4 = 0; n4 < n6; ++n4) {
            int n7 = SessionProtobufHelper.getFrameSize(arrstackTraceElement[n4], true);
            n5 += CodedOutputStream.computeTagSize(4) + CodedOutputStream.computeRawVarint32Size(n7) + n7;
        }
        throwable = throwable.getCause();
        n4 = n5;
        if (throwable == null) return n4;
        if (n2 < n3) {
            n2 = SessionProtobufHelper.getEventAppExecutionExceptionSize(throwable, n2 + 1, n3);
            return n5 + (CodedOutputStream.computeTagSize(6) + CodedOutputStream.computeRawVarint32Size(n2) + n2);
        }
        n2 = 0;
        while (throwable != null) {
            throwable = throwable.getCause();
            ++n2;
        }
        return n5 + CodedOutputStream.computeUInt32Size(7, n2);
    }

    private static int getEventAppExecutionSignalSize() {
        return 0 + CodedOutputStream.computeBytesSize(1, SIGNAL_DEFAULT_BYTE_STRING) + CodedOutputStream.computeBytesSize(2, SIGNAL_DEFAULT_BYTE_STRING) + CodedOutputStream.computeUInt64Size(3, 0);
    }

    private static int getEventAppExecutionSize(Throwable throwable, Thread thread, StackTraceElement[] arrstackTraceElement, Thread[] arrthread, List<StackTraceElement[]> list, int n2, ByteString byteString, ByteString byteString2) {
        int n3;
        int n4;
        int n5 = SessionProtobufHelper.getThreadSize(thread, arrstackTraceElement, 4, true);
        n5 = 0 + (CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(n5) + n5);
        int n6 = arrthread.length;
        for (n3 = 0; n3 < n6; ++n3) {
            n4 = SessionProtobufHelper.getThreadSize(arrthread[n3], list.get(n3), 0, false);
            n5 += CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(n4) + n4;
        }
        n2 = SessionProtobufHelper.getEventAppExecutionExceptionSize(throwable, 1, n2);
        n3 = CodedOutputStream.computeTagSize(2);
        n6 = CodedOutputStream.computeRawVarint32Size(n2);
        n4 = SessionProtobufHelper.getEventAppExecutionSignalSize();
        int n7 = CodedOutputStream.computeTagSize(3);
        int n8 = CodedOutputStream.computeRawVarint32Size(n4);
        int n9 = SessionProtobufHelper.getBinaryImageSize(byteString, byteString2);
        return n5 + (n3 + n6 + n2) + (n7 + n8 + n4) + (CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(n9) + n9);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static int getEventAppSize(Throwable iterator, Thread entry, StackTraceElement[] arrstackTraceElement, Thread[] arrthread, List<StackTraceElement[]> list, int n2, ByteString byteString, ByteString byteString2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int n3) {
        int n4;
        n2 = SessionProtobufHelper.getEventAppExecutionSize(iterator, entry, arrstackTraceElement, arrthread, list, n2, byteString, byteString2);
        n2 = n4 = 0 + (CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(n2) + n2);
        if (map != null) {
            iterator = map.entrySet().iterator();
            do {
                n2 = n4;
                if (!iterator.hasNext()) break;
                entry = iterator.next();
                n2 = SessionProtobufHelper.getEventAppCustomAttributeSize(entry.getKey(), entry.getValue());
                n4 += CodedOutputStream.computeTagSize(2) + CodedOutputStream.computeRawVarint32Size(n2) + n2;
            } while (true);
        }
        n4 = n2;
        if (runningAppProcessInfo != null) {
            boolean bl = runningAppProcessInfo.importance != 100;
            n4 = n2 + CodedOutputStream.computeBoolSize(3, bl);
        }
        return n4 + CodedOutputStream.computeUInt32Size(4, n3);
    }

    private static int getEventDeviceSize(float f2, int n2, boolean bl, int n3, long l2, long l3) {
        return 0 + CodedOutputStream.computeFloatSize(1, f2) + CodedOutputStream.computeSInt32Size(2, n2) + CodedOutputStream.computeBoolSize(3, bl) + CodedOutputStream.computeUInt32Size(4, n3) + CodedOutputStream.computeUInt64Size(5, l2) + CodedOutputStream.computeUInt64Size(6, l3);
    }

    private static int getEventLogSize(ByteString byteString) {
        return CodedOutputStream.computeBytesSize(1, byteString);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static int getFrameSize(StackTraceElement stackTraceElement, boolean bl) {
        int n2;
        int n3 = 2;
        int n4 = stackTraceElement.isNativeMethod() ? 0 + CodedOutputStream.computeUInt64Size(1, Math.max(stackTraceElement.getLineNumber(), 0)) : 0 + CodedOutputStream.computeUInt64Size(1, 0);
        n4 = n2 = n4 + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            n4 = n2 + CodedOutputStream.computeBytesSize(3, ByteString.copyFromUtf8(stackTraceElement.getFileName()));
        }
        n2 = n4;
        if (!stackTraceElement.isNativeMethod()) {
            n2 = n4;
            if (stackTraceElement.getLineNumber() > 0) {
                n2 = n4 + CodedOutputStream.computeUInt64Size(4, stackTraceElement.getLineNumber());
            }
        }
        if (bl) {
            n4 = n3;
            return n2 + CodedOutputStream.computeUInt32Size(5, n4);
        }
        n4 = 0;
        return n2 + CodedOutputStream.computeUInt32Size(5, n4);
    }

    private static int getSessionAppOrgSize(ByteString byteString) {
        return 0 + CodedOutputStream.computeBytesSize(1, byteString);
    }

    private static int getSessionAppSize(ByteString byteString, ByteString byteString2, ByteString byteString3, ByteString byteString4, ByteString byteString5, int n2, ByteString byteString6) {
        int n3 = CodedOutputStream.computeBytesSize(1, byteString);
        int n4 = CodedOutputStream.computeBytesSize(2, byteString3);
        int n5 = CodedOutputStream.computeBytesSize(3, byteString4);
        int n6 = SessionProtobufHelper.getSessionAppOrgSize(byteString2);
        n3 = n4 = 0 + n3 + n4 + n5 + (CodedOutputStream.computeTagSize(5) + CodedOutputStream.computeRawVarint32Size(n6) + n6) + CodedOutputStream.computeBytesSize(6, byteString5);
        if (byteString6 != null) {
            n3 = n4 + CodedOutputStream.computeBytesSize(8, UNITY_PLATFORM_BYTE_STRING) + CodedOutputStream.computeBytesSize(9, byteString6);
        }
        return n3 + CodedOutputStream.computeEnumSize(10, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static int getSessionDeviceSize(int n2, ByteString iterator, ByteString entry, int n3, long l2, long l3, boolean bl, Map<IdManager, String> map, int n4, ByteString byteString, ByteString byteString2) {
        int n5 = CodedOutputStream.computeBytesSize(1, iterator);
        int n6 = CodedOutputStream.computeEnumSize(3, n2);
        n2 = entry == null ? 0 : CodedOutputStream.computeBytesSize(4, entry);
        n3 = n2 = 0 + n5 + n6 + n2 + CodedOutputStream.computeUInt32Size(5, n3) + CodedOutputStream.computeUInt64Size(6, l2) + CodedOutputStream.computeUInt64Size(7, l3) + CodedOutputStream.computeBoolSize(10, bl);
        if (map != null) {
            iterator = map.entrySet().iterator();
            do {
                n3 = n2;
                if (!iterator.hasNext()) break;
                entry = iterator.next();
                n3 = SessionProtobufHelper.getDeviceIdentifierSize(entry.getKey(), entry.getValue());
                n2 += CodedOutputStream.computeTagSize(11) + CodedOutputStream.computeRawVarint32Size(n3) + n3;
            } while (true);
        }
        n5 = CodedOutputStream.computeUInt32Size(12, n4);
        n2 = byteString == null ? 0 : CodedOutputStream.computeBytesSize(13, byteString);
        if (byteString2 == null) {
            n4 = 0;
            return n3 + n5 + n2 + n4;
        }
        n4 = CodedOutputStream.computeBytesSize(14, byteString2);
        return n3 + n5 + n2 + n4;
    }

    private static int getSessionEventSize(long l2, String string2, Throwable throwable, Thread thread, StackTraceElement[] arrstackTraceElement, Thread[] arrthread, List<StackTraceElement[]> list, int n2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int n3, ByteString byteString, ByteString byteString2, float f2, int n4, boolean bl, long l3, long l4, ByteString byteString3) {
        int n5 = CodedOutputStream.computeUInt64Size(1, l2);
        int n6 = CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(string2));
        n2 = SessionProtobufHelper.getEventAppSize(throwable, thread, arrstackTraceElement, arrthread, list, n2, byteString, byteString2, map, runningAppProcessInfo, n3);
        int n7 = CodedOutputStream.computeTagSize(3);
        int n8 = CodedOutputStream.computeRawVarint32Size(n2);
        n3 = SessionProtobufHelper.getEventDeviceSize(f2, n4, bl, n3, l3, l4);
        n2 = n3 = 0 + n5 + n6 + (n7 + n8 + n2) + (CodedOutputStream.computeTagSize(5) + CodedOutputStream.computeRawVarint32Size(n3) + n3);
        if (byteString3 != null) {
            n2 = SessionProtobufHelper.getEventLogSize(byteString3);
            n2 = n3 + (CodedOutputStream.computeTagSize(6) + CodedOutputStream.computeRawVarint32Size(n2) + n2);
        }
        return n2;
    }

    private static int getSessionOSSize(ByteString byteString, ByteString byteString2, boolean bl) {
        return 0 + CodedOutputStream.computeEnumSize(1, 3) + CodedOutputStream.computeBytesSize(2, byteString) + CodedOutputStream.computeBytesSize(3, byteString2) + CodedOutputStream.computeBoolSize(4, bl);
    }

    private static int getThreadSize(Thread thread, StackTraceElement[] arrstackTraceElement, int n2, boolean bl) {
        int n3 = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(thread.getName())) + CodedOutputStream.computeUInt32Size(2, n2);
        int n4 = arrstackTraceElement.length;
        for (n2 = 0; n2 < n4; ++n2) {
            int n5 = SessionProtobufHelper.getFrameSize(arrstackTraceElement[n2], bl);
            n3 += CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(n5) + n5;
        }
        return n3;
    }

    private static ByteString stringToByteString(String string2) {
        if (string2 == null) {
            return null;
        }
        return ByteString.copyFromUtf8(string2);
    }

    public static void writeBeginSession(CodedOutputStream codedOutputStream, String string2, String string3, long l2) throws Exception {
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(string3));
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(string2));
        codedOutputStream.writeUInt64(3, l2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void writeFrame(CodedOutputStream codedOutputStream, int n2, StackTraceElement stackTraceElement, boolean bl) throws Exception {
        int n3 = 4;
        codedOutputStream.writeTag(n2, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getFrameSize(stackTraceElement, bl));
        if (stackTraceElement.isNativeMethod()) {
            codedOutputStream.writeUInt64(1, Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            codedOutputStream.writeUInt64(1, 0);
        }
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            codedOutputStream.writeBytes(3, ByteString.copyFromUtf8(stackTraceElement.getFileName()));
        }
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            codedOutputStream.writeUInt64(4, stackTraceElement.getLineNumber());
        }
        n2 = bl ? n3 : 0;
        codedOutputStream.writeUInt32(5, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void writeSessionApp(CodedOutputStream codedOutputStream, String object, String object2, String object3, String object4, String object5, int n2, String string2) throws Exception {
        ByteString byteString = ByteString.copyFromUtf8((String)object);
        object2 = ByteString.copyFromUtf8((String)object2);
        object3 = ByteString.copyFromUtf8((String)object3);
        object4 = ByteString.copyFromUtf8((String)object4);
        object5 = ByteString.copyFromUtf8((String)object5);
        object = string2 != null ? ByteString.copyFromUtf8(string2) : null;
        codedOutputStream.writeTag(7, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getSessionAppSize(byteString, (ByteString)object2, (ByteString)object3, (ByteString)object4, (ByteString)object5, n2, (ByteString)object));
        codedOutputStream.writeBytes(1, byteString);
        codedOutputStream.writeBytes(2, (ByteString)object3);
        codedOutputStream.writeBytes(3, (ByteString)object4);
        codedOutputStream.writeTag(5, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getSessionAppOrgSize((ByteString)object2));
        codedOutputStream.writeBytes(1, (ByteString)object2);
        codedOutputStream.writeBytes(6, (ByteString)object5);
        if (object != null) {
            codedOutputStream.writeBytes(8, UNITY_PLATFORM_BYTE_STRING);
            codedOutputStream.writeBytes(9, (ByteString)object);
        }
        codedOutputStream.writeEnum(10, n2);
    }

    public static void writeSessionDevice(CodedOutputStream codedOutputStream, String iterator, int n2, String object, int n3, long l2, long l3, boolean bl, Map<IdManager, String> object22, int n4, String object3, String string2) throws Exception {
        ByteString byteString;
        void var11_11;
        void var13_13;
        iterator = ByteString.copyFromUtf8(iterator);
        ByteString byteString2 = SessionProtobufHelper.stringToByteString((String)object);
        object = SessionProtobufHelper.stringToByteString((String)var13_13);
        byteString = SessionProtobufHelper.stringToByteString((String)((Object)byteString));
        codedOutputStream.writeTag(9, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getSessionDeviceSize(n2, (ByteString)((Object)iterator), byteString2, n3, l2, l3, bl, object22, (int)var11_11, byteString, (ByteString)object));
        codedOutputStream.writeBytes(1, (ByteString)((Object)iterator));
        codedOutputStream.writeEnum(3, n2);
        codedOutputStream.writeBytes(4, byteString2);
        codedOutputStream.writeUInt32(5, n3);
        codedOutputStream.writeUInt64(6, l2);
        codedOutputStream.writeUInt64(7, l3);
        codedOutputStream.writeBool(10, bl);
        for (Map.Entry entry : object22.entrySet()) {
            codedOutputStream.writeTag(11, 2);
            codedOutputStream.writeRawVarint32(SessionProtobufHelper.getDeviceIdentifierSize((IdManager)entry.getKey(), (String)entry.getValue()));
            codedOutputStream.writeEnum(1, ((IdManager)entry.getKey()).protobufIndex);
            codedOutputStream.writeBytes(2, ByteString.copyFromUtf8((String)entry.getValue()));
        }
        codedOutputStream.writeUInt32(12, (int)var11_11);
        if (byteString != null) {
            codedOutputStream.writeBytes(13, byteString);
        }
        if (object != null) {
            codedOutputStream.writeBytes(14, (ByteString)object);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void writeSessionEvent(CodedOutputStream codedOutputStream, long l2, String string2, Throwable throwable, Thread thread, StackTraceElement[] arrstackTraceElement, Thread[] arrthread, List<StackTraceElement[]> list, Map<String, String> map, LogFileManager logFileManager, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int n2, String object, String object2, float f2, int n3, boolean bl, long l3, long l4) throws Exception {
        ByteString byteString = ByteString.copyFromUtf8((String)object);
        object = object2 == null ? null : ByteString.copyFromUtf8(object2.replace("-", ""));
        object2 = logFileManager.getByteStringForLog();
        if (object2 == null) {
            Fabric.getLogger().d("CrashlyticsCore", "No log data to include with this event.");
        }
        logFileManager.clearLog();
        codedOutputStream.writeTag(10, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getSessionEventSize(l2, string2, throwable, thread, arrstackTraceElement, arrthread, list, 8, map, runningAppProcessInfo, n2, byteString, (ByteString)object, f2, n3, bl, l3, l4, (ByteString)object2));
        codedOutputStream.writeUInt64(1, l2);
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(string2));
        SessionProtobufHelper.writeSessionEventApp(codedOutputStream, throwable, thread, arrstackTraceElement, arrthread, list, 8, byteString, (ByteString)object, map, runningAppProcessInfo, n2);
        SessionProtobufHelper.writeSessionEventDevice(codedOutputStream, f2, n3, bl, n2, l3, l4);
        SessionProtobufHelper.writeSessionEventLog(codedOutputStream, (ByteString)object2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void writeSessionEventApp(CodedOutputStream codedOutputStream, Throwable throwable, Thread thread, StackTraceElement[] arrstackTraceElement, Thread[] arrthread, List<StackTraceElement[]> list, int n2, ByteString byteString, ByteString byteString2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int n3) throws Exception {
        codedOutputStream.writeTag(3, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getEventAppSize(throwable, thread, arrstackTraceElement, arrthread, list, n2, byteString, byteString2, map, runningAppProcessInfo, n3));
        SessionProtobufHelper.writeSessionEventAppExecution(codedOutputStream, throwable, thread, arrstackTraceElement, arrthread, list, n2, byteString, byteString2);
        if (map != null && !map.isEmpty()) {
            SessionProtobufHelper.writeSessionEventAppCustomAttributes(codedOutputStream, map);
        }
        if (runningAppProcessInfo != null) {
            boolean bl = runningAppProcessInfo.importance != 100;
            codedOutputStream.writeBool(3, bl);
        }
        codedOutputStream.writeUInt32(4, n3);
    }

    private static void writeSessionEventAppCustomAttributes(CodedOutputStream codedOutputStream, Map<String, String> object) throws Exception {
        Iterator<Map.Entry<String, String>> iterator = object.entrySet().iterator();
        while (iterator.hasNext()) {
            String string2;
            object = iterator.next();
            codedOutputStream.writeTag(2, 2);
            codedOutputStream.writeRawVarint32(SessionProtobufHelper.getEventAppCustomAttributeSize((String)object.getKey(), (String)object.getValue()));
            codedOutputStream.writeBytes(1, ByteString.copyFromUtf8((String)object.getKey()));
            object = string2 = (String)object.getValue();
            if (string2 == null) {
                object = "";
            }
            codedOutputStream.writeBytes(2, ByteString.copyFromUtf8((String)object));
        }
    }

    private static void writeSessionEventAppExecution(CodedOutputStream codedOutputStream, Throwable throwable, Thread thread, StackTraceElement[] arrstackTraceElement, Thread[] arrthread, List<StackTraceElement[]> list, int n2, ByteString byteString, ByteString byteString2) throws Exception {
        codedOutputStream.writeTag(1, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getEventAppExecutionSize(throwable, thread, arrstackTraceElement, arrthread, list, n2, byteString, byteString2));
        SessionProtobufHelper.writeThread(codedOutputStream, thread, arrstackTraceElement, 4, true);
        int n3 = arrthread.length;
        for (int i2 = 0; i2 < n3; ++i2) {
            SessionProtobufHelper.writeThread(codedOutputStream, arrthread[i2], list.get(i2), 0, false);
        }
        SessionProtobufHelper.writeSessionEventAppExecutionException(codedOutputStream, throwable, 1, n2, 2);
        codedOutputStream.writeTag(3, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getEventAppExecutionSignalSize());
        codedOutputStream.writeBytes(1, SIGNAL_DEFAULT_BYTE_STRING);
        codedOutputStream.writeBytes(2, SIGNAL_DEFAULT_BYTE_STRING);
        codedOutputStream.writeUInt64(3, 0);
        codedOutputStream.writeTag(4, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getBinaryImageSize(byteString, byteString2));
        codedOutputStream.writeUInt64(1, 0);
        codedOutputStream.writeUInt64(2, 0);
        codedOutputStream.writeBytes(3, byteString);
        if (byteString2 != null) {
            codedOutputStream.writeBytes(4, byteString2);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static void writeSessionEventAppExecutionException(CodedOutputStream codedOutputStream, Throwable throwable, int n2, int n3, int n4) throws Exception {
        codedOutputStream.writeTag(n4, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getEventAppExecutionExceptionSize(throwable, 1, n3));
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(throwable.getClass().getName()));
        StackTraceElement[] arrstackTraceElement = throwable.getLocalizedMessage();
        if (arrstackTraceElement != null) {
            codedOutputStream.writeBytes(3, ByteString.copyFromUtf8((String)arrstackTraceElement));
        }
        arrstackTraceElement = throwable.getStackTrace();
        int n5 = arrstackTraceElement.length;
        for (n4 = 0; n4 < n5; ++n4) {
            SessionProtobufHelper.writeFrame(codedOutputStream, 4, arrstackTraceElement[n4], true);
        }
        if ((throwable = throwable.getCause()) == null) return;
        if (n2 < n3) {
            SessionProtobufHelper.writeSessionEventAppExecutionException(codedOutputStream, throwable, n2 + 1, n3, 6);
            return;
        }
        n2 = 0;
        while (throwable != null) {
            throwable = throwable.getCause();
            ++n2;
        }
        codedOutputStream.writeUInt32(7, n2);
    }

    private static void writeSessionEventDevice(CodedOutputStream codedOutputStream, float f2, int n2, boolean bl, int n3, long l2, long l3) throws Exception {
        codedOutputStream.writeTag(5, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getEventDeviceSize(f2, n2, bl, n3, l2, l3));
        codedOutputStream.writeFloat(1, f2);
        codedOutputStream.writeSInt32(2, n2);
        codedOutputStream.writeBool(3, bl);
        codedOutputStream.writeUInt32(4, n3);
        codedOutputStream.writeUInt64(5, l2);
        codedOutputStream.writeUInt64(6, l3);
    }

    private static void writeSessionEventLog(CodedOutputStream codedOutputStream, ByteString byteString) throws Exception {
        if (byteString != null) {
            codedOutputStream.writeTag(6, 2);
            codedOutputStream.writeRawVarint32(SessionProtobufHelper.getEventLogSize(byteString));
            codedOutputStream.writeBytes(1, byteString);
        }
    }

    public static void writeSessionOS(CodedOutputStream codedOutputStream, boolean bl) throws Exception {
        ByteString byteString = ByteString.copyFromUtf8(Build.VERSION.RELEASE);
        ByteString byteString2 = ByteString.copyFromUtf8(Build.VERSION.CODENAME);
        codedOutputStream.writeTag(8, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getSessionOSSize(byteString, byteString2, bl));
        codedOutputStream.writeEnum(1, 3);
        codedOutputStream.writeBytes(2, byteString);
        codedOutputStream.writeBytes(3, byteString2);
        codedOutputStream.writeBool(4, bl);
    }

    public static void writeSessionUser(CodedOutputStream codedOutputStream, String object, String string2, String string3) throws Exception {
        int n2;
        Object object2 = object;
        if (object == null) {
            object2 = "";
        }
        object = ByteString.copyFromUtf8((String)object2);
        object2 = SessionProtobufHelper.stringToByteString(string2);
        ByteString byteString = SessionProtobufHelper.stringToByteString(string3);
        int n3 = n2 = 0 + CodedOutputStream.computeBytesSize(1, (ByteString)object);
        if (string2 != null) {
            n3 = n2 + CodedOutputStream.computeBytesSize(2, (ByteString)object2);
        }
        n2 = n3;
        if (string3 != null) {
            n2 = n3 + CodedOutputStream.computeBytesSize(3, byteString);
        }
        codedOutputStream.writeTag(6, 2);
        codedOutputStream.writeRawVarint32(n2);
        codedOutputStream.writeBytes(1, (ByteString)object);
        if (string2 != null) {
            codedOutputStream.writeBytes(2, (ByteString)object2);
        }
        if (string3 != null) {
            codedOutputStream.writeBytes(3, byteString);
        }
    }

    private static void writeThread(CodedOutputStream codedOutputStream, Thread thread, StackTraceElement[] arrstackTraceElement, int n2, boolean bl) throws Exception {
        codedOutputStream.writeTag(1, 2);
        codedOutputStream.writeRawVarint32(SessionProtobufHelper.getThreadSize(thread, arrstackTraceElement, n2, bl));
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(thread.getName()));
        codedOutputStream.writeUInt32(2, n2);
        int n3 = arrstackTraceElement.length;
        for (n2 = 0; n2 < n3; ++n2) {
            SessionProtobufHelper.writeFrame(codedOutputStream, 3, arrstackTraceElement[n2], bl);
        }
    }
}

