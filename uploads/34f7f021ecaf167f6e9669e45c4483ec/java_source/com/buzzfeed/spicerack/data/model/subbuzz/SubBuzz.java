/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  org.json.JSONObject
 */
package com.buzzfeed.spicerack.data.model.subbuzz;

import android.text.TextUtils;
import com.buzzfeed.spicerack.data.factory.SpiceType;
import com.buzzfeed.spicerack.data.model.subbuzz.BreakingUpdateSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.CorrectionUpdateSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.EmbedSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.ImageGroupSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.ImageSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.LinkSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.TextSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.TweetSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.VideoSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.YoutubeSpice;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.ContentFactory;
import java.io.Serializable;
import java.util.List;
import java.util.Stack;
import org.json.JSONObject;

public class SubBuzz
implements Content,
TextSpice,
BreakingUpdateSpice,
CorrectionUpdateSpice,
EmbedSpice,
ImageGroupSpice,
ImageSpice,
TweetSpice,
VideoSpice,
YoutubeSpice,
LinkSpice {
    private static final String INSTAGRAM_EMBED_DOMAIN_BASE = "instagram.com/p/";
    private static final String YOUTUBE_QUALITY_REGEX = "\\d.jpg";
    String attribution;
    String code;
    String contentOrder;
    String description;
    String form;
    boolean hasGif;
    String header;
    String id;
    Images images;
    String link;
    TweetMetadata metadata;
    boolean mobileSafe;
    int number;
    String originalUrl;
    String published;
    long publishedUnix;
    ImageRow row;
    String source;
    String sourceId;
    String sourceType;
    String thumb;
    String updated;
    String url;

    @Override
    public String getAttribution() {
        return this.attribution;
    }

    @Override
    public String getCode() {
        return this.code;
    }

    public String getContentOrder() {
        return this.contentOrder;
    }

    @Override
    public String getDescription() {
        return this.description;
    }

    @Override
    public String getFlowId() {
        return this.id;
    }

    public String getForm() {
        return this.form;
    }

    @Override
    public String getHeader() {
        return this.header;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public Stack<Images.Image> getImageStack() {
        Stack<Images.Image> stack = new Stack<Images.Image>();
        if (this.images != null) {
            if (this.images.getOriginal() != null) {
                stack.add(this.images.getOriginal());
            }
            if (this.images.getStandard() != null) {
                stack.add(this.images.getStandard());
            }
            if (this.images.getMobile() != null) {
                stack.add(this.images.getMobile());
            }
        }
        return stack;
    }

    @Override
    public Images getImages() {
        return this.images;
    }

    @Override
    public String getLink() {
        return this.link;
    }

    @Override
    public TweetMetadata getMetadata() {
        return this.metadata;
    }

    public int getNumber() {
        return this.number;
    }

    @Override
    public String getOriginalUrl() {
        return this.originalUrl;
    }

    @Override
    public String getPublishedDate() {
        return this.published;
    }

    @Override
    public long getPublishedTimestamp() {
        return this.publishedUnix;
    }

    @Override
    public ImageRow getRow() {
        return this.row;
    }

    @Override
    public String getSource() {
        return this.source;
    }

    @Override
    public String getSourceId() {
        return this.sourceId;
    }

    @Override
    public String getSourceType() {
        return this.sourceType;
    }

    @Override
    public String getThumb() {
        return this.thumb;
    }

    @Override
    public String getUpdated() {
        return this.updated;
    }

    @Override
    public String getUrl() {
        return this.url;
    }

    @Override
    public Stack<String> getYoutubeThumbnailUrls() {
        String string2 = this.getThumb();
        Stack<String> stack = new Stack<String>();
        stack.add(string2);
        for (int i2 = 3; i2 >= 0; --i2) {
            stack.add(string2.replaceAll("\\d.jpg", "" + i2 + ".jpg"));
        }
        return stack;
    }

    @Override
    public boolean hasGif() {
        return this.hasGif;
    }

    @Override
    public boolean isInstagramEmbed() {
        if (this.getForm().equals(SpiceType.EMBED.getForm()) && !TextUtils.isEmpty((CharSequence)this.getUrl()) && this.getUrl().contains("instagram.com/p/")) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isMobileSafe() {
        return this.mobileSafe;
    }

    @Override
    public boolean isValid() {
        if (SpiceType.LINK.getForm().equals(this.form) && this.link == null) {
            return false;
        }
        return true;
    }

    @Override
    public boolean isYoutube() {
        return "youtube".equals(this.getSource());
    }

    @Override
    public void parse(JSONObject jSONObject, ContentFactory contentFactory) {
    }

    public static class ImageRow
    implements Serializable {
        int cells;
        List<ImageCollection> content;
        String heightName;
        String layout;
        boolean stacked;

        public int getCells() {
            return this.cells;
        }

        public List<ImageCollection> getContent() {
            return this.content;
        }

        public String getHeightName() {
            return this.heightName;
        }

        public String getLayout() {
            return this.layout;
        }

        public boolean isStacked() {
            return this.stacked;
        }

        public static class ImageCollection
        implements Serializable {
            String attribution;
            Crop crop;
            String description;
            Images images;

            public String getAttribution() {
                return this.attribution;
            }

            public Crop getCrop() {
                return this.crop;
            }

            public String getDescription() {
                return this.description;
            }

            public Images getImages() {
                return this.images;
            }

            public static class Crop
            implements Serializable {
                String cropHeight;
                String cropWidth;
                String cropX;
                String cropY;

                public String getCropHeight() {
                    return this.cropHeight;
                }

                public String getCropWidth() {
                    return this.cropWidth;
                }

                public String getCropX() {
                    return this.cropX;
                }

                public String getCropY() {
                    return this.cropY;
                }
            }

        }

    }

    public static class Images
    implements Serializable {
        Image gifPreview;
        Image mobile;
        Image mp4;
        Image original;
        Image standard;
        Image wide;

        public Image getGifPreview() {
            return this.gifPreview;
        }

        public Image getMobile() {
            return this.mobile;
        }

        public Image getMp4() {
            return this.mp4;
        }

        public Image getOriginal() {
            return this.original;
        }

        public Image getStandard() {
            return this.standard;
        }

        public Image getWide() {
            return this.wide;
        }

        public static class Image
        implements Serializable {
            int height;
            String url;
            int width;

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

    public static class TweetMetadata
    implements Serializable {
        TweetEntities entities;
        TweetResponse responseTo;
        Tweet tweet;

        public TweetEntities getEntities() {
            return this.entities;
        }

        public TweetResponse getResponseTo() {
            return this.responseTo;
        }

        public Tweet getTweet() {
            return this.tweet;
        }

        public static class Tweet
        implements Serializable {
            String createdAt;
            String fromUser;
            String fromUserIdStr;
            String fromUserName;
            String idStr;
            String inReplyToStatusIdStr;
            String profileImageUrl;
            String text;
            String toUser;
            String toUserIdStr;
            String toUserName;
            long utcOffset;

            public String getCreatedAt() {
                return this.createdAt;
            }

            public String getFromUser() {
                return this.fromUser;
            }

            public String getFromUserIdStr() {
                return this.fromUserIdStr;
            }

            public String getFromUserName() {
                return this.fromUserName;
            }

            public String getIdStr() {
                return this.idStr;
            }

            public String getInReplyToStatusIdStr() {
                return this.inReplyToStatusIdStr;
            }

            public String getProfileImageUrl() {
                return this.profileImageUrl;
            }

            public String getText() {
                return this.text;
            }

            public String getToUser() {
                return this.toUser;
            }

            public String getToUserIdStr() {
                return this.toUserIdStr;
            }

            public String getToUserName() {
                return this.toUserName;
            }

            public long getUtcOffset() {
                return this.utcOffset;
            }
        }

        public static class TweetEntities
        implements Serializable {
            List<String> hashTags;
            List<TweetUrl> urls;
            List<UserMention> userMentions;

            public List<String> getHashTags() {
                return this.hashTags;
            }

            public List<TweetUrl> getUrls() {
                return this.urls;
            }

            public List<UserMention> getUserMentions() {
                return this.userMentions;
            }

            public static class TweetUrl
            implements Serializable {
                String displayUrl;
                String expandedUrl;
                List<Integer> indices;
                String url;
            }

            public static class UserMention
            implements Serializable {
                String id;
                List<Integer> indices;
                String name;
                String screenName;

                public String getId() {
                    return this.id;
                }

                public List<Integer> getIndices() {
                    return this.indices;
                }

                public String getName() {
                    return this.name;
                }

                public String getScreenName() {
                    return this.screenName;
                }
            }

        }

        public static class TweetResponse
        implements Serializable {
            String createdAt;
            TweetEntities entities;
            String name;
            String profileImageUrl;
            String screenName;
            boolean show;
            String text;

            public String getCreatedAt() {
                return this.createdAt;
            }

            public TweetEntities getEntities() {
                return this.entities;
            }

            public String getName() {
                return this.name;
            }

            public String getProfileImageUrl() {
                return this.profileImageUrl;
            }

            public String getScreenName() {
                return this.screenName;
            }

            public String getText() {
                return this.text;
            }

            public boolean isShow() {
                return this.show;
            }
        }

    }

}

