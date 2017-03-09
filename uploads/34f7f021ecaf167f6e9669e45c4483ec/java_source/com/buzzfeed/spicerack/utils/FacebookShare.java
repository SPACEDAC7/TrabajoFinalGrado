/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  org.json.JSONObject
 */
package com.buzzfeed.spicerack.utils;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import com.buzzfeed.spicerack.utils.FacebookShareEngine;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.sharmo.ShareManager;
import com.buzzfeed.toolkit.util.JSONUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Stack;
import org.json.JSONObject;

public class FacebookShare {
    private static final String TAG = LogUtil.makeLogTag(FacebookShare.class);
    private final Activity mActivity;
    private Context mContext;
    private final FacebookShareEngine mFacebookShareEngine;

    public FacebookShare(@NonNull Context context, @NonNull Activity activity, @NonNull FacebookShareEngine facebookShareEngine) {
        this.mContext = context;
        this.mActivity = activity;
        this.mFacebookShareEngine = facebookShareEngine;
    }

    public void shareFacebookContent(@NonNull PostContent postContent, @NonNull String string2) {
        string2 = ShareManager.addPoundHash(this.mContext, string2);
        String string3 = postContent.getTitle();
        String string4 = postContent.getDescription();
        this.mFacebookShareEngine.show(this.mActivity, string3, string4, string2, postContent.getImageStack(UIUtil.getScreenDensityDpi()).pop());
    }

    public void shareFacebookFromJSON(@NonNull JSONObject object) {
        String string2 = JSONUtil.optString((JSONObject)object, "name");
        String string3 = JSONUtil.optString((JSONObject)object, "description");
        String string4 = JSONUtil.optString((JSONObject)object, "link");
        object = JSONUtil.optString((JSONObject)object, "picture");
        if (string2 == null || string3 == null || string4 == null || object == null) {
            LogUtil.e(TAG, "Invalid share facebook model");
            return;
        }
        string4 = ShareManager.addPoundHash(this.mContext, string4);
        this.mFacebookShareEngine.show(this.mActivity, string2, string3, string4, (String)object);
    }
}

