/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.app.PendingIntent
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.net.Uri
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.Parcelable
 *  android.widget.RemoteViews
 */
package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationBuilderWithActions;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompatApi20;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.NotificationCompatGingerbread;
import android.support.v4.app.NotificationCompatHoneycomb;
import android.support.v4.app.NotificationCompatIceCreamSandwich;
import android.support.v4.app.NotificationCompatJellybean;
import android.support.v4.app.NotificationCompatKitKat;
import android.support.v4.app.RemoteInput;
import android.support.v4.app.RemoteInputCompatBase;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class NotificationCompat {
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;
    public static final String EXTRA_INFO_TEXT = "android.infoText";
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
    public static final String EXTRA_PEOPLE = "android.people";
    public static final String EXTRA_PICTURE = "android.picture";
    public static final String EXTRA_PROGRESS = "android.progress";
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
    public static final String EXTRA_SMALL_ICON = "android.icon";
    public static final String EXTRA_SUB_TEXT = "android.subText";
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
    public static final String EXTRA_TEXT = "android.text";
    public static final String EXTRA_TEXT_LINES = "android.textLines";
    public static final String EXTRA_TITLE = "android.title";
    public static final String EXTRA_TITLE_BIG = "android.title.big";
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    public static final int FLAG_SHOW_LIGHTS = 1;
    private static final NotificationCompatImpl IMPL = Build.VERSION.SDK_INT >= 20 ? new NotificationCompatImplApi20() : (Build.VERSION.SDK_INT >= 19 ? new NotificationCompatImplKitKat() : (Build.VERSION.SDK_INT >= 16 ? new NotificationCompatImplJellybean() : (Build.VERSION.SDK_INT >= 14 ? new NotificationCompatImplIceCreamSandwich() : (Build.VERSION.SDK_INT >= 11 ? new NotificationCompatImplHoneycomb() : (Build.VERSION.SDK_INT >= 9 ? new NotificationCompatImplGingerbread() : new NotificationCompatImplBase())))));
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;
    public static final int STREAM_DEFAULT = -1;

    private static void addActionsToBuilder(NotificationBuilderWithActions notificationBuilderWithActions, ArrayList<Action> object) {
        object = object.iterator();
        while (object.hasNext()) {
            notificationBuilderWithActions.addAction((Action)object.next());
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void addStyleToBuilderJellybean(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, Style style2) {
        if (style2 == null) return;
        {
            if (style2 instanceof BigTextStyle) {
                style2 = (BigTextStyle)style2;
                NotificationCompatJellybean.addBigTextStyle(notificationBuilderWithBuilderAccessor, style2.mBigContentTitle, style2.mSummaryTextSet, style2.mSummaryText, style2.mBigText);
                return;
            } else {
                if (style2 instanceof InboxStyle) {
                    style2 = (InboxStyle)style2;
                    NotificationCompatJellybean.addInboxStyle(notificationBuilderWithBuilderAccessor, style2.mBigContentTitle, style2.mSummaryTextSet, style2.mSummaryText, style2.mTexts);
                    return;
                }
                if (!(style2 instanceof BigPictureStyle)) return;
                {
                    style2 = (BigPictureStyle)style2;
                    NotificationCompatJellybean.addBigPictureStyle(notificationBuilderWithBuilderAccessor, style2.mBigContentTitle, style2.mSummaryTextSet, style2.mSummaryText, style2.mPicture, style2.mBigLargeIcon, style2.mBigLargeIconSet);
                    return;
                }
            }
        }
    }

    public static Action getAction(Notification notification, int n2) {
        return IMPL.getAction(notification, n2);
    }

    public static int getActionCount(Notification notification) {
        return IMPL.getActionCount(notification);
    }

    public static Bundle getExtras(Notification notification) {
        return IMPL.getExtras(notification);
    }

    public static String getGroup(Notification notification) {
        return IMPL.getGroup(notification);
    }

    public static boolean getLocalOnly(Notification notification) {
        return IMPL.getLocalOnly(notification);
    }

    private static Notification[] getNotificationArrayFromBundle(Bundle bundle, String string2) {
        Parcelable[] arrparcelable = bundle.getParcelableArray(string2);
        if (arrparcelable instanceof Notification[] || arrparcelable == null) {
            return (Notification[])arrparcelable;
        }
        Notification[] arrnotification = new Notification[arrparcelable.length];
        for (int i2 = 0; i2 < arrparcelable.length; ++i2) {
            arrnotification[i2] = (Notification)arrparcelable[i2];
        }
        bundle.putParcelableArray(string2, (Parcelable[])arrnotification);
        return arrnotification;
    }

    public static String getSortKey(Notification notification) {
        return IMPL.getSortKey(notification);
    }

    public static boolean isGroupSummary(Notification notification) {
        return IMPL.isGroupSummary(notification);
    }

    public static class Action
    extends NotificationCompatBase.Action {
        public static final NotificationCompatBase.Action.Factory FACTORY = new NotificationCompatBase.Action.Factory(){

            @Override
            public Action build(int n2, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInputCompatBase.RemoteInput[] arrremoteInput) {
                return new Action(n2, charSequence, pendingIntent, bundle, (RemoteInput[])arrremoteInput);
            }

            public Action[] newArray(int n2) {
                return new Action[n2];
            }
        };
        public PendingIntent actionIntent;
        public int icon;
        private final Bundle mExtras;
        private final RemoteInput[] mRemoteInputs;
        public CharSequence title;

        public Action(int n2, CharSequence charSequence, PendingIntent pendingIntent) {
            this(n2, charSequence, pendingIntent, new Bundle(), null);
        }

        /*
         * Enabled aggressive block sorting
         */
        private Action(int n2, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] arrremoteInput) {
            this.icon = n2;
            this.title = charSequence;
            this.actionIntent = pendingIntent;
            if (bundle == null) {
                bundle = new Bundle();
            }
            this.mExtras = bundle;
            this.mRemoteInputs = arrremoteInput;
        }

        @Override
        protected PendingIntent getActionIntent() {
            return this.actionIntent;
        }

        @Override
        public Bundle getExtras() {
            return this.mExtras;
        }

        @Override
        protected int getIcon() {
            return this.icon;
        }

        public RemoteInput[] getRemoteInputs() {
            return this.mRemoteInputs;
        }

        @Override
        protected CharSequence getTitle() {
            return this.title;
        }

        public static final class Builder {
            private final Bundle mExtras;
            private final int mIcon;
            private final PendingIntent mIntent;
            private ArrayList<RemoteInput> mRemoteInputs;
            private final CharSequence mTitle;

            public Builder(int n2, CharSequence charSequence, PendingIntent pendingIntent) {
                this(n2, charSequence, pendingIntent, new Bundle());
            }

            private Builder(int n2, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle) {
                this.mIcon = n2;
                this.mTitle = charSequence;
                this.mIntent = pendingIntent;
                this.mExtras = bundle;
            }

            public Builder(Action action) {
                this(action.icon, action.title, action.actionIntent, new Bundle(action.mExtras));
            }

            public Builder addExtras(Bundle bundle) {
                if (bundle != null) {
                    this.mExtras.putAll(bundle);
                }
                return this;
            }

            public Builder addRemoteInput(RemoteInput remoteInput) {
                if (this.mRemoteInputs == null) {
                    this.mRemoteInputs = new ArrayList();
                }
                this.mRemoteInputs.add(remoteInput);
                return this;
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            public Action build() {
                RemoteInput[] arrremoteInput;
                if (this.mRemoteInputs != null) {
                    arrremoteInput = this.mRemoteInputs.toArray(new RemoteInput[this.mRemoteInputs.size()]);
                    do {
                        return new Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrremoteInput);
                        break;
                    } while (true);
                }
                arrremoteInput = null;
                return new Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrremoteInput);
            }

            public Builder extend(Extender extender) {
                extender.extend(this);
                return this;
            }

            public Bundle getExtras() {
                return this.mExtras;
            }
        }

        public static interface Extender {
            public Builder extend(Builder var1);
        }

        public static final class WearableExtender
        implements Extender {
            private static final int DEFAULT_FLAGS = 1;
            private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
            private static final int FLAG_AVAILABLE_OFFLINE = 1;
            private static final String KEY_FLAGS = "flags";
            private int mFlags = 1;

            public WearableExtender() {
            }

            public WearableExtender(Action action) {
                action = action.getExtras().getBundle("android.wearable.EXTENSIONS");
                if (action != null) {
                    this.mFlags = action.getInt("flags", 1);
                }
            }

            private void setFlag(int n2, boolean bl) {
                if (bl) {
                    this.mFlags |= n2;
                    return;
                }
                this.mFlags &= ~ n2;
            }

            public WearableExtender clone() {
                WearableExtender wearableExtender = new WearableExtender();
                wearableExtender.mFlags = this.mFlags;
                return wearableExtender;
            }

            @Override
            public Builder extend(Builder builder) {
                Bundle bundle = new Bundle();
                if (this.mFlags != 1) {
                    bundle.putInt("flags", this.mFlags);
                }
                builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
                return builder;
            }

            public boolean isAvailableOffline() {
                if ((this.mFlags & 1) != 0) {
                    return true;
                }
                return false;
            }

            public WearableExtender setAvailableOffline(boolean bl) {
                this.setFlag(1, bl);
                return this;
            }
        }

    }

    public static class BigPictureStyle
    extends Style {
        Bitmap mBigLargeIcon;
        boolean mBigLargeIconSet;
        Bitmap mPicture;

        public BigPictureStyle() {
        }

        public BigPictureStyle(Builder builder) {
            this.setBuilder(builder);
        }

        public BigPictureStyle bigLargeIcon(Bitmap bitmap) {
            this.mBigLargeIcon = bitmap;
            this.mBigLargeIconSet = true;
            return this;
        }

        public BigPictureStyle bigPicture(Bitmap bitmap) {
            this.mPicture = bitmap;
            return this;
        }

        public BigPictureStyle setBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = charSequence;
            return this;
        }

        public BigPictureStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = charSequence;
            this.mSummaryTextSet = true;
            return this;
        }
    }

    public static class BigTextStyle
    extends Style {
        CharSequence mBigText;

        public BigTextStyle() {
        }

        public BigTextStyle(Builder builder) {
            this.setBuilder(builder);
        }

        public BigTextStyle bigText(CharSequence charSequence) {
            this.mBigText = charSequence;
            return this;
        }

        public BigTextStyle setBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = charSequence;
            return this;
        }

        public BigTextStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = charSequence;
            this.mSummaryTextSet = true;
            return this;
        }
    }

    public static class Builder {
        ArrayList<Action> mActions = new ArrayList();
        CharSequence mContentInfo;
        PendingIntent mContentIntent;
        CharSequence mContentText;
        CharSequence mContentTitle;
        Context mContext;
        Bundle mExtras;
        PendingIntent mFullScreenIntent;
        String mGroupKey;
        boolean mGroupSummary;
        Bitmap mLargeIcon;
        boolean mLocalOnly = false;
        Notification mNotification = new Notification();
        int mNumber;
        int mPriority;
        int mProgress;
        boolean mProgressIndeterminate;
        int mProgressMax;
        String mSortKey;
        Style mStyle;
        CharSequence mSubText;
        RemoteViews mTickerView;
        boolean mUseChronometer;

        public Builder(Context context) {
            this.mContext = context;
            this.mNotification.when = System.currentTimeMillis();
            this.mNotification.audioStreamType = -1;
            this.mPriority = 0;
        }

        private void setFlag(int n2, boolean bl) {
            if (bl) {
                Notification notification = this.mNotification;
                notification.flags |= n2;
                return;
            }
            Notification notification = this.mNotification;
            notification.flags &= ~ n2;
        }

        public Builder addAction(int n2, CharSequence charSequence, PendingIntent pendingIntent) {
            this.mActions.add(new Action(n2, charSequence, pendingIntent));
            return this;
        }

        public Builder addAction(Action action) {
            this.mActions.add(action);
            return this;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public Builder addExtras(Bundle bundle) {
            if (bundle == null) return this;
            if (this.mExtras == null) {
                this.mExtras = new Bundle(bundle);
                return this;
            }
            this.mExtras.putAll(bundle);
            return this;
        }

        public Notification build() {
            return IMPL.build(this);
        }

        public Builder extend(Extender extender) {
            extender.extend(this);
            return this;
        }

        public Bundle getExtras() {
            if (this.mExtras == null) {
                this.mExtras = new Bundle();
            }
            return this.mExtras;
        }

        @Deprecated
        public Notification getNotification() {
            return IMPL.build(this);
        }

        public Builder setAutoCancel(boolean bl) {
            this.setFlag(16, bl);
            return this;
        }

        public Builder setContent(RemoteViews remoteViews) {
            this.mNotification.contentView = remoteViews;
            return this;
        }

        public Builder setContentInfo(CharSequence charSequence) {
            this.mContentInfo = charSequence;
            return this;
        }

        public Builder setContentIntent(PendingIntent pendingIntent) {
            this.mContentIntent = pendingIntent;
            return this;
        }

        public Builder setContentText(CharSequence charSequence) {
            this.mContentText = charSequence;
            return this;
        }

        public Builder setContentTitle(CharSequence charSequence) {
            this.mContentTitle = charSequence;
            return this;
        }

        public Builder setDefaults(int n2) {
            this.mNotification.defaults = n2;
            if ((n2 & 4) != 0) {
                Notification notification = this.mNotification;
                notification.flags |= 1;
            }
            return this;
        }

        public Builder setDeleteIntent(PendingIntent pendingIntent) {
            this.mNotification.deleteIntent = pendingIntent;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mExtras = bundle;
            return this;
        }

        public Builder setFullScreenIntent(PendingIntent pendingIntent, boolean bl) {
            this.mFullScreenIntent = pendingIntent;
            this.setFlag(128, bl);
            return this;
        }

        public Builder setGroup(String string2) {
            this.mGroupKey = string2;
            return this;
        }

        public Builder setGroupSummary(boolean bl) {
            this.mGroupSummary = bl;
            return this;
        }

        public Builder setLargeIcon(Bitmap bitmap) {
            this.mLargeIcon = bitmap;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setLights(int n2, int n3, int n4) {
            int n5 = 1;
            this.mNotification.ledARGB = n2;
            this.mNotification.ledOnMS = n3;
            this.mNotification.ledOffMS = n4;
            n2 = this.mNotification.ledOnMS != 0 && this.mNotification.ledOffMS != 0 ? 1 : 0;
            Notification notification = this.mNotification;
            n3 = this.mNotification.flags;
            n2 = n2 != 0 ? n5 : 0;
            notification.flags = n2 | n3 & -2;
            return this;
        }

        public Builder setLocalOnly(boolean bl) {
            this.mLocalOnly = bl;
            return this;
        }

        public Builder setNumber(int n2) {
            this.mNumber = n2;
            return this;
        }

        public Builder setOngoing(boolean bl) {
            this.setFlag(2, bl);
            return this;
        }

        public Builder setOnlyAlertOnce(boolean bl) {
            this.setFlag(8, bl);
            return this;
        }

        public Builder setPriority(int n2) {
            this.mPriority = n2;
            return this;
        }

        public Builder setProgress(int n2, int n3, boolean bl) {
            this.mProgressMax = n2;
            this.mProgress = n3;
            this.mProgressIndeterminate = bl;
            return this;
        }

        public Builder setSmallIcon(int n2) {
            this.mNotification.icon = n2;
            return this;
        }

        public Builder setSmallIcon(int n2, int n3) {
            this.mNotification.icon = n2;
            this.mNotification.iconLevel = n3;
            return this;
        }

        public Builder setSortKey(String string2) {
            this.mSortKey = string2;
            return this;
        }

        public Builder setSound(Uri uri) {
            this.mNotification.sound = uri;
            this.mNotification.audioStreamType = -1;
            return this;
        }

        public Builder setSound(Uri uri, int n2) {
            this.mNotification.sound = uri;
            this.mNotification.audioStreamType = n2;
            return this;
        }

        public Builder setStyle(Style style2) {
            if (this.mStyle != style2) {
                this.mStyle = style2;
                if (this.mStyle != null) {
                    this.mStyle.setBuilder(this);
                }
            }
            return this;
        }

        public Builder setSubText(CharSequence charSequence) {
            this.mSubText = charSequence;
            return this;
        }

        public Builder setTicker(CharSequence charSequence) {
            this.mNotification.tickerText = charSequence;
            return this;
        }

        public Builder setTicker(CharSequence charSequence, RemoteViews remoteViews) {
            this.mNotification.tickerText = charSequence;
            this.mTickerView = remoteViews;
            return this;
        }

        public Builder setUsesChronometer(boolean bl) {
            this.mUseChronometer = bl;
            return this;
        }

        public Builder setVibrate(long[] arrl) {
            this.mNotification.vibrate = arrl;
            return this;
        }

        public Builder setWhen(long l2) {
            this.mNotification.when = l2;
            return this;
        }
    }

    public static interface Extender {
        public Builder extend(Builder var1);
    }

    public static class InboxStyle
    extends Style {
        ArrayList<CharSequence> mTexts = new ArrayList();

        public InboxStyle() {
        }

        public InboxStyle(Builder builder) {
            this.setBuilder(builder);
        }

        public InboxStyle addLine(CharSequence charSequence) {
            this.mTexts.add(charSequence);
            return this;
        }

        public InboxStyle setBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = charSequence;
            return this;
        }

        public InboxStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = charSequence;
            this.mSummaryTextSet = true;
            return this;
        }
    }

    static interface NotificationCompatImpl {
        public Notification build(Builder var1);

        public Action getAction(Notification var1, int var2);

        public int getActionCount(Notification var1);

        public Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> var1);

        public Bundle getExtras(Notification var1);

        public String getGroup(Notification var1);

        public boolean getLocalOnly(Notification var1);

        public ArrayList<Parcelable> getParcelableArrayListForActions(Action[] var1);

        public String getSortKey(Notification var1);

        public boolean isGroupSummary(Notification var1);
    }

    static class NotificationCompatImplApi20
    extends NotificationCompatImplKitKat {
        NotificationCompatImplApi20() {
        }

        @Override
        public Notification build(Builder builder) {
            NotificationCompatApi20.Builder builder2 = new NotificationCompatApi20.Builder(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon, builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate, builder.mUseChronometer, builder.mPriority, builder.mSubText, builder.mLocalOnly, builder.mExtras, builder.mGroupKey, builder.mGroupSummary, builder.mSortKey);
            NotificationCompat.addActionsToBuilder(builder2, builder.mActions);
            NotificationCompat.addStyleToBuilderJellybean(builder2, builder.mStyle);
            return builder2.build();
        }

        @Override
        public Action getAction(Notification notification, int n2) {
            return (Action)NotificationCompatApi20.getAction(notification, n2, Action.FACTORY, RemoteInput.FACTORY);
        }

        @Override
        public Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> arrayList) {
            return (Action[])NotificationCompatApi20.getActionsFromParcelableArrayList(arrayList, Action.FACTORY, RemoteInput.FACTORY);
        }

        @Override
        public String getGroup(Notification notification) {
            return NotificationCompatApi20.getGroup(notification);
        }

        @Override
        public boolean getLocalOnly(Notification notification) {
            return NotificationCompatApi20.getLocalOnly(notification);
        }

        @Override
        public ArrayList<Parcelable> getParcelableArrayListForActions(Action[] arraction) {
            return NotificationCompatApi20.getParcelableArrayListForActions(arraction);
        }

        @Override
        public String getSortKey(Notification notification) {
            return NotificationCompatApi20.getSortKey(notification);
        }

        @Override
        public boolean isGroupSummary(Notification notification) {
            return NotificationCompatApi20.isGroupSummary(notification);
        }
    }

    static class NotificationCompatImplBase
    implements NotificationCompatImpl {
        NotificationCompatImplBase() {
        }

        @Override
        public Notification build(Builder builder) {
            Notification notification = builder.mNotification;
            notification.setLatestEventInfo(builder.mContext, builder.mContentTitle, builder.mContentText, builder.mContentIntent);
            if (builder.mPriority > 0) {
                notification.flags |= 128;
            }
            return notification;
        }

        @Override
        public Action getAction(Notification notification, int n2) {
            return null;
        }

        @Override
        public int getActionCount(Notification notification) {
            return 0;
        }

        @Override
        public Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> arrayList) {
            return null;
        }

        @Override
        public Bundle getExtras(Notification notification) {
            return null;
        }

        @Override
        public String getGroup(Notification notification) {
            return null;
        }

        @Override
        public boolean getLocalOnly(Notification notification) {
            return false;
        }

        @Override
        public ArrayList<Parcelable> getParcelableArrayListForActions(Action[] arraction) {
            return null;
        }

        @Override
        public String getSortKey(Notification notification) {
            return null;
        }

        @Override
        public boolean isGroupSummary(Notification notification) {
            return false;
        }
    }

    static class NotificationCompatImplGingerbread
    extends NotificationCompatImplBase {
        NotificationCompatImplGingerbread() {
        }

        @Override
        public Notification build(Builder builder) {
            Notification notification = builder.mNotification;
            notification.setLatestEventInfo(builder.mContext, builder.mContentTitle, builder.mContentText, builder.mContentIntent);
            notification = NotificationCompatGingerbread.add(notification, builder.mContext, builder.mContentTitle, builder.mContentText, builder.mContentIntent, builder.mFullScreenIntent);
            if (builder.mPriority > 0) {
                notification.flags |= 128;
            }
            return notification;
        }
    }

    static class NotificationCompatImplHoneycomb
    extends NotificationCompatImplBase {
        NotificationCompatImplHoneycomb() {
        }

        @Override
        public Notification build(Builder builder) {
            return NotificationCompatHoneycomb.add(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon);
        }
    }

    static class NotificationCompatImplIceCreamSandwich
    extends NotificationCompatImplBase {
        NotificationCompatImplIceCreamSandwich() {
        }

        @Override
        public Notification build(Builder builder) {
            return NotificationCompatIceCreamSandwich.add(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon, builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate);
        }
    }

    static class NotificationCompatImplJellybean
    extends NotificationCompatImplBase {
        NotificationCompatImplJellybean() {
        }

        @Override
        public Notification build(Builder builder) {
            NotificationCompatJellybean.Builder builder2 = new NotificationCompatJellybean.Builder(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon, builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate, builder.mUseChronometer, builder.mPriority, builder.mSubText, builder.mLocalOnly, builder.mExtras, builder.mGroupKey, builder.mGroupSummary, builder.mSortKey);
            NotificationCompat.addActionsToBuilder(builder2, builder.mActions);
            NotificationCompat.addStyleToBuilderJellybean(builder2, builder.mStyle);
            return builder2.build();
        }

        @Override
        public Action getAction(Notification notification, int n2) {
            return (Action)NotificationCompatJellybean.getAction(notification, n2, Action.FACTORY, RemoteInput.FACTORY);
        }

        @Override
        public int getActionCount(Notification notification) {
            return NotificationCompatJellybean.getActionCount(notification);
        }

        @Override
        public Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> arrayList) {
            return (Action[])NotificationCompatJellybean.getActionsFromParcelableArrayList(arrayList, Action.FACTORY, RemoteInput.FACTORY);
        }

        @Override
        public Bundle getExtras(Notification notification) {
            return NotificationCompatJellybean.getExtras(notification);
        }

        @Override
        public String getGroup(Notification notification) {
            return NotificationCompatJellybean.getGroup(notification);
        }

        @Override
        public boolean getLocalOnly(Notification notification) {
            return NotificationCompatJellybean.getLocalOnly(notification);
        }

        @Override
        public ArrayList<Parcelable> getParcelableArrayListForActions(Action[] arraction) {
            return NotificationCompatJellybean.getParcelableArrayListForActions(arraction);
        }

        @Override
        public String getSortKey(Notification notification) {
            return NotificationCompatJellybean.getSortKey(notification);
        }

        @Override
        public boolean isGroupSummary(Notification notification) {
            return NotificationCompatJellybean.isGroupSummary(notification);
        }
    }

    static class NotificationCompatImplKitKat
    extends NotificationCompatImplJellybean {
        NotificationCompatImplKitKat() {
        }

        @Override
        public Notification build(Builder builder) {
            NotificationCompatKitKat.Builder builder2 = new NotificationCompatKitKat.Builder(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon, builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate, builder.mUseChronometer, builder.mPriority, builder.mSubText, builder.mLocalOnly, builder.mExtras, builder.mGroupKey, builder.mGroupSummary, builder.mSortKey);
            NotificationCompat.addActionsToBuilder(builder2, builder.mActions);
            NotificationCompat.addStyleToBuilderJellybean(builder2, builder.mStyle);
            return builder2.build();
        }

        @Override
        public Action getAction(Notification notification, int n2) {
            return (Action)NotificationCompatKitKat.getAction(notification, n2, Action.FACTORY, RemoteInput.FACTORY);
        }

        @Override
        public int getActionCount(Notification notification) {
            return NotificationCompatKitKat.getActionCount(notification);
        }

        @Override
        public Bundle getExtras(Notification notification) {
            return NotificationCompatKitKat.getExtras(notification);
        }

        @Override
        public String getGroup(Notification notification) {
            return NotificationCompatKitKat.getGroup(notification);
        }

        @Override
        public boolean getLocalOnly(Notification notification) {
            return NotificationCompatKitKat.getLocalOnly(notification);
        }

        @Override
        public String getSortKey(Notification notification) {
            return NotificationCompatKitKat.getSortKey(notification);
        }

        @Override
        public boolean isGroupSummary(Notification notification) {
            return NotificationCompatKitKat.isGroupSummary(notification);
        }
    }

    public static abstract class Style {
        CharSequence mBigContentTitle;
        Builder mBuilder;
        CharSequence mSummaryText;
        boolean mSummaryTextSet = false;

        public Notification build() {
            Notification notification = null;
            if (this.mBuilder != null) {
                notification = this.mBuilder.build();
            }
            return notification;
        }

        public void setBuilder(Builder builder) {
            if (this.mBuilder != builder) {
                this.mBuilder = builder;
                if (this.mBuilder != null) {
                    this.mBuilder.setStyle(this);
                }
            }
        }
    }

    public static final class WearableExtender
    implements Extender {
        private static final int DEFAULT_CONTENT_ICON_GRAVITY = 8388613;
        private static final int DEFAULT_FLAGS = 1;
        private static final int DEFAULT_GRAVITY = 80;
        private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
        private static final int FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE = 1;
        private static final int FLAG_HINT_HIDE_ICON = 2;
        private static final int FLAG_HINT_SHOW_BACKGROUND_ONLY = 4;
        private static final int FLAG_START_SCROLL_BOTTOM = 8;
        private static final String KEY_ACTIONS = "actions";
        private static final String KEY_BACKGROUND = "background";
        private static final String KEY_CONTENT_ACTION_INDEX = "contentActionIndex";
        private static final String KEY_CONTENT_ICON = "contentIcon";
        private static final String KEY_CONTENT_ICON_GRAVITY = "contentIconGravity";
        private static final String KEY_CUSTOM_CONTENT_HEIGHT = "customContentHeight";
        private static final String KEY_CUSTOM_SIZE_PRESET = "customSizePreset";
        private static final String KEY_DISPLAY_INTENT = "displayIntent";
        private static final String KEY_FLAGS = "flags";
        private static final String KEY_GRAVITY = "gravity";
        private static final String KEY_PAGES = "pages";
        public static final int SIZE_DEFAULT = 0;
        public static final int SIZE_FULL_SCREEN = 5;
        public static final int SIZE_LARGE = 4;
        public static final int SIZE_MEDIUM = 3;
        public static final int SIZE_SMALL = 2;
        public static final int SIZE_XSMALL = 1;
        public static final int UNSET_ACTION_INDEX = -1;
        private ArrayList<Action> mActions = new ArrayList();
        private Bitmap mBackground;
        private int mContentActionIndex = -1;
        private int mContentIcon;
        private int mContentIconGravity = 8388613;
        private int mCustomContentHeight;
        private int mCustomSizePreset = 0;
        private PendingIntent mDisplayIntent;
        private int mFlags = 1;
        private int mGravity = 80;
        private ArrayList<Notification> mPages = new ArrayList();

        public WearableExtender() {
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public WearableExtender(Notification notification) {
            notification = NotificationCompat.getExtras(notification);
            if (notification == null) return;
            if ((notification = notification.getBundle("android.wearable.EXTENSIONS")) == null) return;
            Action[] arraction = IMPL.getActionsFromParcelableArrayList(notification.getParcelableArrayList("actions"));
            if (arraction != null) {
                Collections.addAll(this.mActions, arraction);
            }
            this.mFlags = notification.getInt("flags", 1);
            this.mDisplayIntent = (PendingIntent)notification.getParcelable("displayIntent");
            arraction = NotificationCompat.getNotificationArrayFromBundle((Bundle)notification, "pages");
            if (arraction != null) {
                Collections.addAll(this.mPages, arraction);
            }
            this.mBackground = (Bitmap)notification.getParcelable("background");
            this.mContentIcon = notification.getInt("contentIcon");
            this.mContentIconGravity = notification.getInt("contentIconGravity", 8388613);
            this.mContentActionIndex = notification.getInt("contentActionIndex", -1);
            this.mCustomSizePreset = notification.getInt("customSizePreset", 0);
            this.mCustomContentHeight = notification.getInt("customContentHeight");
            this.mGravity = notification.getInt("gravity", 80);
        }

        private void setFlag(int n2, boolean bl) {
            if (bl) {
                this.mFlags |= n2;
                return;
            }
            this.mFlags &= ~ n2;
        }

        public WearableExtender addAction(Action action) {
            this.mActions.add(action);
            return this;
        }

        public WearableExtender addActions(List<Action> list) {
            this.mActions.addAll(list);
            return this;
        }

        public WearableExtender addPage(Notification notification) {
            this.mPages.add(notification);
            return this;
        }

        public WearableExtender addPages(List<Notification> list) {
            this.mPages.addAll(list);
            return this;
        }

        public WearableExtender clearActions() {
            this.mActions.clear();
            return this;
        }

        public WearableExtender clearPages() {
            this.mPages.clear();
            return this;
        }

        public WearableExtender clone() {
            WearableExtender wearableExtender = new WearableExtender();
            wearableExtender.mActions = new ArrayList<Action>(this.mActions);
            wearableExtender.mFlags = this.mFlags;
            wearableExtender.mDisplayIntent = this.mDisplayIntent;
            wearableExtender.mPages = new ArrayList<Notification>(this.mPages);
            wearableExtender.mBackground = this.mBackground;
            wearableExtender.mContentIcon = this.mContentIcon;
            wearableExtender.mContentIconGravity = this.mContentIconGravity;
            wearableExtender.mContentActionIndex = this.mContentActionIndex;
            wearableExtender.mCustomSizePreset = this.mCustomSizePreset;
            wearableExtender.mCustomContentHeight = this.mCustomContentHeight;
            wearableExtender.mGravity = this.mGravity;
            return wearableExtender;
        }

        @Override
        public Builder extend(Builder builder) {
            Bundle bundle = new Bundle();
            if (!this.mActions.isEmpty()) {
                bundle.putParcelableArrayList("actions", IMPL.getParcelableArrayListForActions(this.mActions.toArray(new Action[this.mActions.size()])));
            }
            if (this.mFlags != 1) {
                bundle.putInt("flags", this.mFlags);
            }
            if (this.mDisplayIntent != null) {
                bundle.putParcelable("displayIntent", (Parcelable)this.mDisplayIntent);
            }
            if (!this.mPages.isEmpty()) {
                bundle.putParcelableArray("pages", (Parcelable[])this.mPages.toArray((T[])new Notification[this.mPages.size()]));
            }
            if (this.mBackground != null) {
                bundle.putParcelable("background", (Parcelable)this.mBackground);
            }
            if (this.mContentIcon != 0) {
                bundle.putInt("contentIcon", this.mContentIcon);
            }
            if (this.mContentIconGravity != 8388613) {
                bundle.putInt("contentIconGravity", this.mContentIconGravity);
            }
            if (this.mContentActionIndex != -1) {
                bundle.putInt("contentActionIndex", this.mContentActionIndex);
            }
            if (this.mCustomSizePreset != 0) {
                bundle.putInt("customSizePreset", this.mCustomSizePreset);
            }
            if (this.mCustomContentHeight != 0) {
                bundle.putInt("customContentHeight", this.mCustomContentHeight);
            }
            if (this.mGravity != 80) {
                bundle.putInt("gravity", this.mGravity);
            }
            builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
            return builder;
        }

        public List<Action> getActions() {
            return this.mActions;
        }

        public Bitmap getBackground() {
            return this.mBackground;
        }

        public int getContentAction() {
            return this.mContentActionIndex;
        }

        public int getContentIcon() {
            return this.mContentIcon;
        }

        public int getContentIconGravity() {
            return this.mContentIconGravity;
        }

        public boolean getContentIntentAvailableOffline() {
            if ((this.mFlags & 1) != 0) {
                return true;
            }
            return false;
        }

        public int getCustomContentHeight() {
            return this.mCustomContentHeight;
        }

        public int getCustomSizePreset() {
            return this.mCustomSizePreset;
        }

        public PendingIntent getDisplayIntent() {
            return this.mDisplayIntent;
        }

        public int getGravity() {
            return this.mGravity;
        }

        public boolean getHintHideIcon() {
            if ((this.mFlags & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean getHintShowBackgroundOnly() {
            if ((this.mFlags & 4) != 0) {
                return true;
            }
            return false;
        }

        public List<Notification> getPages() {
            return this.mPages;
        }

        public boolean getStartScrollBottom() {
            if ((this.mFlags & 8) != 0) {
                return true;
            }
            return false;
        }

        public WearableExtender setBackground(Bitmap bitmap) {
            this.mBackground = bitmap;
            return this;
        }

        public WearableExtender setContentAction(int n2) {
            this.mContentActionIndex = n2;
            return this;
        }

        public WearableExtender setContentIcon(int n2) {
            this.mContentIcon = n2;
            return this;
        }

        public WearableExtender setContentIconGravity(int n2) {
            this.mContentIconGravity = n2;
            return this;
        }

        public WearableExtender setContentIntentAvailableOffline(boolean bl) {
            this.setFlag(1, bl);
            return this;
        }

        public WearableExtender setCustomContentHeight(int n2) {
            this.mCustomContentHeight = n2;
            return this;
        }

        public WearableExtender setCustomSizePreset(int n2) {
            this.mCustomSizePreset = n2;
            return this;
        }

        public WearableExtender setDisplayIntent(PendingIntent pendingIntent) {
            this.mDisplayIntent = pendingIntent;
            return this;
        }

        public WearableExtender setGravity(int n2) {
            this.mGravity = n2;
            return this;
        }

        public WearableExtender setHintHideIcon(boolean bl) {
            this.setFlag(2, bl);
            return this;
        }

        public WearableExtender setHintShowBackgroundOnly(boolean bl) {
            this.setFlag(4, bl);
            return this;
        }

        public WearableExtender setStartScrollBottom(boolean bl) {
            this.setFlag(8, bl);
            return this;
        }
    }

}

