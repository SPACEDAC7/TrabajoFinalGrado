/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core;

import com.crashlytics.android.core.ByteString;

final class WireFormat {
    static final int MESSAGE_SET_ITEM = 1;
    static final int MESSAGE_SET_ITEM_END_TAG;
    static final int MESSAGE_SET_ITEM_TAG;
    static final int MESSAGE_SET_MESSAGE = 3;
    static final int MESSAGE_SET_MESSAGE_TAG;
    static final int MESSAGE_SET_TYPE_ID = 2;
    static final int MESSAGE_SET_TYPE_ID_TAG;
    static final int TAG_TYPE_BITS = 3;
    static final int TAG_TYPE_MASK = 7;
    public static final int WIRETYPE_END_GROUP = 4;
    public static final int WIRETYPE_FIXED32 = 5;
    public static final int WIRETYPE_FIXED64 = 1;
    public static final int WIRETYPE_LENGTH_DELIMITED = 2;
    public static final int WIRETYPE_START_GROUP = 3;
    public static final int WIRETYPE_VARINT = 0;

    static {
        MESSAGE_SET_ITEM_TAG = WireFormat.makeTag(1, 3);
        MESSAGE_SET_ITEM_END_TAG = WireFormat.makeTag(1, 4);
        MESSAGE_SET_TYPE_ID_TAG = WireFormat.makeTag(2, 0);
        MESSAGE_SET_MESSAGE_TAG = WireFormat.makeTag(3, 2);
    }

    private WireFormat() {
    }

    public static int getTagFieldNumber(int n2) {
        return n2 >>> 3;
    }

    static int getTagWireType(int n2) {
        return n2 & 7;
    }

    static int makeTag(int n2, int n3) {
        return n2 << 3 | n3;
    }

    static enum FieldType {
        DOUBLE(JavaType.DOUBLE, 1),
        FLOAT(JavaType.FLOAT, 5),
        INT64(JavaType.LONG, 0),
        UINT64(JavaType.LONG, 0),
        INT32(JavaType.INT, 0),
        FIXED64(JavaType.LONG, 1),
        FIXED32(JavaType.INT, 5),
        BOOL(JavaType.BOOLEAN, 0),
        STRING(JavaType.STRING, 2){

            @Override
            public boolean isPackable() {
                return false;
            }
        }
        ,
        GROUP(JavaType.MESSAGE, 3){

            @Override
            public boolean isPackable() {
                return false;
            }
        }
        ,
        MESSAGE(JavaType.MESSAGE, 2){

            @Override
            public boolean isPackable() {
                return false;
            }
        }
        ,
        BYTES(JavaType.BYTE_STRING, 2){

            @Override
            public boolean isPackable() {
                return false;
            }
        }
        ,
        UINT32(JavaType.INT, 0),
        ENUM(JavaType.ENUM, 0),
        SFIXED32(JavaType.INT, 5),
        SFIXED64(JavaType.LONG, 1),
        SINT32(JavaType.INT, 0),
        SINT64(JavaType.LONG, 0);
        
        private final JavaType javaType;
        private final int wireType;

        private FieldType(JavaType javaType, int n3) {
            this.javaType = javaType;
            this.wireType = n3;
        }

        public JavaType getJavaType() {
            return this.javaType;
        }

        public int getWireType() {
            return this.wireType;
        }

        public boolean isPackable() {
            return true;
        }

    }

    static enum JavaType {
        INT(0),
        LONG(0),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(0.0),
        BOOLEAN(false),
        STRING(""),
        BYTE_STRING(ByteString.EMPTY),
        ENUM(null),
        MESSAGE(null);
        
        private final Object defaultDefault;

        private JavaType(Object object) {
            this.defaultDefault = object;
        }

        Object getDefaultDefault() {
            return this.defaultDefault;
        }
    }

}

