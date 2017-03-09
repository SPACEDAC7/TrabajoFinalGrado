/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.gson.FieldNamingPolicy
 *  com.google.gson.Gson
 *  com.google.gson.GsonBuilder
 *  com.google.gson.TypeAdapter
 *  org.json.JSONObject
 */
package com.buzzfeed.spicerack.data.model.subbuzz;

import com.buzzfeed.spicerack.data.model.subbuzz.Byline;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;
import com.buzzfeed.toolkit.content.AuthorContent;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.ContentFactory;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.GsonUtils;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.TypeAdapter;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Stack;
import org.json.JSONObject;

public class SpiceItem
implements Content,
PostContent {
    private static final String TAG = LogUtil.makeLogTag(SpiceItem.class);
    List<Byline> bylines;
    String category;
    String categoryId;
    String commentStats;
    String countryCode;
    String description;
    String disclaimerBottom;
    String disclaimerTop;
    long editUpdated;
    Flags flags;
    Format format;
    String id;
    Images images;
    long impressions;
    boolean isBookmarked;
    String language;
    long lastUpdated;
    String loginType;
    long published;
    String publishedDate;
    String shortDescription;
    String status;
    List<SubBuzz> subBuzzes;
    List<String> tags;
    String title;
    String uri;
    String userId;
    String username;

    public static SpiceItem fromJson(String string2) {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.registerTypeAdapter((Type)Boolean.class, GsonUtils.safeBooleanAdapter);
        gsonBuilder.registerTypeAdapter(Boolean.TYPE, GsonUtils.safeBooleanAdapter);
        gsonBuilder.registerTypeAdapter(Long.TYPE, GsonUtils.safeLongAdapter);
        gsonBuilder.registerTypeAdapter((Type)Long.class, GsonUtils.safeLongAdapter);
        gsonBuilder.registerTypeAdapter(Integer.TYPE, GsonUtils.safeIntegerAdapter);
        gsonBuilder.registerTypeAdapter((Type)Integer.class, GsonUtils.safeIntegerAdapter);
        gsonBuilder.setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES);
        return (SpiceItem)gsonBuilder.create().fromJson(string2, (Class)SpiceItem.class);
    }

    @Override
    public List<AuthorContent> getAuthorContents() {
        return new ArrayList<AuthorContent>(this.bylines);
    }

    @Override
    public String getAuthorDisplayName() {
        if (this.bylines != null && !this.bylines.isEmpty()) {
            return "/" + this.bylines.get(0).getDisplayName();
        }
        return null;
    }

    @Override
    public String getAuthorId() {
        if (this.bylines != null && !this.bylines.isEmpty()) {
            return this.bylines.get(0).getId();
        }
        return null;
    }

    @Override
    public String getAuthorUserPage() {
        if (this.bylines != null && !this.bylines.isEmpty()) {
            return "/" + this.bylines.get(0).getUsername();
        }
        return null;
    }

    public List<Byline> getBylines() {
        return this.bylines;
    }

    @Override
    public String getCategory() {
        return this.category;
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public String getCommentStats() {
        return this.commentStats;
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    @Override
    public String getDataSource() {
        return null;
    }

    @Override
    public String getDescription() {
        return this.description;
    }

    public String getDisclaimerBottom() {
        return this.disclaimerBottom;
    }

    public String getDisclaimerTop() {
        return this.disclaimerTop;
    }

    @Override
    public Date getEditUpdated() {
        return new Date(this.editUpdated * 1000);
    }

    public Flags getFlags() {
        return this.flags;
    }

    @Override
    public String getFlowId() {
        return this.id;
    }

    public Format getFormat() {
        return this.format;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public Stack<String> getImageStack(float f2) {
        Stack<String> stack = new Stack<String>();
        if (this.images.getStandard() != null) {
            stack.add(this.images.getStandard());
        }
        if (this.images.getBig() != null) {
            stack.add(this.images.getBig());
        }
        if (this.images.getDblbig() != null) {
            stack.add(this.images.getDblbig());
        }
        return stack;
    }

    public Images getImages() {
        return this.images;
    }

    public long getImpressions() {
        return this.impressions;
    }

    public String getLanguage() {
        return this.language;
    }

    @Override
    public Date getLastUpdated() {
        return new Date(this.lastUpdated * 1000);
    }

    public String getLoginType() {
        return this.loginType;
    }

    @Override
    public Date getPublished() {
        return new Date(this.published * 1000);
    }

    @Override
    public String getShareUrl() {
        return this.getUri();
    }

    public String getShortDescription() {
        return this.shortDescription;
    }

    public String getStatus() {
        return this.status;
    }

    public List<SubBuzz> getSubBuzzes() {
        return this.subBuzzes;
    }

    @Override
    public String getSubject() {
        return this.title;
    }

    public List<String> getTags() {
        return this.tags;
    }

    @Override
    public String getText() {
        return this.getDescription();
    }

    @Override
    public Stack<String> getThumbnailStack() {
        Stack<String> stack = new Stack<String>();
        if (this.images.getSmall() != null) {
            stack.add(this.images.getSmall());
        }
        if (this.images.getStandard() != null) {
            stack.add(this.images.getStandard());
        }
        return stack;
    }

    @Override
    public String getTitle() {
        return this.title;
    }

    @Override
    public String getUri() {
        return "/" + this.username + "/" + this.uri;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUsername() {
        return this.username;
    }

    @Override
    public long getViewCount() {
        return this.impressions;
    }

    @Override
    public Stack<String> getWideStack() {
        Stack<String> stack = new Stack<String>();
        if (this.images.getWide() != null) {
            stack.add(this.images.getWide());
        }
        if (this.images.getDblwide() != null) {
            stack.add(this.images.getDblwide());
        }
        return stack;
    }

    @Override
    public boolean hasEditUpdated() {
        if (this.editUpdated > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isAd() {
        return "Advertiser".equals(this.category);
    }

    @Override
    public boolean isAllowContributions() {
        return true;
    }

    @Override
    public boolean isBookmarked() {
        return this.isBookmarked;
    }

    @Override
    public boolean isBreaking() {
        if (this.format != null && "breaking".equals(this.format.pageType)) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isCommentsEnabled() {
        if (this.flags != null) {
            return this.flags.getCommentsEnabled();
        }
        return false;
    }

    @Override
    public boolean isReactionsEnabled() {
        if (this.flags != null) {
            return this.flags.getReactionsEnabled();
        }
        return false;
    }

    @Override
    public boolean isValid() {
        return true;
    }

    @Override
    public void parse(JSONObject jSONObject, ContentFactory contentFactory) {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setBookmarked(long l2) {
        boolean bl = l2 > 0;
        this.isBookmarked = bl;
    }

    public static class Flags
    implements Serializable {
        String ad;
        String brandSafe;
        boolean commentsEnabled;
        String mobileSafe;
        String nsfw;
        String partner;
        String raw;
        boolean reactionsEnabled;

        public String getAd() {
            return this.ad;
        }

        public String getBrandSafe() {
            return this.brandSafe;
        }

        public boolean getCommentsEnabled() {
            return this.commentsEnabled;
        }

        public String getMobileSafe() {
            return this.mobileSafe;
        }

        public String getNsfw() {
            return this.nsfw;
        }

        public String getPartner() {
            return this.partner;
        }

        public String getRaw() {
            return this.raw;
        }

        public boolean getReactionsEnabled() {
            return this.reactionsEnabled;
        }
    }

    public static class Format
    implements Serializable {
        String pageType;
        String pageWidth;

        public String getPageType() {
            return this.pageType;
        }

        public String getPageWidth() {
            return this.pageWidth;
        }
    }

    public static class Images
    implements Serializable {
        String big;
        String dblbig;
        String dblwide;
        String small;
        String standard;
        String wide;

        public String getBig() {
            return this.big;
        }

        public String getDblbig() {
            return this.dblbig;
        }

        public String getDblwide() {
            return this.dblwide;
        }

        public String getSmall() {
            return this.small;
        }

        public String getStandard() {
            return this.standard;
        }

        public String getWide() {
            return this.wide;
        }
    }

}

