/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.buzzfeed.analytics.client;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.buzzfeed.analytics.util.IntentStringConverter;
import com.buzzfeed.toolkit.dustbuster.Dustbuster;
import com.buzzfeed.toolkit.dustbuster.DustbusterEvent;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class DustBusterVideoClient {
    private static final String TAG = "DustBusterVideoClient";
    private static final String VIDEO = "video";
    private static Dustbuster sDustbuster;
    private final Dustbuster mDustbuster;
    private boolean mIsLoggingEnabled;
    private final StringBuilder mLogBuffer;

    public DustBusterVideoClient(Dustbuster dustbuster) {
        this.mDustbuster = dustbuster;
        this.mLogBuffer = new StringBuilder();
    }

    private String buildFormattedLogString(String object, Map<String, Object> object22) {
        this.mLogBuffer.setLength(0);
        this.mLogBuffer.append("type").append(": ").append((String)((Object)object));
        for (Map.Entry entry : object22.entrySet()) {
            this.mLogBuffer.append("\n\t").append((String)entry.getKey()).append(": ").append(this.formatValue(entry.getValue())).append(",");
        }
        return this.mLogBuffer.toString();
    }

    private String createContent(String string2) {
        return "video:" + string2;
    }

    private Object formatValue(Object object) {
        Object object2 = object;
        if (object instanceof String) {
            object2 = object;
            if (((String)object).isEmpty()) {
                object2 = null;
            }
        }
        return object2;
    }

    private String getOrientationString(boolean bl) {
        if (bl) {
            return "landscape";
        }
        return "portrait";
    }

    @VisibleForTesting
    public static void setDustbuster(Dustbuster dustbuster) {
        sDustbuster = dustbuster;
    }

    public void setLoggingEnabled(boolean bl) {
        this.mIsLoggingEnabled = bl;
    }

    public void traceInstallAppEvent(String string2) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("screen", string2);
        this.trackEvent("install_app", linkedHashMap);
    }

    public void traceShareEvent(String string2, String string3, boolean bl, String string4, int n2, long l2, String string5, String string6, String string7) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("screen", string2);
        linkedHashMap.put("content_id", this.createContent(string3));
        linkedHashMap.put("content_type", "video");
        linkedHashMap.put("orientation", this.getOrientationString(bl));
        linkedHashMap.put("player_location", string4);
        linkedHashMap.put("position", n2);
        linkedHashMap.put("video_ts", l2);
        linkedHashMap.put("share_type", IntentStringConverter.convertIntentToApp(string5));
        linkedHashMap.put("share_button_location", string6);
        linkedHashMap.put("share_activity_source", string7);
        linkedHashMap.put("share_tap_outcome", null);
        this.trackEvent("share", linkedHashMap);
    }

    public void traceShareShowEvent(String string2, String string3, String string4, String string5) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("screen", string2);
        linkedHashMap.put("share_type", IntentStringConverter.convertIntentToApp(string3));
        linkedHashMap.put("share_button_location", string4);
        linkedHashMap.put("share_activity_source", string5);
        linkedHashMap.put("share_tap_outcome", null);
        this.trackEvent("share", linkedHashMap);
    }

    public void traceVideoPlayerEvent(String string2, String string3, String string4, @Nullable String string5, boolean bl, String string6, int n2, long l2) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("screen", string2);
        linkedHashMap.put("content_id", this.createContent(string3));
        linkedHashMap.put("content_type", "video");
        linkedHashMap.put("action", string4);
        linkedHashMap.put("reason", string5);
        linkedHashMap.put("orientation", this.getOrientationString(bl));
        linkedHashMap.put("player_location", string6);
        linkedHashMap.put("position", n2);
        linkedHashMap.put("video_ts", l2);
        this.trackEvent("video_player", linkedHashMap);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void trackEvent(String string2, Map<String, Object> map) {
        if (sDustbuster != null) {
            sDustbuster.trackEvent(string2, map);
        } else {
            this.mDustbuster.trackEvent(string2, map);
        }
        if (this.mIsLoggingEnabled) {
            Log.d((String)"DustBusterVideoClient", (String)this.buildFormattedLogString(string2, map));
        }
    }

    public static class Action {
        public static final String CLOSE_MEDIA_VIEWER = "close_media_viewer";
        public static final String ENTER_LANDSCAPE = "enter_landscape";
        public static final String ENTER_MEDIA_VIEWER = "enter_media_viewer";
        public static final String ENTER_PORTRAIT = "enter_portrait";
        public static final String PAUSE = "pause";
        public static final String PLAY = "play";
        public static final String SCRUB_END = "scrub_end";
        public static final String SCRUB_START = "scrub_start";
    }

    public static class ContentType {
        public static final String VIDEO = "video";
    }

    static class Field {
        public static final String ACTION = "action";
        public static final String CONTENT_ID = "content_id";
        public static final String CONTENT_TYPE = "content_type";
        public static final String ORIENTATION = "orientation";
        public static final String PLAYER_LOCATION = "player_location";
        public static final String POSITION_IN_FEED = "position";
        public static final String REASON = "reason";
        public static final String SCREEN = "screen";
        public static final String SHARE_ACTIVITY_SOURCE = "share_activity_source";
        public static final String SHARE_BUTTON_LOCATION = "share_button_location";
        public static final String SHARE_TAP_OUTCOME = "share_tap_outcome";
        public static final String SHARE_TYPE = "share_type";
        public static final String VIDEO_TS = "video_ts";

        Field() {
        }
    }

    public static final class Orientation {
        public static final String LANDSCAPE = "landscape";
        public static final String PORTRAIT = "portrait";
    }

    public static final class PlayerLocation {
        public static final String IN_FEED = "in_feed";
        public static final String MEDIA_VIEWER = "media_viewer";
    }

    public static final class Reason {
        public static final String AUTO = "auto";
        public static final String SCRUB_END = "scrub_end";
        public static final String SCRUB_START = "scrub_start";
        public static final String TAP_PLAYER_CONTROLS = "tap_player_controls";
        public static final String TAP_TO_PLAY_AUTO = "tap_to_play_auto";
        public static final String VIDEO_COMPLETE = "video_complete";
        public static final String VIDEO_LOOP = "video_loop";
    }

    public static class ShareActivitySource {
        public static final String ON_SCREEN = "share_sheet";
        public static final String SHARE_SHEET = "share_sheet";
    }

    public static final class ShareButtonLocation {
        public static final String BOTTOM_SHARE_BAR = "bottom_share_bar";
        public static final String FEED_MODULE = "feed_module";
        public static final String MEDIA_VIEWER = "media_viewer";
    }

    public static final class Type {
        public static final String INSTALL_APP = "install_app";
        public static final String SHARE = "share";
        public static final String VIDEO_PLAYER = "video_player";
    }

}

