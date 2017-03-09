/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  org.apache.http.HttpResponse
 *  org.apache.http.StatusLine
 *  org.apache.http.client.HttpClient
 *  org.apache.http.client.methods.HttpPost
 *  org.apache.http.client.methods.HttpUriRequest
 */
package com.comscore.utils;

import android.content.Context;
import com.comscore.analytics.Core;
import com.comscore.applications.ApplicationMeasurement;
import com.comscore.applications.EventType;
import com.comscore.measurement.Measurement;
import com.comscore.measurement.MeasurementDispatcher;
import com.comscore.utils.CSLog;
import com.comscore.utils.Connectivity;
import com.comscore.utils.Date;
import com.comscore.utils.FileUtils;
import com.comscore.utils.Permissions;
import com.comscore.utils.Storage;
import com.comscore.utils.TransmissionMode;
import com.comscore.utils.Utils;
import com.comscore.utils.XMLBuilder;
import com.comscore.utils.c;
import com.comscore.utils.task.TaskExecutor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.StringEntity;
import org.apache.http.util.EntityUtils;

public class OfflineMeasurementsCache {
    protected final Core a;
    private int b;
    private int c;
    private int d;
    private long e;
    private long f;
    private String g = null;
    private final String h;
    private ArrayList<String> i = null;
    private String j = null;
    private int k = 0;
    private long l = 0;
    private long m = 0;

    public OfflineMeasurementsCache(Core core) {
        this(core, "cs_cache_");
    }

    protected OfflineMeasurementsCache(Core core, String string2) {
        this.a = core;
        this.h = string2;
        this.setCacheMaxMeasurements(2000);
        this.setCacheMaxBatchFiles(100);
        this.setCacheMaxPosts(10);
        this.setCacheWaitMinutes(30);
        this.setCacheMeasurementExpiry(31);
        this.e();
    }

    private void a(int n2) {
        Storage storage = this.a.getStorage();
        int n3 = n2;
        if (storage.has("CACHE_DROPPED_MEASUREMENTS").booleanValue()) {
            n3 = n2 + Integer.valueOf(storage.get("CACHE_DROPPED_MEASUREMENTS"));
        }
        storage.set("CACHE_DROPPED_MEASUREMENTS", String.valueOf(n3));
    }

    private void a(String string2) {
        Storage storage = this.a.getStorage();
        if (storage.has(string2).booleanValue()) {
            this.a(Integer.valueOf(storage.get(string2)));
        }
    }

    private void a(String string2, boolean bl) {
        if (string2 != null) {
            if (bl) {
                this.a(string2);
            }
            FileUtils.deleteFile(this.a, string2);
            this.i.remove(string2);
        }
    }

