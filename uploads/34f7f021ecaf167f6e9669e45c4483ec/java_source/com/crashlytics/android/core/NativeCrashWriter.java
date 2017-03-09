/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core;

import com.crashlytics.android.core.ByteString;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.LogFileManager;
import com.crashlytics.android.core.internal.models.BinaryImageData;
import com.crashlytics.android.core.internal.models.CustomAttributeData;
import com.crashlytics.android.core.internal.models.DeviceData;
import com.crashlytics.android.core.internal.models.SessionEventData;
import com.crashlytics.android.core.internal.models.SignalData;
import com.crashlytics.android.core.internal.models.ThreadData;
import io.fabric.sdk.android.Fabric;
import java.io.IOException;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

class NativeCrashWriter {
    private static final SignalData DEFAULT_SIGNAL = new SignalData("", "", 0);
    private static final BinaryImageMessage[] EMPTY_BINARY_IMAGE_MESSAGES;
    private static final ProtobufMessage[] EMPTY_CHILDREN;
    private static final CustomAttributeMessage[] EMPTY_CUSTOM_ATTRIBUTE_MESSAGES;
    private static final FrameMessage[] EMPTY_FRAME_MESSAGES;
    private static final ThreadMessage[] EMPTY_THREAD_MESSAGES;
    static final String NDK_CRASH_TYPE = "ndk-crash";

    static {
        EMPTY_CHILDREN = new ProtobufMessage[0];
        EMPTY_THREAD_MESSAGES = new ThreadMessage[0];
        EMPTY_FRAME_MESSAGES = new FrameMessage[0];
        EMPTY_BINARY_IMAGE_MESSAGES = new BinaryImageMessage[0];
        EMPTY_CUSTOM_ATTRIBUTE_MESSAGES = new CustomAttributeMessage[0];
    }

    NativeCrashWriter() {
    }

