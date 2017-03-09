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
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.app.NotificationBuilderWithActions;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompatApi20;
import android.support.v4.app.NotificationCompatApi21;
import android.support.v4.app.NotificationCompatApi24;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.NotificationCompatHoneycomb;
import android.support.v4.app.NotificationCompatIceCreamSandwich;
import android.support.v4.app.NotificationCompatJellybean;
import android.support.v4.app.NotificationCompatKitKat;
import android.support.v4.app.RemoteInput;
import android.support.v4.app.RemoteInputCompatBase;
import android.support.v4.os.BuildCompat;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class NotificationCompat {
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_REMINDER = "reminder";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    @ColorInt
    public static final int COLOR_DEFAULT = 0;
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;
    public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";
    public static final String EXTRA_BIG_TEXT = "android.bigText";
    public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
    public static final String EXTRA_CONVERSATION_TITLE = "android.conversationTitle";
    public static final String EXTRA_INFO_TEXT = "android.infoText";
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
    public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";
    public static final String EXTRA_MESSAGES = "android.messages";
    public static final String EXTRA_PEOPLE = "android.people";
    public static final String EXTRA_PICTURE = "android.picture";
    public static final String EXTRA_PROGRESS = "android.progress";
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
    public static final String EXTRA_REMOTE_INPUT_HISTORY = "android.remoteInputHistory";
    public static final String EXTRA_SELF_DISPLAY_NAME = "android.selfDisplayName";
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
    public static final String EXTRA_SHOW_WHEN = "android.showWhen";
    public static final String EXTRA_SMALL_ICON = "android.icon";
    public static final String EXTRA_SUB_TEXT = "android.subText";
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
    public static final String EXTRA_TEMPLATE = "android.template";
    public static final String EXTRA_TEXT = "android.text";
    public static final String EXTRA_TEXT_LINES = "android.textLines";
    public static final String EXTRA_TITLE = "android.title";
    public static final String EXTRA_TITLE_BIG = "android.title.big";
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;
    @Deprecated
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    public static final int FLAG_SHOW_LIGHTS = 1;
    static final NotificationCompatImpl IMPL = BuildCompat.isAtLeastN() ? new NotificationCompatImplApi24() : (Build.VERSION.SDK_INT >= 21 ? new NotificationCompatImplApi21() : (Build.VERSION.SDK_INT >= 20 ? new NotificationCompatImplApi20() : (Build.VERSION.SDK_INT >= 19 ? new NotificationCompatImplKitKat() : (Build.VERSION.SDK_INT >= 16 ? new NotificationCompatImplJellybean() : (Build.VERSION.SDK_INT >= 14 ? new NotificationCompatImplIceCreamSandwich() : (Build.VERSION.SDK_INT >= 11 ? new NotificationCompatImplHoneycomb() : new NotificationCompatImplBase()))))));
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;
    public static final int STREAM_DEFAULT = -1;
    public static final int VISIBILITY_PRIVATE = 0;
    public static final int VISIBILITY_PUBLIC = 1;
    public static final int VISIBILITY_SECRET = -1;

    static void addActionsToBuilder(NotificationBuilderWithActions notificationBuilderWithActions, ArrayList<Action> object) {
        object = object.iterator();
        while (object.hasNext()) {
            notificationBuilderWithActions.addAction((Action)object.next());
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static void addStyleToBuilderApi24(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, Style style2) {
        if (style2 == null) return;
        if (style2 instanceof MessagingStyle) {
            style2 = (MessagingStyle)style2;
            ArrayList<CharSequence> arrayList = new ArrayList<CharSequence>();
            ArrayList<Long> arrayList2 = new ArrayList<Long>();
            ArrayList<CharSequence> arrayList3 = new ArrayList<CharSequence>();
            ArrayList<String> arrayList4 = new ArrayList<String>();
            ArrayList<Uri> arrayList5 = new ArrayList<Uri>();
            for (MessagingStyle.Message message : style2.mMessages) {
                arrayList.add(message.getText());
                arrayList2.add(message.getTimestamp());
                arrayList3.add(message.getSender());
                arrayList4.add(message.getDataMimeType());
                arrayList5.add(message.getDataUri());
            }
            NotificationCompatApi24.addMessagingStyle(notificationBuilderWithBuilderAccessor, style2.mUserDisplayName, style2.mConversationTitle, arrayList, arrayList2, arrayList3, arrayList4, arrayList5);
            return;
        }
        NotificationCompat.addStyleToBuilderJellybean(notificationBuilderWithBuilderAccessor, style2);
    }

    /*
     * Enabled aggressive block sorting
     */
    static void addStyleToBuilderJellybean(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, Style style2) {
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

    public static String getCategory(Notification notification) {
        return IMPL.getCategory(notification);
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

    static Notification[] getNotificationArrayFromBundle(Bundle bundle, String string2) {
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
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public static final NotificationCompatBase.Action.Factory FACTORY = new NotificationCompatBase.Action.Factory(){

            @Override
            public NotificationCompatBase.Action build(int n2, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInputCompatBase.RemoteInput[] arrremoteInput, boolean bl) {
                return new Action(n2, charSequence, pendingIntent, bundle, (RemoteInput[])arrremoteInput, bl);
            }

            public Action[] newArray(int n2) {
                return new Action[n2];
            }
        };
        public PendingIntent actionIntent;
        public int icon;
        private boolean mAllowGeneratedReplies = false;
        final Bundle mExtras;
        private final RemoteInput[] mRemoteInputs;
        public CharSequence title;

        public Action(int n2, CharSequence charSequence, PendingIntent pendingIntent) {
            this(n2, charSequence, pendingIntent, new Bundle(), null, false);
        }

        /*
         * Enabled aggressive block sorting
         */
        Action(int n2, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] arrremoteInput, boolean bl) {
            this.icon = n2;
            this.title = android.support.v4.app.NotificationCompat$Builder.limitCharSequenceLength(charSequence);
            this.actionIntent = pendingIntent;
            if (bundle == null) {
                bundle = new Bundle();
            }
            this.mExtras = bundle;
            this.mRemoteInputs = arrremoteInput;
            this.mAllowGeneratedReplies = bl;
        }

        @Override
        public PendingIntent getActionIntent() {
            return this.actionIntent;
        }

        @Override
        public boolean getAllowGeneratedReplies() {
            return this.mAllowGeneratedReplies;
        }

        @Override
        public Bundle getExtras() {
            return this.mExtras;
        }

        @Override
        public int getIcon() {
            return this.icon;
        }

        public RemoteInput[] getRemoteInputs() {
            return this.mRemoteInputs;
        }

        @Override
        public CharSequence getTitle() {
            return this.title;
        }

        public static final class Builder {
            private boolean mAllowGeneratedReplies;
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
                this.mTitle = android.support.v4.app.NotificationCompat$Builder.limitCharSequenceLength(charSequence);
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
                        return new Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrremoteInput, this.mAllowGeneratedReplies);
                        break;
                    } while (true);
                }
                arrremoteInput = null;
                return new Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrremoteInput, this.mAllowGeneratedReplies);
            }

            public Builder extend(Extender extender) {
                extender.extend(this);
                return this;
            }

            public Bundle getExtras() {
                return this.mExtras;
            }

            public Builder setAllowGeneratedReplies(boolean bl) {
                this.mAllowGeneratedReplies = bl;
                return this;
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
            private static final int FLAG_HINT_DISPLAY_INLINE = 4;
            private static final int FLAG_HINT_LAUNCHES_ACTIVITY = 2;
            private static final String KEY_CANCEL_LABEL = "cancelLabel";
            private static final String KEY_CONFIRM_LABEL = "confirmLabel";
            private static final String KEY_FLAGS = "flags";
            private static final String KEY_IN_PROGRESS_LABEL = "inProgressLabel";
            private CharSequence mCancelLabel;
            private CharSequence mConfirmLabel;
            private int mFlags = 1;
            private CharSequence mInProgressLabel;

            public WearableExtender() {
            }

            public WearableExtender(Action action) {
                action = action.getExtras().getBundle("android.wearable.EXTENSIONS");
                if (action != null) {
                    this.mFlags = action.getInt("flags", 1);
                    this.mInProgressLabel = action.getCharSequence("inProgressLabel");
                    this.mConfirmLabel = action.getCharSequence("confirmLabel");
                    this.mCancelLabel = action.getCharSequence("cancelLabel");
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
                wearableExtender.mInProgressLabel = this.mInProgressLabel;
                wearableExtender.mConfirmLabel = this.mConfirmLabel;
                wearableExtender.mCancelLabel = this.mCancelLabel;
                return wearableExtender;
            }

            @Override
            public Builder extend(Builder builder) {
                Bundle bundle = new Bundle();
                if (this.mFlags != 1) {
                    bundle.putInt("flags", this.mFlags);
                }
                if (this.mInProgressLabel != null) {
                    bundle.putCharSequence("inProgressLabel", this.mInProgressLabel);
                }
                if (this.mConfirmLabel != null) {
                    bundle.putCharSequence("confirmLabel", this.mConfirmLabel);
                }
                if (this.mCancelLabel != null) {
                    bundle.putCharSequence("cancelLabel", this.mCancelLabel);
                }
                builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
                return builder;
            }

            public CharSequence getCancelLabel() {
                return this.mCancelLabel;
            }

            public CharSequence getConfirmLabel() {
                return this.mConfirmLabel;
            }

            public boolean getHintDisplayActionInline() {
                if ((this.mFlags & 4) != 0) {
                    return true;
                }
                return false;
            }

            public boolean getHintLaunchesActivity() {
                if ((this.mFlags & 2) != 0) {
                    return true;
                }
                return false;
            }

            public CharSequence getInProgressLabel() {
                return this.mInProgressLabel;
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

            public WearableExtender setCancelLabel(CharSequence charSequence) {
                this.mCancelLabel = charSequence;
                return this;
            }

            public WearableExtender setConfirmLabel(CharSequence charSequence) {
                this.mConfirmLabel = charSequence;
                return this;
            }

            public WearableExtender setHintDisplayActionInline(boolean bl) {
                this.setFlag(4, bl);
                return this;
            }

            public WearableExtender setHintLaunchesActivity(boolean bl) {
                this.setFlag(2, bl);
                return this;
            }

            public WearableExtender setInProgressLabel(CharSequence charSequence) {
                this.mInProgressLabel = charSequence;
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
            this.mBigContentTitle = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public BigPictureStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = Builder.limitCharSequenceLength(charSequence);
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
            this.mBigText = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public BigTextStyle setBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public BigTextStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = Builder.limitCharSequenceLength(charSequence);
            this.mSummaryTextSet = true;
            return this;
        }
    }

    public static class Builder {
        private static final int MAX_CHARSEQUENCE_LENGTH = 5120;
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public ArrayList<Action> mActions = new ArrayList();
        RemoteViews mBigContentView;
        String mCategory;
        int mColor = 0;
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public CharSequence mContentInfo;
        PendingIntent mContentIntent;
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public CharSequence mContentText;
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public CharSequence mContentTitle;
        RemoteViews mContentView;
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public Context mContext;
        Bundle mExtras;
        PendingIntent mFullScreenIntent;
        String mGroupKey;
        boolean mGroupSummary;
        RemoteViews mHeadsUpContentView;
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public Bitmap mLargeIcon;
        boolean mLocalOnly = false;
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public Notification mNotification = new Notification();
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public int mNumber;
        public ArrayList<String> mPeople;
        int mPriority;
        int mProgress;
        boolean mProgressIndeterminate;
        int mProgressMax;
        Notification mPublicVersion;
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public CharSequence[] mRemoteInputHistory;
        boolean mShowWhen = true;
        String mSortKey;
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public Style mStyle;
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public CharSequence mSubText;
        RemoteViews mTickerView;
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public boolean mUseChronometer;
        int mVisibility = 0;

        public Builder(Context context) {
            this.mContext = context;
            this.mNotification.when = System.currentTimeMillis();
            this.mNotification.audioStreamType = -1;
            this.mPriority = 0;
            this.mPeople = new ArrayList();
        }

        /*
         * Enabled aggressive block sorting
         */
        protected static CharSequence limitCharSequenceLength(CharSequence charSequence) {
            if (charSequence == null || charSequence.length() <= 5120) {
                return charSequence;
            }
            return charSequence.subSequence(0, 5120);
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

        public Builder addPerson(String string2) {
            this.mPeople.add(string2);
            return this;
        }

        public Notification build() {
            return NotificationCompat.IMPL.build(this, this.getExtender());
        }

        public Builder extend(Extender extender) {
            extender.extend(this);
            return this;
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public RemoteViews getBigContentView() {
            return this.mBigContentView;
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public int getColor() {
            return this.mColor;
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public RemoteViews getContentView() {
            return this.mContentView;
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        protected BuilderExtender getExtender() {
            return new BuilderExtender();
        }

        public Bundle getExtras() {
            if (this.mExtras == null) {
                this.mExtras = new Bundle();
            }
            return this.mExtras;
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public RemoteViews getHeadsUpContentView() {
            return this.mHeadsUpContentView;
        }

        @Deprecated
        public Notification getNotification() {
            return this.build();
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public int getPriority() {
            return this.mPriority;
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public long getWhenIfShowing() {
            if (this.mShowWhen) {
                return this.mNotification.when;
            }
            return 0;
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        protected CharSequence resolveText() {
            return this.mContentText;
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        protected CharSequence resolveTitle() {
            return this.mContentTitle;
        }

        public Builder setAutoCancel(boolean bl) {
            this.setFlag(16, bl);
            return this;
        }

        public Builder setCategory(String string2) {
            this.mCategory = string2;
            return this;
        }

        public Builder setColor(@ColorInt int n2) {
            this.mColor = n2;
            return this;
        }

        public Builder setContent(RemoteViews remoteViews) {
            this.mNotification.contentView = remoteViews;
            return this;
        }

        public Builder setContentInfo(CharSequence charSequence) {
            this.mContentInfo = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setContentIntent(PendingIntent pendingIntent) {
            this.mContentIntent = pendingIntent;
            return this;
        }

        public Builder setContentText(CharSequence charSequence) {
            this.mContentText = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setContentTitle(CharSequence charSequence) {
            this.mContentTitle = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setCustomBigContentView(RemoteViews remoteViews) {
            this.mBigContentView = remoteViews;
            return this;
        }

        public Builder setCustomContentView(RemoteViews remoteViews) {
            this.mContentView = remoteViews;
            return this;
        }

        public Builder setCustomHeadsUpContentView(RemoteViews remoteViews) {
            this.mHeadsUpContentView = remoteViews;
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
        public Builder setLights(@ColorInt int n2, int n3, int n4) {
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

        public Builder setPublicVersion(Notification notification) {
            this.mPublicVersion = notification;
            return this;
        }

        public Builder setRemoteInputHistory(CharSequence[] arrcharSequence) {
            this.mRemoteInputHistory = arrcharSequence;
            return this;
        }

        public Builder setShowWhen(boolean bl) {
            this.mShowWhen = bl;
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
            this.mSubText = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setTicker(CharSequence charSequence) {
            this.mNotification.tickerText = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setTicker(CharSequence charSequence, RemoteViews remoteViews) {
            this.mNotification.tickerText = Builder.limitCharSequenceLength(charSequence);
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

        public Builder setVisibility(int n2) {
            this.mVisibility = n2;
            return this;
        }

        public Builder setWhen(long l2) {
            this.mNotification.when = l2;
            return this;
        }
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    protected static class BuilderExtender {
        protected BuilderExtender() {
        }

        public Notification build(Builder builder, NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            notificationBuilderWithBuilderAccessor = notificationBuilderWithBuilderAccessor.build();
            if (builder.mContentView != null) {
                notificationBuilderWithBuilderAccessor.contentView = builder.mContentView;
            }
            return notificationBuilderWithBuilderAccessor;
        }
    }

    public static final class CarExtender
    implements Extender {
        private static final String EXTRA_CAR_EXTENDER = "android.car.EXTENSIONS";
        private static final String EXTRA_COLOR = "app_color";
        private static final String EXTRA_CONVERSATION = "car_conversation";
        private static final String EXTRA_LARGE_ICON = "large_icon";
        private static final String TAG = "CarExtender";
        private int mColor = 0;
        private Bitmap mLargeIcon;
        private UnreadConversation mUnreadConversation;

        public CarExtender() {
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public CarExtender(Notification notification) {
            if (Build.VERSION.SDK_INT < 21) {
                return;
            }
            if (NotificationCompat.getExtras(notification) == null) {
                return;
            }
            notification = NotificationCompat.getExtras(notification).getBundle("android.car.EXTENSIONS");
            if (notification == null) return;
            this.mLargeIcon = (Bitmap)notification.getParcelable("large_icon");
            this.mColor = notification.getInt("app_color", 0);
            notification = notification.getBundle("car_conversation");
            this.mUnreadConversation = (UnreadConversation)NotificationCompat.IMPL.getUnreadConversationFromBundle((Bundle)notification, UnreadConversation.FACTORY, RemoteInput.FACTORY);
        }

        @Override
        public Builder extend(Builder builder) {
            if (Build.VERSION.SDK_INT < 21) {
                return builder;
            }
            Bundle bundle = new Bundle();
            if (this.mLargeIcon != null) {
                bundle.putParcelable("large_icon", (Parcelable)this.mLargeIcon);
            }
            if (this.mColor != 0) {
                bundle.putInt("app_color", this.mColor);
            }
            if (this.mUnreadConversation != null) {
                bundle.putBundle("car_conversation", NotificationCompat.IMPL.getBundleForUnreadConversation(this.mUnreadConversation));
            }
            builder.getExtras().putBundle("android.car.EXTENSIONS", bundle);
            return builder;
        }

        @ColorInt
        public int getColor() {
            return this.mColor;
        }

        public Bitmap getLargeIcon() {
            return this.mLargeIcon;
        }

        public UnreadConversation getUnreadConversation() {
            return this.mUnreadConversation;
        }

        public CarExtender setColor(@ColorInt int n2) {
            this.mColor = n2;
            return this;
        }

        public CarExtender setLargeIcon(Bitmap bitmap) {
            this.mLargeIcon = bitmap;
            return this;
        }

        public CarExtender setUnreadConversation(UnreadConversation unreadConversation) {
            this.mUnreadConversation = unreadConversation;
            return this;
        }

        public static class UnreadConversation
        extends NotificationCompatBase.UnreadConversation {
            static final NotificationCompatBase.UnreadConversation.Factory FACTORY = new NotificationCompatBase.UnreadConversation.Factory(){

                @Override
                public UnreadConversation build(String[] arrstring, RemoteInputCompatBase.RemoteInput remoteInput, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] arrstring2, long l2) {
                    return new UnreadConversation(arrstring, (RemoteInput)remoteInput, pendingIntent, pendingIntent2, arrstring2, l2);
                }
            };
            private final long mLatestTimestamp;
            private final String[] mMessages;
            private final String[] mParticipants;
            private final PendingIntent mReadPendingIntent;
            private final RemoteInput mRemoteInput;
            private final PendingIntent mReplyPendingIntent;

            UnreadConversation(String[] arrstring, RemoteInput remoteInput, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] arrstring2, long l2) {
                this.mMessages = arrstring;
                this.mRemoteInput = remoteInput;
                this.mReadPendingIntent = pendingIntent2;
                this.mReplyPendingIntent = pendingIntent;
                this.mParticipants = arrstring2;
                this.mLatestTimestamp = l2;
            }

            @Override
            public long getLatestTimestamp() {
                return this.mLatestTimestamp;
            }

            @Override
            public String[] getMessages() {
                return this.mMessages;
            }

            @Override
            public String getParticipant() {
                if (this.mParticipants.length > 0) {
                    return this.mParticipants[0];
                }
                return null;
            }

            @Override
            public String[] getParticipants() {
                return this.mParticipants;
            }

            @Override
            public PendingIntent getReadPendingIntent() {
                return this.mReadPendingIntent;
            }

            @Override
            public RemoteInput getRemoteInput() {
                return this.mRemoteInput;
            }

            @Override
            public PendingIntent getReplyPendingIntent() {
                return this.mReplyPendingIntent;
            }

            public static class Builder {
                private long mLatestTimestamp;
                private final List<String> mMessages = new ArrayList<String>();
                private final String mParticipant;
                private PendingIntent mReadPendingIntent;
                private RemoteInput mRemoteInput;
                private PendingIntent mReplyPendingIntent;

                public Builder(String string2) {
                    this.mParticipant = string2;
                }

                public Builder addMessage(String string2) {
                    this.mMessages.add(string2);
                    return this;
                }

                public UnreadConversation build() {
                    String[] arrstring = this.mMessages.toArray(new String[this.mMessages.size()]);
                    String string2 = this.mParticipant;
                    RemoteInput remoteInput = this.mRemoteInput;
                    PendingIntent pendingIntent = this.mReplyPendingIntent;
                    PendingIntent pendingIntent2 = this.mReadPendingIntent;
                    long l2 = this.mLatestTimestamp;
                    return new UnreadConversation(arrstring, remoteInput, pendingIntent, pendingIntent2, new String[]{string2}, l2);
                }

                public Builder setLatestTimestamp(long l2) {
                    this.mLatestTimestamp = l2;
                    return this;
                }

                public Builder setReadPendingIntent(PendingIntent pendingIntent) {
                    this.mReadPendingIntent = pendingIntent;
                    return this;
                }

                public Builder setReplyAction(PendingIntent pendingIntent, RemoteInput remoteInput) {
                    this.mRemoteInput = remoteInput;
                    this.mReplyPendingIntent = pendingIntent;
                    return this;
                }
            }

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
            this.mTexts.add(Builder.limitCharSequenceLength(charSequence));
            return this;
        }

        public InboxStyle setBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public InboxStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = Builder.limitCharSequenceLength(charSequence);
            this.mSummaryTextSet = true;
            return this;
        }
    }

    public static class MessagingStyle
    extends Style {
        public static final int MAXIMUM_RETAINED_MESSAGES = 25;
        CharSequence mConversationTitle;
        List<Message> mMessages = new ArrayList<Message>();
        CharSequence mUserDisplayName;

        MessagingStyle() {
        }

        public MessagingStyle(@NonNull CharSequence charSequence) {
            this.mUserDisplayName = charSequence;
        }

        public static MessagingStyle extractMessagingStyleFromNotification(Notification notification) {
            if (!(notification = NotificationCompat.IMPL.getExtras(notification)).containsKey("android.selfDisplayName")) {
                return null;
            }
            try {
                MessagingStyle messagingStyle = new MessagingStyle();
                messagingStyle.restoreFromCompatExtras((Bundle)notification);
                return messagingStyle;
            }
            catch (ClassCastException var0_1) {
                return null;
            }
        }

        @Override
        public void addCompatExtras(Bundle bundle) {
            super.addCompatExtras(bundle);
            if (this.mUserDisplayName != null) {
                bundle.putCharSequence("android.selfDisplayName", this.mUserDisplayName);
            }
            if (this.mConversationTitle != null) {
                bundle.putCharSequence("android.conversationTitle", this.mConversationTitle);
            }
            if (!this.mMessages.isEmpty()) {
                bundle.putParcelableArray("android.messages", (Parcelable[])Message.getBundleArrayForMessages(this.mMessages));
            }
        }

        public MessagingStyle addMessage(Message message) {
            this.mMessages.add(message);
            if (this.mMessages.size() > 25) {
                this.mMessages.remove(0);
            }
            return this;
        }

        public MessagingStyle addMessage(CharSequence charSequence, long l2, CharSequence charSequence2) {
            this.mMessages.add(new Message(charSequence, l2, charSequence2));
            if (this.mMessages.size() > 25) {
                this.mMessages.remove(0);
            }
            return this;
        }

        public CharSequence getConversationTitle() {
            return this.mConversationTitle;
        }

        public List<Message> getMessages() {
            return this.mMessages;
        }

        public CharSequence getUserDisplayName() {
            return this.mUserDisplayName;
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        @Override
        protected void restoreFromCompatExtras(Bundle arrparcelable) {
            this.mMessages.clear();
            this.mUserDisplayName = arrparcelable.getString("android.selfDisplayName");
            this.mConversationTitle = arrparcelable.getString("android.conversationTitle");
            arrparcelable = arrparcelable.getParcelableArray("android.messages");
            if (arrparcelable != null) {
                this.mMessages = Message.getMessagesFromBundleArray(arrparcelable);
            }
        }

        public MessagingStyle setConversationTitle(CharSequence charSequence) {
            this.mConversationTitle = charSequence;
            return this;
        }

        public static final class Message {
            static final String KEY_DATA_MIME_TYPE = "type";
            static final String KEY_DATA_URI = "uri";
            static final String KEY_SENDER = "sender";
            static final String KEY_TEXT = "text";
            static final String KEY_TIMESTAMP = "time";
            private String mDataMimeType;
            private Uri mDataUri;
            private final CharSequence mSender;
            private final CharSequence mText;
            private final long mTimestamp;

            public Message(CharSequence charSequence, long l2, CharSequence charSequence2) {
                this.mText = charSequence;
                this.mTimestamp = l2;
                this.mSender = charSequence2;
            }

            static Bundle[] getBundleArrayForMessages(List<Message> list) {
                Bundle[] arrbundle = new Bundle[list.size()];
                int n2 = list.size();
                for (int i2 = 0; i2 < n2; ++i2) {
                    arrbundle[i2] = list.get(i2).toBundle();
                }
                return arrbundle;
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            static Message getMessageFromBundle(Bundle bundle) {
                Message message;
                Message message2;
                try {
                    if (!bundle.containsKey("text")) return null;
                    if (!bundle.containsKey("time")) return null;
                    message2 = message = new Message(bundle.getCharSequence("text"), bundle.getLong("time"), bundle.getCharSequence("sender"));
                }
                catch (ClassCastException var0_1) {
                    return null;
                }
                if (!bundle.containsKey("type")) return message2;
                message2 = message;
                if (!bundle.containsKey("uri")) return message2;
                message.setData(bundle.getString("type"), (Uri)bundle.getParcelable("uri"));
                return message;
            }

            static List<Message> getMessagesFromBundleArray(Parcelable[] arrparcelable) {
                ArrayList<Message> arrayList = new ArrayList<Message>(arrparcelable.length);
                for (int i2 = 0; i2 < arrparcelable.length; ++i2) {
                    Message message;
                    if (!(arrparcelable[i2] instanceof Bundle) || (message = Message.getMessageFromBundle((Bundle)arrparcelable[i2])) == null) continue;
                    arrayList.add(message);
                }
                return arrayList;
            }

            private Bundle toBundle() {
                Bundle bundle = new Bundle();
                if (this.mText != null) {
                    bundle.putCharSequence("text", this.mText);
                }
                bundle.putLong("time", this.mTimestamp);
                if (this.mSender != null) {
                    bundle.putCharSequence("sender", this.mSender);
                }
                if (this.mDataMimeType != null) {
                    bundle.putString("type", this.mDataMimeType);
                }
                if (this.mDataUri != null) {
                    bundle.putParcelable("uri", (Parcelable)this.mDataUri);
                }
                return bundle;
            }

            public String getDataMimeType() {
                return this.mDataMimeType;
            }

            public Uri getDataUri() {
                return this.mDataUri;
            }

            public CharSequence getSender() {
                return this.mSender;
            }

            public CharSequence getText() {
                return this.mText;
            }

            public long getTimestamp() {
                return this.mTimestamp;
            }

            public Message setData(String string2, Uri uri) {
                this.mDataMimeType = string2;
                this.mDataUri = uri;
                return this;
            }
        }

    }

    static interface NotificationCompatImpl {
        public Notification build(Builder var1, BuilderExtender var2);

        public Action getAction(Notification var1, int var2);

        public int getActionCount(Notification var1);

        public Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> var1);

        public Bundle getBundleForUnreadConversation(NotificationCompatBase.UnreadConversation var1);

        public String getCategory(Notification var1);

        public Bundle getExtras(Notification var1);

        public String getGroup(Notification var1);

        public boolean getLocalOnly(Notification var1);

        public ArrayList<Parcelable> getParcelableArrayListForActions(Action[] var1);

        public String getSortKey(Notification var1);

        public NotificationCompatBase.UnreadConversation getUnreadConversationFromBundle(Bundle var1, NotificationCompatBase.UnreadConversation.Factory var2, RemoteInputCompatBase.RemoteInput.Factory var3);

        public boolean isGroupSummary(Notification var1);
    }

    static class NotificationCompatImplApi20
    extends NotificationCompatImplKitKat {
        NotificationCompatImplApi20() {
        }

        @Override
        public Notification build(Builder builder, BuilderExtender builderExtender) {
            NotificationCompatApi20.Builder builder2 = new NotificationCompatApi20.Builder(builder.mContext, builder.mNotification, builder.resolveTitle(), builder.resolveText(), builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon, builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate, builder.mShowWhen, builder.mUseChronometer, builder.mPriority, builder.mSubText, builder.mLocalOnly, builder.mPeople, builder.mExtras, builder.mGroupKey, builder.mGroupSummary, builder.mSortKey, builder.mContentView, builder.mBigContentView);
            NotificationCompat.addActionsToBuilder(builder2, builder.mActions);
            NotificationCompat.addStyleToBuilderJellybean(builder2, builder.mStyle);
            builderExtender = builderExtender.build(builder, builder2);
            if (builder.mStyle != null) {
                builder.mStyle.addCompatExtras(this.getExtras((Notification)builderExtender));
            }
            return builderExtender;
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

    static class NotificationCompatImplApi21
    extends NotificationCompatImplApi20 {
        NotificationCompatImplApi21() {
        }

        @Override
        public Notification build(Builder builder, BuilderExtender builderExtender) {
            NotificationCompatApi21.Builder builder2 = new NotificationCompatApi21.Builder(builder.mContext, builder.mNotification, builder.resolveTitle(), builder.resolveText(), builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon, builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate, builder.mShowWhen, builder.mUseChronometer, builder.mPriority, builder.mSubText, builder.mLocalOnly, builder.mCategory, builder.mPeople, builder.mExtras, builder.mColor, builder.mVisibility, builder.mPublicVersion, builder.mGroupKey, builder.mGroupSummary, builder.mSortKey, builder.mContentView, builder.mBigContentView, builder.mHeadsUpContentView);
            NotificationCompat.addActionsToBuilder(builder2, builder.mActions);
            NotificationCompat.addStyleToBuilderJellybean(builder2, builder.mStyle);
            builderExtender = builderExtender.build(builder, builder2);
            if (builder.mStyle != null) {
                builder.mStyle.addCompatExtras(this.getExtras((Notification)builderExtender));
            }
            return builderExtender;
        }

        @Override
        public Bundle getBundleForUnreadConversation(NotificationCompatBase.UnreadConversation unreadConversation) {
            return NotificationCompatApi21.getBundleForUnreadConversation(unreadConversation);
        }

        @Override
        public String getCategory(Notification notification) {
            return NotificationCompatApi21.getCategory(notification);
        }

        @Override
        public NotificationCompatBase.UnreadConversation getUnreadConversationFromBundle(Bundle bundle, NotificationCompatBase.UnreadConversation.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
            return NotificationCompatApi21.getUnreadConversationFromBundle(bundle, factory, factory2);
        }
    }

    static class NotificationCompatImplApi24
    extends NotificationCompatImplApi21 {
        NotificationCompatImplApi24() {
        }

        @Override
        public Notification build(Builder builder, BuilderExtender builderExtender) {
            NotificationCompatApi24.Builder builder2 = new NotificationCompatApi24.Builder(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon, builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate, builder.mShowWhen, builder.mUseChronometer, builder.mPriority, builder.mSubText, builder.mLocalOnly, builder.mCategory, builder.mPeople, builder.mExtras, builder.mColor, builder.mVisibility, builder.mPublicVersion, builder.mGroupKey, builder.mGroupSummary, builder.mSortKey, builder.mRemoteInputHistory, builder.mContentView, builder.mBigContentView, builder.mHeadsUpContentView);
            NotificationCompat.addActionsToBuilder(builder2, builder.mActions);
            NotificationCompat.addStyleToBuilderApi24(builder2, builder.mStyle);
            builderExtender = builderExtender.build(builder, builder2);
            if (builder.mStyle != null) {
                builder.mStyle.addCompatExtras(this.getExtras((Notification)builderExtender));
            }
            return builderExtender;
        }
    }

    static class NotificationCompatImplBase
    implements NotificationCompatImpl {
        NotificationCompatImplBase() {
        }

        @Override
        public Notification build(Builder builder, BuilderExtender builderExtender) {
            builderExtender = NotificationCompatBase.add(builder.mNotification, builder.mContext, builder.resolveTitle(), builder.resolveText(), builder.mContentIntent, builder.mFullScreenIntent);
            if (builder.mPriority > 0) {
                builderExtender.flags |= 128;
            }
            if (builder.mContentView != null) {
                builderExtender.contentView = builder.mContentView;
            }
            return builderExtender;
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
        public Bundle getBundleForUnreadConversation(NotificationCompatBase.UnreadConversation unreadConversation) {
            return null;
        }

        @Override
        public String getCategory(Notification notification) {
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
        public NotificationCompatBase.UnreadConversation getUnreadConversationFromBundle(Bundle bundle, NotificationCompatBase.UnreadConversation.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
            return null;
        }

        @Override
        public boolean isGroupSummary(Notification notification) {
            return false;
        }
    }

    static class NotificationCompatImplHoneycomb
    extends NotificationCompatImplBase {
        NotificationCompatImplHoneycomb() {
        }

        @Override
        public Notification build(Builder builder, BuilderExtender builderExtender) {
            builderExtender = NotificationCompatHoneycomb.add(builder.mContext, builder.mNotification, builder.resolveTitle(), builder.resolveText(), builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon);
            if (builder.mContentView != null) {
                builderExtender.contentView = builder.mContentView;
            }
            return builderExtender;
        }
    }

    static class NotificationCompatImplIceCreamSandwich
    extends NotificationCompatImplBase {
        NotificationCompatImplIceCreamSandwich() {
        }

        @Override
        public Notification build(Builder builder, BuilderExtender builderExtender) {
            return builderExtender.build(builder, new NotificationCompatIceCreamSandwich.Builder(builder.mContext, builder.mNotification, builder.resolveTitle(), builder.resolveText(), builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon, builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate));
        }
    }

    static class NotificationCompatImplJellybean
    extends NotificationCompatImplBase {
        NotificationCompatImplJellybean() {
        }

        @Override
        public Notification build(Builder builder, BuilderExtender builderExtender) {
            NotificationCompatJellybean.Builder builder2 = new NotificationCompatJellybean.Builder(builder.mContext, builder.mNotification, builder.resolveTitle(), builder.resolveText(), builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon, builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate, builder.mUseChronometer, builder.mPriority, builder.mSubText, builder.mLocalOnly, builder.mExtras, builder.mGroupKey, builder.mGroupSummary, builder.mSortKey, builder.mContentView, builder.mBigContentView);
            NotificationCompat.addActionsToBuilder(builder2, builder.mActions);
            NotificationCompat.addStyleToBuilderJellybean(builder2, builder.mStyle);
            builderExtender = builderExtender.build(builder, builder2);
            if (builder.mStyle != null && (builder2 = this.getExtras((Notification)builderExtender)) != null) {
                builder.mStyle.addCompatExtras((Bundle)builder2);
            }
            return builderExtender;
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
        public Notification build(Builder builder, BuilderExtender builderExtender) {
            NotificationCompatKitKat.Builder builder2 = new NotificationCompatKitKat.Builder(builder.mContext, builder.mNotification, builder.resolveTitle(), builder.resolveText(), builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon, builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate, builder.mShowWhen, builder.mUseChronometer, builder.mPriority, builder.mSubText, builder.mLocalOnly, builder.mPeople, builder.mExtras, builder.mGroupKey, builder.mGroupSummary, builder.mSortKey, builder.mContentView, builder.mBigContentView);
            NotificationCompat.addActionsToBuilder(builder2, builder.mActions);
            NotificationCompat.addStyleToBuilderJellybean(builder2, builder.mStyle);
            return builderExtender.build(builder, builder2);
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

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public void addCompatExtras(Bundle bundle) {
        }

        public Notification build() {
            Notification notification = null;
            if (this.mBuilder != null) {
                notification = this.mBuilder.build();
            }
            return notification;
        }

        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        protected void restoreFromCompatExtras(Bundle bundle) {
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
        private static final int FLAG_BIG_PICTURE_AMBIENT = 32;
        private static final int FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE = 1;
        private static final int FLAG_HINT_AVOID_BACKGROUND_CLIPPING = 16;
        private static final int FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY = 64;
        private static final int FLAG_HINT_HIDE_ICON = 2;
        private static final int FLAG_HINT_SHOW_BACKGROUND_ONLY = 4;
        private static final int FLAG_START_SCROLL_BOTTOM = 8;
        private static final String KEY_ACTIONS = "actions";
        private static final String KEY_BACKGROUND = "background";
        private static final String KEY_BRIDGE_TAG = "bridgeTag";
        private static final String KEY_CONTENT_ACTION_INDEX = "contentActionIndex";
        private static final String KEY_CONTENT_ICON = "contentIcon";
        private static final String KEY_CONTENT_ICON_GRAVITY = "contentIconGravity";
        private static final String KEY_CUSTOM_CONTENT_HEIGHT = "customContentHeight";
        private static final String KEY_CUSTOM_SIZE_PRESET = "customSizePreset";
        private static final String KEY_DISMISSAL_ID = "dismissalId";
        private static final String KEY_DISPLAY_INTENT = "displayIntent";
        private static final String KEY_FLAGS = "flags";
        private static final String KEY_GRAVITY = "gravity";
        private static final String KEY_HINT_SCREEN_TIMEOUT = "hintScreenTimeout";
        private static final String KEY_PAGES = "pages";
        public static final int SCREEN_TIMEOUT_LONG = -1;
        public static final int SCREEN_TIMEOUT_SHORT = 0;
        public static final int SIZE_DEFAULT = 0;
        public static final int SIZE_FULL_SCREEN = 5;
        public static final int SIZE_LARGE = 4;
        public static final int SIZE_MEDIUM = 3;
        public static final int SIZE_SMALL = 2;
        public static final int SIZE_XSMALL = 1;
        public static final int UNSET_ACTION_INDEX = -1;
        private ArrayList<Action> mActions = new ArrayList();
        private Bitmap mBackground;
        private String mBridgeTag;
        private int mContentActionIndex = -1;
        private int mContentIcon;
        private int mContentIconGravity = 8388613;
        private int mCustomContentHeight;
        private int mCustomSizePreset = 0;
        private String mDismissalId;
        private PendingIntent mDisplayIntent;
        private int mFlags = 1;
        private int mGravity = 80;
        private int mHintScreenTimeout;
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
            Action[] arraction = NotificationCompat.IMPL.getActionsFromParcelableArrayList(notification.getParcelableArrayList("actions"));
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
            this.mHintScreenTimeout = notification.getInt("hintScreenTimeout");
            this.mDismissalId = notification.getString("dismissalId");
            this.mBridgeTag = notification.getString("bridgeTag");
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
            wearableExtender.mHintScreenTimeout = this.mHintScreenTimeout;
            wearableExtender.mDismissalId = this.mDismissalId;
            wearableExtender.mBridgeTag = this.mBridgeTag;
            return wearableExtender;
        }

        @Override
        public Builder extend(Builder builder) {
            Bundle bundle = new Bundle();
            if (!this.mActions.isEmpty()) {
                bundle.putParcelableArrayList("actions", NotificationCompat.IMPL.getParcelableArrayListForActions(this.mActions.toArray(new Action[this.mActions.size()])));
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
            if (this.mHintScreenTimeout != 0) {
                bundle.putInt("hintScreenTimeout", this.mHintScreenTimeout);
            }
            if (this.mDismissalId != null) {
                bundle.putString("dismissalId", this.mDismissalId);
            }
            if (this.mBridgeTag != null) {
                bundle.putString("bridgeTag", this.mBridgeTag);
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

        public String getBridgeTag() {
            return this.mBridgeTag;
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

        public String getDismissalId() {
            return this.mDismissalId;
        }

        public PendingIntent getDisplayIntent() {
            return this.mDisplayIntent;
        }

        public int getGravity() {
            return this.mGravity;
        }

        public boolean getHintAmbientBigPicture() {
            if ((this.mFlags & 32) != 0) {
                return true;
            }
            return false;
        }

        public boolean getHintAvoidBackgroundClipping() {
            if ((this.mFlags & 16) != 0) {
                return true;
            }
            return false;
        }

        public boolean getHintContentIntentLaunchesActivity() {
            if ((this.mFlags & 64) != 0) {
                return true;
            }
            return false;
        }

        public boolean getHintHideIcon() {
            if ((this.mFlags & 2) != 0) {
                return true;
            }
            return false;
        }

        public int getHintScreenTimeout() {
            return this.mHintScreenTimeout;
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

        public WearableExtender setBridgeTag(String string2) {
            this.mBridgeTag = string2;
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

        public WearableExtender setDismissalId(String string2) {
            this.mDismissalId = string2;
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

        public WearableExtender setHintAmbientBigPicture(boolean bl) {
            this.setFlag(32, bl);
            return this;
        }

        public WearableExtender setHintAvoidBackgroundClipping(boolean bl) {
            this.setFlag(16, bl);
            return this;
        }

        public WearableExtender setHintContentIntentLaunchesActivity(boolean bl) {
            this.setFlag(64, bl);
            return this;
        }

        public WearableExtender setHintHideIcon(boolean bl) {
            this.setFlag(2, bl);
            return this;
        }

        public WearableExtender setHintScreenTimeout(int n2) {
            this.mHintScreenTimeout = n2;
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

