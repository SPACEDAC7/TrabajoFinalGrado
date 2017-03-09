/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.AdType;
import com.comscore.streaming.ContentType;
import com.comscore.streaming.StreamSense;
import com.comscore.streaming.StreamSenseClip;
import com.comscore.streaming.StreamSenseEventType;
import com.comscore.streaming.StreamSenseState;
import com.comscore.streaming.p;
import com.comscore.utils.Date;
import com.comscore.utils.Utils;
import java.util.HashMap;
import java.util.Map;

public class StreamingTag {
    private String[] a = new String[]{"ns_st_ci", "c3", "c4", "c6", "ns_st_st", "ns_st_pu", "ns_st_pr", "ns_st_ep", "ns_st_sn", "ns_st_en", "ns_st_ct"};
    private StreamSense b = new StreamSense();
    private long c = 0;
    private long d = 0;
    private int e = 0;
    private HashMap<String, String> f = null;
    private p g = p.None;
    private boolean h = false;

    public StreamingTag() {
        this.b.setLabel("ns_st_it", "r");
    }

    /*
     * Enabled aggressive block sorting
     */
    private HashMap<String, String> a(HashMap<String, String> hashMap) {
        hashMap = Utils.mapOfStrings(hashMap);
        String[] arrstring = this.a;
        int n2 = arrstring.length;
        int n3 = 0;
        while (n3 < n2) {
            String string2 = arrstring[n3];
            if (!hashMap.containsKey(string2)) {
                if (string2 == "ns_st_ci") {
                    hashMap.put(string2, "0");
                } else {
                    hashMap.put(string2, "*null");
                }
            }
            ++n3;
        }
        return hashMap;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(long l2) {
        if (this.b.getState() != StreamSenseState.IDLE && this.b.getState() != StreamSenseState.PAUSED) {
            this.b.notify(StreamSenseEventType.END, this.b(l2));
            return;
        } else {
            if (this.b.getState() != StreamSenseState.PAUSED) return;
            {
                this.b.notify(StreamSenseEventType.END, this.d);
                return;
            }
        }
    }

    private void a(long l2, HashMap<String, String> hashMap) {
        this.a(l2);
        ++this.e;
        if (!hashMap.containsKey("ns_st_cn")) {
            hashMap.put("ns_st_cn", String.valueOf(this.e));
        }
        if (!hashMap.containsKey("ns_st_pn")) {
            hashMap.put("ns_st_pn", "1");
        }
        if (!hashMap.containsKey("ns_st_tp")) {
            hashMap.put("ns_st_tp", "0");
        }
        this.b.setClip(hashMap);
        this.f = hashMap;
        this.c = l2;
        this.d = 0;
        this.b.notify(StreamSenseEventType.PLAY, this.d);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(HashMap<String, String> hashMap, p p2) {
        long l2 = Date.unixTime();
        hashMap = this.a(Utils.mapOfStrings(hashMap));
        if (this.g == p.None) {
            this.g = p2;
        }
        if (this.h && this.g == p2) {
            if (!this.c(hashMap)) {
                this.a(l2, hashMap);
            } else {
                this.b.getClip().setLabels(hashMap);
                if (this.b.getState() != StreamSenseState.PLAYING) {
                    this.c = l2;
                    this.b.notify(StreamSenseEventType.PLAY, this.d);
                }
            }
        } else {
            this.a(l2, hashMap);
        }
        this.h = true;
        this.g = p2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean a(String string2, HashMap<String, String> object, HashMap<String, String> hashMap) {
        boolean bl = true;
        if (string2 == null) return false;
        boolean bl2 = object != null;
        if (hashMap == null) {
            bl = false;
        }
        if (!(bl & bl2)) return false;
        object = (String)object.get(string2);
        string2 = hashMap.get(string2);
        if (object != null && string2 != null) {
            return object.equals(string2);
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private long b(long l2) {
        if (this.c > 0 && l2 >= this.c) {
            this.d += l2 - this.c;
            do {
                return this.d;
                break;
            } while (true);
        }
        this.d = 0;
        return this.d;
    }

    private void b(HashMap<String, String> hashMap) {
        long l2 = Date.unixTime();
        this.a(l2);
        ++this.e;
        hashMap = this.a(Utils.mapOfStrings(hashMap));
        if (!hashMap.containsKey("ns_st_cn")) {
            hashMap.put("ns_st_cn", String.valueOf(this.e));
        }
        if (!hashMap.containsKey("ns_st_pn")) {
            hashMap.put("ns_st_pn", "1");
        }
        if (!hashMap.containsKey("ns_st_tp")) {
            hashMap.put("ns_st_tp", "1");
        }
        if (!hashMap.containsKey("ns_st_ad")) {
            hashMap.put("ns_st_ad", "1");
        }
        this.b.setClip(hashMap);
        this.d = 0;
        this.b.notify(StreamSenseEventType.PLAY, this.d);
        this.c = l2;
        this.h = false;
    }

    private boolean c(HashMap<String, String> hashMap) {
        hashMap = this.a(Utils.mapOfStrings(hashMap));
        String[] arrstring = this.a;
        int n2 = arrstring.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            if (this.a(arrstring[i2], this.f, hashMap)) continue;
            return false;
        }
        return true;
    }

    @Deprecated
    public void playAdvertisement() {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("ns_st_ct", "va");
        this.b(hashMap);
    }

    @Deprecated
    public void playAudioAdvertisement() {
        this.playAudioAdvertisement(new HashMap<String, String>());
    }

    @Deprecated
    public void playAudioAdvertisement(HashMap<String, String> hashMap) {
        this.playAudioAdvertisement(hashMap, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void playAudioAdvertisement(HashMap<String, String> object, AdType adType) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        if (object != null) {
            hashMap.putAll((Map<String, String>)object);
        }
        if (!hashMap.containsKey("ns_st_ct")) {
            object = adType == null ? "a" + "a" : "a" + adType.a();
            hashMap.put("ns_st_ct", (String)object);
        }
        this.b(hashMap);
    }

    @Deprecated
    public void playAudioContentPart(HashMap<String, String> hashMap) {
        this.playAudioContentPart(hashMap, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void playAudioContentPart(HashMap<String, String> object, ContentType contentType) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        if (object != null) {
            hashMap.putAll((Map<String, String>)object);
        }
        if (!hashMap.containsKey("ns_st_ct")) {
            object = contentType == null ? "a" + "c" : "a" + contentType.a();
            hashMap.put("ns_st_ct", (String)object);
        }
        this.a(hashMap, p.AudioContent);
    }

    @Deprecated
    public void playContentPart(HashMap<String, String> hashMap) {
        HashMap<String, String> hashMap2 = new HashMap<String, String>();
        if (hashMap != null) {
            hashMap2.putAll(hashMap);
        }
        if (!hashMap2.containsKey("ns_st_ct")) {
            hashMap2.put("ns_st_ct", "vc");
        }
        this.a(hashMap2, p.VideoContent);
    }

    @Deprecated
    public void playVideoAdvertisement() {
        this.playVideoAdvertisement(new HashMap<String, String>());
    }

    @Deprecated
    public void playVideoAdvertisement(HashMap<String, String> hashMap) {
        this.playVideoAdvertisement(hashMap, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void playVideoAdvertisement(HashMap<String, String> object, AdType adType) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        if (object != null) {
            hashMap.putAll((Map<String, String>)object);
        }
        if (!hashMap.containsKey("ns_st_ct")) {
            object = adType == null ? "v" + "a" : "v" + adType.a();
            hashMap.put("ns_st_ct", (String)object);
        }
        this.b(hashMap);
    }

    @Deprecated
    public void playVideoContentPart(HashMap<String, String> hashMap) {
        this.playVideoContentPart(hashMap, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void playVideoContentPart(HashMap<String, String> object, ContentType contentType) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        if (object != null) {
            hashMap.putAll((Map<String, String>)object);
        }
        if (!hashMap.containsKey("ns_st_ct")) {
            object = contentType == null ? "v" + "c" : "v" + contentType.a();
            hashMap.put("ns_st_ct", (String)object);
        }
        this.a(hashMap, p.VideoContent);
    }

    public void stop() {
        long l2 = Date.unixTime();
        this.b.notify(StreamSenseEventType.PAUSE, this.b(l2));
    }
}

