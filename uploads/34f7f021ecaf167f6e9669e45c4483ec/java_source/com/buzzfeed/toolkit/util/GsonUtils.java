/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.gson.TypeAdapter
 *  com.google.gson.stream.JsonReader
 *  com.google.gson.stream.JsonToken
 *  com.google.gson.stream.JsonWriter
 */
package com.buzzfeed.toolkit.util;

import com.buzzfeed.toolkit.util.LogUtil;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

public class GsonUtils {
    private static final String TAG = LogUtil.makeLogTag(GsonUtils.class);
    public static TypeAdapter<Boolean> safeBooleanAdapter = new TypeAdapter<Boolean>(){

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public Boolean read(JsonReader object) throws IOException {
            boolean bl = true;
            boolean bl2 = false;
            JsonToken jsonToken = object.peek();
            switch (.$SwitchMap$com$google$gson$stream$JsonToken[jsonToken.ordinal()]) {
                default: {
                    throw new IllegalStateException("Expected BOOLEAN but was " + (Object)jsonToken);
                }
                case 1: {
                    return object.nextBoolean();
                }
                case 2: {
                    object.nextNull();
                    return false;
                }
                case 3: {
                    if (object.nextInt() != 0) {
                        do {
                            return bl;
                            break;
                        } while (true);
                    }
                    bl = false;
                    return bl;
                }
                case 4: 
            }
            object = object.nextString();
            if (!Boolean.parseBoolean((String)object)) {
                bl = bl2;
                if (!object.equals("1")) return bl;
            }
            bl = true;
            return bl;
        }

        public void write(JsonWriter jsonWriter, Boolean bl) throws IOException {
            if (bl == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.value(bl.booleanValue());
        }
    };
    public static TypeAdapter<Integer> safeIntegerAdapter;
    public static TypeAdapter<Long> safeLongAdapter;

    static {
        safeLongAdapter = new TypeAdapter<Long>(){

            public Long read(JsonReader object) throws IOException {
                JsonToken jsonToken = object.peek();
                switch (.$SwitchMap$com$google$gson$stream$JsonToken[jsonToken.ordinal()]) {
                    default: {
                        throw new IllegalStateException("Expected LONG but was " + (Object)jsonToken);
                    }
                    case 1: {
                        object.nextBoolean();
                        return 0;
                    }
                    case 2: {
                        object.nextNull();
                        return 0;
                    }
                    case 3: {
                        return object.nextLong();
                    }
                    case 4: 
                }
                object = object.nextString();
                try {
                    object = Long.valueOf((String)object);
                    return object;
                }
                catch (NumberFormatException var1_2) {
                    LogUtil.d(TAG, "Unable to parse Long value: " + var1_2.getMessage());
                    return 0;
                }
            }

            public void write(JsonWriter jsonWriter, Long l2) throws IOException {
                if (l2 == null) {
                    jsonWriter.nullValue();
                    return;
                }
                jsonWriter.value((Number)l2);
            }
        };
        safeIntegerAdapter = new TypeAdapter<Integer>(){

            public Integer read(JsonReader object) throws IOException {
                JsonToken jsonToken = object.peek();
                switch (.$SwitchMap$com$google$gson$stream$JsonToken[jsonToken.ordinal()]) {
                    default: {
                        throw new IllegalStateException("Expected INTEGER but was " + (Object)jsonToken);
                    }
                    case 1: {
                        object.nextBoolean();
                        return 0;
                    }
                    case 2: {
                        object.nextNull();
                        return 0;
                    }
                    case 3: {
                        return object.nextInt();
                    }
                    case 4: 
                }
                object = object.nextString();
                try {
                    object = Integer.valueOf((String)object);
                    return object;
                }
                catch (NumberFormatException var1_2) {
                    return 0;
                }
            }

            public void write(JsonWriter jsonWriter, Integer n2) throws IOException {
                if (n2 == null) {
                    jsonWriter.nullValue();
                    return;
                }
                jsonWriter.value((Number)n2);
            }
        };
    }

}

