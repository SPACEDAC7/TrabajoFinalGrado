/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.Log
 *  com.urbanairship.Logger
 *  com.urbanairship.PreferenceDataStore
 *  com.urbanairship.R
 *  com.urbanairship.R$xml
 *  com.urbanairship.job.Job
 *  com.urbanairship.job.Job$Builder
 *  com.urbanairship.job.JobDispatcher
 *  com.urbanairship.json.JsonList
 *  com.urbanairship.json.JsonValue
 *  com.urbanairship.push.ActionButtonGroupsParser
 *  com.urbanairship.push.ChannelJobHandler
 *  com.urbanairship.push.ChannelRegistrationPayload
 *  com.urbanairship.push.ChannelRegistrationPayload$Builder
 *  com.urbanairship.push.PushJobHandler
 *  com.urbanairship.push.PushManager$1
 *  com.urbanairship.push.PushManager$2
 *  com.urbanairship.push.QuietTimeInterval
 *  com.urbanairship.push.QuietTimeInterval$Builder
 *  com.urbanairship.push.TagEditor
 *  com.urbanairship.push.TagGroupsEditor
 *  com.urbanairship.push.TagUtils
 *  com.urbanairship.push.notifications.DefaultNotificationFactory
 *  com.urbanairship.push.notifications.NotificationActionButtonGroup
 *  com.urbanairship.push.notifications.NotificationFactory
 *  com.urbanairship.richpush.RichPushInbox
 *  com.urbanairship.richpush.RichPushUser
 *  com.urbanairship.util.UAStringUtil
 */