    /*
     * Enabled aggressive block sorting
     */
    private static RepeatedMessage createBinaryImagesMessage(BinaryImageData[] arrbinaryImageData) {
        ProtobufMessage[] arrprotobufMessage = arrbinaryImageData != null ? new BinaryImageMessage[arrbinaryImageData.length] : EMPTY_BINARY_IMAGE_MESSAGES;
        int n2 = 0;
        while (n2 < arrprotobufMessage.length) {
            arrprotobufMessage[n2] = new BinaryImageMessage(arrbinaryImageData[n2]);
            ++n2;
        }
        return new RepeatedMessage(arrprotobufMessage);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static RepeatedMessage createCustomAttributesMessage(CustomAttributeData[] arrcustomAttributeData) {
        ProtobufMessage[] arrprotobufMessage = arrcustomAttributeData != null ? new CustomAttributeMessage[arrcustomAttributeData.length] : EMPTY_CUSTOM_ATTRIBUTE_MESSAGES;
        int n2 = 0;
        while (n2 < arrprotobufMessage.length) {
            arrprotobufMessage[n2] = new CustomAttributeMessage(arrcustomAttributeData[n2]);
            ++n2;
        }
        return new RepeatedMessage(arrprotobufMessage);
    }

    private static DeviceMessage createDeviceMessage(DeviceData deviceData) {
        return new DeviceMessage((float)deviceData.batteryCapacity / 100.0f, deviceData.batteryVelocity, deviceData.proximity, deviceData.orientation, deviceData.totalPhysicalMemory - deviceData.availablePhysicalMemory, deviceData.totalInternalStorage - deviceData.availableInternalStorage);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static EventMessage createEventMessage(SessionEventData sessionEventData, LogFileManager object, Map<String, String> object2) throws IOException {
        Object object3 = sessionEventData.signal != null ? sessionEventData.signal : DEFAULT_SIGNAL;
        object2 = new ApplicationMessage(new ExecutionMessage(new SignalMessage((SignalData)object3), NativeCrashWriter.createThreadsMessage(sessionEventData.threads), NativeCrashWriter.createBinaryImagesMessage(sessionEventData.binaryImages)), NativeCrashWriter.createCustomAttributesMessage(NativeCrashWriter.mergeCustomAttributes(sessionEventData.customAttributes, object2)));
        object3 = NativeCrashWriter.createDeviceMessage(sessionEventData.deviceData);
        ByteString byteString = object.getByteStringForLog();
        if (byteString == null) {
            Fabric.getLogger().d("CrashlyticsCore", "No log data to include with this event.");
        }
        object.clearLog();
        object = byteString != null ? new LogMessage(byteString) : new NullMessage();
        return new EventMessage(sessionEventData.timestamp, "ndk-crash", new ProtobufMessage[]{object2, object3, object});
    }

    /*
     * Enabled aggressive block sorting
     */
    private static RepeatedMessage createFramesMessage(ThreadData.FrameData[] arrframeData) {
        ProtobufMessage[] arrprotobufMessage = arrframeData != null ? new FrameMessage[arrframeData.length] : EMPTY_FRAME_MESSAGES;
        int n2 = 0;
        while (n2 < arrprotobufMessage.length) {
            arrprotobufMessage[n2] = new FrameMessage(arrframeData[n2]);
            ++n2;
        }
        return new RepeatedMessage(arrprotobufMessage);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static RepeatedMessage createThreadsMessage(ThreadData[] arrthreadData) {
        ProtobufMessage[] arrprotobufMessage = arrthreadData != null ? new ThreadMessage[arrthreadData.length] : EMPTY_THREAD_MESSAGES;
        int n2 = 0;
        while (n2 < arrprotobufMessage.length) {
            ThreadData threadData = arrthreadData[n2];
            arrprotobufMessage[n2] = new ThreadMessage(threadData, NativeCrashWriter.createFramesMessage(threadData.frames));
            ++n2;
        }
        return new RepeatedMessage(arrprotobufMessage);
    }

    private static CustomAttributeData[] mergeCustomAttributes(CustomAttributeData[] arrcustomAttributeData, Map<String, String> arrcustomAttributeData2) {
        arrcustomAttributeData2 = new TreeMap<String, String>((Map<String, String>)arrcustomAttributeData2);
        if (arrcustomAttributeData != null) {
            for (CustomAttributeData customAttributeData : arrcustomAttributeData) {
                arrcustomAttributeData2.put(customAttributeData.key, customAttributeData.value);
            }
        }
        arrcustomAttributeData = arrcustomAttributeData2.entrySet().toArray(new Map.Entry[arrcustomAttributeData2.size()]);
        arrcustomAttributeData2 = new CustomAttributeData[arrcustomAttributeData.length];
        for (int i2 = 0; i2 < arrcustomAttributeData2.length; ++i2) {
            arrcustomAttributeData2[i2] = new CustomAttributeData((String)arrcustomAttributeData[i2].getKey(), (String)arrcustomAttributeData[i2].getValue());
        }
        return arrcustomAttributeData2;
    }

    public static void writeNativeCrash(SessionEventData sessionEventData, LogFileManager logFileManager, Map<String, String> map, CodedOutputStream codedOutputStream) throws IOException {
        NativeCrashWriter.createEventMessage(sessionEventData, logFileManager, map).write(codedOutputStream);
    }

    private static final class ApplicationMessage
    extends ProtobufMessage {
        private static final int PROTOBUF_TAG = 3;

        public ApplicationMessage(ExecutionMessage executionMessage, RepeatedMessage repeatedMessage) {
            super(3, executionMessage, repeatedMessage);
        }
    }

    private static final class BinaryImageMessage
    extends ProtobufMessage {
        private static final int PROTOBUF_TAG = 4;
        private final long baseAddr;
        private final String filePath;
        private final long imageSize;
        private final String uuid;

        public BinaryImageMessage(BinaryImageData binaryImageData) {
            super(4, new ProtobufMessage[0]);
            this.baseAddr = binaryImageData.baseAddress;
            this.imageSize = binaryImageData.size;
            this.filePath = binaryImageData.path;
            this.uuid = binaryImageData.id;
        }

        @Override
        public int getPropertiesSize() {
            int n2 = CodedOutputStream.computeUInt64Size(1, this.baseAddr);
            int n3 = CodedOutputStream.computeUInt64Size(2, this.imageSize);
            return CodedOutputStream.computeBytesSize(3, ByteString.copyFromUtf8(this.filePath)) + n2 + n3 + CodedOutputStream.computeBytesSize(4, ByteString.copyFromUtf8(this.uuid));
        }

        @Override
        public void writeProperties(CodedOutputStream codedOutputStream) throws IOException {
            codedOutputStream.writeUInt64(1, this.baseAddr);
            codedOutputStream.writeUInt64(2, this.imageSize);
            codedOutputStream.writeBytes(3, ByteString.copyFromUtf8(this.filePath));
            codedOutputStream.writeBytes(4, ByteString.copyFromUtf8(this.uuid));
        }
    }

    private static final class CustomAttributeMessage
    extends ProtobufMessage {
        private static final int PROTOBUF_TAG = 2;
        private final String key;
        private final String value;

        public CustomAttributeMessage(CustomAttributeData customAttributeData) {
            super(2, new ProtobufMessage[0]);
            this.key = customAttributeData.key;
            this.value = customAttributeData.value;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public int getPropertiesSize() {
            String string2;
            int n2 = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(this.key));
            if (this.value == null) {
                string2 = "";
                do {
                    return n2 + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(string2));
                    break;
                } while (true);
            }
            string2 = this.value;
            return n2 + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(string2));
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void writeProperties(CodedOutputStream codedOutputStream) throws IOException {
            codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(this.key));
            String string2 = this.value == null ? "" : this.value;
            codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(string2));
        }
    }

