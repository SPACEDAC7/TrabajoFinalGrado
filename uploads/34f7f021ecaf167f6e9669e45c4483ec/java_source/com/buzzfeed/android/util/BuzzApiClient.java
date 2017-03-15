/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  okhttp3.ResponseBody
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 *  retrofit2.Response
 */
package com.buzzfeed.android.util;

import android.content.Context;
import android.net.Uri;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.util.AESCryptUtils;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.toolkit.content.Buzz;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.NetworkService;
import com.buzzfeed.toolkit.networking.helpers.AuthServiceHelper;
import com.buzzfeed.toolkit.networking.helpers.BookmarkServiceHelper;
import com.buzzfeed.toolkit.util.HttpErrorParser;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import com.buzzfeed.toolkit.util.retrofit.StringCallback;
import com.facebook.AccessToken;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class BuzzApiClient {
    public static final String KEY_BUZZ_ID = "buzz_id";
    public static final String KEY_DATE_ADDED = "date_added";
    public static final String KEY_LOGIN = "login";
    public static final String KEY_SESSION_KEY = "session_key";
    public static final String LOGIN_BUZZFEED_ACCOUNT = "buzzfeedAccount";
    public static final String LOGIN_FACEBOOK_ACCOUNT = "facebookAccount";
    public static final String LOGIN_GOOGLE_ACCOUNT = "googleAccount";
    private static final String TAG = BuzzApiClient.class.getSimpleName();

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void addBookmarks(List<Buzz> object, String string2, String string3, SafeCallback<ResponseBody> safeCallback) {
        String string4 = TAG + ".addBookmarks";
        try {
            JSONArray jSONArray = new JSONArray();
            object = object.iterator();
            while (object.hasNext()) {
                Buzz buzz = (Buzz)object.next();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("buzz_id", (Object)buzz.getId());
                jSONObject.put("date_added", buzz.getBookmarked() / 1000);
                jSONArray.put((Object)jSONObject);
            }
            BuzzApiClient.syncBookmarkData(safeCallback, new BookmarkServiceHelper.ParamBuilder().sessionKey(string2).bookmarks(jSONArray.toString()).noCache(true).syncId(string3).build());
            return;
        }
        catch (Exception var0_1) {
            LogUtil.e(string4, "Error adding bookmarks", var0_1);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void deleteBookmark(Buzz buzz, String string2, String string3, SafeCallback<ResponseBody> safeCallback) {
        String string4 = TAG + ".deleteBookmark";
        if (string3 == null) {
            string3 = "";
        }
        try {
            BuzzApiClient.syncBookmarkData(safeCallback, new BookmarkServiceHelper.ParamBuilder().sessionKey(string2).method("delete").buzzId(buzz.getId()).noCache(true).syncId(string3).build());
            return;
        }
        catch (Exception var0_1) {
            LogUtil.e(string4, "Error deleting bookmarks", var0_1);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static SafeCall<ResponseBody> getBookmarksList(String map, String string2, String string3, SafeCallback<ResponseBody> safeCallback) {
        String string4 = TAG + ".getBookmarksList";
        if (string2 == null) {
            string2 = "";
        }
        try {
            map = new BookmarkServiceHelper.ParamBuilder().sessionKey((String)((Object)map)).userId(string3).syncId(string2).filter("mobile_app").build();
            return NetworkService.getBookmarkService().getBookmarksList(map, safeCallback);
        }
        catch (Exception var0_1) {
            LogUtil.e(string4, "Error getting bookmarks bookmarks", var0_1);
            return null;
        }
    }

    public static void loginToBuzzFeedWithAccount(String object, String string2, SafeCallback<ResponseBody> safeCallback) {
        String string3 = TAG + ".loginToBuzzFeedWithAccount";
        try {
            object = new AuthServiceHelper.BfLoginParamBuilder().username((String)object).password(string2).build();
            NetworkService.getAuthService().loginToBuzzfeed((Map<String, String>)object, safeCallback);
            return;
        }
        catch (Exception var0_1) {
            LogUtil.e(string3, "Error logging in via BuzzFeed", var0_1);
            return;
        }
    }

    public static void loginToBuzzFeedWithFacebook(String object, String string2, String string3, SafeCallback<ResponseBody> safeCallback) {
        String string4 = TAG + ".loginToBuzzFeedWithFacebook";
        try {
            object = new AuthServiceHelper.FbAuthParamBuilder().uID((String)object).username(string2).accessToken(string3).build();
            NetworkService.getAuthService().loginToBuzzfeed((Map<String, String>)object, safeCallback);
            return;
        }
        catch (Exception var0_1) {
            LogUtil.e(string4, "Error logging in via Facebook", var0_1);
            return;
        }
    }

    public static void loginToBuzzFeedWithGooglePlus(String object, SafeCallback<ResponseBody> safeCallback) {
        String string2 = TAG + ".loginToBuzzFeedWithGooglePlus";
        try {
            object = new AuthServiceHelper.GoogleLoginParamBuilder().otc((String)object).build();
            NetworkService.getAuthService().loginToBuzzfeed((Map<String, String>)object, safeCallback);
            return;
        }
        catch (Exception var0_1) {
            LogUtil.e(string2, "Error logging in via Google Plus", var0_1);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void retrieveBuzzWithURL(String string2, SafeCallback<ResponseBody> safeCallback) {
        string2 = string2 != null ? BuzzUtils.standardizeBuzzFeedUri(string2) : null;
        String string3 = string2;
        if (string2 != null) {
            string2 = Uri.parse((String)string2);
            string3 = string2.buildUpon().path(string2.getPath() + ".mobile.js").build().toString();
        }
        NetworkService.getBuzzService().getBuzzWithUrl(string3, safeCallback);
    }

    public static void signUpWithUserInfoUsingGPlus(JSONObject object, String string2, SafeCallback<ResponseBody> safeCallback) {
        String string3 = TAG + ".signUpWithUserInfoUsingGPlus";
        try {
            Environment environment = EnvironmentConfig.getEnvironment();
            object = new AuthServiceHelper.GoogleSignUpParamBuilder().host(environment.BUZZFEED_ANDROID_DOMAIN).userInfo((JSONObject)object).country(string2).build();
            NetworkService.getAuthService().signUpToBuzzfeed((Map<String, String>)object, safeCallback);
            return;
        }
        catch (Exception var0_1) {
            LogUtil.e(string3, "Error signing user up via Google Plus", var0_1);
            return;
        }
    }

    public static void signupWithUserInfo(String object, String string2, String string3, SafeCallback<ResponseBody> safeCallback) {
        String string4 = TAG + ".signupWithUserInfo";
        try {
            Environment environment = EnvironmentConfig.getEnvironment();
            object = new AuthServiceHelper.BfSignUpParamBuilder().host(environment.BUZZFEED_ANDROID_DOMAIN).name((String)object).username((String)object).password(string3).email(string2).build();
            NetworkService.getAuthService().signUpToBuzzfeed((Map<String, String>)object, safeCallback);
            return;
        }
        catch (Exception var0_1) {
            LogUtil.e(string4, "Error signing user up via BuzzFeed", var0_1);
            return;
        }
    }

    private static void syncBookmarkData(SafeCallback<ResponseBody> safeCallback, Map<String, String> map) {
        NetworkService.getBookmarkService().addBookmarks(map, safeCallback);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static void updateSessionToken(BuzzUser var0, String var1_1) {
        var2_2 = BuzzApiClient.TAG + ".updateSessionToken(BuzzUser,String,Response.Listener,Response.ErrorListener)";
        LogUtil.d(var2_2, "updating session token");
        var3_3 = var0.getLoginType();
        var4_4 = -1;
        switch (var3_3.hashCode()) {
            case -644871684: {
                if (var3_3.equals("buzzfeedAccount")) {
                    var4_4 = 0;
                }
            }
            default: {
                ** GOTO lbl14
            }
            case 1701969031: 
        }
        if (var3_3.equals("facebookAccount")) {
            var4_4 = 1;
        }
lbl14: // 4 sources:
        switch (var4_4) {
            default: {
                var0.setSessionKey(null);
                LogUtil.d(var2_2, "Could not update session token. Could not resolve login type." + var3_3);
                return;
            }
            case 0: {
                BuzzApiClient.updateSessionTokenWithBF(var0, var1_1);
                return;
            }
            case 1: 
        }
        BuzzApiClient.updateSessionTokenWithFB(var0);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean updateSessionToken(BuzzUser buzzUser, Context context) {
        boolean bl2 = false;
        String string2 = TAG + ".updateSessionToken(BuzzUser,Context)";
        boolean bl = bl2;
        if (buzzUser == null) return bl;
        bl = bl2;
        if (!buzzUser.isLogin()) return bl;
        try {
            BuzzApiClient.updateSessionToken(buzzUser, AESCryptUtils.decrypt(buzzUser.getPassword(), context));
            bl = bl2;
            if (buzzUser.getSessionKey() == null) return bl;
            return true;
        }
        catch (Exception exception) {
            LogUtil.e(string2, "Error updating token", exception);
            return false;
        }
    }

    private static void updateSessionTokenWithBF(final BuzzUser buzzUser, String object) {
        final String string2 = TAG + ".updateSessionTokenWithBF";
        try {
            object = new AuthServiceHelper.BfLoginParamBuilder().username(buzzUser.getUsername()).password((String)object).build();
            buzzUser.setSessionKey(null);
            NetworkService.getAuthService().loginToBuzzfeed((Map<String, String>)object, new StringCallback(){

                @Override
                public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                    LogUtil.e(string2, "Error updating session token", throwable);
                }

                @Override
                protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                    object = HttpErrorParser.createExceptionOnHttpError(response.code());
                    LogUtil.e(string2, "Network Error", (Throwable)object);
                }

                /*
                 * Enabled force condition propagation
                 * Lifted jumps to return sites
                 */
                @Override
                public void onStringResponse(String string22) {
                    if (string22 == null) return;
                    try {
                        string22 = new JSONObject(string22);
                        buzzUser.setLogin(string22.getBoolean("login"));
                        if (!buzzUser.isLogin()) return;
                        buzzUser.setSessionKey(string22.getString("session_key"));
                        return;
                    }
                    catch (JSONException var1_2) {
                        LogUtil.e(string2, "Error parsing json response ", (Throwable)var1_2);
                        return;
                    }
                }
            });
            return;
        }
        catch (Exception var0_1) {
            LogUtil.e(string2, "Error updating session token with buzzfeed account", var0_1);
            return;
        }
    }

    private static void updateSessionTokenWithFB(final BuzzUser buzzUser) {
        final String string2 = TAG + ".updateSessionTokenWithFB";
        buzzUser.setSessionKey(null);
        try {
            Map<String, String> map = new AuthServiceHelper.FbAuthParamBuilder().uID(buzzUser.getFacebookUid()).username(buzzUser.getUsername()).accessToken(AccessToken.getCurrentAccessToken().getToken()).build();
            NetworkService.getAuthService().loginToBuzzfeed(map, new StringCallback(){

                @Override
                public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                    LogUtil.e(string2, "Error updating session token with facebook credentials", throwable);
                }

                @Override
                protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                    object = HttpErrorParser.createExceptionOnHttpError(response.code());
                    LogUtil.e(string2, "Network Error", (Throwable)object);
                }

                @Override
                public void onStringResponse(String string22) {
                    buzzUser.setSessionKey(null);
                    try {
                        string22 = new JSONObject(string22);
                        buzzUser.setLogin(string22.getBoolean("login"));
                        if (buzzUser.isLogin()) {
                            buzzUser.setSessionKey(string22.getString("session_key"));
                        }
                        return;
                    }
                    catch (JSONException var1_2) {
                        LogUtil.e(string2, "Error parsing json response", (Throwable)var1_2);
                        return;
                    }
                }
            });
            return;
        }
        catch (Exception var0_1) {
            LogUtil.e(string2, "Error updating session token with facebook credentials", var0_1);
            return;
        }
    }

}

