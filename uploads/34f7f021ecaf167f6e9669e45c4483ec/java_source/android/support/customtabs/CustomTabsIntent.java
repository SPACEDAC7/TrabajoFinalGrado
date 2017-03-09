/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.PendingIntent
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.graphics.Bitmap
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.os.Parcelable
 *  android.widget.RemoteViews
 */
package android.support.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.support.annotation.AnimRes;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.customtabs.CustomTabsSession;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.app.BundleCompat;
import android.support.v4.content.ContextCompat;
import android.widget.RemoteViews;
import java.util.ArrayList;

public final class CustomTabsIntent {
    public static final String EXTRA_ACTION_BUTTON_BUNDLE = "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE";
    public static final String EXTRA_CLOSE_BUTTON_ICON = "android.support.customtabs.extra.CLOSE_BUTTON_ICON";
    public static final String EXTRA_DEFAULT_SHARE_MENU_ITEM = "android.support.customtabs.extra.SHARE_MENU_ITEM";
    public static final String EXTRA_ENABLE_INSTANT_APPS = "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS";
    public static final String EXTRA_ENABLE_URLBAR_HIDING = "android.support.customtabs.extra.ENABLE_URLBAR_HIDING";
    public static final String EXTRA_EXIT_ANIMATION_BUNDLE = "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE";
    public static final String EXTRA_MENU_ITEMS = "android.support.customtabs.extra.MENU_ITEMS";
    public static final String EXTRA_REMOTEVIEWS = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS";
    public static final String EXTRA_REMOTEVIEWS_CLICKED_ID = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_CLICKED_ID";
    public static final String EXTRA_REMOTEVIEWS_PENDINGINTENT = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT";
    public static final String EXTRA_REMOTEVIEWS_VIEW_IDS = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS";
    public static final String EXTRA_SECONDARY_TOOLBAR_COLOR = "android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR";
    public static final String EXTRA_SESSION = "android.support.customtabs.extra.SESSION";
    public static final String EXTRA_TINT_ACTION_BUTTON = "android.support.customtabs.extra.TINT_ACTION_BUTTON";
    public static final String EXTRA_TITLE_VISIBILITY_STATE = "android.support.customtabs.extra.TITLE_VISIBILITY";
    public static final String EXTRA_TOOLBAR_COLOR = "android.support.customtabs.extra.TOOLBAR_COLOR";
    public static final String EXTRA_TOOLBAR_ITEMS = "android.support.customtabs.extra.TOOLBAR_ITEMS";
    private static final String EXTRA_USER_OPT_OUT_FROM_CUSTOM_TABS = "android.support.customtabs.extra.user_opt_out";
    public static final String KEY_DESCRIPTION = "android.support.customtabs.customaction.DESCRIPTION";
    public static final String KEY_ICON = "android.support.customtabs.customaction.ICON";
    public static final String KEY_ID = "android.support.customtabs.customaction.ID";
    public static final String KEY_MENU_ITEM_TITLE = "android.support.customtabs.customaction.MENU_ITEM_TITLE";
    public static final String KEY_PENDING_INTENT = "android.support.customtabs.customaction.PENDING_INTENT";
    private static final int MAX_TOOLBAR_ITEMS = 5;
    public static final int NO_TITLE = 0;
    public static final int SHOW_PAGE_TITLE = 1;
    public static final int TOOLBAR_ACTION_BUTTON_ID = 0;
    @NonNull
    public final Intent intent;
    @Nullable
    public final Bundle startAnimationBundle;

    private CustomTabsIntent(Intent intent, Bundle bundle) {
        this.intent = intent;
        this.startAnimationBundle = bundle;
    }

    public static int getMaxToolbarItems() {
        return 5;
    }

    public static Intent setAlwaysUseBrowserUI(Intent intent) {
        Intent intent2 = intent;
        if (intent == null) {
            intent2 = new Intent("android.intent.action.VIEW");
        }
        intent2.addFlags(268435456);
        intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        return intent2;
    }

    public static boolean shouldAlwaysUseBrowserUI(Intent intent) {
        boolean bl;
        boolean bl2 = bl = false;
        if (intent.getBooleanExtra("android.support.customtabs.extra.user_opt_out", false)) {
            bl2 = bl;
            if ((intent.getFlags() & 268435456) != 0) {
                bl2 = true;
            }
        }
        return bl2;
    }

    public void launchUrl(Context context, Uri uri) {
        this.intent.setData(uri);
        ContextCompat.startActivity(context, this.intent, this.startAnimationBundle);
    }

    public static final class Builder {
        private ArrayList<Bundle> mActionButtons;
        private boolean mInstantAppsEnabled;
        private final Intent mIntent;
        private ArrayList<Bundle> mMenuItems;
        private Bundle mStartAnimationBundle;