    private static final class DeviceMessage
    extends ProtobufMessage {
        private static final int PROTOBUF_TAG = 5;
        private final float batteryLevel;
        private final int batteryVelocity;
        private final long diskUsed;
        private final int orientation;
        private final boolean proximityOn;
        private final long ramUsed;

        public DeviceMessage(float f2, int n2, boolean bl, int n3, long l2, long l3) {
            super(5, new ProtobufMessage[0]);
            this.batteryLevel = f2;
            this.batteryVelocity = n2;
            this.proximityOn = bl;
            this.orientation = n3;
            this.ramUsed = l2;
            this.diskUsed = l3;
        }

        @Override
        public int getPropertiesSize() {
            return 0 + CodedOutputStream.computeFloatSize(1, this.batteryLevel) + CodedOutputStream.computeSInt32Size(2, this.batteryVelocity) + CodedOutputStream.computeBoolSize(3, this.proximityOn) + CodedOutputStream.computeUInt32Size(4, this.orientation) + CodedOutputStream.computeUInt64Size(5, this.ramUsed) + CodedOutputStream.computeUInt64Size(6, this.diskUsed);
        }

        @Override
        public void writeProperties(CodedOutputStream codedOutputStream) throws IOException {
            codedOutputStream.writeFloat(1, this.batteryLevel);
            codedOutputStream.writeSInt32(2, this.batteryVelocity);
            codedOutputStream.writeBool(3, this.proximityOn);
            codedOutputStream.writeUInt32(4, this.orientation);
            codedOutputStream.writeUInt64(5, this.ramUsed);
            codedOutputStream.writeUInt64(6, this.diskUsed);
        }
    }

    private static final class EventMessage
    extends ProtobufMessage {
        private static final int PROTOBUF_TAG = 10;
        private final String crashType;
        private final long time;

        public /* varargs */ EventMessage(long l2, String string2, ProtobufMessage ... arrprotobufMessage) {
            super(10, arrprotobufMessage);
            this.time = l2;
            this.crashType = string2;
        }

        @Override
        public int getPropertiesSize() {
            return CodedOutputStream.computeUInt64Size(1, this.time) + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(this.crashType));
        }