    private boolean a(long l2) {
        long l3 = Date.unixTime();
        if (this.f * 24 * 60 * 60 * 1000 - (l3 - l2) <= 0) {
            return true;
        }
        return false;
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private boolean a(String object, String string2) {
        HttpClient httpClient = Connectivity.getHttpClient();
        string2 = new HttpPost(string2);
        try {
            object = new StringEntity((String)object, "UTF-8");
            object.setContentType("text/xml");
            string2.setHeader("User-Agent", System.getProperty("http.agent"));
            string2.setEntity((HttpEntity)object);
            CSLog.d(this, "Sending POST request");
            object = httpClient.execute((HttpUriRequest)string2);
            int n2 = object.getStatusLine().getStatusCode();
            CSLog.d(this, "Response:" + n2);
            CSLog.d(this, "Cache flushed");
            object = EntityUtils.toString(object.getEntity());
            if (n2 != 200) return false;
            if (!Utils.isNotEmpty((String)object)) return false;
            boolean bl = object.startsWith("OK");
            if (!bl) return false;
            return true;
        }
        catch (SSLException var1_2) {
            CSLog.e(this, var1_2.getMessage());
            this.a.allowOfflineTransmission(TransmissionMode.DISABLED, true);
            this.clear();
        }
        return false;
        catch (Exception exception) {
            CSLog.e(this, "Exception in flush:" + exception.getLocalizedMessage());
            CSLog.printStackTrace(exception);
            return false;
        }
    }

    private static String[] a(String[] arrstring, int n2, int n3) {
        if (n2 > n3) {
            throw new IllegalArgumentException();
        }
        int n4 = arrstring.length;
        if (n2 < 0 || n2 > n4) {
            throw new ArrayIndexOutOfBoundsException();
        }
        n4 = Math.min(n3 -= n2, n4 - n2);
        String[] arrstring2 = new String[n3];
        System.arraycopy(arrstring, n2, arrstring2, 0, n4);
        return arrstring2;
    }

    private void b(String string2) {
        CSLog.d(this, "Creating new cache batch file");
        String string3 = this.h + XMLBuilder.getLabelFromEvent(string2, "ns_ts");
        FileUtils.writeEvent(this.a, string3, 0, string2);
        if (this.i == null) {
            this.i = new ArrayList();
        }
        this.i.add(string3);
        this.c();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean b() {
        if (!this.d().booleanValue() || this.isEmpty() || this.a.getCustomerC2() == null) return false;
        if (this.k < this.d) return true;
        long l2 = this.e * 1000 * 60 - (Date.unixTime() - this.m);
        if (l2 <= 0) {
            this.k = 0;
            this.m = 0;
            return true;
        }
        CSLog.d(this, "Max flushes in a row (" + this.d + ") reached. Waiting " + (double)l2 / 1000.0 / 60.0 + " minutes");
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int c(String string2) {
        Storage storage = this.a.getStorage();
        int n2 = 0;
        if (string2 == null) return n2;
        if (storage.has(string2) == false) return FileUtils.readCachedEvents(this.a.getAppContext(), string2).length;
        return Integer.valueOf(storage.get(string2));
    }

    private void c() {
        this.l = 0;
        if (this.j != null) {
            this.j = null;
        }
    }

    private Boolean d() {
        Context context = this.a.getAppContext();
        if (Connectivity.isEmulator()) {
            return true;
        }
        if (!Permissions.check(context, "android.permission.ACCESS_NETWORK_STATE").booleanValue()) {
            return true;
        }
        if (Connectivity.isConnectedWiFi(context)) {
            return true;
        }
        if (Connectivity.isConnectedMobile(context)) {
            return true;
        }
        return false;
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private String[] d(String string2) {
        String[] arrstring = FileUtils.readCachedEvents(this.a.getAppContext(), string2);
        boolean bl = false;
        int n2 = 0;
        do {
            boolean bl2;
            block4 : {
                block5 : {
                    bl2 = bl;
                    if (n2 < arrstring.length) {
                        bl2 = bl;
                        long l2 = Long.parseLong(XMLBuilder.getLabelFromEvent(arrstring[n2], "ns_ts"));
                        bl2 = bl;
                        bl = !this.a(l2);
                        bl2 = bl;
                        if (!bl) break block4;
                        bl2 = bl;
                        CSLog.d(this, "Valid timestamp found: " + l2);
                        bl2 = bl;
                        if (!bl2) break block5;
                        this.a(n2);
                        return OfflineMeasurementsCache.a(arrstring, n2, arrstring.length);
                    }
                }
                CSLog.d(this, "All events in the file " + string2 + " are expired");
                this.a(string2, true);
                return null;
                catch (NumberFormatException numberFormatException) {
                    // empty catch block
                }
            }
            ++n2;
            bl = bl2;
        } while (true);
    }

    private long e(String string2) {
        return Long.valueOf(string2.substring(this.h.length()));
    }

    private void e() {
        List<String> list = this.f();
        for (int i2 = list.size() - 1; i2 >= 0; --i2) {
            if (!this.a(this.e(list.get(i2)))) continue;
            CSLog.d(this, "Deleting expired cache file " + list.get(i2));
            this.a(list.get(i2), true);
        }
    }

    private List<String> f() {
        if (this.i == null) {
            this.i = FileUtils.getFileList(this.a.getAppContext());
        }
        return this.i;
    }

    private String g() {
        if (this.i != null && this.i.size() > 0) {
            return this.i.get(0);
        }
        return null;
    }

    private String h() {
        if (this.i != null && this.i.size() > 0) {
            return this.i.get(this.i.size() - 1);
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected String a() {
        CharSequence charSequence2;
        CharSequence charSequence2;
        boolean bl;
        if (this.g != null) {
            charSequence2 = new StringBuilder(this.g);
        } else {
            charSequence2 = this.a.isSecure() ? "https://udm.scorecardresearch.com/offline" : "http://udm.scorecardresearch.com/offline";
            charSequence2 = new StringBuilder((String)charSequence2);
        }
        if (charSequence2.indexOf("?") == -1) {
            charSequence2.append("?");
            bl = false;
        } else {
            bl = true;
        }
        String string2 = this.a.getCustomerC2();
        boolean bl2 = bl;
        if (string2 != null) {
            bl2 = bl;
            if (!string2.equals("")) {
                if (bl) {
                    charSequence2.append("&");
                }
                charSequence2.append("c2=");
                charSequence2.append(string2);
                bl2 = true;
            }
        }
        if ((string2 = Utils.md5(String.format("JetportGotAMaskOfThe%sS.D_K-", this.a.getPublisherSecret()))) != null && !string2.equals("")) {
            if (bl2) {
                charSequence2.append("&");
            }
            charSequence2.append("s=");
            charSequence2.append(string2);
        }
        return charSequence2.toString().toLowerCase(new Locale("en", "US"));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void clear() {
        if (this.a.isEnabled()) {
            List<String> list = this.f();
            for (int i2 = list.size(); i2 > 0; --i2) {
                this.a(list.get(i2 - 1), true);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean flush() {
        boolean bl = false;
        boolean bl2 = false;
        synchronized (this) {
            block11 : {
                boolean bl3 = this.a.isEnabled();
                if (bl3) {
                    Storage storage = this.a.getStorage();
                    this.e();
                    long l2 = this.e * 1000 * 60 - (Date.unixTime() - this.l);
                    if (l2 > 0) {
                        CSLog.d(this, "Waiting " + (double)l2 / 1000.0 / 60.0 + " minutes");
                    } else {
                        this.l = 0;
                        do {
                            bl2 = bl;
                            if (!this.b()) break block11;
                            String string2 = null;
                            CSLog.d(this, "Cache is not empty, contains " + this.i.size() + " files");
                            if (this.j == null) {
                                String string3 = this.h();
                                CSLog.d(this, "reading events from the file " + string3);
                                String[] arrstring = this.d(string3);
                                string2 = string3;
                                if (arrstring != null) {
                                    string2 = string3;
                                    if (arrstring.length > 0) {
                                        string2 = storage.has("CACHE_DROPPED_MEASUREMENTS") != false ? storage.get("CACHE_DROPPED_MEASUREMENTS") : "0";
                                        this.j = XMLBuilder.generateXMLRequestString(arrstring, string2);
                                        string2 = string3;
                                    }
                                }
                            }
                            if (this.j == null || this.j.length() <= 0) continue;
                            bl2 = this.a(this.j, this.a());
                            if (!bl2) break;
                            ++this.k;
                            this.a(string2, false);
                            this.c();
                            this.m = Date.unixTime();
                            storage.remove("CACHE_DROPPED_MEASUREMENTS");
                            this.a.getStorage().set("lastMeasurementProcessedTimestamp", String.valueOf(System.currentTimeMillis()));
                            bl = bl2;
                        } while (true);
                        this.l = Date.unixTime();
                    }
                }
            }
            return bl2;
        }
    }

    public int getCacheMaxBatchFiles() {
        return this.c;
    }

    public int getCacheMaxMeasurements() {
        return this.b;
    }

    public int getCacheMaxPosts() {
        return this.d;
    }

    public long getCacheMeasurementExpiry() {
        return this.f;
    }

    public long getCacheWaitMinutes() {
        return this.e;
    }

    public int getEventCount() {
        int n2 = this.c(this.h());
        List<String> list = this.f();
        int n3 = n2;
        if (list.size() > 0) {
            n3 = n2 + (list.size() - 1) * this.getCacheMaxBatchFiles();
        }
        return n3;
    }

    public boolean isEmpty() {
        if (this.getEventCount() == 0) {
            return true;
        }
        return false;
    }

    public void saveApplicationMeasurement(EventType eventType, HashMap<String, String> hashMap) {
        this.saveApplicationMeasurement(eventType, hashMap, false);
    }

    public void saveApplicationMeasurement(EventType object, HashMap<String, String> hashMap, boolean bl) {
        if (!this.a.isEnabled()) {
            return;
        }
        object = ApplicationMeasurement.newApplicationMeasurement(this.a, (EventType)((Object)object), hashMap, null);
        this.a.getMeasurementDispatcher().addAggregateData((Measurement)object);
        this.a.getMeasurementDispatcher().addEventCounter((Measurement)object);
        this.saveEvent((Measurement)object, bl);
    }

    public void saveEvent(Measurement measurement) {
        this.saveEvent(measurement, false);
    }

    public void saveEvent(Measurement measurement, boolean bl) {
        if (!this.a.isEnabled()) {
            return;
        }
        if (bl) {
            this.a.getTaskExecutor().execute((Runnable)new c(this, measurement), true);
            return;
        }
        this.saveEvent(measurement.retrieveLabelsAsString(this.a.getMeasurementLabelOrder()));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void saveEvent(String string2) {
        synchronized (this) {
            boolean bl = this.a.isEnabled();
            if (bl && this.a.getOfflineTransmissionMode() != TransmissionMode.DISABLED && this.a.getCustomerC2() != null && Utils.isNotEmpty(XMLBuilder.getLabelFromEvent(string2, "ns_ts"))) {
                String string3 = this.h();
                if (string3 != null) {
                    if (this.c(string3) < this.getCacheMaxBatchFiles()) {
                        string2 = "\n" + string2;
                        FileUtils.writeEvent(this.a, string3, 32768, string2);
                        this.c();
                    } else {
                        CSLog.d(this, "The newest cache batch file is full");
                        if (this.f().size() >= this.getCacheMaxMeasurements() / this.getCacheMaxBatchFiles()) {
                            CSLog.d(this, "reached the cache max (" + this.getCacheMaxMeasurements() + ") size");
                            this.a(this.g(), true);
                        }
                        this.b(string2);
                    }
                } else {
                    this.b(string2);
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setCacheMaxBatchFiles(int n2) {
        if (!this.a.isEnabled() || n2 <= 0) {
            return;
        }
        this.c = n2;
    }

    public void setCacheMaxMeasurements(int n2) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.b = n2;
    }

    public void setCacheMaxPosts(int n2) {
        this.d = n2;
    }

    public void setCacheMeasurementExpiry(int n2) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.f = n2;
    }

    public void setCacheWaitMinutes(int n2) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.e = n2;
    }

    public void setUrl(String string2) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.g = string2;
    }
}