package com.urbanairship.push;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.NotificationManagerCompat;
import android.util.Log;
import com.urbanairship.AirshipComponent;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.R;
import com.urbanairship.UAirship;
import com.urbanairship.job.Job;
import com.urbanairship.job.JobDispatcher;
import com.urbanairship.json.JsonList;
import com.urbanairship.json.JsonValue;
import com.urbanairship.push.ActionButtonGroupsParser;
import com.urbanairship.push.ChannelJobHandler;
import com.urbanairship.push.ChannelRegistrationPayload;
import com.urbanairship.push.PushJobHandler;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.QuietTimeInterval;
import com.urbanairship.push.TagEditor;
import com.urbanairship.push.TagGroupsEditor;
import com.urbanairship.push.TagUtils;
import com.urbanairship.push.notifications.DefaultNotificationFactory;
import com.urbanairship.push.notifications.NotificationActionButtonGroup;
import com.urbanairship.push.notifications.NotificationFactory;
import com.urbanairship.richpush.RichPushInbox;
import com.urbanairship.richpush.RichPushUser;
import com.urbanairship.util.UAStringUtil;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class PushManager
extends AirshipComponent {
    public static final String ACTION_CHANNEL_UPDATED = "com.urbanairship.push.CHANNEL_UPDATED";
    public static final String ACTION_NOTIFICATION_BUTTON_OPENED_PROXY = "com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY";
    public static final String ACTION_NOTIFICATION_DISMISSED = "com.urbanairship.push.DISMISSED";
    public static final String ACTION_NOTIFICATION_DISMISSED_PROXY = "com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY";
    public static final String ACTION_NOTIFICATION_OPENED = "com.urbanairship.push.OPENED";
    public static final String ACTION_NOTIFICATION_OPENED_PROXY = "com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY";
    public static final String ACTION_PUSH_RECEIVED = "com.urbanairship.push.RECEIVED";
    static final String ADM_REGISTRATION_ID_KEY = "com.urbanairship.push.ADM_REGISTRATION_ID_KEY";
    static final String ALIAS_KEY = "com.urbanairship.push.ALIAS";
    static final String APID_KEY = "com.urbanairship.push.APID";
    static final String CHANNEL_ID_KEY = "com.urbanairship.push.CHANNEL_ID";
    static final String CHANNEL_LOCATION_KEY = "com.urbanairship.push.CHANNEL_LOCATION";
    public static final String EXTRA_CHANNEL_CREATE_REQUEST = "com.urbanairship.push.EXTRA_CHANNEL_CREATE_REQUEST";
    public static final String EXTRA_CHANNEL_ID = "com.urbanairship.push.EXTRA_CHANNEL_ID";
    public static final String EXTRA_ERROR = "com.urbanairship.push.EXTRA_ERROR";
    public static final String EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION = "com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION";
    public static final String EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD";
    public static final String EXTRA_NOTIFICATION_BUTTON_FOREGROUND = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND";
    public static final String EXTRA_NOTIFICATION_BUTTON_ID = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID";
    public static final String EXTRA_NOTIFICATION_CONTENT_INTENT = "com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT";
    public static final String EXTRA_NOTIFICATION_DELETE_INTENT = "com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT";
    public static final String EXTRA_NOTIFICATION_ID = "com.urbanairship.push.NOTIFICATION_ID";
    public static final String EXTRA_PUSH_MESSAGE_BUNDLE = "com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE";
    static final String GCM_INSTANCE_ID_TOKEN_KEY = "com.urbanairship.push.GCM_INSTANCE_ID_TOKEN_KEY";
    static final String KEY_PREFIX = "com.urbanairship.push";
    static final String LAST_RECEIVED_METADATA = "com.urbanairship.push.LAST_RECEIVED_METADATA";
    static final String OLD_QUIET_TIME_ENABLED = "com.urbanairship.push.QuietTime.Enabled";
    static final String PUSH_ENABLED_KEY = "com.urbanairship.push.PUSH_ENABLED";
    static final String PUSH_ENABLED_SETTINGS_MIGRATED_KEY = "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED";
    static final String PUSH_TOKEN_REGISTRATION_ENABLED_KEY = "com.urbanairship.push.PUSH_TOKEN_REGISTRATION_ENABLED";
    static final String QUIET_TIME_ENABLED = "com.urbanairship.push.QUIET_TIME_ENABLED";
    static final String QUIET_TIME_INTERVAL = "com.urbanairship.push.QUIET_TIME_INTERVAL";
    static final String REGISTRATION_TOKEN_KEY = "com.urbanairship.push.REGISTRATION_TOKEN_KEY";
    static final String REGISTRATION_TOKEN_MIGRATED_KEY = "com.urbanairship.push.REGISTRATION_TOKEN_MIGRATED_KEY";
    static final String SOUND_ENABLED_KEY = "com.urbanairship.push.SOUND_ENABLED";
    static final String TAGS_KEY = "com.urbanairship.push.TAGS";
    static final String USER_NOTIFICATIONS_ENABLED_KEY = "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED";
    static final String VIBRATE_ENABLED_KEY = "com.urbanairship.push.VIBRATE_ENABLED";
    private final String DEFAULT_TAG_GROUP = "device";
    private final String UA_NOTIFICATION_BUTTON_GROUP_PREFIX = "ua_";
    private final Map<String, NotificationActionButtonGroup> actionGroupMap = new HashMap<String, NotificationActionButtonGroup>();
    private boolean channelCreationDelayEnabled;
    private ChannelJobHandler channelJobHandler;
    private boolean channelTagRegistrationEnabled = true;
    private final AirshipConfigOptions configOptions;
    private final Context context;
    private final JobDispatcher jobDispatcher;
    private NotificationFactory notificationFactory;
    private final NotificationManagerCompat notificationManagerCompat;
    private final PreferenceDataStore preferenceDataStore;
    private PushJobHandler pushJobHandler;
    private final Object tagLock = new Object();

    public PushManager(Context context, PreferenceDataStore preferenceDataStore, AirshipConfigOptions airshipConfigOptions) {
        this(context, preferenceDataStore, airshipConfigOptions, JobDispatcher.shared((Context)context));
    }

    @VisibleForTesting
    PushManager(Context context, PreferenceDataStore preferenceDataStore, AirshipConfigOptions airshipConfigOptions, JobDispatcher jobDispatcher) {
        this.context = context;
        this.preferenceDataStore = preferenceDataStore;
        this.jobDispatcher = jobDispatcher;
        preferenceDataStore = new DefaultNotificationFactory(context);
        preferenceDataStore.setColor(airshipConfigOptions.notificationAccentColor);
        if (airshipConfigOptions.notificationIcon != 0) {
            preferenceDataStore.setSmallIconId(airshipConfigOptions.notificationIcon);
        }
        this.notificationFactory = preferenceDataStore;
        this.configOptions = airshipConfigOptions;
        this.actionGroupMap.putAll(ActionButtonGroupsParser.fromXml((Context)context, (int)R.xml.ua_notification_buttons));
        if (Build.VERSION.SDK_INT >= 23) {
            this.actionGroupMap.putAll(ActionButtonGroupsParser.fromXml((Context)context, (int)R.xml.ua_notification_button_overrides));
        }
        this.notificationManagerCompat = NotificationManagerCompat.from(context);
    }

    static /* synthetic */ boolean access$000(PushManager pushManager) {
        return pushManager.channelTagRegistrationEnabled;
    }

    static /* synthetic */ Object access$100(PushManager pushManager) {
        return pushManager.tagLock;
    }

    static /* synthetic */ boolean access$200(PushManager pushManager, Set set) {
        return pushManager.storeTags(set);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean storeTags(@NonNull Set<String> set) {
        Object object = this.tagLock;
        synchronized (object) {
            set = TagUtils.normalizeTags(set);
            if (set.equals(this.getTags())) {
                return false;
            }
            if (set.isEmpty()) {
                this.preferenceDataStore.remove("com.urbanairship.push.TAGS");
            } else {
                this.preferenceDataStore.put("com.urbanairship.push.TAGS", JsonValue.wrapOpt((Object)set));
            }
            return true;
        }
    }

    public void addNotificationActionButtonGroup(@NonNull String string2, @NonNull NotificationActionButtonGroup notificationActionButtonGroup) {
        if (string2.startsWith("ua_")) {
            Logger.warn((String)"Unable to add any notification button groups that starts with the reserved Urban Airship prefix ua_");
            return;
        }
        this.actionGroupMap.put(string2, notificationActionButtonGroup);
    }

    public TagGroupsEditor editTagGroups() {
        return new 1(this, "com.urbanairship.push.ACTION_APPLY_TAG_GROUP_CHANGES", (Class)PushManager.class, this.jobDispatcher);
    }

    public TagEditor editTags() {
        return new 2(this);
    }

    public void enableChannelCreation() {
        if (this.isChannelCreationDelayEnabled()) {
            this.channelCreationDelayEnabled = false;
            this.updateRegistration();
        }
    }

    public String getAlias() {
        return this.preferenceDataStore.getString("com.urbanairship.push.ALIAS", null);
    }

    String getApid() {
        return this.preferenceDataStore.getString("com.urbanairship.push.APID", null);
    }

    @Nullable
    public String getChannelId() {
        return this.preferenceDataStore.getString("com.urbanairship.push.CHANNEL_ID", null);
    }

    @Nullable
    String getChannelLocation() {
        return this.preferenceDataStore.getString("com.urbanairship.push.CHANNEL_LOCATION", null);
    }

    public boolean getChannelTagRegistrationEnabled() {
        return this.channelTagRegistrationEnabled;
    }

    @Nullable
    public String getLastReceivedMetadata() {
        return this.preferenceDataStore.getString("com.urbanairship.push.LAST_RECEIVED_METADATA", null);
    }

    /*
     * Enabled aggressive block sorting
     */
    ChannelRegistrationPayload getNextChannelRegistrationPayload() {
        ChannelRegistrationPayload.Builder builder = new ChannelRegistrationPayload.Builder().setAlias(this.getAlias()).setTags(this.getChannelTagRegistrationEnabled(), this.getTags()).setOptIn(this.isOptIn());
        boolean bl = this.isPushEnabled() && this.isPushAvailable();
        builder = builder.setBackgroundEnabled(bl).setUserId(UAirship.shared().getInbox().getUser().getId()).setApid(this.getApid());
        switch (UAirship.shared().getPlatformType()) {
            case 2: {
                builder.setDeviceType("android");
            }
            default: {
                break;
            }
            case 1: {
                builder.setDeviceType("amazon");
            }
        }
        if (this.getPushTokenRegistrationEnabled()) {
            builder.setPushAddress(this.getRegistrationToken());
        }
        return builder.build();
    }

    public NotificationActionButtonGroup getNotificationActionGroup(String string2) {
        return this.actionGroupMap.get(string2);
    }

    public NotificationFactory getNotificationFactory() {
        return this.notificationFactory;
    }

    PreferenceDataStore getPreferenceDataStore() {
        return this.preferenceDataStore;
    }

    public boolean getPushTokenRegistrationEnabled() {
        return this.preferenceDataStore.getBoolean("com.urbanairship.push.PUSH_TOKEN_REGISTRATION_ENABLED", true);
    }

    public Date[] getQuietTimeInterval() {
        Date[] arrdate = null;
        QuietTimeInterval quietTimeInterval = QuietTimeInterval.parseJson((String)this.preferenceDataStore.getString("com.urbanairship.push.QUIET_TIME_INTERVAL", null));
        if (quietTimeInterval != null) {
            arrdate = quietTimeInterval.getQuietTimeIntervalDateArray();
        }
        return arrdate;
    }

    @Nullable
    public String getRegistrationToken() {
        return this.preferenceDataStore.getString("com.urbanairship.push.REGISTRATION_TOKEN_KEY", null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @NonNull
    public Set<String> getTags() {
        Object object = this.tagLock;
        synchronized (object) {
            HashSet<String> hashSet = new HashSet<String>();
            Object object2 = this.preferenceDataStore.getJsonValue("com.urbanairship.push.TAGS");
            if (object2.isJsonList()) {
                for (JsonValue jsonValue : object2.getList()) {
                    if (!jsonValue.isString()) continue;
                    hashSet.add(jsonValue.getString());
                }
            }
            object2 = TagUtils.normalizeTags(hashSet);
            if (hashSet.size() != object2.size()) {
                this.setTags((Set<String>)object2);
            }
            return object2;
        }
    }

    public boolean getUserNotificationsEnabled() {
        return this.preferenceDataStore.getBoolean("com.urbanairship.push.USER_NOTIFICATIONS_ENABLED", false);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void init() {
        if (Logger.logLevel < 7 && !UAStringUtil.isEmpty((String)this.getChannelId())) {
            Log.d((String)(UAirship.getAppName() + " Channel ID"), (String)this.getChannelId());
        }
        this.migratePushEnabledSettings();
        this.migrateQuietTimeSettings();
        this.migrateRegistrationTokenSettings();
        boolean bl = this.getChannelId() == null && this.configOptions.channelCreationDelayEnabled;
        this.channelCreationDelayEnabled = bl;
        Job job = Job.newBuilder((String)"com.urbanairship.push.ACTION_START_REGISTRATION").setAirshipComponent((Class)PushManager.class).build();
        this.jobDispatcher.dispatch(job);
        if (this.getChannelId() != null) {
            this.startUpdateTagsService();
        }
    }

    boolean isChannelCreationDelayEnabled() {
        return this.channelCreationDelayEnabled;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean isInQuietTime() {
        QuietTimeInterval quietTimeInterval;
        if (!this.isQuietTimeEnabled() || (quietTimeInterval = QuietTimeInterval.parseJson((String)this.preferenceDataStore.getString("com.urbanairship.push.QUIET_TIME_INTERVAL", null))) == null || !quietTimeInterval.isInQuietTime(Calendar.getInstance())) {
            return false;
        }
        return true;
    }

    public boolean isOptIn() {
        if (this.isPushEnabled() && this.isPushAvailable() && this.getUserNotificationsEnabled() && this.notificationManagerCompat.areNotificationsEnabled()) {
            return true;
        }
        return false;
    }

    public boolean isPushAvailable() {
        if (this.getPushTokenRegistrationEnabled() && !UAStringUtil.isEmpty((String)this.getRegistrationToken())) {
            return true;
        }
        return false;
    }

    public boolean isPushEnabled() {
        return this.preferenceDataStore.getBoolean("com.urbanairship.push.PUSH_ENABLED", true);
    }

    public boolean isQuietTimeEnabled() {
        return this.preferenceDataStore.getBoolean("com.urbanairship.push.QUIET_TIME_ENABLED", false);
    }

    public boolean isSoundEnabled() {
        return this.preferenceDataStore.getBoolean("com.urbanairship.push.SOUND_ENABLED", true);
    }

    public boolean isVibrateEnabled() {
        return this.preferenceDataStore.getBoolean("com.urbanairship.push.VIBRATE_ENABLED", true);
    }

    void migratePushEnabledSettings() {
        if (this.preferenceDataStore.getBoolean("com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED", false)) {
            return;
        }
        Logger.info((String)"Migrating push enabled preferences");
        boolean bl = this.preferenceDataStore.getBoolean("com.urbanairship.push.PUSH_ENABLED", false);
        Logger.info((String)("Setting user notifications enabled to " + Boolean.toString(bl)));
        this.preferenceDataStore.put("com.urbanairship.push.USER_NOTIFICATIONS_ENABLED", bl);
        if (!bl) {
            Logger.info((String)"Push is now enabled. You can continue to toggle the opt-in state by enabling or disabling user notifications");
        }
        this.preferenceDataStore.put("com.urbanairship.push.PUSH_ENABLED", true);
        this.preferenceDataStore.put("com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED", true);
    }

    void migrateQuietTimeSettings() {
        if (this.preferenceDataStore.getString("com.urbanairship.push.QUIET_TIME_ENABLED", null) == null) {
            this.preferenceDataStore.put("com.urbanairship.push.QUIET_TIME_ENABLED", this.preferenceDataStore.getBoolean("com.urbanairship.push.QuietTime.Enabled", false));
            this.preferenceDataStore.remove("com.urbanairship.push.QuietTime.Enabled");
        }
        int n2 = this.preferenceDataStore.getInt("com.urbanairship.push.QuietTime.START_HOUR", -1);
        int n3 = this.preferenceDataStore.getInt("com.urbanairship.push.QuietTime.START_MINUTE", -1);
        int n4 = this.preferenceDataStore.getInt("com.urbanairship.push.QuietTime.END_HOUR", -1);
        int n5 = this.preferenceDataStore.getInt("com.urbanairship.push.QuietTime.END_MINUTE", -1);
        if (n2 == -1 || n3 == -1 || n4 == -1 || n5 == -1) {
            return;
        }
        Logger.info((String)"Migrating quiet time interval");
        QuietTimeInterval quietTimeInterval = new QuietTimeInterval.Builder().setStartHour(n2).setStartMin(n3).setEndHour(n4).setEndMin(n5).build();
        this.preferenceDataStore.put("com.urbanairship.push.QUIET_TIME_INTERVAL", quietTimeInterval.toJsonValue());
        this.preferenceDataStore.remove("com.urbanairship.push.QuietTime.START_HOUR");
        this.preferenceDataStore.remove("com.urbanairship.push.QuietTime.START_MINUTE");
        this.preferenceDataStore.remove("com.urbanairship.push.QuietTime.END_HOUR");
        this.preferenceDataStore.remove("com.urbanairship.push.QuietTime.END_MINUTE");
    }

    /*
     * Enabled aggressive block sorting
     */
    void migrateRegistrationTokenSettings() {
        if (this.preferenceDataStore.getBoolean("com.urbanairship.push.REGISTRATION_TOKEN_MIGRATED_KEY", false)) {
            return;
        }
        Logger.info((String)"Migrating registration token preference");
        String string2 = null;
        switch (UAirship.shared().getPlatformType()) {
            case 2: {
                string2 = this.preferenceDataStore.getString("com.urbanairship.push.GCM_INSTANCE_ID_TOKEN_KEY", null);
            }
            default: {
                break;
            }
            case 1: {
                string2 = this.preferenceDataStore.getString("com.urbanairship.push.ADM_REGISTRATION_ID_KEY", null);
            }
        }
        if (!UAStringUtil.isEmpty((String)string2)) {
            this.setRegistrationToken(string2);
        }
        this.preferenceDataStore.put("com.urbanairship.push.REGISTRATION_TOKEN_MIGRATED_KEY", true);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    protected int onPerformJob(@NonNull UAirship var1_1, @NonNull Job var2_2) {
        var3_3 = var2_2.getAction();
        var4_4 = -1;
        switch (var3_3.hashCode()) {
            case 1511735821: {
                if (var3_3.equals("com.urbanairship.push.ACTION_UPDATE_TAG_GROUPS")) {
                    var4_4 = 0;
                    ** break;
                }
                ** GOTO lbl37
            }
            case 1182269995: {
                if (var3_3.equals("com.urbanairship.push.ACTION_APPLY_TAG_GROUP_CHANGES")) {
                    var4_4 = 1;
                    ** break;
                }
                ** GOTO lbl37
            }
            case 720921569: {
                if (var3_3.equals("com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED")) {
                    var4_4 = 2;
                    ** break;
                }
                ** GOTO lbl37
            }
            case -1003583816: {
                if (var3_3.equals("com.urbanairship.push.ACTION_START_REGISTRATION")) {
                    var4_4 = 3;
                    ** break;
                }
                ** GOTO lbl37
            }
            case 1402665321: {
                if (var3_3.equals("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION")) {
                    var4_4 = 4;
                    ** break;
                }
                ** GOTO lbl37
            }
            case -901120150: {
                if (var3_3.equals("com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION")) {
                    var4_4 = 5;
                    ** break;
                }
                ** GOTO lbl37
            }
            case 856841428: {
                if (var3_3.equals("com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE")) {
                    var4_4 = 6;
                }
            }
lbl37: // 16 sources:
            default: {
                ** GOTO lbl42
            }
            case -1138418629: 
        }
        if (var3_3.equals("com.urbanairship.push.ACTION_RECEIVE_GCM_MESSAGE")) {
            var4_4 = 7;
        }
lbl42: // 4 sources:
        switch (var4_4) {
            default: {
                return 0;
            }
            case 0: 
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: {
                if (this.channelJobHandler != null) return this.channelJobHandler.performJob(var2_2);
                this.channelJobHandler = new ChannelJobHandler(this.context, var1_1, this.preferenceDataStore);
                return this.channelJobHandler.performJob(var2_2);
            }
            case 6: 
            case 7: 
        }
        if (this.pushJobHandler != null) return this.pushJobHandler.performJob(var2_2);
        this.pushJobHandler = new PushJobHandler(this.context, var1_1, this.preferenceDataStore);
        return this.pushJobHandler.performJob(var2_2);
    }

    public void removeNotificationActionButtonGroup(@NonNull String string2) {
        if (string2.startsWith("ua_")) {
            Logger.error((String)"Unable to remove any reserved Urban Airship actions groups that begin with ua_");
            return;
        }
        this.actionGroupMap.remove(string2);
    }

    public void setAlias(@Nullable String string2) {
        String string3 = string2;
        if (string2 != null) {
            string3 = string2.trim();
        }
        if (!UAStringUtil.equals((String)string3, (String)this.getAlias())) {
            this.preferenceDataStore.put("com.urbanairship.push.ALIAS", string3);
            this.updateRegistration();
        }
    }

    public void setAliasAndTags(@Nullable String string2, @NonNull Set<String> set) {
        if (set == null) {
            throw new IllegalArgumentException("Tags must be non-null.");
        }
        boolean bl = false;
        if (!UAStringUtil.equals((String)string2, (String)this.getAlias())) {
            this.setAlias(string2);
            bl = true;
        }
        if (!this.storeTags(set)) {
            bl = true;
        }
        if (bl) {
            this.updateRegistration();
        }
    }

    void setChannel(String string2, String string3) {
        this.preferenceDataStore.put("com.urbanairship.push.CHANNEL_ID", string2);
        this.preferenceDataStore.put("com.urbanairship.push.CHANNEL_LOCATION", string3);
    }

    public void setChannelTagRegistrationEnabled(boolean bl) {
        this.channelTagRegistrationEnabled = bl;
    }

    void setLastReceivedMetadata(String string2) {
        this.preferenceDataStore.put("com.urbanairship.push.LAST_RECEIVED_METADATA", string2);
    }

    public void setNotificationFactory(@NonNull NotificationFactory notificationFactory) {
        this.notificationFactory = notificationFactory;
    }

    public void setPushEnabled(boolean bl) {
        this.preferenceDataStore.put("com.urbanairship.push.PUSH_ENABLED", bl);
        this.updateRegistration();
    }

    public void setPushTokenRegistrationEnabled(boolean bl) {
        this.preferenceDataStore.put("com.urbanairship.push.PUSH_TOKEN_REGISTRATION_ENABLED", bl);
        this.updateRegistration();
    }

    public void setQuietTimeEnabled(boolean bl) {
        this.preferenceDataStore.put("com.urbanairship.push.QUIET_TIME_ENABLED", bl);
    }

    public void setQuietTimeInterval(@NonNull Date date, @NonNull Date date2) {
        date = new QuietTimeInterval.Builder().setQuietTimeInterval(date, date2).build();
        this.preferenceDataStore.put("com.urbanairship.push.QUIET_TIME_INTERVAL", date.toJsonValue());
    }

    void setRegistrationToken(String string2) {
        this.preferenceDataStore.put("com.urbanairship.push.REGISTRATION_TOKEN_KEY", string2);
    }

    public void setSoundEnabled(boolean bl) {
        this.preferenceDataStore.put("com.urbanairship.push.SOUND_ENABLED", bl);
    }

    public void setTags(@NonNull Set<String> set) {
        if (set == null) {
            throw new IllegalArgumentException("Tags must be non-null.");
        }
        if (this.storeTags(set)) {
            this.updateRegistration();
        }
    }

    public void setUserNotificationsEnabled(boolean bl) {
        this.preferenceDataStore.put("com.urbanairship.push.USER_NOTIFICATIONS_ENABLED", bl);
        this.updateRegistration();
    }

    public void setVibrateEnabled(boolean bl) {
        this.preferenceDataStore.put("com.urbanairship.push.VIBRATE_ENABLED", bl);
    }

    void startUpdateTagsService() {
        Job job = Job.newBuilder((String)"com.urbanairship.push.ACTION_UPDATE_TAG_GROUPS").setAirshipComponent((Class)PushManager.class).build();
        this.jobDispatcher.dispatch(job);
    }

    public void updateRegistration() {
        Job job = Job.newBuilder((String)"com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION").setAirshipComponent((Class)PushManager.class).build();
        this.jobDispatcher.dispatch(job);
    }
}