        @Override
        public void writeProperties(CodedOutputStream codedOutputStream) throws IOException {
            codedOutputStream.writeUInt64(1, this.time);
            codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(this.crashType));
        }
    }

    private static final class ExecutionMessage
    extends ProtobufMessage {
        private static final int PROTOBUF_TAG = 1;

        public ExecutionMessage(SignalMessage signalMessage, RepeatedMessage repeatedMessage, RepeatedMessage repeatedMessage2) {
            super(1, repeatedMessage, signalMessage, repeatedMessage2);
        }
    }

    private static final class FrameMessage
    extends ProtobufMessage {
        private static final int PROTOBUF_TAG = 3;
        private final long address;
        private final String file;
        private final int importance;
        private final long offset;
        private final String symbol;

        public FrameMessage(ThreadData.FrameData frameData) {
            super(3, new ProtobufMessage[0]);
            this.address = frameData.address;
            this.symbol = frameData.symbol;
            this.file = frameData.file;
            this.offset = frameData.offset;
            this.importance = frameData.importance;
        }

        @Override
        public int getPropertiesSize() {
            return CodedOutputStream.computeUInt64Size(1, this.address) + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(this.symbol)) + CodedOutputStream.computeBytesSize(3, ByteString.copyFromUtf8(this.file)) + CodedOutputStream.computeUInt64Size(4, this.offset) + CodedOutputStream.computeUInt32Size(5, this.importance);
        }

        @Override
        public void writeProperties(CodedOutputStream codedOutputStream) throws IOException {
            codedOutputStream.writeUInt64(1, this.address);
            codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(this.symbol));
            codedOutputStream.writeBytes(3, ByteString.copyFromUtf8(this.file));
            codedOutputStream.writeUInt64(4, this.offset);
            codedOutputStream.writeUInt32(5, this.importance);
        }
    }

    private static final class LogMessage
    extends ProtobufMessage {
        private static final int PROTOBUF_TAG = 6;
        ByteString logBytes;

        public LogMessage(ByteString byteString) {
            super(6, new ProtobufMessage[0]);
            this.logBytes = byteString;
        }

        @Override
        public int getPropertiesSize() {
            return CodedOutputStream.computeBytesSize(1, this.logBytes);
        }

        @Override
        public void writeProperties(CodedOutputStream codedOutputStream) throws IOException {
            codedOutputStream.writeBytes(1, this.logBytes);
        }
    }

    private static final class NullMessage
    extends ProtobufMessage {
        public NullMessage() {
            super(0, new ProtobufMessage[0]);
        }

        @Override
        public void write(CodedOutputStream codedOutputStream) throws IOException {
        }
    }

    private static abstract class ProtobufMessage {
        private final ProtobufMessage[] children;
        private final int tag;

        /*
         * Enabled aggressive block sorting
         */
        public /* varargs */ ProtobufMessage(int n2, ProtobufMessage ... arrprotobufMessage) {
            this.tag = n2;
            if (arrprotobufMessage == null) {
                arrprotobufMessage = EMPTY_CHILDREN;
            }
            this.children = arrprotobufMessage;
        }

        public int getPropertiesSize() {
            return 0;
        }

        public int getSize() {
            int n2 = this.getSizeNoTag();
            return n2 + CodedOutputStream.computeRawVarint32Size(n2) + CodedOutputStream.computeTagSize(this.tag);
        }

        public int getSizeNoTag() {
            int n2 = this.getPropertiesSize();
            ProtobufMessage[] arrprotobufMessage = this.children;
            int n3 = arrprotobufMessage.length;
            for (int i2 = 0; i2 < n3; ++i2) {
                n2 += arrprotobufMessage[i2].getSize();
            }
            return n2;
        }

        public void write(CodedOutputStream codedOutputStream) throws IOException {
            codedOutputStream.writeTag(this.tag, 2);
            codedOutputStream.writeRawVarint32(this.getSizeNoTag());
            this.writeProperties(codedOutputStream);
            ProtobufMessage[] arrprotobufMessage = this.children;
            int n2 = arrprotobufMessage.length;
            for (int i2 = 0; i2 < n2; ++i2) {
                arrprotobufMessage[i2].write(codedOutputStream);
            }
        }

        public void writeProperties(CodedOutputStream codedOutputStream) throws IOException {
        }
    }

    private static final class RepeatedMessage
    extends ProtobufMessage {
        private final ProtobufMessage[] messages;

        public /* varargs */ RepeatedMessage(ProtobufMessage ... arrprotobufMessage) {
            super(0, new ProtobufMessage[0]);
            this.messages = arrprotobufMessage;
        }

        @Override
        public int getSize() {
            int n2 = 0;
            ProtobufMessage[] arrprotobufMessage = this.messages;
            int n3 = arrprotobufMessage.length;
            for (int i2 = 0; i2 < n3; ++i2) {
                n2 += arrprotobufMessage[i2].getSize();
            }
            return n2;
        }

        @Override
        public void write(CodedOutputStream codedOutputStream) throws IOException {
            ProtobufMessage[] arrprotobufMessage = this.messages;
            int n2 = arrprotobufMessage.length;
            for (int i2 = 0; i2 < n2; ++i2) {
                arrprotobufMessage[i2].write(codedOutputStream);
            }
        }
    }

    private static final class SignalMessage
    extends ProtobufMessage {
        private static final int PROTOBUF_TAG = 3;
        private final long sigAddr;
        private final String sigCode;
        private final String sigName;

        public SignalMessage(SignalData signalData) {
            super(3, new ProtobufMessage[0]);
            this.sigName = signalData.name;
            this.sigCode = signalData.code;
            this.sigAddr = signalData.faultAddress;
        }

        @Override
        public int getPropertiesSize() {
            return CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(this.sigName)) + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(this.sigCode)) + CodedOutputStream.computeUInt64Size(3, this.sigAddr);
        }

        @Override
        public void writeProperties(CodedOutputStream codedOutputStream) throws IOException {
            codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(this.sigName));
            codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(this.sigCode));
            codedOutputStream.writeUInt64(3, this.sigAddr);
        }
    }

    private static final class ThreadMessage
    extends ProtobufMessage {
        private static final int PROTOBUF_TAG = 1;
        private final int importance;
        private final String name;

        public ThreadMessage(ThreadData threadData, RepeatedMessage repeatedMessage) {
            super(1, repeatedMessage);
            this.name = threadData.name;
            this.importance = threadData.importance;
        }

        private boolean hasName() {
            if (this.name != null && this.name.length() > 0) {
                return true;
            }
            return false;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public int getPropertiesSize() {
            int n2;
            if (this.hasName()) {
                n2 = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(this.name));
                do {
                    return CodedOutputStream.computeUInt32Size(2, this.importance) + n2;
                    break;
                } while (true);
            }
            n2 = 0;
            return CodedOutputStream.computeUInt32Size(2, this.importance) + n2;
        }

        @Override
        public void writeProperties(CodedOutputStream codedOutputStream) throws IOException {
            if (this.hasName()) {
                codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(this.name));
            }
            codedOutputStream.writeUInt32(2, this.importance);
        }
    }

}

