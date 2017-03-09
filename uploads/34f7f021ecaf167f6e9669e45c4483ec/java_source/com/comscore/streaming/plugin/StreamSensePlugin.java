/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.comscore.streaming.plugin;

import android.util.Log;
import com.comscore.analytics.Core;
import com.comscore.streaming.StreamSense;
import com.comscore.streaming.StreamSenseClip;
import com.comscore.streaming.StreamSenseEventType;
import com.comscore.streaming.StreamSensePlaylist;
import com.comscore.streaming.plugin.StreamSensePlayer;
import com.comscore.streaming.plugin.StreamSensePluginListener;
import com.comscore.streaming.plugin.a;
import com.comscore.utils.task.TaskExecutor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StreamSensePlugin
extends StreamSense {
    private static final float[][] e;
    private HashMap<String, String> A = new HashMap();
    private boolean B = false;
    private boolean C = false;
    private boolean D = false;
    private final String E = "_all_";
    private String[] F = null;
    private int G = -1;
    private String[] H = null;
    private int I = -1;
    private HashMap<String, String> J = new HashMap();
    private String b = "1.0.1";
    private int c = 10;
    private int d = 500;
    private float f = 1.25f;
    private int g = 2;
    private int h = 300;
    private int i = 6;
    private Runnable j;
    private List<Long> k = new ArrayList<Long>();
    private List<Long> l = new ArrayList<Long>();
    private long m = 0;
    private boolean n = false;
    private List<StreamSensePluginListener> o = new ArrayList<StreamSensePluginListener>();
    private boolean p = false;
    private boolean q = false;
    private boolean r = false;
    private boolean s = false;
    private boolean t = false;
    private StreamSensePlayer u;
    private boolean v = false;
    private boolean w = false;
    private boolean x = false;
    private HashMap<String, String> y = new HashMap();
    private HashMap<String, String> z = new HashMap();

    static {
        float[] arrf = new float[]{-0.5f, 0.0f, 0.5f};
        float[] arrf2 = new float[]{-0.3f, -0.1f, 0.1f, 0.3f};
        float[] arrf3 = new float[]{-0.14286f, -0.08571f, -0.02857f, 0.02857f, 0.08571f, 0.14286f};
        float[] arrf4 = new float[]{-0.10714f, -0.07143f, -0.03571f, 0.0f, 0.03571f, 0.07143f, 0.10714f};
        float[] arrf5 = new float[]{-0.03846f, -0.03147f, -0.02448f, -0.01748f, -0.01049f, -0.0035f, 0.0035f, 0.01049f, 0.01748f, 0.02448f, 0.03147f, 0.03846f};
        e = new float[][]{{-1.0f, 1.0f}, arrf, arrf2, {-0.2f, -0.1f, 0.0f, 0.1f, 0.2f}, arrf3, arrf4, {-0.08333f, -0.05952f, -0.03571f, -0.0119f, 0.0119f, 0.03571f, 0.05952f, 0.08333f}, {-0.06667f, -0.05f, -0.03333f, -0.01667f, 0.0f, 0.01667f, 0.03333f, 0.05f, 0.06667f}, {-0.05455f, -0.04242f, -0.0303f, -0.01818f, -0.00606f, 0.00606f, 0.01818f, 0.0303f, 0.04242f, 0.05455f}, {-0.04545f, -0.03636f, -0.02727f, -0.01818f, -0.00909f, 0.0f, 0.00909f, 0.01818f, 0.02727f, 0.03636f, 0.04545f}, arrf5, {-0.03297f, -0.02747f, -0.02198f, -0.01648f, -0.01099f, -0.00549f, 0.0f, 0.00549f, 0.01099f, 0.01648f, 0.02198f, 0.02747f, 0.03297f}};
    }

    public StreamSensePlugin(HashMap<String, String> hashMap, String string2, String string3, String string4) {
        if (hashMap != null && hashMap.size() > 0) {
            this.b(hashMap);
        }
        this.setLabel("ns_st_mp", string2, true);
        this.setLabel("ns_st_pv", string3, true);
        this.setLabel("ns_st_mv", string4, true);
    }

    private long a(int n2) {
        return this.k.get(this.k.size() - 1 - n2);
    }

    static /* synthetic */ long a(StreamSensePlugin streamSensePlugin, int n2) {
        return streamSensePlugin.a(n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private HashMap<String, String> a(HashMap<String, HashMap<String, String>> hashMap, HashMap<String, String> hashMap2) {
        HashMap hashMap3 = new HashMap();
        hashMap2 = hashMap2 != null && hashMap2.size() > 0 ? new HashMap(hashMap2) : hashMap3;
        boolean bl = this.H != null && this.H.length == 1 && this.H[0].equals("_all_");
        if (hashMap.size() <= 0) return hashMap2;
        if (!bl) {
            if (hashMap2.size() > 0) {
                hashMap2.putAll(this.c(hashMap.get("")));
            } else {
                hashMap2 = this.c(hashMap.get(""));
            }
        }
        Iterator<String> iterator = hashMap.get("").keySet().iterator();
        do {
            hashMap3 = hashMap2;
            if (!iterator.hasNext()) return hashMap3;
            hashMap3 = iterator.next();
            boolean bl2 = Pattern.compile("^([Cc][A-Da-d]_)?ns_st_.+").matcher((CharSequence)((Object)hashMap3)).find();
            boolean bl3 = Pattern.compile("^[Cc][A-Da-d]?([1-9]|1[0-9]|20)$").matcher((CharSequence)((Object)hashMap3)).find();
            if (!bl2 && !bl3) continue;
            hashMap2.put(hashMap3, hashMap.get("").get(hashMap3));
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(String string2) {
        if (string2 != null && string2.length() != 0) {
            Matcher matcher = Pattern.compile("([^=, ]+)\\s*=(\\s*('([^']+?)'|[a-z0-9\\._-]+)\\s*\\+?)+\\s*", 2).matcher(string2);
            while (matcher.find()) {
                String string3;
                String[] arrstring = string2.substring(matcher.start(), matcher.end()).split("=", 2);
                if (arrstring == null || arrstring.length != 2 || (string3 = arrstring[0].replace(" ", "")) == null || string3.length() <= 0) continue;
                this.J.put(string3, arrstring[1]);
            }
        }
    }

    private boolean a(long l2) {
        if (Long.parseLong(this.getClip().getLabel("ns_st_cl")) > 0 && (l2 > Long.parseLong(this.getClip().getLabel("ns_st_cl")) || Math.abs(l2 - Long.parseLong(this.getClip().getLabel("ns_st_cl"))) < (long)this.d)) {
            return true;
        }
        return false;
    }

    static /* synthetic */ boolean a(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.t;
    }

    static /* synthetic */ boolean a(StreamSensePlugin streamSensePlugin, long l2) {
        return streamSensePlugin.a(l2);
    }

    static /* synthetic */ boolean a(StreamSensePlugin streamSensePlugin, boolean bl) {
        streamSensePlugin.w = bl;
        return bl;
    }

    private long b(int n2) {
        return this.l.get(this.l.size() - 1 - n2);
    }

    static /* synthetic */ long b(StreamSensePlugin streamSensePlugin, int n2) {
        return streamSensePlugin.b(n2);
    }

    static /* synthetic */ long b(StreamSensePlugin streamSensePlugin, long l2) {
        streamSensePlugin.m = l2;
        return l2;
    }

    static /* synthetic */ StreamSensePlayer b(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.u;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private HashMap<String, String> b(HashMap<String, HashMap<String, String>> hashMap, HashMap<String, String> object) {
        HashMap<String, String> hashMap2 = new HashMap<String, String>();
        if (object != null && object.size() > 0) {
            hashMap2 = new HashMap(object);
        }
        Iterator<String> iterator = this.J.keySet().iterator();
        block2 : while (iterator.hasNext()) {
            String string2 = iterator.next();
            object = "";
            Matcher matcher = Pattern.compile("'([^']+?)'|[a-z0-9\\._-]+\\s*", 2).matcher(this.J.get(string2));
            do {
                if (!matcher.find()) continue block2;
                String string3 = this.J.get(string2).substring(matcher.start(), matcher.end()).replace(" ", "");
                if (Pattern.compile("^'([^']+)'$", 2).matcher(string3).find()) {
                    object = string3.replaceFirst("^'+", "").replaceFirst("'+$", "");
                } else {
                    try {
                        String string4;
                        int n2 = string3.lastIndexOf(46);
                        if (n2 >= 1 && n2 < string3.length() - 1) {
                            string4 = string3.substring(0, n2);
                            string3 = string3.substring(n2 + 1, string3.length());
                        } else {
                            string4 = "";
                        }
                        for (String string5 : hashMap.keySet()) {
                            HashMap<String, String> hashMap3 = hashMap.get(string5);
                            if (!string5.equals(string4)) continue;
                            if (hashMap3 != null && hashMap3.containsKey(string3)) {
                                object = string4 = hashMap3.get(string3);
                            }
                            break;
                        }
                    }
                    catch (Exception var5_7) {
                        this.log("Exception occurred while processing mapped labels");
                    }
                }
                hashMap2.put(string2, (String)object);
            } while (true);
            break;
        }
        return hashMap2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void b(String arrstring) {
        if (arrstring == null || arrstring.length() == 0) {
            return;
        }
        arrstring = arrstring.split(",");
        int n2 = arrstring.length;
        int n3 = 0;
        while (n3 < n2) {
            String string2;
            String[] arrstring2 = arrstring[n3].split("=", 2);
            if (arrstring2.length == 2 && (string2 = arrstring2[0].replace(" ", "")) != null && string2.length() > 0) {
                arrstring2 = arrstring2[1].replaceFirst("^'+", "").replaceFirst("'+$", "");
                this.setLabel(string2, (String)arrstring2);
                this.A.put(string2, (String)arrstring2);
            }
            ++n3;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b(HashMap<String, String> object) {
        Object object2;
        this.D = Boolean.valueOf((String)object.get("debug"));
        if (object.containsKey("labelmapping")) {
            this.a((String)object.get("labelmapping"));
        }
        if (object.containsKey("persistentlabels")) {
            this.b((String)object.get("persistentlabels"));
        }
        if (object.containsKey("throttling") && Boolean.valueOf((String)object.get("throttling")).booleanValue()) {
            this.setPausePlaySwitchDelayEnabled(true);
        } else {
            this.setPausePlaySwitchDelayEnabled(false);
        }
        if (object.containsKey("include")) {
            object2 = (String)object.get("include");
            if (object2 == "_all_") {
                this.F = new String[1];
                this.F[0] = "_all_";
            } else if (object2.length() > 0) {
                this.F = object2.split(",");
            }
        }
        if ((this.F == null || this.F.length == 0 || !this.F[0].equals("_all_")) && object.containsKey("include_prefixes") && (object2 = (String)object.get("include_prefixes")) != null && object2.length() > 0) {
            if (object2.equals("_all_")) {
                this.F = new String[1];
                this.F[0] = "_all_";
            } else {
                if (this.F == null) {
                    this.F = new String[0];
                }
                this.G = this.F.length;
                ArrayList<String> arrayList = new ArrayList<String>(Arrays.asList(this.F));
                arrayList.addAll(Arrays.asList(object2.split(",")));
                this.F = new String[arrayList.size()];
                this.F = arrayList.toArray(this.F);
            }
        }
        if (this.F == null) {
            this.H = new String[1];
            this.H[0] = "_all_";
            return;
        }
        if (object.containsKey("exclude")) {
            object2 = (String)object.get("exclude");
            if (object2.equals("_all_")) {
                this.H = new String[1];
                this.H[0] = "_all_";
            } else if (object2.length() > 0) {
                this.H = object2.split(",");
            }
        }
        if (this.H != null && this.H.length != 0 && this.H[0].equals("_all_") || !object.containsKey("exclude_prefixes")) return;
        {
            if ((object = (String)object.get("exclude_prefixes")).equals("_all_")) {
                this.H = new String[1];
                this.H[0] = "_all_";
                return;
            }
        }
        if (this.H == null) {
            this.H = new String[0];
        }
        this.I = this.H.length;
        object2 = new ArrayList<String>(Arrays.asList(this.H));
        object2.addAll(Arrays.asList(object.split(",")));
        this.H = new String[object2.size()];
        this.H = object2.toArray(this.H);
    }

    static /* synthetic */ boolean b(StreamSensePlugin streamSensePlugin, boolean bl) {
        streamSensePlugin.n = bl;
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    private HashMap<String, String> c(HashMap<String, String> hashMap) {
        int n2;
        int n3;
        boolean bl;
        HashMap<String, Boolean> hashMap2 = new HashMap<String, Boolean>();
        Object object = new HashMap();
        hashMap = hashMap != null && hashMap.size() > 0 ? new HashMap(hashMap) : object;
        if (this.H != null && this.H.length == 1 && this.H[0].equals("_all_")) {
            return new HashMap();
        }
        if (this.F != null && this.F.length > 0 && !this.F[0].equals("_all_")) {
            n3 = this.F.length;
            n2 = 0;
            do {
                Object object22;
                if (n2 < n3) {
                    object = this.F[n2];
                    bl = this.G >= 0 && n2 >= this.G;
                    object22 = hashMap.keySet().iterator();
                } else {
                    for (Object object22 : hashMap2.keySet()) {
                        if (((Boolean)hashMap2.get(object22)).booleanValue()) continue;
                        hashMap.remove(object22);
                    }
                    hashMap2 = new HashMap();
                    break;
                }
                while (object22.hasNext()) {
                    String string2 = (String)object22.next();
                    if (hashMap2.containsKey(string2)) continue;
                    boolean bl2 = !(bl ? string2.indexOf((String)object) != 0 : !string2.equals(object));
                    hashMap2.put(string2, bl2);
                }
                ++n2;
            } while (true);
        }
        object = hashMap;
        if (this.H == null) return object;
        object = hashMap;
        if (this.H.length <= 0) return object;
        n3 = this.H.length;
        n2 = 0;
        do {
            object = hashMap;
            if (n2 >= n3) return object;
            object = this.H[n2];
            bl = this.I >= 0 && n2 >= this.I;
            for (String string2 : hashMap.keySet()) {
                if (!(bl ? string2.indexOf((String)object) == 0 : string2.equals(object))) continue;
                hashMap2.put(string2, true);
            }
            for (Object object22 : hashMap2.keySet()) {
                if (!hashMap2.containsKey(object22) || !hashMap.containsKey(object22)) continue;
                hashMap.remove(object22);
            }
            hashMap2 = new HashMap();
            ++n2;
        } while (true);
    }

    private void c() {
        if (this.j != null) {
            this.a.getTaskExecutor().removeEnqueuedTask(this.j);
            this.j = null;
        }
    }

    static /* synthetic */ void c(StreamSensePlugin streamSensePlugin) {
        streamSensePlugin.c();
    }

    static /* synthetic */ boolean c(StreamSensePlugin streamSensePlugin, boolean bl) {
        streamSensePlugin.v = bl;
        return bl;
    }

    private void d() {
        this.c();
        if (this.t && this.u != null) {
            this.j = this.e();
            this.a.getTaskExecutor().execute(this.j, 0, true, this.h);
        }
    }

    static /* synthetic */ boolean d(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.w;
    }

    private Runnable e() {
        return new a(this);
    }

    static /* synthetic */ List e(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.k;
    }

    static /* synthetic */ List f(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.l;
    }

    private boolean f() {
        boolean bl = false;
        if (this.a(0) < this.a(1)) {
            return true;
        }
        int n2 = this.h;
        float f2 = 0.0f;
        for (int i2 = 0; i2 < this.k.size(); ++i2) {
            float f3 = e[this.k.size() - 2][i2];
            f2 += (float)this.k.get(i2).longValue() * f3;
        }
        if (f2 / (float)n2 > this.f) {
            bl = true;
        }
        return bl;
    }

    static /* synthetic */ boolean g(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.p;
    }

    static /* synthetic */ int h(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.g;
    }

    static /* synthetic */ int i(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.i;
    }

    static /* synthetic */ boolean j(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.f();
    }

    static /* synthetic */ boolean k(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.r;
    }

    static /* synthetic */ long l(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.m;
    }

    static /* synthetic */ List m(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.o;
    }

    static /* synthetic */ boolean n(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.n;
    }

    static /* synthetic */ boolean o(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.v;
    }

    static /* synthetic */ boolean p(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.s;
    }

    static /* synthetic */ boolean q(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.q;
    }

    static /* synthetic */ int r(StreamSensePlugin streamSensePlugin) {
        return streamSensePlugin.c;
    }

    public void addListener(StreamSensePluginListener streamSensePluginListener) {
        this.o.add(streamSensePluginListener);
    }

    public void clearAllListeners() {
        this.o.clear();
    }

    public void clearListener(StreamSensePluginListener streamSensePluginListener) {
        this.o.remove(streamSensePluginListener);
    }

    public String getGenericPluginVersion() {
        return this.b;
    }

    public StreamSensePlayer getPlayer() {
        return this.u;
    }

    public void log(String string2) {
        if (this.D) {
            Log.d((String)this.getClass().getSimpleName(), (String)string2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void notify(StreamSenseEventType streamSenseEventType, HashMap<String, String> iterator, long l2) {
        void var7_6;
        if (this.B || this.C) {
            return;
        }
        Iterator<StreamSensePluginListener> iterator2 = iterator;
        if (iterator == null) {
            HashMap hashMap = new HashMap();
        }
        iterator = this.o.iterator();
        while (iterator.hasNext()) {
            iterator.next().onGetLabels(streamSenseEventType, (HashMap<String, String>)var7_6);
        }
        if (l2 <= 0) {
            l2 = this.u != null ? this.u.getPosition() : 0;
        }
        long l3 = l2;
        if (l2 < 0) {
            l3 = 0;
        }
        if (streamSenseEventType == StreamSenseEventType.END && this.t) {
            this.k = new ArrayList<Long>();
            this.l = new ArrayList<Long>();
            this.n = false;
            this.v = true;
            this.w = true;
        } else if (streamSenseEventType == StreamSenseEventType.PLAY) {
            this.x = true;
        }
        super.notify(streamSenseEventType, (HashMap<String, String>)var7_6, l3);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setBitRate(long l2) {
        String string2 = l2 > 0 ? String.valueOf(l2) : "0";
        this.setLabel("ns_st_br", string2);
    }

    public Boolean setClip(HashMap<String, String> hashMap, boolean bl, HashMap<String, HashMap<String, String>> hashMap2) {
        return this.setClip(hashMap, bl, hashMap2, false);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Boolean setClip(HashMap<String, String> iterator, boolean bl, HashMap<String, HashMap<String, String>> object, boolean bl2) {
        void var4_8;
        if (this.x && iterator != null && iterator.get("ns_st_ci") != this.getClip().getLabel("ns_st_ci")) {
            this.notify(StreamSenseEventType.END, this.u.getPosition());
            this.x = false;
        }
        Object object2 = iterator;
        if (object != null) {
            object2 = iterator;
            if (object.size() > 0) {
                object2 = this.b((HashMap<String, HashMap<String, String>>)object, new HashMap<String, String>(this.a((HashMap<String, HashMap<String, String>>)object, new HashMap<String, String>((Map<String, String>)((Object)iterator)))));
            }
        }
        if (var4_8 != false) {
            if (this.z != null && this.z.size() > 0) {
                for (String string2 : this.z.keySet()) {
                    object2.put(string2, this.z.get(string2));
                }
            }
        } else {
            this.z = new HashMap();
            if (object2 != null && object2.size() > 0) {
                for (String string3 : object2.keySet()) {
                    this.z.put(string3, (String)object2.get(string3));
                }
            }
        }
        if (object2 != null && object2.get("ns_st_skip") != null && Boolean.parseBoolean((String)object2.get("ns_st_skip"))) {
            this.B = true;
            do {
                return super.setClip((HashMap<String, String>)object2, bl);
                break;
            } while (true);
        }
        this.B = false;
        return super.setClip((HashMap<String, String>)object2, bl);
    }

    public void setClipLabel(String string2, String string3) {
        this.setClipLabel(string2, string3, false);
    }

    public void setClipLabel(String string2, String string3, boolean bl) {
        if (bl) {
            if (this.z.get(string2) == null && this.A.get(string2) == null) {
                this.getClip().setLabel(string2, string3);
            }
            return;
        }
        this.z.put(string2, string3);
        this.getClip().setLabel(string2, string3);
    }

    public void setDetectEnd(boolean bl) {
        this.s = bl;
    }

    public void setDetectPause(boolean bl) {
        this.q = bl;
    }

    public void setDetectPlay(boolean bl) {
        this.r = bl;
    }

    public void setDetectSeek(boolean bl) {
        this.p = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setDuration(long l2) {
        StreamSenseClip streamSenseClip = this.getClip();
        String string2 = l2 >= 0 ? String.valueOf(l2) : "0";
        streamSenseClip.setLabel("ns_st_cl", string2);
    }

    public void setEndDetectionErrorMargin(int n2) {
        this.d = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setIsFullScreen(boolean bl) {
        String string2 = bl ? "full" : "norm";
        this.setLabel("ns_st_ws", string2);
    }

    @Override
    public void setLabel(String string2, String string3) {
        this.setLabel(string2, string3, false);
    }

    public void setLabel(String string2, String string3, boolean bl) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put(string2, string3);
        this.setLabels(hashMap, bl);
    }

    @Override
    public void setLabels(HashMap<String, String> hashMap) {
        this.setLabels(hashMap, false);
    }

    public void setLabels(HashMap<String, String> hashMap, boolean bl) {
        if (bl) {
            if (this.A != null && this.A.size() > 0) {
                for (String string2 : this.A.keySet()) {
                    hashMap.put(string2, this.A.get(string2));
                }
            }
        } else {
            this.A = new HashMap();
            if (hashMap != null && hashMap.size() > 0) {
                for (String string3 : hashMap.keySet()) {
                    this.A.put(string3, hashMap.get(string3));
                }
            }
        }
        super.setLabels(hashMap);
    }

    public void setMaximumNumberOfEntriesInHistory(int n2) {
        if (n2 >= 2 && n2 <= 13) {
            this.i = n2;
        }
    }

    public void setMinimumNumberOfTimeUpdateEventsBeforeSensingAnything(int n2) {
        if (n2 >= 2 && n2 <= 13) {
            this.g = n2;
        }
    }

    public void setPauseDetectionErrorMargin(int n2) {
        this.c = n2;
    }

    public void setPlayer(StreamSensePlayer streamSensePlayer) {
        this.u = streamSensePlayer;
    }

    @Override
    public Boolean setPlaylist(HashMap<String, String> hashMap) {
        return this.setPlaylist(hashMap, false);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Boolean setPlaylist(HashMap<String, String> hashMap, boolean bl) {
        if (bl) {
            if (this.y != null && this.y.size() > 0) {
                for (String string2 : this.y.keySet()) {
                    hashMap.put(string2, this.y.get(string2));
                }
            }
        } else {
            this.y = new HashMap();
            if (hashMap != null && hashMap.size() > 0) {
                for (String string3 : hashMap.keySet()) {
                    this.y.put(string3, hashMap.get(string3));
                }
            }
        }
        if (hashMap != null && hashMap.get("ns_st_skip") != null && Boolean.parseBoolean(hashMap.get("ns_st_skip"))) {
            this.C = true;
            do {
                return super.setPlaylist(hashMap);
                break;
            } while (true);
        }
        this.C = false;
        return super.setPlaylist(hashMap);
    }

    public void setPlaylistLabel(String string2, String string3) {
        this.setPlaylistLabel(string2, string3, false);
    }

    public void setPlaylistLabel(String string2, String string3, boolean bl) {
        if (bl && bl) {
            if (this.y.get(string2) == null && this.A.get(string2) == null) {
                this.getPlaylist().setLabel(string2, string3);
            }
            return;
        }
        this.y.put(string2, string3);
        this.getPlaylist().setLabel(string2, string3);
    }

    public void setPulseSamplingInterval(int n2) {
        if (n2 > 0) {
            this.h = n2;
        }
    }

    public void setSeekDetectionMinQuotient(float f2) {
        if (f2 > 1.0f) {
            this.f = f2;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setSmartStateDetection(boolean bl) {
        boolean bl2 = this.t;
        this.t = bl;
        if (!bl2 && bl) {
            this.d();
            return;
        } else {
            if (!bl2 || bl) return;
            {
                this.c();
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setVideoSize(String string2) {
        StreamSenseClip streamSenseClip = this.getClip();
        if (string2 == null || string2.length() <= 0) {
            string2 = "0";
        }
        streamSenseClip.setLabel("ns_st_cs", string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setVolume(int n2) {
        String string2 = n2 >= 0 && n2 <= 100 ? String.valueOf(n2) : "100";
        this.setLabel("ns_st_vo", string2);
    }
}

