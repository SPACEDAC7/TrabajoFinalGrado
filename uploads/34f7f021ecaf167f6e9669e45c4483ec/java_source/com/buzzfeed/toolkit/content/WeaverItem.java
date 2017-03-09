/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.gson.FieldNamingPolicy
 *  com.google.gson.Gson
 *  com.google.gson.GsonBuilder
 *  com.google.gson.JsonArray
 *  com.google.gson.JsonDeserializationContext
 *  com.google.gson.JsonDeserializer
 *  com.google.gson.JsonElement
 *  com.google.gson.JsonObject
 *  com.google.gson.JsonParseException
 *  com.google.gson.TypeAdapter
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.content;

import android.support.annotation.Nullable;
import com.buzzfeed.toolkit.content.AuthorContent;
import com.buzzfeed.toolkit.content.BreakingNewsContent;
import com.buzzfeed.toolkit.content.ContentFactory;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.content.ShowListContent;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.GsonUtils;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.StringUtils;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Stack;
import java.util.TimeZone;
import org.json.JSONObject;

public class WeaverItem
implements Cloneable,
VideoContent,
BreakingNewsContent,
PostContent,
ShowListContent,
PackageContent {
    private static final String TAG = LogUtil.makeLogTag(WeaverItem.class);
    private List<Author> authors;
    private String backgroundImageUrl;
    private String category;
    private boolean commentsEnabled;
    private String createdAt;
    private String dataSource;
    private String description;
    @SerializedName(value="_embedded")
    private WeaverEmbed embedded;
    private List<String> flags;
    private String id;
    private long isBookmarked;
    private List<Link> links;
    @SerializedName(value="items")
    @Nullable
    private List<WeaverItem> mPackageItems;
    private String name;
    private String sourceUri;
    private String sourceUriFormatted;
    private Stats stats;
    private List<String> tags;
    private String thumbnailUrl;
    private List<Thumbnail> thumbnails;
    private ArrayList<Treatment> treatments;
    private String type;
    private String updatedAt;
    private List<Video> videos;

    private WeaverItem() {
    }

    private String formatSourceUri() {
        if (!StringUtils.isEmpty(this.sourceUri) && this.sourceUri.startsWith("http")) {
            int n2 = this.sourceUri.indexOf(".com/");
            int n3 = ".com/".length();
            return this.sourceUri.substring(n2 + n3 - 1, this.sourceUri.length());
        }
        return this.sourceUri;
    }

    public static Gson getGson() {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES);
        gsonBuilder.registerTypeAdapter((Type)Thumbnail.class, (Object)new ThumbnailDeserializer());
        gsonBuilder.registerTypeAdapter(Boolean.TYPE, GsonUtils.safeBooleanAdapter);
        gsonBuilder.registerTypeAdapter((Type)Boolean.class, GsonUtils.safeBooleanAdapter);
        gsonBuilder.registerTypeAdapter(Long.TYPE, GsonUtils.safeLongAdapter);
        gsonBuilder.registerTypeAdapter((Type)Long.class, GsonUtils.safeLongAdapter);
        gsonBuilder.registerTypeAdapter(Integer.TYPE, GsonUtils.safeIntegerAdapter);
        gsonBuilder.registerTypeAdapter((Type)Integer.class, GsonUtils.safeIntegerAdapter);
        return gsonBuilder.create();
    }

    private Date parseTimestamp(String object) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        try {
            object = simpleDateFormat.parse((String)object);
            return object;
        }
        catch (ParseException var1_2) {
            return null;
        }
    }

    @Override
    public List<AuthorContent> getAuthorContents() {
        if (this.authors != null) {
            return new ArrayList<AuthorContent>(this.authors);
        }
        return new ArrayList<AuthorContent>();
    }

    @Override
    public String getAuthorDisplayName() {
        if (this.authors != null && !this.authors.isEmpty()) {
            return this.authors.get(0).getName();
        }
        return null;
    }

    @Override
    public String getAuthorId() {
        if (this.authors != null && !this.authors.isEmpty()) {
            return this.authors.get(0).getId();
        }
        return null;
    }

    @Override
    public String getAuthorUserPage() {
        List<Link> list;
        if (this.authors != null && !this.authors.isEmpty() && (list = this.authors.get(0).getLinks()) != null && !list.isEmpty()) {
            return list.get(0).getUrl();
        }
        return null;
    }

    @Override
    public String getBackgroundImageUrl() {
        return this.backgroundImageUrl;
    }

    @Override
    public String getCategory() {
        return this.category;
    }

    @Override
    public long getCreatedAt() {
        Date date = this.parseTimestamp(this.createdAt);
        if (date != null) {
            return date.getTime();
        }
        return 0;
    }

    @Override
    public String getDataSource() {
        return this.dataSource;
    }

    @Override
    public String getDescription() {
        return this.description;
    }

    @Override
    public Date getEditUpdated() {
        return this.getLastUpdated();
    }

    public List<String> getFlags() {
        return this.flags;
    }

    @Override
    public String getFlowId() {
        return this.id;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public Stack<String> getImageStack(float f2) {
        Stack<String> stack = new Stack<String>();
        if (this.thumbnails != null && !this.thumbnails.isEmpty()) {
            HashMap hashMap = this.thumbnails.get(0).sizes;
            if (hashMap.containsKey("small")) {
                stack.add((String)hashMap.get("small"));
            }
            if (hashMap.containsKey("standard")) {
                stack.add((String)hashMap.get("standard"));
            }
            if (hashMap.containsKey("big")) {
                stack.add((String)hashMap.get("big"));
            }
            if (hashMap.containsKey("dblbig")) {
                stack.add((String)hashMap.get("dblbig"));
            }
        }
        return stack;
    }

    @Override
    public Date getLastUpdated() {
        if (StringUtils.isEmpty(this.updatedAt)) {
            return null;
        }
        return this.parseTimestamp(this.updatedAt);
    }

    public List<Link> getLinks() {
        return this.links;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public String getNewsAlert() {
        return this.name;
    }

    @Override
    public List<WeaverItem> getPackageItems() {
        return this.mPackageItems;
    }

    @Override
    public Date getPublished() {
        return this.parseTimestamp(this.createdAt);
    }

    @Override
    public String getShareUrl() {
        String string2 = this.getSourceUri();
        if (string2 != null) {
            return string2;
        }
        String string3 = null;
        string2 = null;
        for (Link link : this.getLinks()) {
            if (link.getLinkText().equals("facebook")) {
                string3 = link.getUrl();
                continue;
            }
            if (!link.getLinkText().equals("youtube")) continue;
            string2 = link.getUrl();
        }
        if (string3 != null) {
            return string3;
        }
        if (string2 != null) {
            return string2;
        }
        return null;
    }

    @Nullable
    @Override
    public WeaverEmbed.Show getShow() {
        if (this.embedded == null || !this.embedded.hasShows()) {
            return null;
        }
        return this.embedded.getShows().get(0);
    }

    @Nullable
    @Override
    public String getSourceUri() {
        return this.sourceUri;
    }

    public Stats getStats() {
        return this.stats;
    }

    @Override
    public String getSubject() {
        return this.name;
    }

    public List<String> getTags() {
        return this.tags;
    }

    @Override
    public String getText() {
        return this.description;
    }

    @Override
    public Stack<String> getThumbnailStack() {
        Stack<String> stack = new Stack<String>();
        if (this.thumbnails != null && !this.thumbnails.isEmpty()) {
            HashMap hashMap = this.thumbnails.get(0).sizes;
            if (hashMap.containsKey("small")) {
                stack.add((String)hashMap.get("small"));
            }
            if (hashMap.containsKey("standard")) {
                stack.add((String)hashMap.get("standard"));
            }
            if (hashMap.containsKey("big")) {
                stack.add((String)hashMap.get("big"));
            }
        }
        return stack;
    }

    @Override
    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public List<Thumbnail> getThumbnails() {
        return this.thumbnails;
    }

    @Override
    public String getTitle() {
        return this.name;
    }

    public ArrayList<Treatment> getTreatments() {
        return this.treatments;
    }

    public String getType() {
        return this.type;
    }

    public Date getUpdatedAt() {
        if (this.updatedAt == null) {
            return null;
        }
        return this.parseTimestamp(this.updatedAt);
    }

    @Override
    public String getUri() {
        if (this.sourceUriFormatted == null || this.sourceUriFormatted.isEmpty()) {
            this.sourceUriFormatted = this.formatSourceUri();
        }
        return this.sourceUriFormatted;
    }

    @Override
    public String getUrl() {
        if (this.links != null && !this.links.isEmpty()) {
            return this.links.get(0).getUrl();
        }
        return null;
    }

    @Nullable
    @Override
    public List<Video> getVideos() {
        return this.videos;
    }

    @Override
    public long getViewCount() {
        if (this.getStats() != null) {
            return this.getStats().getImpressions();
        }
        return 0;
    }

    @Override
    public Stack<String> getWideStack() {
        Stack<String> stack = new Stack<String>();
        if (this.thumbnails != null && !this.thumbnails.isEmpty()) {
            HashMap hashMap = this.thumbnails.get(0).sizes;
            if (hashMap.containsKey("wide")) {
                stack.add((String)hashMap.get("wide"));
            }
            if (hashMap.containsKey("dblwide")) {
                stack.add((String)hashMap.get("dblwide"));
            }
        }
        return stack;
    }

    @Override
    public boolean hasEditUpdated() {
        if (this.updatedAt != null) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isAd() {
        return false;
    }

    @Override
    public boolean isAllowContributions() {
        return this.commentsEnabled;
    }

    @Override
    public boolean isBookmarked() {
        if (this.isBookmarked > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isBreaking() {
        return false;
    }

    @Override
    public boolean isCommentsEnabled() {
        return false;
    }

    @Override
    public boolean isReactionsEnabled() {
        return false;
    }

    @Override
    public boolean isTrendingVideo() {
        if (this.treatments != null && this.treatments.contains((Object)Treatment.TRENDING)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean isValid() {
        boolean bl = !EZUtil.isNull(this.id, this.type, this.name, this.createdAt);
        if ("video".equals(this.type)) {
            if (EZUtil.isNull(this.videos)) return false;
            if (!bl) return false;
            return true;
        }
        boolean bl2 = bl;
        if ("package".equals(this.type)) return bl2;
        bl2 = bl;
        if (!bl) return bl2;
        if (EZUtil.isNull(this.thumbnails, this.authors, this.sourceUri)) return false;
        return true;
    }

    @Override
    public void parse(JSONObject jSONObject, ContentFactory contentFactory) {
    }

    @Override
    public void setBookmarked(long l2) {
        this.isBookmarked = l2;
    }

    public static class Author
    implements AuthorContent,
    Serializable {
        private List<Thumbnail> avatars;
        private String id;
        private List<Link> links;
        private String name;
        private String page;
        private String username;

        @Override
        public String getAvatar() {
            if (this.avatars != null && !this.avatars.isEmpty()) {
                HashMap hashMap = this.avatars.get(0).sizes;
                if (hashMap.containsKey("standard")) {
                    return (String)hashMap.get("standard");
                }
                if (hashMap.containsKey("big")) {
                    return (String)hashMap.get("big");
                }
                if (hashMap.containsKey("small")) {
                    return (String)hashMap.get("small");
                }
                return (String)hashMap.keySet().iterator().next();
            }
            return "";
        }

        public List<Thumbnail> getAvatars() {
            return this.avatars;
        }

        @Override
        public String getDisplayName() {
            return this.name;
        }

        public String getId() {
            return this.id;
        }

        public List<Link> getLinks() {
            return this.links;
        }

        public String getName() {
            return this.name;
        }

        public String getPage() {
            return this.page;
        }

        @Override
        public String getTitle() {
            return null;
        }

        public String getUsername() {
            return this.username;
        }
    }

    public static class Link
    implements Serializable {
        private String linkText;
        private String url;

        public String getLinkText() {
            return this.linkText;
        }

        public String getUrl() {
            return this.url;
        }
    }

    public static class Stats
    implements Serializable {
        private long impressions;

        public long getImpressions() {
            return this.impressions;
        }
    }

    public static class Thumbnail
    implements Serializable {
        private HashMap<String, String> sizes = new HashMap();

        public HashMap<String, String> getSizes() {
            return this.sizes;
        }
    }

    private static class ThumbnailDeserializer
    implements JsonDeserializer<Thumbnail> {
        private ThumbnailDeserializer() {
        }

        public Thumbnail deserialize(JsonElement jsonElement, Type object, JsonDeserializationContext object2) throws JsonParseException {
            object = new Thumbnail();
            jsonElement = ((JsonObject)jsonElement).getAsJsonArray("sizes");
            for (int i2 = 0; i2 < jsonElement.size(); ++i2) {
                Object object3 = jsonElement.get(i2).getAsJsonObject();
                object2 = object3.get("url").getAsString();
                object3 = object3.get("size").getAsString();
                ((Thumbnail)object).sizes.put(object3, object2);
            }
            return object;
        }
    }

    public static enum Treatment {
        FEATURED,
        FEATURED_NEWS,
        QUIZ,
        TRENDING,
        BULLETED_LIST,
        BREAKING;
        

        private Treatment() {
        }
    }

    public static class Video
    implements Serializable {
        private String aspectRatio;
        private String coverImageUrl;
        private long duration;
        private List<Encoding> encodings;

        public String getAspectRatio() {
            return this.aspectRatio;
        }

        public String getCoverImageUrl() {
            return this.coverImageUrl;
        }

        public long getDuration() {
            return this.duration;
        }

        public List<Encoding> getEncodings() {
            return this.encodings;
        }

        public static class Encoding
        implements Serializable {
            String encoding;
            int height;
            String url;
            int width;

            public String getEncoding() {
                return this.encoding;
            }

            public int getHeight() {
                return this.height;
            }

            public String getUrl() {
                return this.url;
            }

            public int getWidth() {
                return this.width;
            }
        }

    }

}

