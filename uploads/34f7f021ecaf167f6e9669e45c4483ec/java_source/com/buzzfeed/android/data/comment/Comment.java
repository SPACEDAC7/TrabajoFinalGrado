/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  org.json.JSONObject
 */
package com.buzzfeed.android.data.comment;

import android.content.Context;
import android.text.TextUtils;
import com.buzzfeed.android.data.EnvironmentConfig;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONObject;

public abstract class Comment
implements Serializable {
    public static final String COMMENT_DEFAULT_AVATAR_PATH = "static/images/public/defaults/user.jpg";
    public static final String COMMENT_DEFAULT_LARGE_AVATAR_PATH = "static/images/public/defaults/user_large.jpg";
    private static final String TAG = Comment.class.getName();
    private static final long TIME_DAYS_IN_MILLISECONDS = 86400000;
    private static final long TIME_HOUR_IN_MILLISECONDS = 3600000;
    private static final long TIME_MILLISECONDS_IN_SECONDS = 1000;
    private static final long TIME_MINUTES_IN_MILLISECONDS = 60000;
    private static final long TIME_MONTHS_IN_MILLISECONDS = 2592000000L;
    private static final long TIME_YEARS_IN_MILLISECONDS = 31104000000L;
    private static final long serialVersionUID = 0;
    private String blurb;
    private String commentId;
    private String commentImage;
    private String formattedTimestamp = null;
    protected Context mContext;
    private Comment parent;
    private String parentCommentId = null;
    private ArrayList<Comment> replies;
    private String timeAdded;
    private UserInfo userInfo;

    public Comment(Context context) {
        this.mContext = context.getApplicationContext();
        this.replies = new ArrayList();
        this.userInfo = new UserInfo();
    }

    public Comment(Context context, JSONObject jSONObject) {
        this(context);
        this.parse(jSONObject);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String formatTimeAdded() {
        Context context = this.mContext;
        long l2 = System.currentTimeMillis() - Long.valueOf(this.getTimeAdded());
        long l3 = l2 / 31104000000L;
        long l4 = l2 / 2592000000L;
        long l5 = l2 / 86400000;
        long l6 = l2 / 3600000;
        long l7 = l2 / 60000;
        l2 /= 1000;
        if (l3 > 0) {
            this.formattedTimestamp = context.getString(2131296560);
            return this.formattedTimestamp;
        }
        if (l4 > 9) {
            this.formattedTimestamp = context.getString(2131296559);
            return this.formattedTimestamp;
        }
        if (l4 >= 1) {
            if (l4 == 1) {
                this.formattedTimestamp = "" + l4 + context.getString(2131296556);
                do {
                    return this.formattedTimestamp;
                    break;
                } while (true);
            }
            this.formattedTimestamp = "" + l4 + context.getString(2131296557);
            return this.formattedTimestamp;
        }
        if (l5 >= 1) {
            if (l5 == 1) {
                this.formattedTimestamp = "" + l5 + context.getString(2131296550);
                do {
                    return this.formattedTimestamp;
                    break;
                } while (true);
            }
            this.formattedTimestamp = "" + l5 + context.getString(2131296551);
            return this.formattedTimestamp;
        }
        if (l6 >= 1) {
            if (l6 == 1) {
                this.formattedTimestamp = "" + l6 + context.getString(2131296552);
                do {
                    return this.formattedTimestamp;
                    break;
                } while (true);
            }
            this.formattedTimestamp = "" + l6 + context.getString(2131296553);
            return this.formattedTimestamp;
        }
        if (l7 >= 1) {
            if (l7 == 1) {
                this.formattedTimestamp = "" + l7 + context.getString(2131296554);
                do {
                    return this.formattedTimestamp;
                    break;
                } while (true);
            }
            this.formattedTimestamp = "" + l7 + context.getString(2131296555);
            return this.formattedTimestamp;
        }
        this.formattedTimestamp = "" + l2 + context.getString(2131296558);
        return this.formattedTimestamp;
    }

    public String getBlurb() {
        return this.blurb;
    }

    public String getCommentId() {
        return this.commentId;
    }

    public String getCommentImageUrl() {
        return this.commentImage;
    }

    public String getFormattedTimestamp() {
        this.formatTimeAdded();
        return this.formattedTimestamp;
    }

    public Comment getParent() {
        return this.parent;
    }

    public String getParentCommentId() {
        return this.parentCommentId;
    }

    public ArrayList<Comment> getReplies() {
        return this.replies;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String getShareBody() {
        String string2;
        if (TextUtils.isEmpty((CharSequence)this.blurb)) {
            string2 = EnvironmentConfig.getUrlWithStaticBaseUrl(this.getCommentImageUrl());
            do {
                return "\n\n" + string2 + "\n\n";
                break;
            } while (true);
        }
        string2 = this.blurb;
        return "\n\n" + string2 + "\n\n";
    }

    public String getTimeAdded() {
        return this.timeAdded;
    }

    public UserInfo getUserInfo() {
        return this.userInfo;
    }

    public abstract boolean isImgExpected();

    public boolean isReply() {
        if (this.getParentCommentId() != null) {
            return true;
        }
        return false;
    }

    public abstract boolean isTextExpected();

    /*
     * Enabled aggressive block sorting
     */
    public boolean isValid() {
        boolean bl = this.userInfo != null && this.userInfo.isValid() && this.getCommentId() != null && !this.getCommentId().isEmpty();
        boolean bl2 = bl;
        if (this.isImgExpected()) {
            bl2 = bl && this.getCommentImageUrl() != null && !this.getCommentImageUrl().isEmpty();
        }
        bl = bl2;
        if (!this.isTextExpected()) return bl;
        if (!bl2) return false;
        if (this.getBlurb() == null) return false;
        if (this.getBlurb().isEmpty()) return false;
        return true;
    }

    public abstract void parse(JSONObject var1);

    public void setBlurb(String string2) {
        this.blurb = string2;
    }

    public void setCommentId(String string2) {
        this.commentId = string2;
    }

    public void setCommentImgUrl(String string2) {
        this.commentImage = string2;
    }

    public void setParent(Comment comment) {
        this.parent = comment;
        if (this.parent != null) {
            this.setParentCommentId(this.parent.getCommentId());
        }
    }

    protected Comment setParentCommentId(String string2) {
        this.parentCommentId = string2;
        return this;
    }

    public void setReplies(ArrayList<Comment> arrayList) {
        this.replies = arrayList;
    }

    public void setTimeAdded(String string2) {
        this.timeAdded = string2;
        this.formatTimeAdded();
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public String toString() {
        return "Comment{replies=" + this.replies + ", blurb='" + this.blurb + '\'' + ", timeAdded='" + this.timeAdded + '\'' + ", commentId='" + this.commentId + '\'' + ", parentCommentId='" + this.parentCommentId + '\'' + ", commentImage='" + this.commentImage + '\'' + ", formattedTimestamp='" + this.formattedTimestamp + '\'' + ", userInfo=" + this.userInfo + '}';
    }

    public static class UserInfo
    implements Serializable {
        private static final long serialVersionUID = 0;
        private String displayName;
        private String userId;
        private String userImg;
        private String username;

        /*
         * Enabled aggressive block sorting
         */
        public boolean equals(Object object) {
            if (this == object) {
                return true;
            }
            if (object == null) return false;
            if (this.getClass() != object.getClass()) {
                return false;
            }
            object = (UserInfo)object;
            if (this.displayName != null) {
                if (!this.displayName.equals(object.displayName)) {
                    return false;
                }
            } else if (object.displayName != null) return false;
            if (this.userId != null) {
                if (!this.userId.equals(object.userId)) {
                    return false;
                }
            } else if (object.userId != null) return false;
            if (this.userImg != null) {
                if (!this.userImg.equals(object.userImg)) {
                    return false;
                }
            } else if (object.userImg != null) return false;
            if (this.username != null) {
                if (this.username.equals(object.username)) return true;
                return false;
            }
            if (object.username == null) return true;
            return false;
        }

        public String getDisplayName() {
            return this.displayName;
        }

        public String getLargeUserImg() {
            if (!TextUtils.isEmpty((CharSequence)this.userImg) && this.userImg.contains("static/images/public/defaults/user_large.jpg")) {
                int n2 = this.userImg.lastIndexOf(".");
                String string2 = this.userImg.substring(n2);
                return this.userImg.substring(0, n2) + "_large" + string2;
            }
            return this.userImg;
        }

        public String getUserId() {
            return this.userId;
        }

        public String getUserImg() {
            return this.userImg;
        }

        public String getUsername() {
            return this.username;
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n2 = 0;
            int n3 = this.userId != null ? this.userId.hashCode() : 0;
            int n4 = this.displayName != null ? this.displayName.hashCode() : 0;
            int n5 = this.userImg != null ? this.userImg.hashCode() : 0;
            if (this.username != null) {
                n2 = this.username.hashCode();
            }
            return ((n3 * 31 + n4) * 31 + n5) * 31 + n2;
        }

        public boolean isValid() {
            if (!(this.getDisplayName() == null || this.getDisplayName().isEmpty() || this.getUserId() == null || this.getUserId().isEmpty() || this.getUsername() == null || this.getUsername().isEmpty() || this.getUserImg() == null)) {
                return true;
            }
            return false;
        }

        public UserInfo setDisplayName(String string2) {
            this.displayName = string2;
            return this;
        }

        public UserInfo setUserId(String string2) {
            this.userId = string2;
            return this;
        }

        public UserInfo setUserImg(String string2) {
            this.userImg = string2;
            return this;
        }

        public UserInfo setUsername(String string2) {
            this.username = string2;
            return this;
        }

        public String toString() {
            return "UserInfo{userId='" + this.userId + '\'' + ", displayName='" + this.displayName + '\'' + ", userImg='" + this.userImg + '\'' + ", username='" + this.username + '\'' + '}';
        }
    }

}

