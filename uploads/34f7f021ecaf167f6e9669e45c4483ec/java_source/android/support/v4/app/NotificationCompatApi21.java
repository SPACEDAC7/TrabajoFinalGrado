/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.app.Notification$Builder
 *  android.app.PendingIntent
 *  android.app.RemoteInput
 *  android.app.RemoteInput$Builder
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.Parcelable
 *  android.widget.RemoteViews
 */
package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationBuilderWithActions;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompatApi20;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.RemoteInputCompatBase;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;

class NotificationCompatApi21 {
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    private static final String KEY_AUTHOR = "author";
    private static final String KEY_MESSAGES = "messages";
    private static final String KEY_ON_READ = "on_read";
    private static final String KEY_ON_REPLY = "on_reply";
    private static final String KEY_PARTICIPANTS = "participants";
    private static final String KEY_REMOTE_INPUT = "remote_input";
    private static final String KEY_TEXT = "text";
    private static final String KEY_TIMESTAMP = "timestamp";

    NotificationCompatApi21() {
    }

    private static RemoteInput fromCompatRemoteInput(RemoteInputCompatBase.RemoteInput remoteInput) {
        return new RemoteInput.Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras()).build();
    }

    static Bundle getBundleForUnreadConversation(NotificationCompatBase.UnreadConversation unreadConversation) {
        Parcelable[] arrparcelable;
        if (unreadConversation == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        Parcelable[] arrparcelable2 = arrparcelable = null;
        if (unreadConversation.getParticipants() != null) {
            arrparcelable2 = arrparcelable;
            if (unreadConversation.getParticipants().length > 1) {
                arrparcelable2 = unreadConversation.getParticipants()[0];
            }
        }
        arrparcelable = new Parcelable[unreadConversation.getMessages().length];
        for (int i2 = 0; i2 < arrparcelable.length; ++i2) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("text", unreadConversation.getMessages()[i2]);
            bundle2.putString("author", (String)arrparcelable2);
            arrparcelable[i2] = bundle2;
        }
        bundle.putParcelableArray("messages", arrparcelable);
        arrparcelable2 = unreadConversation.getRemoteInput();
        if (arrparcelable2 != null) {
            bundle.putParcelable("remote_input", (Parcelable)NotificationCompatApi21.fromCompatRemoteInput((RemoteInputCompatBase.RemoteInput)arrparcelable2));
        }
        bundle.putParcelable("on_reply", (Parcelable)unreadConversation.getReplyPendingIntent());
        bundle.putParcelable("on_read", (Parcelable)unreadConversation.getReadPendingIntent());
        bundle.putStringArray("participants", unreadConversation.getParticipants());
        bundle.putLong("timestamp", unreadConversation.getLatestTimestamp());
        return bundle;
    }

    public static String getCategory(Notification notification) {
        return notification.category;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static NotificationCompatBase.UnreadConversation getUnreadConversationFromBundle(Bundle var0, NotificationCompatBase.UnreadConversation.Factory var1_1, RemoteInputCompatBase.RemoteInput.Factory var2_2) {
        var7_3 = null;
        if (var0 == null) {
            return null;
        }
        var8_4 = var0.getParcelableArray("messages");
        var6_5 = null;
        if (var8_4 == null) ** GOTO lbl-1000
        var6_5 = new String[var8_4.length];
        var5_6 = true;
        var4_7 = 0;
        do {
            var3_8 = var5_6;
            if (var4_7 < var6_5.length) {
                if (!(var8_4[var4_7] instanceof Bundle)) {
                    return null;
                }
            } else lbl-1000: // 2 sources:
            {
                var8_4 = (PendingIntent)var0.getParcelable("on_read");
                var9_9 = (PendingIntent)var0.getParcelable("on_reply");
                var11_10 = (RemoteInput)var0.getParcelable("remote_input");
                var10_11 = var0.getStringArray("participants");
                if (var10_11 == null) return null;
                if (var10_11.length != 1) return null;
                if (var11_10 == null) return var1_1.build(var6_5, var7_3, var9_9, var8_4, var10_11, var0.getLong("timestamp"));
                var7_3 = NotificationCompatApi21.toCompatRemoteInput(var11_10, var2_2);
                return var1_1.build(var6_5, var7_3, var9_9, var8_4, var10_11, var0.getLong("timestamp"));
            }
            var6_5[var4_7] = ((Bundle)var8_4[var4_7]).getString("text");
            if (var6_5[var4_7] == null) {
                return null;
            }
            ++var4_7;
        } while (true);
    }

    private static RemoteInputCompatBase.RemoteInput toCompatRemoteInput(RemoteInput remoteInput, RemoteInputCompatBase.RemoteInput.Factory factory) {
        return factory.build(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), remoteInput.getExtras());
    }

    public static class Builder
    implements NotificationBuilderWithBuilderAccessor,
    NotificationBuilderWithActions {
        private Notification.Builder b;
        private RemoteViews mBigContentView;
        private RemoteViews mContentView;
        private Bundle mExtras;
        private RemoteViews mHeadsUpContentView;

        /*
         * Enabled aggressive block sorting
         */
        public Builder(Context iterator, Notification object, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int n2, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int n3, int n4, boolean bl, boolean bl2, boolean bl3, int n5, CharSequence charSequence4, boolean bl4, String string2, ArrayList<String> arrayList, Bundle bundle, int n6, int n7, Notification notification, String string3, boolean bl5, String string4, RemoteViews remoteViews2, RemoteViews remoteViews3, RemoteViews remoteViews4) {
            void var15_17;
            void var26_28;
            void var6_8;
            void var21_23;
            void var9_11;
            void var3_5;
            void var12_14;
            void var23_25;
            void var19_21;
            void var13_15;
            void var17_19;
            void var20_22;
            void var7_9;
            void var10_12;
            void var25_27;
            void var8_10;
            void var4_6;
            void var11_13;
            void var27_29;
            boolean bl6;
            void var22_24;
            void var24_26;
            void var5_7;
            void var18_20;
            void var16_18;
            iterator = new Notification.Builder((Context)iterator).setWhen(object.when).setShowWhen(bl6).setSmallIcon(object.icon, object.iconLevel).setContent(object.contentView).setTicker(object.tickerText, (RemoteViews)var6_8).setSound(object.sound, object.audioStreamType).setVibrate(object.vibrate).setLights(object.ledARGB, object.ledOnMS, object.ledOffMS);
            bl6 = (object.flags & 2) != 0;
            iterator = iterator.setOngoing(bl6);
            bl6 = (object.flags & 8) != 0;
            iterator = iterator.setOnlyAlertOnce(bl6);
            bl6 = (object.flags & 16) != 0;
            iterator = iterator.setAutoCancel(bl6).setDefaults(object.defaults).setContentTitle((CharSequence)var3_5).setContentText((CharSequence)var4_6).setSubText((CharSequence)var17_19).setContentInfo((CharSequence)var5_7).setContentIntent((PendingIntent)var8_10).setDeleteIntent(object.deleteIntent);
            bl6 = (object.flags & 128) != 0;
            this.b = iterator.setFullScreenIntent((PendingIntent)var9_11, bl6).setLargeIcon((Bitmap)var10_12).setNumber((int)var7_9).setUsesChronometer((boolean)var15_17).setPriority((int)var16_18).setProgress((int)var11_13, (int)var12_14, (boolean)var13_15).setLocalOnly((boolean)var18_20).setGroup((String)var25_27).setGroupSummary((boolean)var26_28).setSortKey((String)var27_29).setCategory((String)var19_21).setColor((int)var22_24).setVisibility((int)var23_25).setPublicVersion((Notification)var24_26);
            this.mExtras = new Bundle();
            if (var21_23 != null) {
                this.mExtras.putAll((Bundle)var21_23);
            }
            iterator = var20_22.iterator();
            do {
                if (!iterator.hasNext()) {
                    void var30_32;
                    void var28_30;
                    void var29_31;
                    this.mContentView = var28_30;
                    this.mBigContentView = var29_31;
                    this.mHeadsUpContentView = var30_32;
                    return;
                }
                String string5 = (String)iterator.next();
                this.b.addPerson(string5);
            } while (true);
        }

        @Override
        public void addAction(NotificationCompatBase.Action action) {
            NotificationCompatApi20.addAction(this.b, action);
        }

        @Override
        public Notification build() {
            this.b.setExtras(this.mExtras);
            Notification notification = this.b.build();
            if (this.mContentView != null) {
                notification.contentView = this.mContentView;
            }
            if (this.mBigContentView != null) {
                notification.bigContentView = this.mBigContentView;
            }
            if (this.mHeadsUpContentView != null) {
                notification.headsUpContentView = this.mHeadsUpContentView;
            }
            return notification;
        }

        @Override
        public Notification.Builder getBuilder() {
            return this.b;
        }
    }

}

