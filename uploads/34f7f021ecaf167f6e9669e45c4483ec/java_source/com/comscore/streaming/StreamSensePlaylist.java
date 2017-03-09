/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSenseClip;
import com.comscore.streaming.StreamSenseEventType;
import com.comscore.streaming.StreamSenseState;
import com.comscore.streaming.StreamSenseUtils;
import com.comscore.utils.CSLog;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class StreamSensePlaylist {
    private StreamSenseClip a = new StreamSenseClip();
    private String b;
    private int c;
    private int d;
    private int e;
    private long f;
    private long g;
    private HashMap<String, String> h = new HashMap();
    private int i;
    private boolean j = false;

    public StreamSensePlaylist() {
        this.reset();
    }

    protected int a() {
        return this.c;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected HashMap<String, String> a(StreamSenseEventType streamSenseEventType, HashMap<String, String> hashMap) {
        if (hashMap == null) {
            hashMap = new HashMap();
        }
        hashMap.put("ns_st_bp", String.valueOf(this.c()));
        hashMap.put("ns_st_sp", String.valueOf(this.c));
        hashMap.put("ns_st_id", String.valueOf(this.b));
        if (this.e > 0) {
            hashMap.put("ns_st_bc", String.valueOf(this.e));
        }
        if (streamSenseEventType == StreamSenseEventType.PAUSE || streamSenseEventType == StreamSenseEventType.END || streamSenseEventType == StreamSenseEventType.KEEP_ALIVE || streamSenseEventType == StreamSenseEventType.HEART_BEAT || streamSenseEventType == null) {
            hashMap.put("ns_st_pa", String.valueOf(this.d()));
            hashMap.put("ns_st_pp", String.valueOf(this.d));
        }
        if (!(streamSenseEventType != StreamSenseEventType.PLAY && streamSenseEventType != null || this.j())) {
            hashMap.put("ns_st_pb", "1");
            this.a(true);
        }
        hashMap.putAll(this.getLabels());
        return hashMap;
    }

    protected void a(int n2) {
        this.c = n2;
    }

    protected void a(long l2) {
        CSLog.d(this, "addPlaybackTime(" + l2 + ")");
        if (this.a.getPlaybackTimestamp() >= 0) {
            long l3 = l2 - this.a.getPlaybackTimestamp();
            this.a.c(-1);
            this.a.b(this.a.f() + l3);
            this.d(this.d() + l3);
            CSLog.d(this, "addPlaybackTime(" + l2 + ") ->" + l3);
        }
    }

    protected void a(HashMap<String, String> hashMap, StreamSenseState streamSenseState) {
        if (hashMap != null) {
            this.h.putAll(hashMap);
        }
        this.b(this.h, streamSenseState);
    }

    protected void a(boolean bl) {
        this.j = bl;
    }

    protected void b() {
        ++this.c;
    }

    protected void b(int n2) {
        this.d = n2;
    }

    protected void b(long l2) {
        CSLog.d(this, "addBufferingTime(" + l2 + ")");
        if (this.a.g() >= 0) {
            long l3 = l2 - this.a.g();
            this.a.d(-1);
            this.a.a(this.a.e() + l3);
            this.c(this.c() + l3);
            CSLog.d(this, "addBufferingTime(" + l2 + ") ->" + l3);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    protected void b(HashMap<String, String> hashMap, StreamSenseState object) {
        String string2;
        string2 = hashMap.get("ns_st_sp");
        if (string2 != null) {
            try {
                this.c = Integer.parseInt(string2);
                hashMap.remove("ns_st_sp");
            }
            catch (NumberFormatException var3_8) {}
        }
        if ((string2 = hashMap.get("ns_st_bc")) != null) {
            try {
                this.e = Integer.parseInt(string2);
                hashMap.remove("ns_st_bc");
            }
            catch (NumberFormatException var3_7) {}
        }
        if ((string2 = hashMap.get("ns_st_bp")) != null) {
            try {
                this.f = Long.parseLong(string2);
                hashMap.remove("ns_st_bp");
            }
            catch (NumberFormatException var3_6) {}
        }
        if ((string2 = hashMap.get("ns_st_id")) != null) {
            this.b = string2;
            hashMap.remove("ns_st_id");
        }
        if (object != StreamSenseState.BUFFERING && (string2 = hashMap.get("ns_st_pa")) != null) {
            try {
                this.g = Long.parseLong(string2);
                hashMap.remove("ns_st_pa");
            }
            catch (NumberFormatException var3_5) {}
        }
        if (object != StreamSenseState.PAUSED && object != StreamSenseState.IDLE) {
            if (object != null) return;
        }
        if ((object = hashMap.get("ns_st_pp")) == null) return;
        try {
            this.d = Integer.parseInt((String)object);
            hashMap.remove("ns_st_pp");
            return;
        }
        catch (NumberFormatException var1_2) {
            return;
        }
    }

    protected long c() {
        long l2;
        long l3 = l2 = this.f;
        if (this.a.g() >= 0) {
            l3 = l2 + (System.currentTimeMillis() - this.a.g());
        }
        return l3;
    }

    protected void c(int n2) {
        this.e = n2;
    }

    protected void c(long l2) {
        this.f = l2;
    }

    protected long d() {
        long l2;
        long l3 = l2 = this.g;
        if (this.a.getPlaybackTimestamp() >= 0) {
            l3 = l2 + (System.currentTimeMillis() - this.a.getPlaybackTimestamp());
        }
        return l3;
    }

    protected void d(int n2) {
        this.i = n2;
    }

    protected void d(long l2) {
        this.g = l2;
    }

    protected int e() {
        return this.d;
    }

    protected void f() {
        ++this.d;
        this.a.b();
    }

    protected int g() {
        return this.e;
    }

    public StreamSenseClip getClip() {
        return this.a;
    }

    public String getLabel(String string2) {
        return this.h.get(string2);
    }

    public HashMap<String, String> getLabels() {
        return this.h;
    }

    public String getPlaylistId() {
        return this.b;
    }

    protected void h() {
        ++this.e;
    }

    protected void i() {
        ++this.i;
    }

    protected boolean j() {
        return this.j;
    }

    public void reset() {
        this.reset(null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void reset(Set<String> set) {
        if (set != null && !set.isEmpty()) {
            StreamSenseUtils.filterMap(this.h, set);
        } else {
            this.h.clear();
        }
        this.setPlaylistId("" + System.currentTimeMillis() + "_" + this.i);
        this.c(0);
        this.d(0);
        this.b(0);
        this.a(0);
        this.c(0);
        this.j = false;
    }

    public void setLabel(String string2, String string3) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put(string2, string3);
        this.a(hashMap, null);
    }

    public void setLabels(HashMap<String, String> hashMap) {
        this.a(hashMap, null);
    }

    public void setPlaylistId(String string2) {
        this.b = string2;
    }
}

