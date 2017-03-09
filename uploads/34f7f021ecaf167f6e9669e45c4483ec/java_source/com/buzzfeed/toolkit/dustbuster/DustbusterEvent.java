/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.dustbuster;

import android.text.TextUtils;
import com.buzzfeed.toolkit.dustbuster.DustbusterEventCollection;
import com.buzzfeed.toolkit.dustbuster.json.DustbusterJson;
import com.buzzfeed.toolkit.dustbuster.json.DustbusterJsonArray;
import com.buzzfeed.toolkit.dustbuster.json.DustbusterJsonObject;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class DustbusterEvent {
    private static final String JSON_DEVICE_ID = "device_id";
    private static final String JSON_EVENT_ID = "event_id";
    private static final String JSON_SESSION_ID = "session_id";
    private static final String JSON_SOURCE = "source";
    private static final String JSON_TIME_STAMP = "client_ts";
    private static final String JSON_TYPE = "type";
    private static final List<String> RESERVED_KEYS;
    private static final String TAG;
    private String mDeviceId;
    private String mEventId;
    private Map<String, Object> mMetadata;
    private String mSessionId;
    private String mSource;
    private long mTimestamp;
    private String mType;

    static {
        TAG = DustbusterEvent.class.getSimpleName();
        RESERVED_KEYS = Arrays.asList("event_id", "source", "session_id", "client_ts", "type", "device_id");
    }

    public DustbusterEvent(DustbusterEventCollection.DustbusterCollectionEvent dustbusterCollectionEvent, String string2, String string3, String string4) {
        this(dustbusterCollectionEvent.getType(), string2, string3, string4, dustbusterCollectionEvent.getMetadata());
    }

    public DustbusterEvent(String string2) throws JSONException {
        string2 = new JSONObject(string2);
        this.mEventId = string2.getString("event_id");
        this.mTimestamp = string2.getLong("client_ts");
        this.mType = string2.getString("type");
        this.mSource = string2.getString("source");
        this.mDeviceId = string2.optString("device_id");
        this.mSessionId = string2.optString("session_id");
        Iterator iterator = string2.keys();
        if (iterator.hasNext()) {
            this.mMetadata = new HashMap<String, Object>();
            while (iterator.hasNext()) {
                String string3 = (String)iterator.next();
                if (RESERVED_KEYS.contains(string3)) continue;
                this.mMetadata.put(string3, string2.get(string3));
            }
        }
    }

    public DustbusterEvent(String string2, String string3, String string4, String string5, Map<String, Object> map) {
        this.mSessionId = string3;
        this.mDeviceId = string4;
        this.mType = string2;
        this.mSource = string5;
        this.mMetadata = map;
        this.mTimestamp = System.currentTimeMillis();
        this.mEventId = UUID.randomUUID().toString();
        this.validateMetadata();
    }

    public static String getEventIdKey() {
        return "event_id";
    }

    /*
     * Enabled aggressive block sorting
     */
    private DustbusterJson processObject(DustbusterJson dustbusterJson, String string2, Object arrobject) throws JSONException {
        if (arrobject instanceof Map) {
            arrobject = (Map)arrobject;
            DustbusterJsonObject dustbusterJsonObject = new DustbusterJsonObject();
            Iterator iterator = arrobject.keySet().iterator();
            do {
                if (!iterator.hasNext()) {
                    dustbusterJson.add(string2, dustbusterJsonObject);
                    return dustbusterJson;
                }
                Object k2 = iterator.next();
                this.processObject(dustbusterJsonObject, (String)k2, arrobject.get(k2));
            } while (true);
        }
        if (arrobject instanceof Collection) {
            DustbusterJsonArray dustbusterJsonArray = new DustbusterJsonArray();
            arrobject = ((Collection)arrobject).iterator();
            do {
                if (!arrobject.hasNext()) {
                    dustbusterJson.add(string2, dustbusterJsonArray);
                    return dustbusterJson;
                }
                this.processObject(dustbusterJsonArray, null, arrobject.next());
            } while (true);
        }
        if (arrobject instanceof Object[]) {
            DustbusterJsonArray dustbusterJsonArray = new DustbusterJsonArray();
            arrobject = arrobject;
            int n2 = arrobject.length;
            int n3 = 0;
            do {
                if (n3 >= n2) {
                    dustbusterJson.add(string2, dustbusterJsonArray);
                    return dustbusterJson;
                }
                this.processObject(dustbusterJsonArray, null, arrobject[n3]);
                ++n3;
            } while (true);
        }
        if (arrobject == null) {
            arrobject = JSONObject.NULL;
        }
        dustbusterJson.add(string2, arrobject);
        return dustbusterJson;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void validateMetadata() {
        String string2;
        if (this.mMetadata == null) return;
        if (this.mMetadata.size() == 0) {
            return;
        }
        Iterator<String> iterator = this.mMetadata.keySet().iterator();
        do {
            if (!iterator.hasNext()) return;
        } while (!RESERVED_KEYS.contains(string2 = iterator.next()));
        throw new IllegalArgumentException("Cannot use key: " + string2 + " in metadata because it is already being used");
    }

    public String getDeviceId() {
        return this.mDeviceId;
    }

    public String getEventId() {
        return this.mEventId;
    }

    public Map<String, Object> getMetadata() {
        return this.mMetadata;
    }

    public String getSessionId() {
        return this.mSessionId;
    }

    public String getSource() {
        return this.mSource;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public String getType() {
        return this.mType;
    }

    public String toJson() {
        return this.toJsonObject(true).toString();
    }

    public String toJson(boolean bl) {
        return this.toJsonObject(bl).toString();
    }

    public JSONObject toJsonObject() {
        return this.toJsonObject(true);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public JSONObject toJsonObject(boolean var1_1) {
        var3_2 = DustbusterEvent.TAG + ".toJsonObject";
        var4_3 = new DustbusterJsonObject();
        if (!var1_1) ** GOTO lbl6
        try {
            var4_3.add("event_id", this.mEventId);
lbl6: // 2 sources:
            var4_3.add("client_ts", this.mTimestamp);
            var4_3.add("type", this.mType);
            var4_3.add("source", this.mSource);
            var2_4 = TextUtils.isEmpty((CharSequence)this.mDeviceId) != false ? JSONObject.NULL : this.mDeviceId;
            var4_3.add("device_id", var2_4);
            var2_4 = TextUtils.isEmpty((CharSequence)this.mSessionId) != false ? JSONObject.NULL : this.mSessionId;
        }
        catch (JSONException var2_5) {
            LogUtil.e(var3_2, "Error writing JSON", (Throwable)var2_5);
            return null;
        }
        var4_3.add("session_id", var2_4);
        if (this.mMetadata == null) return var4_3;
        if (this.mMetadata.keySet().size() <= 0) return var4_3;
        var2_4 = this.mMetadata.keySet().iterator();
        while (var2_4.hasNext() != false) {
            var5_6 = var2_4.next();
            this.processObject(var4_3, var5_6, this.mMetadata.get(var5_6));
        }
        return var4_3;
    }
}

