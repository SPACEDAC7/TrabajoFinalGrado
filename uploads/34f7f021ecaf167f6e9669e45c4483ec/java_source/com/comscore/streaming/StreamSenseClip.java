/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSenseEventType;
import com.comscore.streaming.StreamSenseState;
import com.comscore.streaming.StreamSenseUtils;
import com.comscore.utils.Utils;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class StreamSenseClip {
    HashMap<String, String> a = new HashMap();
    private int b;
    private int c;
    private long d;
    private long e;
    private long f;
    private long g;
    private String h;

    public StreamSenseClip() {
        this.reset();
    }

    private void a(String string2, HashMap<String, String> object) {
        if ((object = object.get(string2)) != null) {
            this.a.put(string2, (String)object);
        }
    }

    protected int a() {
        return this.b;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected HashMap<String, String> a(StreamSenseEventType streamSenseEventType, HashMap<String, String> hashMap) {
        if (hashMap == null) {
            hashMap = new HashMap();
        }
        hashMap.put("ns_st_cn", this.getClipId());
        hashMap.put("ns_st_bt", String.valueOf(this.e()));
        if (streamSenseEventType == StreamSenseEventType.PLAY || streamSenseEventType == null) {
            hashMap.put("ns_st_sq", String.valueOf(this.c));
        }
        if (streamSenseEventType == StreamSenseEventType.PAUSE || streamSenseEventType == StreamSenseEventType.END || streamSenseEventType == StreamSenseEventType.KEEP_ALIVE || streamSenseEventType == StreamSenseEventType.HEART_BEAT || streamSenseEventType == null) {
            hashMap.put("ns_st_pt", String.valueOf(this.f()));
            hashMap.put("ns_st_pc", String.valueOf(this.b));
        }
        hashMap.putAll(this.getLabels());
        return hashMap;
    }

    protected void a(int n2) {
        this.b = n2;
    }

    protected void a(long l2) {
        this.d = l2;
    }

    protected void a(HashMap<String, String> hashMap, StreamSenseState streamSenseState) {
        if (hashMap != null) {
            this.a.putAll(hashMap);
        }
        this.b(this.a, streamSenseState);
    }

    protected void b() {
        ++this.b;
    }

    protected void b(int n2) {
        this.c = n2;
    }

    protected void b(long l2) {
        this.f = l2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    protected void b(HashMap<String, String> hashMap, StreamSenseState object) {
        String string2;
        string2 = hashMap.get("ns_st_cn");
        if (string2 != null) {
            this.setClipId(string2);
            hashMap.remove("ns_st_cn");
        }
        if ((string2 = hashMap.get("ns_st_bt")) != null) {
            try {
                this.d = Long.parseLong(string2);
                hashMap.remove("ns_st_bt");
            }
            catch (NumberFormatException var3_7) {}
        }
        this.a("ns_st_cl", hashMap);
        this.a("ns_st_pn", hashMap);
        this.a("ns_st_tp", hashMap);
        this.a("ns_st_ub", hashMap);
        this.a("ns_st_br", hashMap);
        if ((object == StreamSenseState.PLAYING || object == null) && (string2 = hashMap.get("ns_st_sq")) != null) {
            try {
                this.c = Integer.parseInt(string2);
                hashMap.remove("ns_st_sq");
            }
            catch (NumberFormatException var3_6) {}
        }
        if (object != StreamSenseState.BUFFERING && (string2 = hashMap.get("ns_st_pt")) != null) {
            try {
                this.f = Long.parseLong(string2);
                hashMap.remove("ns_st_pt");
            }
            catch (NumberFormatException var3_5) {}
        }
        if (object != StreamSenseState.PAUSED && object != StreamSenseState.IDLE) {
            if (object != null) return;
        }
        if ((object = hashMap.get("ns_st_pc")) == null) return;
        try {
            this.b = Integer.parseInt((String)object);
            hashMap.remove("ns_st_pc");
            return;
        }
        catch (NumberFormatException var1_2) {
            return;
        }
    }

    protected int c() {
        return this.c;
    }

    protected void c(long l2) {
        this.g = l2;
    }

    protected void d() {
        ++this.c;
    }

    protected void d(long l2) {
        this.e = l2;
    }

    protected long e() {
        long l2;
        long l3 = l2 = this.d;
        if (this.e >= 0) {
            l3 = l2 + (System.currentTimeMillis() - this.e);
        }
        return l3;
    }

    protected long f() {
        long l2;
        long l3 = l2 = this.f;
        if (this.g >= 0) {
            l3 = l2 + (System.currentTimeMillis() - this.g);
        }
        return l3;
    }

    protected long g() {
        return this.e;
    }

    public String getClipId() {
        if (Utils.isEmpty(this.h)) {
            this.setClipId("1");
        }
        return this.h;
    }

    public String getLabel(String string2) {
        return this.a.get(string2);
    }

    public HashMap<String, String> getLabels() {
        return this.a;
    }

    public long getPlaybackTimestamp() {
        return this.g;
    }

    public void reset() {
        this.reset(null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void reset(Set<String> set) {
        if (set != null && !set.isEmpty()) {
            StreamSenseUtils.filterMap(this.a, set);
        } else {
            this.a.clear();
        }
        if (!this.a.containsKey("ns_st_cl")) {
            this.a.put("ns_st_cl", "0");
        }
        if (!this.a.containsKey("ns_st_pn")) {
            this.a.put("ns_st_pn", "1");
        }
        if (!this.a.containsKey("ns_st_tp")) {
            this.a.put("ns_st_tp", "1");
        }
        this.a(0);
        this.b(0);
        this.a(0);
        this.d(-1);
        this.b(0);
        this.c(-1);
    }

    public void setClipId(String string2) {
        this.h = string2;
    }

    public void setLabel(String string2, String string3) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put(string2, string3);
        this.a(hashMap, null);
    }

    public void setLabels(HashMap<String, String> hashMap) {
        this.a(hashMap, null);
    }
}

