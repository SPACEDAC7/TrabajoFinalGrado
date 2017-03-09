/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.buzzfeed.toolkit.networking.urbanairship;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class UAPostNotificationBody {
    Object audience;
    public final List<String> device_types;
    Notification notification;

    private UAPostNotificationBody() {
        this.device_types = new ArrayList<String>(){};
    }

    public static @interface ActionType {
        public static final String DEEP_LINK = "deep_link";
    }

    static class Actions {
        public OpenAction open;
        public String share;

        Actions() {
        }
    }

    static class AndroidOverride {
        public HashMap<String, String> extra = new HashMap();

        AndroidOverride() {
        }
    }

    static class Audience {
        public String android_channel;

        Audience() {
        }
    }

    static class AudienceAndSelector {
        List<HashMap<String, String>> AND = new ArrayList<HashMap<String, String>>();

        AudienceAndSelector() {
        }

        public void add(final String string2, final String string3) {
            this.AND.add(()new HashMap<String, String>(){});
        }

    }

    public static class Builder {
        private String mChannelId;
        private HashMap<String, String> mExtras;
        private String mTag;
        private UAPostNotificationBody mUAPostNotificationBody = new UAPostNotificationBody();

        public Builder(String string2) {
            if (TextUtils.isEmpty((CharSequence)string2)) {
                throw new IllegalArgumentException("Must have a channelId for UrbanAirship");
            }
            this.mChannelId = string2;
            this.mUAPostNotificationBody.notification = new Notification();
        }

        /*
         * Enabled aggressive block sorting
         */
        public UAPostNotificationBody build() {
            Object object;
            if (!TextUtils.isEmpty((CharSequence)this.mTag)) {
                object = new AudienceAndSelector();
                object.add("android_channel", this.mChannelId);
                object.add("tag", this.mTag);
                this.mUAPostNotificationBody.audience = object;
            } else {
                object = new Audience();
                object.android_channel = this.mChannelId;
                this.mUAPostNotificationBody.audience = object;
            }
            if (this.mExtras != null) {
                object = new AndroidOverride();
                object.extra = this.mExtras;
                this.mUAPostNotificationBody.notification.android = object;
            }
            return this.mUAPostNotificationBody;
        }

        public Builder setAlert(@NonNull String string2) {
            this.mUAPostNotificationBody.notification.alert = string2;
            return this;
        }

        public Builder setExtras(HashMap<String, String> hashMap) {
            this.mExtras = hashMap;
            return this;
        }

        public Builder setOpenAction(@NonNull @ActionType String string2, @NonNull String string3) {
            Actions actions = new Actions();
            actions.open = new OpenAction();
            actions.open.type = string2;
            actions.open.content = string3;
            this.mUAPostNotificationBody.notification.actions = actions;
            return this;
        }

        public Builder setTag(String string2) {
            this.mTag = string2;
            return this;
        }
    }

    static class Notification {
        public Actions actions;
        public String alert;
        @Nullable
        public AndroidOverride android;

        Notification() {
        }
    }

    static class OpenAction {
        public String content;
        public String type;

        OpenAction() {
        }
    }

}

