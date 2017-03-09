/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.android.data;

import android.app.Activity;
import android.content.Context;
import com.buzzfeed.android.data.bookmark.BFBookmarkManager;
import com.buzzfeed.android.data.login.GoogleLoginManager;
import com.buzzfeed.toolkit.util.LogUtil;
import com.facebook.login.LoginManager;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

public class BuzzUser
implements Serializable {
    public static final String CONTRIBUTE = "contribute";
    public static final String DISPLAY_NAME = "display_name";
    public static final String FACEBOOK_UID = "facebook_uid";
    private static final String FILE_NAME = "buzz_user";
    public static final String F_INDEX = "f_index";
    public static final String IMAGE = "image";
    public static final String IS_FACEBOOK_USER = "is_facebook_user";
    public static final String IS_MICROSITE = "is_microsite";
    public static final String LAST_ACTIVE = "last_active";
    public static final String LOGIN = "login";
    public static final String MAX_ALIASES = "max_aliases";
    public static final String P_ACCESS_STATS = "p_access_stats";
    public static final String P_ADMIN = "p_admin";
    public static final String P_ALIAS = "p_alias";
    public static final String P_ALLOW_RAW_HTML = "p_allow_raw_html";
    public static final String P_DASHBOARD = "p_dashboard";
    public static final String P_DISABLE_COMMENT = "p_disable_comment";
    public static final String P_DISABLE_QUICKPOST = "p_disable_quickpost";
    public static final String P_DISABLE_REACTION = "p_disable_reaction";
    public static final String P_PARTNER_ADMIN = "p_partner_admin";
    public static final String REGISTRATION_PATH = "registration_path";
    public static final String SESSION_KEY = "session_key";
    public static final String SHOW_ACCOUNT_SETTINGS = "show_account_settings";
    private static final String TAG = BuzzUser.class.getSimpleName();
    public static final String TERMINAL_USER = "terminal_user";
    public static final String USERNAME = "username";
    public static final String USER_ID = "userid";
    public static final String USER_SWITCHING = "user_switching";
    private static BuzzUser sInstance;
    private static final long serialVersionUID = 4924668024240113131L;
    private static final Object syncObject;
    private String contribute;
    private String displayName;
    private int fIndex;
    private String facebookUid;
    private String facebookUsername;
    private String imageUrl;
    private boolean isFacebookUser;
    private boolean isMicrosite;
    private long lastActive;
    private boolean login;
    private String loginType;
    private int maxAliases;
    private boolean pAccessStats;
    private boolean pAdmin;
    private boolean pAlias;
    private boolean pAllowRawHTML;
    private boolean pDashboard;
    private boolean pDisableComment;
    private boolean pDisableQuickpost;
    private boolean pDisableReaction;
    private boolean pPartnerAdmin;
    private String password;
    private String registrationPath;
    private String sessionKey;
    private boolean showAccountSettings;
    private String syncId;
    private String terminalUser;
    private int userSwitching;
    private String userid;
    private String username;

    static {
        syncObject = new Object();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static BuzzUser getInstance(Context object) {
        Object object2 = syncObject;
        synchronized (object2) {
            if (sInstance != null) return sInstance;
            sInstance = BuzzUser.loadFromStorage(object.getApplicationContext());
            if (sInstance != null) return sInstance;
            sInstance = new BuzzUser();
            return sInstance;
        }
    }

    public static BuzzUser loadFromStorage(Context object) {
        Object object2;
        Object object3 = null;
        Object object4 = null;
        Object object5 = object2 = null;
        Object object6 = object3;
        Object object7 = object4;
        FileInputStream fileInputStream = object.openFileInput("buzz_user");
        object5 = object2;
        object6 = object3;
        object7 = object4;
        ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
        object5 = object2;
        object6 = object3;
        object7 = object4;
        object5 = object = (BuzzUser)objectInputStream.readObject();
        object6 = object;
        object7 = object;
        objectInputStream.close();
        object5 = object;
        object6 = object;
        object7 = object;
        try {
            fileInputStream.close();
            return object;
        }
        catch (FileNotFoundException var0_1) {
            LogUtil.d(TAG, "No BuzzUser information was found on disk");
            return object5;
        }
        catch (IOException var0_2) {
            LogUtil.e(TAG, "Error trying to load BuzzUser information from disk: " + var0_2.getMessage());
            return object6;
        }
        catch (ClassNotFoundException var0_3) {
            LogUtil.e(TAG, "Error trying to deserialize BuzzUser information from disk: " + var0_3.getMessage());
            return object7;
        }
    }

    public void deleteFromStorage(Context context) {
        context.deleteFile("buzz_user");
    }

    public String getContribute() {
        return this.contribute;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public int getFIndex() {
        return this.fIndex;
    }

    public String getFacebookUid() {
        return this.facebookUid;
    }

    public String getFacebookUsername() {
        return this.facebookUsername;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public long getLastActive() {
        return this.lastActive;
    }

    public String getLoginType() {
        return this.loginType;
    }

    public int getMaxAliases() {
        return this.maxAliases;
    }

    public String getPassword() {
        return this.password;
    }

    public String getRegistrationPath() {
        return this.registrationPath;
    }

    public String getSessionKey() {
        return this.sessionKey;
    }

    public String getSyncId() {
        return this.syncId;
    }

    public String getTerminalUser() {
        return this.terminalUser;
    }

    public int getUserSwitching() {
        return this.userSwitching;
    }

    public String getUserid() {
        return this.userid;
    }

    public String getUsername() {
        return this.username;
    }

    public boolean isFacebookUser() {
        return this.isFacebookUser;
    }

    public boolean isLogin() {
        return this.login;
    }

    public boolean isMicrosite() {
        return this.isMicrosite;
    }

    public boolean isPAccessStats() {
        return this.pAccessStats;
    }

    public boolean isPAdmin() {
        return this.pAdmin;
    }

    public boolean isPAlias() {
        return this.pAlias;
    }

    public boolean isPAllowRawHTML() {
        return this.pAllowRawHTML;
    }

    public boolean isPDashboard() {
        return this.pDashboard;
    }

    public boolean isPDisableComment() {
        return this.pDisableComment;
    }

    public boolean isPDisableQuickpost() {
        return this.pDisableQuickpost;
    }

    public boolean isPDisableReaction() {
        return this.pDisableReaction;
    }

    public boolean isPPartnerAdmin() {
        return this.pPartnerAdmin;
    }

    public boolean isShowAccountSettings() {
        return this.showAccountSettings;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void loadFromJson(JSONObject jSONObject) throws JSONException {
        this.userid = jSONObject.getString("userid");
        this.pDisableReaction = jSONObject.optBoolean("p_disable_reaction", false);
        this.pDisableComment = jSONObject.optBoolean("p_disable_comment", false);
        this.sessionKey = jSONObject.getString("session_key");
        this.pDisableQuickpost = jSONObject.optBoolean("p_disable_quickpost", false);
        this.lastActive = jSONObject.getLong("last_active");
        this.facebookUid = jSONObject.getString("facebook_uid");
        this.displayName = jSONObject.getString("display_name");
        String string2 = jSONObject.getString("image");
        if (string2 != null && !string2.equals("null")) {
            this.imageUrl = "https://img.buzzfeed.com" + string2;
            int n2 = this.imageUrl.lastIndexOf(".");
            string2 = this.imageUrl.substring(n2);
            this.imageUrl = this.imageUrl.substring(0, n2) + "_large" + string2;
        } else {
            this.imageUrl = "";
        }
        this.username = jSONObject.getString("username");
    }

    public void logout(Activity activity) {
        LoginManager.getInstance().logOut();
        this.setBuzzUser(new BuzzUser());
        GoogleLoginManager.getInstance().logout();
        BFBookmarkManager bFBookmarkManager = BFBookmarkManager.getInstance((Context)activity);
        bFBookmarkManager.uploadLocalBookmarkChanges();
        bFBookmarkManager.resetBookmarks();
        this.deleteFromStorage((Context)activity);
    }

    public void saveToStorage(Context object) {
        try {
            object = object.openFileOutput("buzz_user", 0);
            ObjectOutputStream objectOutputStream = new ObjectOutputStream((OutputStream)object);
            objectOutputStream.writeObject(this);
            objectOutputStream.close();
            object.close();
            return;
        }
        catch (IOException var1_2) {
            LogUtil.e(TAG, "Error trying to save BuzzUser information to disk: " + var1_2.getMessage());
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void setBuzzUser(BuzzUser buzzUser) {
        Object object = syncObject;
        synchronized (object) {
            sInstance = buzzUser;
            return;
        }
    }

    public void setContribute(String string2) {
        this.contribute = string2;
    }

    public void setDisplayName(String string2) {
        this.displayName = string2;
    }

    public void setFIndex(int n2) {
        this.fIndex = n2;
    }

    public void setFacebookUid(String string2) {
        this.facebookUid = string2;
    }

    public void setFacebookUser(boolean bl) {
        this.isFacebookUser = bl;
    }

    public void setFacebookUsername(String string2) {
        this.facebookUsername = string2;
    }

    public void setImageUrl(String string2) {
        this.imageUrl = string2;
    }

    public void setLastActive(long l2) {
        this.lastActive = l2;
    }

    public void setLogin(boolean bl) {
        this.login = bl;
    }

    public void setLoginType(String string2) {
        this.loginType = string2;
    }

    public void setMaxAliases(int n2) {
        this.maxAliases = n2;
    }

    public void setMicrosite(boolean bl) {
        this.isMicrosite = bl;
    }

    public void setPAccessStats(boolean bl) {
        this.pAccessStats = bl;
    }

    public void setPAdmin(boolean bl) {
        this.pAdmin = bl;
    }

    public void setPAlias(boolean bl) {
        this.pAlias = bl;
    }

    public void setPAllowRawHTML(boolean bl) {
        this.pAllowRawHTML = bl;
    }

    public void setPDashboard(boolean bl) {
        this.pDashboard = bl;
    }

    public void setPDisableComment(boolean bl) {
        this.pDisableComment = bl;
    }

    public void setPDisableQuickpost(boolean bl) {
        this.pDisableQuickpost = bl;
    }

    public void setPDisableReaction(boolean bl) {
        this.pDisableReaction = bl;
    }

    public void setPPartnerAdmin(boolean bl) {
        this.pPartnerAdmin = bl;
    }

    public void setPassword(String string2) {
        this.password = string2;
    }

    public void setRegistrationPath(String string2) {
        this.registrationPath = string2;
    }

    public void setSessionKey(String string2) {
        this.sessionKey = string2;
    }

    public void setShowAccountSettings(boolean bl) {
        this.showAccountSettings = bl;
    }

    public void setSyncId(String string2) {
        this.syncId = string2;
    }

    public void setTerminalUser(String string2) {
        this.terminalUser = string2;
    }

    public void setUserSwitching(int n2) {
        this.userSwitching = n2;
    }

    public void setUserid(String string2) {
        this.userid = string2;
    }

    public void setUsername(String string2) {
        this.username = string2;
    }
}

