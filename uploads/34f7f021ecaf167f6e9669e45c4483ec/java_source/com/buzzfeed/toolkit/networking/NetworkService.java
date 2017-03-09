/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.content.Context
 */
package com.buzzfeed.toolkit.networking;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.NonNull;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.helpers.AdServiceHelper;
import com.buzzfeed.toolkit.networking.helpers.AuthServiceHelper;
import com.buzzfeed.toolkit.networking.helpers.BookmarkServiceHelper;
import com.buzzfeed.toolkit.networking.helpers.BuzzServiceHelper;
import com.buzzfeed.toolkit.networking.helpers.CommentServiceHelper;
import com.buzzfeed.toolkit.networking.helpers.LegacyFeedServiceHelper;
import com.buzzfeed.toolkit.networking.helpers.LegacyMenuServiceHelper;
import com.buzzfeed.toolkit.networking.helpers.ReactionsServiceHelper;
import com.buzzfeed.toolkit.networking.helpers.WeaverServiceHelper;
import com.buzzfeed.toolkit.util.EZUtil;

public final class NetworkService {
    @SuppressLint(value={"StaticFieldLeak"})
    private static Context sContext;
    private static Environment sEnvironment;

    private static void ensureInitialization() {
        if (sContext == null || sEnvironment == null) {
            throw new IllegalStateException("NetworkService.initialize needs to be called before using NetworkService");
        }
    }

    public static AdServiceHelper getAdService() {
        NetworkService.ensureInitialization();
        return new AdServiceHelper(sContext);
    }

    public static AuthServiceHelper getAuthService() {
        NetworkService.ensureInitialization();
        return new AuthServiceHelper(sContext, sEnvironment);
    }

    public static BookmarkServiceHelper getBookmarkService() {
        NetworkService.ensureInitialization();
        return new BookmarkServiceHelper(sContext, sEnvironment);
    }

    public static BuzzServiceHelper getBuzzService() {
        NetworkService.ensureInitialization();
        return new BuzzServiceHelper(sContext);
    }

    public static CommentServiceHelper getCommentService() {
        NetworkService.ensureInitialization();
        return new CommentServiceHelper(sContext, sEnvironment);
    }

    @NonNull
    public static Environment getEnvironment() {
        NetworkService.ensureInitialization();
        return sEnvironment;
    }

    public static LegacyFeedServiceHelper getLegacyFeedService() {
        return new LegacyFeedServiceHelper(sContext, sEnvironment);
    }

    public static LegacyMenuServiceHelper getLegacyMenuService() {
        return new LegacyMenuServiceHelper(sContext, sEnvironment);
    }

    public static ReactionsServiceHelper getReactionsService() {
        NetworkService.ensureInitialization();
        return new ReactionsServiceHelper(sContext, sEnvironment);
    }

    public static WeaverServiceHelper getWeaverService() {
        return new WeaverServiceHelper(sContext, sEnvironment);
    }

    public static void initialize(Context context, Environment environment) {
        sContext = EZUtil.checkNotNull(context.getApplicationContext(), "Application context cant be null");
        sEnvironment = EZUtil.checkNotNull(environment, "Environment cant be null");
    }
}

