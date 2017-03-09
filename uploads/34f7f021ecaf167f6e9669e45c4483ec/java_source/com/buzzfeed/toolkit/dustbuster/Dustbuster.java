/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  org.json.JSONArray
 */
package com.buzzfeed.toolkit.dustbuster;

import android.content.Context;
import android.text.TextUtils;
import com.buzzfeed.toolkit.doorbell.Doorbell;
import com.buzzfeed.toolkit.dustbuster.BaseDustbusterLauncher;
import com.buzzfeed.toolkit.dustbuster.DustbusterEvent;
import com.buzzfeed.toolkit.dustbuster.DustbusterEventCollection;
import com.buzzfeed.toolkit.dustbuster.DustbusterInterface;
import com.buzzfeed.toolkit.dustbuster.DustbusterLogic;
import com.buzzfeed.toolkit.dustbuster.DustbusterMetadata;
import com.buzzfeed.toolkit.dustbuster.DustbusterPrefs;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;

public class Dustbuster
implements DustbusterInterface {
    public static final String API_URL_PRODUCTION = "https://pixiedust.buzzfeed.com/events";
    public static final String API_URL_STAGING = "https://pixiedust-stage.buzzfeed.com/events";
    private static final String KEY_SESSION = "session";
    private static final String TAG = Dustbuster.class.getSimpleName();
    private String mBuildEnvironment;
    private Context mContext;
    private String mDeviceId;
    private Doorbell mDoorbell;
    private final BaseDustbusterLauncher mDustbusterLauncher;
    private DustbusterPrefs mPrefs;
    private String mSessionId;
    private String mSource;

    public Dustbuster(Context context, String string2, String string3, Doorbell doorbell, BaseDustbusterLauncher baseDustbusterLauncher) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            throw new IllegalArgumentException("Must pass valid (non empty) app name to dustbuster");
        }
        if (TextUtils.isEmpty((CharSequence)string3)) {
            throw new IllegalArgumentException("Must pass in valid (non empty) build environment to dustbuster");
        }
        this.mSource = string2;
        this.mDeviceId = doorbell.getUserIdentifier();
        this.mBuildEnvironment = string3;
        this.mContext = context.getApplicationContext();
        this.mPrefs = new DustbusterPrefs(this.mContext);
        this.mDustbusterLauncher = baseDustbusterLauncher;
        this.mDoorbell = doorbell;
    }

    private void generateNewSession() {
        this.mSessionId = Dustbuster.newUuid();
    }

    private static String newUuid() {
        return UUID.randomUUID().toString();
    }

    private void processEventCollection(JSONArray jSONArray) {
        this.mDustbusterLauncher.processEventCollection(jSONArray);
    }

    private void processNewEvent(DustbusterEvent dustbusterEvent) {
        this.mDustbusterLauncher.processNewEvent(dustbusterEvent);
    }

    private void refreshServicePrefs() {
        this.mDustbusterLauncher.refreshServicePrefs();
    }

    public List<DustbusterEvent> convertCollectionToEvents(DustbusterEventCollection dustbusterEventCollection) {
        ArrayList<DustbusterEvent> arrayList = new ArrayList<DustbusterEvent>();
        Map<String, Object> map = DustbusterMetadata.getBaseMetadataForEvent(this.mContext, this.mBuildEnvironment, this.mDoorbell.getUserPoundIdentifier());
        for (int i2 = 0; i2 < dustbusterEventCollection.getEvents().size(); ++i2) {
            DustbusterEventCollection.DustbusterCollectionEvent dustbusterCollectionEvent = dustbusterEventCollection.getEvents().get(i2);
            if (dustbusterCollectionEvent.getMetadata() != null) {
                map.putAll(dustbusterCollectionEvent.getMetadata());
            }
            dustbusterCollectionEvent.setMetadata(map);
            arrayList.add(new DustbusterEvent(dustbusterCollectionEvent, this.mSessionId, this.mDeviceId, this.mSource));
        }
        return arrayList;
    }

    public void forceProcessEvents() {
        this.mDustbusterLauncher.forceProcessEvents();
    }

    public String getDeviceId() {
        return this.mDeviceId;
    }

    public int getMaxBatchSize() {
        return this.mPrefs.getMaxBatchSize();
    }

    public int getMinBatchSize() {
        return this.mPrefs.getMinBatchSize();
    }

    public String getSessionId() {
        return this.mSessionId;
    }

    public boolean isSessionStarted() {
        if (this.mSessionId != null) {
            return true;
        }
        return false;
    }

    public void setMaxBatchSize(int n2) {
        if (n2 < 1) {
            throw new IllegalArgumentException("Max batch size must be greater than 0");
        }
        this.mPrefs.setMaxBatchSize(n2);
        this.refreshServicePrefs();
    }

    public void setMinBatchSize(int n2) {
        this.mPrefs.setMinBatchSize(n2);
        this.refreshServicePrefs();
    }

    public DustbusterEvent startNewSession() {
        return this.startNewSessionWithMetadata(DustbusterMetadata.getMetadataForSessionEvent());
    }

    public DustbusterEvent startNewSessionWithMetadata(Map<String, Object> map) {
        this.generateNewSession();
        Map<String, Object> map2 = DustbusterMetadata.getMetadataForSessionEvent();
        if (map != null) {
            map2.putAll(map);
        }
        return this.trackEvent("session", map2, true);
    }

    @Override
    public DustbusterEvent trackEvent(String object, Map<String, Object> map) {
        if (this.mSessionId == null) {
            LogUtil.w(TAG, "Session not started yet. Event will not have a session id.");
        }
        Map<String, Object> map2 = DustbusterMetadata.getBaseMetadataForEvent(this.mContext, this.mBuildEnvironment, this.mDoorbell.getUserPoundIdentifier());
        if (map != null) {
            map2.putAll(map);
        }
        object = new DustbusterEvent((String)object, this.mSessionId, this.mDeviceId, this.mSource, map2);
        this.processNewEvent((DustbusterEvent)object);
        return object;
    }

    @Deprecated
    @Override
    public DustbusterEvent trackEvent(String string2, Map<String, Object> map, boolean bl) {
        return this.trackEvent(string2, map);
    }

    public List<DustbusterEvent> trackEvents(DustbusterEventCollection object) {
        if (this.mSessionId == null) {
            LogUtil.w(TAG, "Session not started yet. Event will not have a session id.");
        }
        object = this.convertCollectionToEvents((DustbusterEventCollection)object);
        this.processEventCollection(DustbusterLogic.getJsonArrayForCollection(object));
        return object;
    }
}