        public Builder() {
            this(null);
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder(@Nullable CustomTabsSession customTabsSession) {
            Object var2_2 = null;
            this.mIntent = new Intent("android.intent.action.VIEW");
            this.mMenuItems = null;
            this.mStartAnimationBundle = null;
            this.mActionButtons = null;
            this.mInstantAppsEnabled = true;
            if (customTabsSession != null) {
                this.mIntent.setPackage(customTabsSession.getComponentName().getPackageName());
            }
            Bundle bundle = new Bundle();
            customTabsSession = customTabsSession == null ? var2_2 : customTabsSession.getBinder();
            BundleCompat.putBinder(bundle, "android.support.customtabs.extra.SESSION", (IBinder)customTabsSession);
            this.mIntent.putExtras(bundle);
        }

        public Builder addDefaultShareMenuItem() {
            this.mIntent.putExtra("android.support.customtabs.extra.SHARE_MENU_ITEM", true);
            return this;
        }

        public Builder addMenuItem(@NonNull String string2, @NonNull PendingIntent pendingIntent) {
            if (this.mMenuItems == null) {
                this.mMenuItems = new ArrayList();
            }
            Bundle bundle = new Bundle();
            bundle.putString("android.support.customtabs.customaction.MENU_ITEM_TITLE", string2);
            bundle.putParcelable("android.support.customtabs.customaction.PENDING_INTENT", (Parcelable)pendingIntent);
            this.mMenuItems.add(bundle);
            return this;
        }

        @Deprecated
        public Builder addToolbarItem(int n2, @NonNull Bitmap bitmap, @NonNull String string2, PendingIntent pendingIntent) throws IllegalStateException {
            if (this.mActionButtons == null) {
                this.mActionButtons = new ArrayList();
            }
            if (this.mActionButtons.size() >= 5) {
                throw new IllegalStateException("Exceeded maximum toolbar item count of 5");
            }
            Bundle bundle = new Bundle();
            bundle.putInt("android.support.customtabs.customaction.ID", n2);
            bundle.putParcelable("android.support.customtabs.customaction.ICON", (Parcelable)bitmap);
            bundle.putString("android.support.customtabs.customaction.DESCRIPTION", string2);
            bundle.putParcelable("android.support.customtabs.customaction.PENDING_INTENT", (Parcelable)pendingIntent);
            this.mActionButtons.add(bundle);
            return this;
        }

        public CustomTabsIntent build() {
            if (this.mMenuItems != null) {
                this.mIntent.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", this.mMenuItems);
            }
            if (this.mActionButtons != null) {
                this.mIntent.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", this.mActionButtons);
            }
            this.mIntent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.mInstantAppsEnabled);
            return new CustomTabsIntent(this.mIntent, this.mStartAnimationBundle);
        }

        public Builder enableUrlBarHiding() {
            this.mIntent.putExtra("android.support.customtabs.extra.ENABLE_URLBAR_HIDING", true);
            return this;
        }

        public Builder setActionButton(@NonNull Bitmap bitmap, @NonNull String string2, @NonNull PendingIntent pendingIntent) {
            return this.setActionButton(bitmap, string2, pendingIntent, false);
        }

        public Builder setActionButton(@NonNull Bitmap bitmap, @NonNull String string2, @NonNull PendingIntent pendingIntent, boolean bl) {
            Bundle bundle = new Bundle();
            bundle.putInt("android.support.customtabs.customaction.ID", 0);
            bundle.putParcelable("android.support.customtabs.customaction.ICON", (Parcelable)bitmap);
            bundle.putString("android.support.customtabs.customaction.DESCRIPTION", string2);
            bundle.putParcelable("android.support.customtabs.customaction.PENDING_INTENT", (Parcelable)pendingIntent);
            this.mIntent.putExtra("android.support.customtabs.extra.ACTION_BUTTON_BUNDLE", bundle);
            this.mIntent.putExtra("android.support.customtabs.extra.TINT_ACTION_BUTTON", bl);
            return this;
        }

        public Builder setCloseButtonIcon(@NonNull Bitmap bitmap) {
            this.mIntent.putExtra("android.support.customtabs.extra.CLOSE_BUTTON_ICON", (Parcelable)bitmap);
            return this;
        }

        public Builder setExitAnimations(@NonNull Context context, @AnimRes int n2, @AnimRes int n3) {
            context = ActivityOptionsCompat.makeCustomAnimation(context, n2, n3).toBundle();
            this.mIntent.putExtra("android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE", (Bundle)context);
            return this;
        }

        public Builder setInstantAppsEnabled(boolean bl) {
            this.mInstantAppsEnabled = bl;
            return this;
        }

        public Builder setSecondaryToolbarColor(@ColorInt int n2) {
            this.mIntent.putExtra("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", n2);
            return this;
        }

        public Builder setSecondaryToolbarViews(@NonNull RemoteViews remoteViews, @Nullable int[] arrn, @Nullable PendingIntent pendingIntent) {
            this.mIntent.putExtra("android.support.customtabs.extra.EXTRA_REMOTEVIEWS", (Parcelable)remoteViews);
            this.mIntent.putExtra("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS", arrn);
            this.mIntent.putExtra("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT", (Parcelable)pendingIntent);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setShowTitle(boolean bl) {
            Intent intent = this.mIntent;
            int n2 = bl ? 1 : 0;
            intent.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", n2);
            return this;
        }

        public Builder setStartAnimations(@NonNull Context context, @AnimRes int n2, @AnimRes int n3) {
            this.mStartAnimationBundle = ActivityOptionsCompat.makeCustomAnimation(context, n2, n3).toBundle();
            return this;
        }

        public Builder setToolbarColor(@ColorInt int n2) {
            this.mIntent.putExtra("android.support.customtabs.extra.TOOLBAR_COLOR", n2);
            return this;
        }
    }

}

