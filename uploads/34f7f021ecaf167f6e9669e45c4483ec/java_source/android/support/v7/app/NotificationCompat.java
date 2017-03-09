/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.app.PendingIntent
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.text.SpannableStringBuilder
 *  android.text.TextUtils
 *  android.text.style.TextAppearanceSpan
 *  android.widget.RemoteViews
 */
package android.support.v7.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.app.BundleCompat;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.text.BidiFormatter;
import android.support.v7.app.NotificationCompatImpl21;
import android.support.v7.app.NotificationCompatImpl24;
import android.support.v7.app.NotificationCompatImplBase;
import android.support.v7.app.NotificationCompatImplJellybean;
import android.support.v7.appcompat.R;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.List;

public class NotificationCompat
extends android.support.v4.app.NotificationCompat {
    /*
     * Enabled aggressive block sorting
     */
    private static void addBigStyleToBuilderJellybean(Notification notification, NotificationCompat.Builder builder) {
        if (builder.mStyle instanceof MediaStyle) {
            MediaStyle mediaStyle = (MediaStyle)builder.mStyle;
            RemoteViews remoteViews = builder.getBigContentView() != null ? builder.getBigContentView() : builder.getContentView();
            boolean bl = builder.mStyle instanceof DecoratedMediaCustomViewStyle && remoteViews != null;
            NotificationCompatImplBase.overrideMediaBigContentView(notification, builder.mContext, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mNumber, builder.mLargeIcon, builder.mSubText, builder.mUseChronometer, builder.getWhenIfShowing(), builder.getPriority(), 0, builder.mActions, mediaStyle.mShowCancelButton, mediaStyle.mCancelButtonIntent, bl);
            if (!bl) return;
            {
                NotificationCompatImplBase.buildIntoRemoteViews(builder.mContext, notification.bigContentView, remoteViews);
                return;
            }
        } else {
            if (!(builder.mStyle instanceof DecoratedCustomViewStyle)) return;
            {
                NotificationCompat.addDecoratedBigStyleToBuilder(notification, builder);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void addBigStyleToBuilderLollipop(Notification notification, NotificationCompat.Builder builder) {
        RemoteViews remoteViews = builder.getBigContentView() != null ? builder.getBigContentView() : builder.getContentView();
        if (builder.mStyle instanceof DecoratedMediaCustomViewStyle && remoteViews != null) {
            NotificationCompatImplBase.overrideMediaBigContentView(notification, builder.mContext, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mNumber, builder.mLargeIcon, builder.mSubText, builder.mUseChronometer, builder.getWhenIfShowing(), builder.getPriority(), 0, builder.mActions, false, null, true);
            NotificationCompatImplBase.buildIntoRemoteViews(builder.mContext, notification.bigContentView, remoteViews);
            NotificationCompat.setBackgroundColor(builder.mContext, notification.bigContentView, builder.getColor());
            return;
        } else {
            if (!(builder.mStyle instanceof DecoratedCustomViewStyle)) return;
            {
                NotificationCompat.addDecoratedBigStyleToBuilder(notification, builder);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void addDecoratedBigStyleToBuilder(Notification notification, NotificationCompat.Builder builder) {
        RemoteViews remoteViews = builder.getBigContentView();
        if (remoteViews == null) {
            remoteViews = builder.getContentView();
        }
        if (remoteViews == null) {
            return;
        }
        RemoteViews remoteViews2 = NotificationCompatImplBase.applyStandardTemplateWithActions(builder.mContext, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mNumber, notification.icon, builder.mLargeIcon, builder.mSubText, builder.mUseChronometer, builder.getWhenIfShowing(), builder.getPriority(), builder.getColor(), R.layout.notification_template_custom_big, false, builder.mActions);
        NotificationCompatImplBase.buildIntoRemoteViews(builder.mContext, remoteViews2, remoteViews);
        notification.bigContentView = remoteViews2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void addDecoratedHeadsUpToBuilder(Notification notification, NotificationCompat.Builder builder) {
        RemoteViews remoteViews = builder.getHeadsUpContentView();
        RemoteViews remoteViews2 = remoteViews != null ? remoteViews : builder.getContentView();
        if (remoteViews == null) {
            return;
        }
        remoteViews = NotificationCompatImplBase.applyStandardTemplateWithActions(builder.mContext, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mNumber, notification.icon, builder.mLargeIcon, builder.mSubText, builder.mUseChronometer, builder.getWhenIfShowing(), builder.getPriority(), builder.getColor(), R.layout.notification_template_custom_big, false, builder.mActions);
        NotificationCompatImplBase.buildIntoRemoteViews(builder.mContext, remoteViews, remoteViews2);
        notification.headsUpContentView = remoteViews;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void addHeadsUpToBuilderLollipop(Notification notification, NotificationCompat.Builder builder) {
        RemoteViews remoteViews = builder.getHeadsUpContentView() != null ? builder.getHeadsUpContentView() : builder.getContentView();
        if (builder.mStyle instanceof DecoratedMediaCustomViewStyle && remoteViews != null) {
            notification.headsUpContentView = NotificationCompatImplBase.generateMediaBigView(builder.mContext, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mNumber, builder.mLargeIcon, builder.mSubText, builder.mUseChronometer, builder.getWhenIfShowing(), builder.getPriority(), 0, builder.mActions, false, null, true);
            NotificationCompatImplBase.buildIntoRemoteViews(builder.mContext, notification.headsUpContentView, remoteViews);
            NotificationCompat.setBackgroundColor(builder.mContext, notification.headsUpContentView, builder.getColor());
            return;
        } else {
            if (!(builder.mStyle instanceof DecoratedCustomViewStyle)) return;
            {
                NotificationCompat.addDecoratedHeadsUpToBuilder(notification, builder);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void addMessagingFallBackStyle(NotificationCompat.MessagingStyle messagingStyle, NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, NotificationCompat.Builder builder) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        List<NotificationCompat.MessagingStyle.Message> list = messagingStyle.getMessages();
        boolean bl = messagingStyle.getConversationTitle() != null || NotificationCompat.hasMessagesWithoutSender(messagingStyle.getMessages());
        int n2 = list.size() - 1;
        do {
            if (n2 < 0) {
                NotificationCompatImplJellybean.addBigTextStyle(notificationBuilderWithBuilderAccessor, (CharSequence)spannableStringBuilder);
                return;
            }
            Object object = list.get(n2);
            object = bl ? NotificationCompat.makeMessageLine(builder, messagingStyle, (NotificationCompat.MessagingStyle.Message)object) : object.getText();
            if (n2 != list.size() - 1) {
                spannableStringBuilder.insert(0, (CharSequence)"\n");
            }
            spannableStringBuilder.insert(0, (CharSequence)object);
            --n2;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static RemoteViews addStyleGetContentViewIcs(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, NotificationCompat.Builder builder) {
        if (builder.mStyle instanceof MediaStyle) {
            MediaStyle mediaStyle = (MediaStyle)builder.mStyle;
            boolean bl = builder.mStyle instanceof DecoratedMediaCustomViewStyle && builder.getContentView() != null;
            notificationBuilderWithBuilderAccessor = NotificationCompatImplBase.overrideContentViewMedia(notificationBuilderWithBuilderAccessor, builder.mContext, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mNumber, builder.mLargeIcon, builder.mSubText, builder.mUseChronometer, builder.getWhenIfShowing(), builder.getPriority(), builder.mActions, mediaStyle.mActionsToShowInCompact, mediaStyle.mShowCancelButton, mediaStyle.mCancelButtonIntent, bl);
            if (!bl) return null;
            {
                NotificationCompatImplBase.buildIntoRemoteViews(builder.mContext, (RemoteViews)notificationBuilderWithBuilderAccessor, builder.getContentView());
                return notificationBuilderWithBuilderAccessor;
            }
        } else {
            if (!(builder.mStyle instanceof DecoratedCustomViewStyle)) return null;
            return NotificationCompat.getDecoratedContentView(builder);
        }
    }

    private static RemoteViews addStyleGetContentViewJellybean(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, NotificationCompat.Builder builder) {
        if (builder.mStyle instanceof NotificationCompat.MessagingStyle) {
            NotificationCompat.addMessagingFallBackStyle((NotificationCompat.MessagingStyle)builder.mStyle, notificationBuilderWithBuilderAccessor, builder);
        }
        return NotificationCompat.addStyleGetContentViewIcs(notificationBuilderWithBuilderAccessor, builder);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static RemoteViews addStyleGetContentViewLollipop(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, NotificationCompat.Builder builder) {
        if (builder.mStyle instanceof MediaStyle) {
            MediaStyle mediaStyle = (MediaStyle)builder.mStyle;
            int[] arrn = mediaStyle.mActionsToShowInCompact;
            Object object = mediaStyle.mToken != null ? mediaStyle.mToken.getToken() : null;
            NotificationCompatImpl21.addMediaStyle(notificationBuilderWithBuilderAccessor, arrn, object);
            boolean bl = builder.getContentView() != null;
            boolean bl2 = Build.VERSION.SDK_INT >= 21 && Build.VERSION.SDK_INT <= 23;
            bl2 = bl || bl2 && builder.getBigContentView() != null;
            if (!(builder.mStyle instanceof DecoratedMediaCustomViewStyle)) return null;
            if (!bl2) {
                return null;
            }
            notificationBuilderWithBuilderAccessor = NotificationCompatImplBase.overrideContentViewMedia(notificationBuilderWithBuilderAccessor, builder.mContext, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mNumber, builder.mLargeIcon, builder.mSubText, builder.mUseChronometer, builder.getWhenIfShowing(), builder.getPriority(), builder.mActions, mediaStyle.mActionsToShowInCompact, false, null, bl);
            if (bl) {
                NotificationCompatImplBase.buildIntoRemoteViews(builder.mContext, (RemoteViews)notificationBuilderWithBuilderAccessor, builder.getContentView());
            }
            NotificationCompat.setBackgroundColor(builder.mContext, (RemoteViews)notificationBuilderWithBuilderAccessor, builder.getColor());
            return notificationBuilderWithBuilderAccessor;
        }
        if (builder.mStyle instanceof DecoratedCustomViewStyle) {
            return NotificationCompat.getDecoratedContentView(builder);
        }
        return NotificationCompat.addStyleGetContentViewJellybean(notificationBuilderWithBuilderAccessor, builder);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void addStyleToBuilderApi24(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, NotificationCompat.Builder builder) {
        if (builder.mStyle instanceof DecoratedCustomViewStyle) {
            NotificationCompatImpl24.addDecoratedCustomViewStyle(notificationBuilderWithBuilderAccessor);
            return;
        } else {
            if (builder.mStyle instanceof DecoratedMediaCustomViewStyle) {
                NotificationCompatImpl24.addDecoratedMediaCustomViewStyle(notificationBuilderWithBuilderAccessor);
                return;
            }
            if (builder.mStyle instanceof NotificationCompat.MessagingStyle) return;
            {
                NotificationCompat.addStyleGetContentViewLollipop(notificationBuilderWithBuilderAccessor, builder);
                return;
            }
        }
    }

    private static NotificationCompat.MessagingStyle.Message findLatestIncomingMessage(NotificationCompat.MessagingStyle object) {
        object = object.getMessages();
        for (int i2 = object.size() - 1; i2 >= 0; --i2) {
            NotificationCompat.MessagingStyle.Message message = (NotificationCompat.MessagingStyle.Message)object.get(i2);
            if (TextUtils.isEmpty((CharSequence)message.getSender())) continue;
            return message;
        }
        if (!object.isEmpty()) {
            return (NotificationCompat.MessagingStyle.Message)object.get(object.size() - 1);
        }
        return null;
    }

    private static RemoteViews getDecoratedContentView(NotificationCompat.Builder builder) {
        if (builder.getContentView() == null) {
            return null;
        }
        RemoteViews remoteViews = NotificationCompatImplBase.applyStandardTemplateWithActions(builder.mContext, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mNumber, builder.mNotification.icon, builder.mLargeIcon, builder.mSubText, builder.mUseChronometer, builder.getWhenIfShowing(), builder.getPriority(), builder.getColor(), R.layout.notification_template_custom_big, false, null);
        NotificationCompatImplBase.buildIntoRemoteViews(builder.mContext, remoteViews, builder.getContentView());
        return remoteViews;
    }

    public static MediaSessionCompat.Token getMediaSession(Notification notification) {
        if ((notification = NotificationCompat.getExtras(notification)) != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                if ((notification = notification.getParcelable("android.mediaSession")) != null) {
                    return MediaSessionCompat.Token.fromToken((Object)notification);
                }
            } else {
                Object object = BundleCompat.getBinder((Bundle)notification, "android.mediaSession");
                if (object != null) {
                    notification = Parcel.obtain();
                    notification.writeStrongBinder((IBinder)object);
                    notification.setDataPosition(0);
                    object = (MediaSessionCompat.Token)MediaSessionCompat.Token.CREATOR.createFromParcel((Parcel)notification);
                    notification.recycle();
                    return object;
                }
            }
        }
        return null;
    }

    private static boolean hasMessagesWithoutSender(List<NotificationCompat.MessagingStyle.Message> list) {
        for (int i2 = list.size() - 1; i2 >= 0; --i2) {
            if (list.get(i2).getSender() != null) continue;
            return true;
        }
        return false;
    }

    private static TextAppearanceSpan makeFontColorSpan(int n2) {
        return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf((int)n2), null);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static CharSequence makeMessageLine(NotificationCompat.Builder object, NotificationCompat.MessagingStyle object2, NotificationCompat.MessagingStyle.Message message) {
        BidiFormatter bidiFormatter = BidiFormatter.getInstance();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        boolean bl = Build.VERSION.SDK_INT >= 21;
        int n2 = bl || Build.VERSION.SDK_INT <= 10 ? -16777216 : -1;
        Object object3 = message.getSender();
        int n3 = n2;
        if (TextUtils.isEmpty((CharSequence)message.getSender())) {
            object2 = object2.getUserDisplayName() == null ? "" : object2.getUserDisplayName();
            n3 = n2;
            object3 = object2;
            if (bl) {
                n3 = n2;
                object3 = object2;
                if (object.getColor() != 0) {
                    n3 = object.getColor();
                    object3 = object2;
                }
            }
        }
        object = bidiFormatter.unicodeWrap((CharSequence)object3);
        spannableStringBuilder.append((CharSequence)object);
        spannableStringBuilder.setSpan((Object)NotificationCompat.makeFontColorSpan(n3), spannableStringBuilder.length() - object.length(), spannableStringBuilder.length(), 33);
        object = message.getText() == null ? "" : message.getText();
        spannableStringBuilder.append((CharSequence)"  ").append(bidiFormatter.unicodeWrap((CharSequence)object));
        return spannableStringBuilder;
    }

    private static void setBackgroundColor(Context context, RemoteViews remoteViews, int n2) {
        int n3 = n2;
        if (n2 == 0) {
            n3 = context.getResources().getColor(R.color.notification_material_background_media_default_color);
        }
        remoteViews.setInt(R.id.status_bar_latest_event_content, "setBackgroundColor", n3);
    }

    private static class Api24Extender
    extends NotificationCompat.BuilderExtender {
        private Api24Extender() {
        }

        @Override
        public Notification build(NotificationCompat.Builder builder, NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            NotificationCompat.addStyleToBuilderApi24(notificationBuilderWithBuilderAccessor, builder);
            return notificationBuilderWithBuilderAccessor.build();
        }
    }

    public static class Builder
    extends NotificationCompat.Builder {
        public Builder(Context context) {
            super(context);
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        @Override
        protected NotificationCompat.BuilderExtender getExtender() {
            if (Build.VERSION.SDK_INT >= 24) {
                return new Api24Extender();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                return new LollipopExtender();
            }
            if (Build.VERSION.SDK_INT >= 16) {
                return new JellybeanExtender();
            }
            if (Build.VERSION.SDK_INT >= 14) {
                return new IceCreamSandwichExtender();
            }
            return super.getExtender();
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        @Override
        protected CharSequence resolveText() {
            if (this.mStyle instanceof NotificationCompat.MessagingStyle) {
                NotificationCompat.MessagingStyle messagingStyle = (NotificationCompat.MessagingStyle)this.mStyle;
                NotificationCompat.MessagingStyle.Message message = NotificationCompat.findLatestIncomingMessage(messagingStyle);
                CharSequence charSequence = messagingStyle.getConversationTitle();
                if (message != null) {
                    if (charSequence != null) {
                        return NotificationCompat.makeMessageLine(this, messagingStyle, message);
                    }
                    return message.getText();
                }
            }
            return super.resolveText();
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        @Override
        protected CharSequence resolveTitle() {
            if (this.mStyle instanceof NotificationCompat.MessagingStyle) {
                Object object = (NotificationCompat.MessagingStyle)this.mStyle;
                NotificationCompat.MessagingStyle.Message message = NotificationCompat.findLatestIncomingMessage((NotificationCompat.MessagingStyle)object);
                if ((object = object.getConversationTitle()) != null || message != null) {
                    if (object != null) {
                        return object;
                    }
                    return message.getSender();
                }
            }
            return super.resolveTitle();
        }
    }

    public static class DecoratedCustomViewStyle
    extends NotificationCompat.Style {
    }

    public static class DecoratedMediaCustomViewStyle
    extends MediaStyle {
    }

    private static class IceCreamSandwichExtender
    extends NotificationCompat.BuilderExtender {
        IceCreamSandwichExtender() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public Notification build(NotificationCompat.Builder builder, NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            RemoteViews remoteViews = NotificationCompat.addStyleGetContentViewIcs(notificationBuilderWithBuilderAccessor, builder);
            notificationBuilderWithBuilderAccessor = notificationBuilderWithBuilderAccessor.build();
            if (remoteViews != null) {
                notificationBuilderWithBuilderAccessor.contentView = remoteViews;
                return notificationBuilderWithBuilderAccessor;
            } else {
                if (builder.getContentView() == null) return notificationBuilderWithBuilderAccessor;
                {
                    notificationBuilderWithBuilderAccessor.contentView = builder.getContentView();
                    return notificationBuilderWithBuilderAccessor;
                }
            }
        }
    }

    private static class JellybeanExtender
    extends NotificationCompat.BuilderExtender {
        JellybeanExtender() {
        }

        @Override
        public Notification build(NotificationCompat.Builder builder, NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            RemoteViews remoteViews = NotificationCompat.addStyleGetContentViewJellybean(notificationBuilderWithBuilderAccessor, builder);
            notificationBuilderWithBuilderAccessor = notificationBuilderWithBuilderAccessor.build();
            if (remoteViews != null) {
                notificationBuilderWithBuilderAccessor.contentView = remoteViews;
            }
            NotificationCompat.addBigStyleToBuilderJellybean((Notification)notificationBuilderWithBuilderAccessor, builder);
            return notificationBuilderWithBuilderAccessor;
        }
    }

    private static class LollipopExtender
    extends NotificationCompat.BuilderExtender {
        LollipopExtender() {
        }

        @Override
        public Notification build(NotificationCompat.Builder builder, NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            RemoteViews remoteViews = NotificationCompat.addStyleGetContentViewLollipop(notificationBuilderWithBuilderAccessor, builder);
            notificationBuilderWithBuilderAccessor = notificationBuilderWithBuilderAccessor.build();
            if (remoteViews != null) {
                notificationBuilderWithBuilderAccessor.contentView = remoteViews;
            }
            NotificationCompat.addBigStyleToBuilderLollipop((Notification)notificationBuilderWithBuilderAccessor, builder);
            NotificationCompat.addHeadsUpToBuilderLollipop((Notification)notificationBuilderWithBuilderAccessor, builder);
            return notificationBuilderWithBuilderAccessor;
        }
    }

    public static class MediaStyle
    extends NotificationCompat.Style {
        int[] mActionsToShowInCompact = null;
        PendingIntent mCancelButtonIntent;
        boolean mShowCancelButton;
        MediaSessionCompat.Token mToken;

        public MediaStyle() {
        }

        public MediaStyle(NotificationCompat.Builder builder) {
            this.setBuilder(builder);
        }

        public MediaStyle setCancelButtonIntent(PendingIntent pendingIntent) {
            this.mCancelButtonIntent = pendingIntent;
            return this;
        }

        public MediaStyle setMediaSession(MediaSessionCompat.Token token) {
            this.mToken = token;
            return this;
        }

        public /* varargs */ MediaStyle setShowActionsInCompactView(int ... arrn) {
            this.mActionsToShowInCompact = arrn;
            return this;
        }

        public MediaStyle setShowCancelButton(boolean bl) {
            this.mShowCancelButton = bl;
            return this;
        }
    }

}

