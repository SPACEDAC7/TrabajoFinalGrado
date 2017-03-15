/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.text.TextUtils
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.content;

import android.net.Uri;
import android.text.TextUtils;
import com.buzzfeed.toolkit.content.AdContent;
import com.buzzfeed.toolkit.content.AuthorContent;
import com.buzzfeed.toolkit.content.ContentFactory;
import com.buzzfeed.toolkit.content.Contributor;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.JSONUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Buzz
implements Cloneable,
PostContent,
AdContent {
    private static final String TAG = LogUtil.makeLogTag(Buzz.class);
    private static final long serialVersionUID = 0;
    private boolean allowContributions = true;
    private String badges;
    private String body;
    private long bookmarked = 0;
    private String bulletedDekHtml;
    private List<String> bulletedDeks;
    private String bylinePrefix;
    private String category;
    private ArrayList<Contributor> contributors;
    private String description;
    private Date editUpdated = new Date();
    private String flags;
    private String form;
    private String headerBlurb;
    private String headerName;
    protected String id;
    private String imageUrlBig;
    private String imageUrlDblBig;
    private String imageUrlDblWide;
    private String imageUrlSmall;
    private String imageUrlStandard;
    private String imageUrlWide;
    private int impressions;
    private boolean isAd = false;
    private boolean isInlineAd = false;
    private boolean isInternal = true;
    private String json;
    private String language;
    private Date lastUpdated = new Date();
    private String link;
    protected boolean mIsBackfill = false;
    private String metaVertical;
    private String name;
    private int numComments = 0;
    private String oid;
    private String ouserid;
    private PageType pageType;
    private String pageWidth;
    private String poundHash = null;
    private SplashColorScheme splashColorScheme;
    private SplashHeadlinePosition splashCornerPosition;
    private String splashTextSize;
    private String sponsorDisplayName;
    private String sponsorUserImageUrl;
    private String status;
    private List<FlowItem> subbuzzs;
    private String subtitle;
    private List<String> tags;
    private String thumbnail;
    private Date timestamp = new Date();
    private String title;
    private String trackUri;
    private String uri;
    private String utmTerm;
    private long viral;

    public static Buzz createBuzzFromId(String string2) {
        Buzz buzz = new Buzz();
        buzz.setId(string2);
        return buzz;
    }

    private boolean hasContributor(String string2) {
        for (int i2 = 0; i2 < this.contributors.size(); ++i2) {
            if (!this.contributors.get(i2).getId().equalsIgnoreCase(string2)) continue;
            return true;
        }
        return false;
    }

    private SplashHeadlinePosition parseHeadlinePosition(String string2) {
        if ("top left".equals(string2)) {
            return SplashHeadlinePosition.BottomLeft;
        }
        if ("top right".equals(string2)) {
            return SplashHeadlinePosition.BottomRight;
        }
        if ("bottom left".equals(string2)) {
            return SplashHeadlinePosition.BottomLeft;
        }
        return SplashHeadlinePosition.BottomRight;
    }

    private PageType parsePageType(String string2) {
        if ("list".equals(string2)) {
            return PageType.list;
        }
        if ("list_countdown".equals(string2)) {
            return PageType.listCountDown;
        }
        if ("list_countup".equals(string2)) {
            return PageType.listCountUp;
        }
        if ("article".equals(string2)) {
            return PageType.article;
        }
        if ("long".equals(string2)) {
            return PageType.longPost;
        }
        if ("breaking".equals(string2)) {
            return PageType.breaking;
        }
        return PageType.longPost;
    }

    private SplashColorScheme parseSplashColorScheme(String string2) {
        if ("light-text-on-dark-image".equals(string2)) {
            return SplashColorScheme.LightTextDarkImage;
        }
        if ("light-text-on-no-image".equals(string2)) {
            return SplashColorScheme.LightTextNoTransparency;
        }
        if ("dark-text-on-light-image".equals(string2)) {
            return SplashColorScheme.DarkTextLightImage;
        }
        if ("dark-text-on-no-image".equals(string2)) {
            return SplashColorScheme.DarkTextNoTransparency;
        }
        return SplashColorScheme.LightTextDarkImage;
    }

    private void parseUri(JSONObject jSONObject) {
        if (jSONObject.has("campaign_uri")) {
            this.setUri(JSONUtil.optString(jSONObject, "campaign_uri"));
            return;
        }
        if (jSONObject.has("username")) {
            this.setUri(new Uri.Builder().appendPath(JSONUtil.optString(jSONObject, "username")).appendPath(JSONUtil.optString(jSONObject, "uri")).build().toString());
            return;
        }
        this.setUri(JSONUtil.optString(jSONObject, "uri"));
    }

    private String spliceBrackets(String charSequence) {
        TAG + ".spliceBrackets";
        if (charSequence == null || charSequence.isEmpty()) {
            return null;
        }
        try {
            charSequence = new StringBuffer((String)charSequence);
            charSequence.deleteCharAt(0);
            charSequence.deleteCharAt(charSequence.length() - 1);
            charSequence = charSequence.toString();
            return charSequence;
        }
        catch (StringIndexOutOfBoundsException var1_2) {
            return null;
        }
    }

    public Buzz clone() {
        Buzz buzz = new Buzz();
        buzz.link = this.link;
        buzz.thumbnail = this.thumbnail;
        buzz.ouserid = this.ouserid;
        buzz.form = this.form;
        buzz.oid = this.oid;
        buzz.name = this.name;
        buzz.uri = this.uri;
        buzz.trackUri = this.trackUri;
        buzz.id = this.id;
        buzz.lastUpdated = this.lastUpdated;
        buzz.editUpdated = this.editUpdated;
        buzz.body = this.body;
        buzz.category = this.category;
        buzz.splashColorScheme = this.splashColorScheme;
        buzz.splashCornerPosition = this.splashCornerPosition;
        buzz.subtitle = this.subtitle;
        buzz.title = this.title;
        buzz.splashTextSize = this.splashTextSize;
        buzz.bookmarked = this.bookmarked;
        buzz.headerBlurb = this.headerBlurb;
        buzz.headerName = this.headerName;
        buzz.contributors = this.contributors;
        buzz.imageUrlSmall = this.imageUrlSmall;
        buzz.imageUrlStandard = this.imageUrlStandard;
        buzz.imageUrlBig = this.imageUrlBig;
        buzz.imageUrlWide = this.imageUrlWide;
        buzz.imageUrlDblBig = this.imageUrlDblBig;
        buzz.imageUrlDblWide = this.imageUrlDblWide;
        buzz.badges = this.badges;
        buzz.flags = this.flags;
        buzz.json = this.json;
        buzz.setTimestamp(this.timestamp);
        buzz.impressions = this.impressions;
        buzz.bylinePrefix = this.bylinePrefix;
        buzz.sponsorDisplayName = this.sponsorDisplayName;
        buzz.sponsorUserImageUrl = this.sponsorUserImageUrl;
        buzz.utmTerm = this.utmTerm;
        buzz.viral = this.viral;
        buzz.poundHash = this.poundHash;
        buzz.isAd = this.isAd;
        buzz.isInlineAd = this.isInlineAd;
        buzz.isInternal = this.isInternal;
        buzz.allowContributions = this.allowContributions;
        buzz.numComments = this.numComments;
        buzz.metaVertical = this.metaVertical;
        buzz.status = this.status;
        buzz.language = this.language;
        buzz.description = this.description;
        buzz.tags = this.tags;
        buzz.pageWidth = this.pageWidth;
        buzz.pageType = this.pageType;
        buzz.subbuzzs = this.subbuzzs;
        return buzz;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        boolean bl = true;
        boolean bl2 = false;
        if (this == object) {
            return true;
        }
        boolean bl3 = bl2;
        if (object == null) return bl3;
        bl3 = bl2;
        if (this.getClass() != object.getClass()) return bl3;
        object = (Buzz)object;
        bl3 = bl2;
        if (this.bookmarked != object.bookmarked) return bl3;
        bl3 = bl2;
        if (this.impressions != object.impressions) return bl3;
        bl3 = bl2;
        if (this.isInlineAd != object.isInlineAd) return bl3;
        bl3 = bl2;
        if (this.isAd != object.isAd) return bl3;
        bl3 = bl2;
        if (this.isInternal != object.isInternal) return bl3;
        bl3 = bl2;
        if (this.allowContributions != object.allowContributions) return bl3;
        if (this.link != null) {
            bl3 = bl2;
            if (!this.link.equals(object.link)) return bl3;
        } else if (object.link != null) {
            return false;
        }
        if (this.thumbnail != null) {
            bl3 = bl2;
            if (!this.thumbnail.equals(object.thumbnail)) return bl3;
        } else if (object.thumbnail != null) {
            return false;
        }
        if (this.ouserid != null) {
            bl3 = bl2;
            if (!this.ouserid.equals(object.ouserid)) return bl3;
        } else if (object.ouserid != null) {
            return false;
        }
        if (this.form != null) {
            bl3 = bl2;
            if (!this.form.equals(object.form)) return bl3;
        } else if (object.form != null) {
            return false;
        }
        if (this.oid != null) {
            bl3 = bl2;
            if (!this.oid.equals(object.oid)) return bl3;
        } else if (object.oid != null) {
            return false;
        }
        if (this.name != null) {
            bl3 = bl2;
            if (!this.name.equals(object.name)) return bl3;
        } else if (object.name != null) {
            return false;
        }
        if (this.uri != null) {
            bl3 = bl2;
            if (!this.uri.equals(object.uri)) return bl3;
        } else if (object.uri != null) {
            return false;
        }
        if (this.trackUri != null) {
            bl3 = bl2;
            if (!this.trackUri.equals(object.trackUri)) return bl3;
        } else if (object.trackUri != null) {
            return false;
        }
        if (this.id != null) {
            bl3 = bl2;
            if (!this.id.equals(object.id)) return bl3;
        } else if (object.id != null) {
            return false;
        }
        if (this.body != null) {
            bl3 = bl2;
            if (!this.body.equals(object.body)) return bl3;
        } else if (object.body != null) {
            return false;
        }
        if (this.category != null) {
            bl3 = bl2;
            if (!this.category.equals(object.category)) return bl3;
        } else if (object.category != null) {
            return false;
        }
        bl3 = bl2;
        if (this.splashColorScheme != object.splashColorScheme) return bl3;
        bl3 = bl2;
        if (this.splashCornerPosition != object.splashCornerPosition) return bl3;
        if (this.splashTextSize != null) {
            bl3 = bl2;
            if (!this.splashTextSize.equals(object.splashTextSize)) return bl3;
        } else if (object.splashTextSize != null) {
            return false;
        }
        if (this.subtitle != null) {
            bl3 = bl2;
            if (!this.subtitle.equals(object.subtitle)) return bl3;
        } else if (object.subtitle != null) {
            return false;
        }
        if (this.title != null) {
            bl3 = bl2;
            if (!this.title.equals(object.title)) return bl3;
        } else if (object.title != null) {
            return false;
        }
        if (this.headerBlurb != null) {
            bl3 = bl2;
            if (!this.headerBlurb.equals(object.headerBlurb)) return bl3;
        } else if (object.headerBlurb != null) {
            return false;
        }
        if (this.headerName != null) {
            bl3 = bl2;
            if (!this.headerName.equals(object.headerName)) return bl3;
        } else if (object.headerName != null) {
            return false;
        }
        if (this.bulletedDekHtml != null) {
            bl3 = bl2;
            if (!this.bulletedDekHtml.equals(object.bulletedDekHtml)) return bl3;
        } else if (object.bulletedDekHtml != null) {
            return false;
        }
        if (this.bulletedDeks != null) {
            bl3 = bl2;
            if (!this.bulletedDeks.equals(object.bulletedDeks)) return bl3;
        } else if (object.bulletedDeks != null) {
            return false;
        }
        if (this.contributors != null) {
            bl3 = bl2;
            if (!this.contributors.equals(object.contributors)) return bl3;
        } else if (object.contributors != null) {
            return false;
        }
        if (this.bylinePrefix != null) {
            bl3 = bl2;
            if (!this.bylinePrefix.equals(object.bylinePrefix)) return bl3;
        } else if (object.bylinePrefix != null) {
            return false;
        }
        if (this.sponsorUserImageUrl != null) {
            bl3 = bl2;
            if (!this.sponsorUserImageUrl.equals(object.sponsorUserImageUrl)) return bl3;
        } else if (object.sponsorUserImageUrl != null) {
            return false;
        }
        if (this.sponsorDisplayName != null) {
            bl3 = bl2;
            if (!this.sponsorDisplayName.equals(object.sponsorDisplayName)) return bl3;
        } else if (object.sponsorDisplayName != null) {
            return false;
        }
        if (this.utmTerm != null) {
            bl3 = bl2;
            if (!this.utmTerm.equals(object.utmTerm)) return bl3;
        } else if (object.utmTerm != null) {
            return false;
        }
        if (this.imageUrlSmall != null) {
            bl3 = bl2;
            if (!this.imageUrlSmall.equals(object.imageUrlSmall)) return bl3;
        } else if (object.imageUrlSmall != null) {
            return false;
        }
        if (this.imageUrlStandard != null) {
            bl3 = bl2;
            if (!this.imageUrlStandard.equals(object.imageUrlStandard)) return bl3;
        } else if (object.imageUrlStandard != null) {
            return false;
        }
        if (this.imageUrlBig != null) {
            bl3 = bl2;
            if (!this.imageUrlBig.equals(object.imageUrlBig)) return bl3;
        } else if (object.imageUrlBig != null) {
            return false;
        }
        if (this.imageUrlWide != null) {
            bl3 = bl2;
            if (!this.imageUrlWide.equals(object.imageUrlWide)) return bl3;
        } else if (object.imageUrlWide != null) {
            return false;
        }
        if (this.imageUrlDblBig != null) {
            bl3 = bl2;
            if (!this.imageUrlDblBig.equals(object.imageUrlDblBig)) return bl3;
        } else if (object.imageUrlDblBig != null) {
            return false;
        }
        if (this.imageUrlDblWide != null) {
            bl3 = bl2;
            if (!this.imageUrlDblWide.equals(object.imageUrlDblWide)) return bl3;
        } else if (object.imageUrlDblWide != null) {
            return false;
        }
        if (this.badges != null) {
            bl3 = bl2;
            if (!this.badges.equals(object.badges)) return bl3;
        } else if (object.badges != null) {
            return false;
        }
        if (this.flags != null) {
            bl3 = bl2;
            if (!this.flags.equals(object.flags)) return bl3;
        } else if (object.flags != null) {
            return false;
        }
        if (this.json != null) {
            bl3 = bl2;
            if (!this.json.equals(object.json)) return bl3;
        } else if (object.json != null) {
            return false;
        }
        if (this.poundHash != null) {
            bl3 = bl2;
            if (!this.poundHash.equals(object.poundHash)) return bl3;
        } else if (object.poundHash != null) {
            return false;
        }
        bl3 = bl2;
        if (this.numComments != object.numComments) return bl3;
        if (this.metaVertical != null) {
            bl3 = bl2;
            if (!this.metaVertical.equals(object.metaVertical)) return bl3;
        } else if (object.metaVertical != null) {
            return false;
        }
        if (this.status != null) {
            bl3 = bl2;
            if (!this.status.equals(object.status)) return bl3;
        } else if (object.status != null) {
            return false;
        }
        if (this.language != null) {
            bl3 = bl2;
            if (!this.language.equals(object.language)) return bl3;
        } else if (object.language != null) {
            return false;
        }
        if (this.description != null) {
            bl3 = bl2;
            if (!this.description.equals(object.description)) return bl3;
        } else if (object.description != null) {
            return false;
        }
        if (this.tags != null) {
            bl3 = bl2;
            if (!this.tags.equals(object.tags)) return bl3;
        } else if (object.tags != null) {
            return false;
        }
        if (this.pageWidth != null) {
            bl3 = bl2;
            if (!this.pageWidth.equals(object.pageWidth)) return bl3;
        } else if (object.pageWidth != null) {
            return false;
        }
        if (this.pageType != null) {
            bl3 = bl2;
            if (!this.pageType.equals((Object)object.pageType)) return bl3;
        } else if (object.pageType != null) {
            return false;
        }
        if (this.subbuzzs == null) {
            if (object.subbuzzs != null) return false;
            return bl;
        }
        bl3 = bl;
        if (this.subbuzzs.equals(object.subbuzzs)) return bl3;
        return false;
    }

    @Override
    public List<AuthorContent> getAuthorContents() {
        return new ArrayList<AuthorContent>(this.contributors);
    }

    @Override
    public String getAuthorDisplayName() {
        if (this.getContributors() != null && !this.getContributors().isEmpty()) {
            return this.getContributors().get(0).getDisplayName();
        }
        return null;
    }

    @Override
    public String getAuthorId() {
        if (this.getContributors() != null && !this.getContributors().isEmpty()) {
            return this.getContributors().get(0).getId();
        }
        return null;
    }

    @Override
    public String getAuthorUserPage() {
        if (this.getContributors() != null && !this.getContributors().isEmpty()) {
            return this.getContributors().get(0).getUserPage();
        }
        return null;
    }

    public String getBadges() {
        return this.badges;
    }

    public String getBlurb() {
        return this.description;
    }

    public String getBody() {
        return this.body;
    }

    public long getBookmarked() {
        return this.bookmarked;
    }

    public String getBulletedDekHtml() {
        return this.bulletedDekHtml;
    }

    public List<String> getBulletedDeks() {
        return this.bulletedDeks;
    }

    @Override
    public String getBylinePrefix() {
        return this.bylinePrefix;
    }

    @Override
    public String getCategory() {
        return this.category;
    }

    public ArrayList<Contributor> getContributors() {
        return this.contributors;
    }

    @Override
    public String getDataSource() {
        return null;
    }

    @Override
    public String getDescription() {
        return this.description;
    }

    @Override
    public Date getEditUpdated() {
        return this.editUpdated;
    }

    public String getFlags() {
        return this.flags;
    }

    @Override
    public String getFlowId() {
        return this.id;
    }

    public String getForm() {
        return this.form;
    }

    public String getHeaderBlurb() {
        return this.headerBlurb;
    }

    public String getHeaderName() {
        return this.headerName;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public Stack<String> getImageStack(float f2) {
        Stack<String> stack = this.getThumbnailStack();
        if (this.getImageUrlDblBig() != null && f2 >= 320.0f) {
            stack.add(this.getImageUrlDblBig());
        }
        return stack;
    }

    public String getImageUrlBig() {
        return this.imageUrlBig;
    }

    public String getImageUrlDblBig() {
        return this.imageUrlDblBig;
    }

    public String getImageUrlDblWide() {
        return this.imageUrlDblWide;
    }

    public String getImageUrlSmall() {
        return this.imageUrlSmall;
    }

    public String getImageUrlStandard() {
        return this.imageUrlStandard;
    }

    public String getImageUrlWide() {
        return this.imageUrlWide;
    }

    public int getImpressions() {
        return this.impressions;
    }

    public String getJson() {
        return this.json;
    }

    public String getLanguage() {
        return this.language;
    }

    @Override
    public Date getLastUpdated() {
        return this.lastUpdated;
    }

    public String getLink() {
        return this.link;
    }

    public String getName() {
        return this.name;
    }

    public int getNumComments() {
        return this.numComments;
    }

    public String getOid() {
        return this.oid;
    }

    public String getOuserid() {
        return this.ouserid;
    }

    public PageType getPageType() {
        return this.pageType;
    }

    public String getPageWidth() {
        return this.pageWidth;
    }

    public String getParentUri() {
        if (this.uri != null) {
            int n2 = this.uri.lastIndexOf("/");
            return this.uri.substring(n2 + 1);
        }
        return null;
    }

    public String getParentUriUser() {
        if (this.uri != null) {
            int n2 = this.uri.lastIndexOf("/");
            return this.uri.substring(1, n2);
        }
        return null;
    }

    public SplashHeadlinePosition getPosition() {
        return this.splashCornerPosition;
    }

    public String getPoundHash() {
        return this.poundHash;
    }

    @Override
    public Date getPublished() {
        if (this.timestamp == null) {
            return new Date(0);
        }
        return this.timestamp;
    }

    @Override
    public String getShareUrl() {
        return this.getUri();
    }

    public SplashColorScheme getSplashColorSchemer() {
        return this.splashColorScheme;
    }

    @Override
    public String getSponsorDisplayName() {
        return this.sponsorDisplayName;
    }

    @Override
    public String getSponsorUserImageUrl() {
        return this.sponsorUserImageUrl;
    }

    public String getStatus() {
        return this.status;
    }

    public List<FlowItem> getSubbuzzs() {
        return this.subbuzzs;
    }

    @Override
    public String getSubject() {
        return this.getName();
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    public List<String> getTags() {
        return this.tags;
    }

    @Override
    public String getText() {
        return this.getName();
    }

    public String getThumbnail() {
        return this.thumbnail;
    }

    @Override
    public Stack<String> getThumbnailStack() {
        Stack<String> stack = new Stack<String>();
        if (this.getImageUrlSmall() != null) {
            stack.add(this.getImageUrlSmall());
        }
        if (this.getImageUrlStandard() != null) {
            stack.add(this.getImageUrlStandard());
        }
        if (this.getImageUrlBig() != null) {
            stack.add(this.getImageUrlBig());
        }
        return stack;
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    @Override
    public String getTitle() {
        return this.name;
    }

    public String getTrackUri() {
        return this.trackUri;
    }

    public Stack<String> getTrendingStack() {
        Stack<String> stack = new Stack<String>();
        if (this.getImageUrlDblBig() != null) {
            stack.add(this.getImageUrlDblBig());
        }
        return stack;
    }

    @Override
    public String getUri() {
        return this.uri;
    }

    public String getUtmTerm() {
        return this.utmTerm;
    }

    @Override
    public long getViewCount() {
        return this.impressions;
    }

    public long getViral() {
        return this.viral;
    }

    @Override
    public Stack<String> getWideStack() {
        Stack<String> stack = new Stack<String>();
        if (this.getImageUrlWide() != null) {
            stack.add(this.getImageUrlWide());
        }
        if (this.getImageUrlDblWide() != null && UIUtil.getScreenDensityDpi() >= 320.0f) {
            stack.add(this.getImageUrlDblWide());
        }
        return stack;
    }

    public boolean hasBulletedDek() {
        if (this.bulletedDekHtml != null) {
            return true;
        }
        return false;
    }

    @Override
    public boolean hasEditUpdated() {
        if (this.editUpdated != null && this.editUpdated.getTime() > 0) {
            return true;
        }
        return false;
    }

    public boolean hasLastUpdated() {
        if (this.lastUpdated != null && this.lastUpdated.getTime() > 0) {
            return true;
        }
        return false;
    }

    public boolean hasLightBackground() {
        if (this.splashColorScheme == SplashColorScheme.DarkTextLightImage || this.splashColorScheme == SplashColorScheme.DarkTextNoTransparency) {
            return true;
        }
        return false;
    }

    public boolean hasSplashSemiTransparentBackground() {
        if (this.splashColorScheme == SplashColorScheme.DarkTextLightImage || this.splashColorScheme == SplashColorScheme.LightTextDarkImage) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int hashCode() {
        int n2 = 1;
        int n3 = 0;
        int n4 = this.link != null ? this.link.hashCode() : 0;
        int n5 = this.thumbnail != null ? this.thumbnail.hashCode() : 0;
        int n6 = this.ouserid != null ? this.ouserid.hashCode() : 0;
        int n7 = this.form != null ? this.form.hashCode() : 0;
        int n8 = this.oid != null ? this.oid.hashCode() : 0;
        int n9 = this.name != null ? this.name.hashCode() : 0;
        int n10 = this.uri != null ? this.uri.hashCode() : 0;
        int n11 = this.trackUri != null ? this.trackUri.hashCode() : 0;
        int n12 = this.id != null ? this.id.hashCode() : 0;
        int n13 = this.body != null ? this.body.hashCode() : 0;
        int n14 = this.category != null ? this.category.hashCode() : 0;
        int n15 = this.splashColorScheme != null ? this.splashColorScheme.hashCode() : 0;
        int n16 = this.splashCornerPosition != null ? this.splashCornerPosition.hashCode() : 0;
        int n17 = this.splashTextSize != null ? this.splashTextSize.hashCode() : 0;
        int n18 = this.subtitle != null ? this.subtitle.hashCode() : 0;
        int n19 = this.title != null ? this.title.hashCode() : 0;
        int n20 = (int)(this.bookmarked ^ this.bookmarked >>> 32);
        int n21 = this.headerBlurb != null ? this.headerBlurb.hashCode() : 0;
        int n22 = this.headerName != null ? this.headerName.hashCode() : 0;
        int n23 = this.bulletedDekHtml != null ? this.bulletedDekHtml.hashCode() : 0;
        int n24 = this.bulletedDeks != null ? this.bulletedDeks.hashCode() : 0;
        int n25 = this.contributors != null ? this.contributors.hashCode() : 0;
        int n26 = this.impressions;
        int n27 = this.bylinePrefix != null ? this.bylinePrefix.hashCode() : 0;
        int n28 = this.sponsorUserImageUrl != null ? this.sponsorUserImageUrl.hashCode() : 0;
        int n29 = this.sponsorDisplayName != null ? this.sponsorDisplayName.hashCode() : 0;
        int n30 = this.utmTerm != null ? this.utmTerm.hashCode() : 0;
        int n31 = this.imageUrlSmall != null ? this.imageUrlSmall.hashCode() : 0;
        int n32 = this.imageUrlStandard != null ? this.imageUrlStandard.hashCode() : 0;
        int n33 = this.imageUrlBig != null ? this.imageUrlBig.hashCode() : 0;
        int n34 = this.imageUrlWide != null ? this.imageUrlWide.hashCode() : 0;
        int n35 = this.imageUrlDblBig != null ? this.imageUrlDblBig.hashCode() : 0;
        int n36 = this.imageUrlDblWide != null ? this.imageUrlDblWide.hashCode() : 0;
        int n37 = this.badges != null ? this.badges.hashCode() : 0;
        int n38 = this.flags != null ? this.flags.hashCode() : 0;
        int n39 = this.json != null ? this.json.hashCode() : 0;
        int n40 = this.isInlineAd ? 1 : 0;
        int n41 = this.isAd ? 1 : 0;
        int n42 = this.isInternal ? 1 : 0;
        if (!this.allowContributions) {
            n2 = 0;
        }
        int n43 = this.poundHash != null ? this.poundHash.hashCode() : 0;
        int n44 = this.metaVertical != null ? this.metaVertical.hashCode() : 0;
        int n45 = this.status != null ? this.status.hashCode() : 0;
        int n46 = this.language != null ? this.language.hashCode() : 0;
        int n47 = this.description != null ? this.description.hashCode() : 0;
        int n48 = this.tags != null ? this.tags.hashCode() : 0;
        int n49 = this.pageWidth != null ? this.pageWidth.hashCode() : 0;
        int n50 = this.pageType != null ? this.pageType.hashCode() : 0;
        if (this.subbuzzs != null) {
            n3 = this.subbuzzs.hashCode();
        }
        return ((((((((((((((((((((((((((((((((((((((((((((((((n4 * 31 + n5) * 31 + n6) * 31 + n7) * 31 + n8) * 31 + n9) * 31 + n10) * 31 + n11) * 31 + n12) * 31 + n13) * 31 + n14) * 31 + n15) * 31 + n16) * 31 + n17) * 31 + n18) * 31 + n19) * 31 + n20) * 31 + n21) * 31 + n22) * 31 + n23) * 31 + n24) * 31 + n25) * 31 + n26) * 31 + n27) * 31 + n28) * 31 + n29) * 31 + n30) * 31 + n31) * 31 + n32) * 31 + n33) * 31 + n34) * 31 + n35) * 31 + n36) * 31 + n37) * 31 + n38) * 31 + n39) * 31 + n40) * 31 + n41) * 31 + n42) * 31 + n2) * 31 + n43) * 31 + n44) * 31 + n45) * 31 + n46) * 31 + n47) * 31 + n48) * 31 + n49) * 31 + n50) * 31 + n3) * 31 + (this.numComments ^ this.numComments >>> 32);
    }

    @Override
    public boolean isAd() {
        return this.isAd;
    }

    @Override
    public boolean isAllowContributions() {
        return this.allowContributions;
    }

    @Override
    public boolean isBackfillAd() {
        return this.mIsBackfill;
    }

    @Override
    public boolean isBookmarked() {
        if (this.bookmarked > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isBreaking() {
        return "breaking".equals((Object)this.pageType);
    }

    @Override
    public boolean isCommentsEnabled() {
        return false;
    }

    public boolean isInlineAd() {
        return this.isInlineAd;
    }

    public boolean isInternal() {
        return this.isInternal;
    }

    @Override
    public boolean isReactionsEnabled() {
        return false;
    }

    @Override
    public boolean isValid() {
        if (!(TextUtils.isEmpty((CharSequence)this.getId()) || TextUtils.isEmpty((CharSequence)this.getName()) || this.getDescription() == null || this.getDescription().isEmpty() || this.getThumbnail() == null && this.getImageUrlSmall() == null && this.getImageUrlStandard() == null && this.getImageUrlBig() == null && this.getImageUrlWide() == null && this.getImageUrlDblBig() == null && this.getImageUrlDblWide() == null || (!this.isInternal() || this.getUri() == null || this.getUri().isEmpty()) && (this.isInternal() || this.getLink() == null || this.getLink().isEmpty()))) {
            return true;
        }
        return false;
    }

    public void parse(String string2) throws JSONException {
        this.parse(new JSONObject(string2));
    }

    public void parse(String string2, ContentFactory contentFactory) throws JSONException {
        this.parse(new JSONObject(string2), contentFactory);
    }

    public void parse(JSONObject jSONObject) {
        this.parse(jSONObject, null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void parse(JSONObject jSONObject, ContentFactory contentFactory) {
        Object object;
        Object object2;
        Object object3;
        long l2;
        Object object4;
        int n2;
        int n3;
        if (jSONObject.has("id") && !jSONObject.isNull("id")) {
            this.setId(JSONUtil.optString(jSONObject, "id"));
        } else if (jSONObject.has("campaignid") && !jSONObject.isNull("campaignid")) {
            this.setId(JSONUtil.optString(jSONObject, "campaignid"));
        } else if (jSONObject.has("buzz_id") && !jSONObject.isNull("buzz_id")) {
            this.setId(JSONUtil.optString(jSONObject, "buzz_id"));
        }
        if ((object4 = jSONObject.optJSONArray("badges")) != null) {
            this.setBadges(this.spliceBrackets(object4.toString()));
        }
        this.setFlags(this.spliceBrackets(JSONUtil.optString(jSONObject, "flags")));
        this.setName(JSONUtil.optString(jSONObject, "name"));
        if (this.getName() == null || this.getName().length() == 0) {
            this.setName(JSONUtil.optString(jSONObject, "title"));
        }
        this.thumbnail = JSONUtil.optString(jSONObject, "thumbnail");
        this.parseUri(jSONObject);
        if (jSONObject.has("allow_contributions")) {
            boolean bl = 1 == jSONObject.optInt("allow_contributions");
            this.setAllowContributions(bl);
        }
        this.timestamp = new Date(0);
        if (jSONObject.has("published_unix")) {
            try {
                this.setTimestamp(JSONUtil.optDate(jSONObject, "published_unix"));
            }
            catch (NumberFormatException var3_5) {}
        }
        if (jSONObject.has("published") && this.timestamp.getTime() == 0) {
            try {
                this.setTimestamp(JSONUtil.optDate(jSONObject, "published"));
            }
            catch (NumberFormatException var3_4) {}
        }
        if (jSONObject.has("viral")) {
            this.setViral(jSONObject.optLong("viral"));
        }
        this.setForm(JSONUtil.optString(jSONObject, "form"));
        if (jSONObject.has("link")) {
            this.setLink(JSONUtil.optString(jSONObject, "link"));
            if (this.getUri() == null) {
                this.isInternal = false;
            }
        }
        this.setLastUpdated(JSONUtil.optDate(jSONObject, "last_updated"));
        this.setEditUpdated(JSONUtil.optDate(jSONObject, "edit_updated"));
        if (jSONObject.has("promotions") && (object4 = jSONObject.optJSONObject("promotions")).has("extra_fields")) {
            object = object4.optJSONObject("extra_fields");
            this.setSplashPosition(this.parseHeadlinePosition(object.optString("position")));
            object3 = object.optString("size");
            n3 = 28;
            try {
                n3 = n2 = Integer.parseInt((String)object3);
            }
            catch (Exception var5_9) {}
            this.setSplashTextSize(String.valueOf(n3));
            this.setSplashColorScheme(this.parseSplashColorScheme(object.optString("color")));
            object3 = object.optString("title");
            if (object3 != null && object3.length() > 0) {
                this.setTitle((String)object3);
            } else {
                this.setTitle(object4.optString("title"));
            }
            if (object.has("label")) {
                this.setSubtitle(object.optJSONObject("label").optString("value"));
            }
        }
        this.contributors = new ArrayList();
        if (jSONObject.has("bylines") && (object4 = jSONObject.optJSONArray("bylines")) != null) {
            for (n3 = 0; n3 < object4.length(); ++n3) {
                object = object4.optJSONObject(n3);
                object3 = new Contributor();
                object3.setId(object.optString("id"));
                object3.setDisplayName(JSONUtil.optString((JSONObject)object, "display_name"));
                object3.setFacebook(JSONUtil.optString((JSONObject)object, "facebook_page_url"));
                object2 = new JSONObject();
                object2.add((String)JSONUtil.optString((JSONObject)object, "avatar"));
                object3.setUserImages((Stack<String>)object2);
                object3.setUserPage("/" + JSONUtil.optString((JSONObject)object, "username"));
                object3.setBylineDesc(JSONUtil.optString((JSONObject)object, "title"));
                this.contributors.add((Contributor)object3);
            }
        }
        if (jSONObject.has("header")) {
            object4 = jSONObject.optJSONObject("header");
            this.setHeaderBlurb(object4.optString("blurb"));
            this.setHeaderName(object4.optString("name"));
            if (this.getHeaderName() == null || this.getHeaderName().length() == 0) {
                this.setHeaderName(object4.optString("title"));
                if (this.getName() == null || this.getName().length() == 0) {
                    this.setName(object4.optString("title"));
                }
            }
            if (object4.has("users") && (object = object4.optJSONArray("users")) != null) {
                n2 = object.length();
                for (n3 = 0; n3 < n2; ++n3) {
                    object2 = object.optJSONObject(n3);
                    if (object2 == null) continue;
                    object3 = new Contributor();
                    Object object5 = object2.optString("user_id");
                    if (this.hasContributor((String)object5)) continue;
                    object3.setId((String)object5);
                    object3.setUserPage(object2.optString("user_page"));
                    object3.setBylineDesc(object2.optString("byline_desc"));
                    object3.setDisplayName(object2.optString("display_name"));
                    if (!TextUtils.isEmpty((CharSequence)object3.getDisplayName()) && object3.getDisplayName().equals("BuzzFeed Promotions")) {
                        this.mIsBackfill = true;
                    }
                    object2 = object2.optString("user_image");
                    object5 = new Stack();
                    object5.add(object2);
                    if (!object2.contains("_large.jpg")) {
                        object5.add(object2.replace(".jpg", "_large.jpg"));
                    }
                    object3.setUserImages((Stack<String>)object5);
                    this.contributors.add((Contributor)object3);
                }
            }
            if (object4.has("special_blurb") && (object4 = object4.optJSONObject("special_blurb")) != null && object4.has("type") && (object = object4.optString("type")) != null && object.equalsIgnoreCase("bulleted_list") && object4.has("value")) {
                if ((object4 = object4.optJSONObject("value")) != null) {
                    this.bulletedDekHtml = object4.optString("bullets");
                }
                this.setBulletedDeks(BulletedDekParser.getBulletedDek(this.bulletedDekHtml));
            }
        }
        if (jSONObject.has("images")) {
            object4 = jSONObject.optJSONObject("images");
            this.imageUrlSmall = object4.optString("small");
            this.imageUrlStandard = object4.optString("standard");
            this.imageUrlBig = object4.optString("big");
            this.imageUrlWide = object4.optString("wide");
            this.imageUrlDblBig = object4.optString("dblbig");
            this.imageUrlDblWide = object4.optString("dblwide");
        } else {
            object4 = this.getThumbnail();
            if (object4 != null) {
                this.imageUrlStandard = object4;
                n3 = object4.lastIndexOf(".");
                object = object4.substring(n3);
                this.imageUrlBig = object4.substring(0, n3) + "_big" + (String)object;
                this.imageUrlDblBig = object4.substring(0, n3) + "_dblbig" + (String)object;
            }
        }
        if (jSONObject.has("category")) {
            this.setCategory(JSONUtil.optString(jSONObject, "category"));
        }
        if ((object4 = JSONUtil.optString(jSONObject, "category_name")) != null && !object4.equals("VerticalFeature")) {
            this.setCategory((String)object4);
        }
        if (this.getCategory() != null && this.getCategory().equalsIgnoreCase("Breaking")) {
            this.setAllowContributions(false);
        }
        if (this.getCategory() != null && this.getCategory().equalsIgnoreCase("Advertiser")) {
            this.setIsAd(true);
        }
        if ((l2 = jSONObject.optLong("date_added") * 1000) > 0) {
            this.setBookmarked(l2);
        }
        jSONObject.remove("date_added");
        this.setJson(jSONObject.toString());
        if (jSONObject.has("impressions")) {
            this.setImpressions(jSONObject.optInt("impressions"));
        }
        if (jSONObject.has("utm_term")) {
            this.utmTerm = JSONUtil.optString(jSONObject, "utm_term");
        }
        this.setNumComments(jSONObject.optInt("comments_count"));
        object4 = JSONUtil.optString(jSONObject, "byline_prefix");
        if (!TextUtils.isEmpty((CharSequence)object4)) {
            this.setBylinePrefix((String)object4);
        }
        this.parseSponsorNameAndImageUrl(jSONObject);
        this.metaVertical = JSONUtil.optString(jSONObject, "metavertical");
        this.status = JSONUtil.optString(jSONObject, "status");
        this.language = JSONUtil.optString(jSONObject, "language");
        this.description = JSONUtil.optString(jSONObject, "description");
        if (TextUtils.isEmpty((CharSequence)this.description)) {
            this.description = JSONUtil.optString(jSONObject, "blurb");
        }
        if (jSONObject.has("format") && (object4 = jSONObject.optJSONObject("format")) != null) {
            this.pageWidth = object4.optString("page_width");
            this.pageType = this.parsePageType(object4.optString("page_type"));
        }
        if (jSONObject.has("tags") && (object4 = jSONObject.optJSONArray("tags")) != null) {
            this.tags = new ArrayList<String>();
            for (n3 = 0; n3 < object4.length(); ++n3) {
                this.tags.add(object4.optString(n3));
            }
        }
        if (jSONObject.has("sub_buzzes") && contentFactory != null && (jSONObject = jSONObject.optJSONArray("sub_buzzes")) != null) {
            this.subbuzzs = new ArrayList<FlowItem>();
            n3 = 0;
            while (n3 < jSONObject.length()) {
                object4 = new FlowItem();
                object4.parse(jSONObject.optJSONObject(n3), contentFactory);
                this.subbuzzs.add((FlowItem)object4);
                ++n3;
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void parseSponsorNameAndImageUrl(JSONObject object) {
        String string2 = JSONUtil.optString((JSONObject)object, "display_name");
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            this.setSponsorDisplayName(string2);
        } else {
            string2 = JSONUtil.optString((JSONObject)object, "username");
            if (!TextUtils.isEmpty((CharSequence)string2)) {
                this.setSponsorDisplayName(string2);
            }
        }
        if (!TextUtils.isEmpty((CharSequence)(string2 = JSONUtil.optString((JSONObject)object, "user_image")))) {
            this.sponsorUserImageUrl = string2;
        }
        if (!TextUtils.isEmpty((CharSequence)(object = JSONUtil.optString((JSONObject)object, "byline_prefix")))) {
            this.bylinePrefix = object;
        }
    }

    public Buzz setAllowContributions(boolean bl) {
        this.allowContributions = bl;
        return this;
    }

    public Buzz setBadges(String string2) {
        this.badges = string2;
        return this;
    }

    public Buzz setBody(String string2) {
        this.body = string2;
        return this;
    }

    @Override
    public void setBookmarked(long l2) {
        this.bookmarked = l2;
    }

    public void setBulletedDeks(List<String> list) {
        this.bulletedDeks = list;
    }

    public void setBylinePrefix(String string2) {
        this.bylinePrefix = string2;
    }

    public Buzz setCategory(String string2) {
        this.category = string2;
        return this;
    }

    public void setContributors(ArrayList<Contributor> arrayList) {
        this.contributors = arrayList;
    }

    public Buzz setDescription(String string2) {
        this.description = string2;
        return this;
    }

    public Buzz setEditUpdated(Date date) {
        this.editUpdated = date;
        return this;
    }

    public Buzz setFlags(String string2) {
        this.flags = string2;
        return this;
    }

    public Buzz setForm(String string2) {
        this.form = string2;
        return this;
    }

    public void setHeaderBlurb(String string2) {
        this.headerBlurb = string2;
    }

    public void setHeaderName(String string2) {
        this.headerName = string2;
    }

    public Buzz setId(String string2) {
        this.id = string2;
        return this;
    }

    public void setImageUrlBig(String string2) {
        this.imageUrlBig = string2;
    }

    public void setImageUrlDblBig(String string2) {
        this.imageUrlDblBig = string2;
    }

    public void setImageUrlDblWide(String string2) {
        this.imageUrlDblWide = string2;
    }

    public void setImageUrlSmall(String string2) {
        this.imageUrlSmall = string2;
    }

    public void setImageUrlStandard(String string2) {
        this.imageUrlStandard = string2;
    }

    public void setImageUrlWide(String string2) {
        this.imageUrlWide = string2;
    }

    public void setImpressions(int n2) {
        this.impressions = n2;
    }

    protected Buzz setInlineAd(boolean bl) {
        this.isInlineAd = bl;
        return this;
    }

    public Buzz setIsAd(boolean bl) {
        this.isAd = bl;
        return this;
    }

    public Buzz setJson(String string2) {
        this.json = string2;
        return this;
    }

    public void setLanguage(String string2) {
        this.language = string2;
    }

    public Buzz setLastUpdated(Date date) {
        this.lastUpdated = date;
        return this;
    }

    public Buzz setLink(String string2) {
        this.link = string2;
        return this;
    }

    public Buzz setName(String string2) {
        this.name = string2;
        return this;
    }

    public Buzz setNumComments(int n2) {
        this.numComments = n2;
        return this;
    }

    public Buzz setOid(String string2) {
        this.oid = string2;
        return this;
    }

    public Buzz setOuserid(String string2) {
        this.ouserid = string2;
        return this;
    }

    public void setPageType(PageType pageType) {
        this.pageType = pageType;
    }

    public void setPageWidth(String string2) {
        this.pageWidth = string2;
    }

    public Buzz setPoundHash(String string2) {
        this.poundHash = string2;
        return this;
    }

    public Buzz setSplashColorScheme(SplashColorScheme splashColorScheme) {
        this.splashColorScheme = splashColorScheme;
        return this;
    }

    public Buzz setSplashColorScheme(String string2) {
        this.splashColorScheme = this.parseSplashColorScheme(string2);
        return this;
    }

    public Buzz setSplashPosition(SplashHeadlinePosition splashHeadlinePosition) {
        this.splashCornerPosition = splashHeadlinePosition;
        return this;
    }

    public Buzz setSplashPosition(String string2) {
        this.splashCornerPosition = this.parseHeadlinePosition(string2);
        return this;
    }

    public Buzz setSplashTextSize(String string2) {
        this.splashTextSize = string2;
        return this;
    }

    public String setSplashTextSize() {
        return this.splashTextSize;
    }

    public void setSponsorDisplayName(String string2) {
        this.sponsorDisplayName = string2;
    }

    public void setSponsorUserImageUrl(String string2) {
        this.sponsorUserImageUrl = string2;
    }

    public void setStatus(String string2) {
        this.status = string2;
    }

    public void setSubbuzzs(List<FlowItem> list) {
        this.subbuzzs = list;
    }

    public Buzz setSubtitle(String string2) {
        this.subtitle = string2;
        return this;
    }

    public void setTags(List<String> list) {
        this.tags = list;
    }

    public Buzz setThumbnail(String string2) {
        this.thumbnail = string2;
        return this;
    }

    public Buzz setTimestamp(Date date) {
        this.timestamp = date;
        return this;
    }

    public Buzz setTitle(String string2) {
        this.title = string2;
        return this;
    }

    public Buzz setTrackUri(String string2) {
        this.trackUri = string2;
        return this;
    }

    public Buzz setUri(String string2) {
        this.uri = string2;
        return this;
    }

    public void setUtmTerm(String string2) {
        this.utmTerm = string2;
    }

    public void setViral(long l2) {
        this.viral = l2;
    }

    public String toString() {
        return "Buzz{link='" + this.link + '\'' + ", thumbnail='" + this.thumbnail + '\'' + ", ouserid='" + this.ouserid + '\'' + ", form='" + this.form + '\'' + ", oid='" + this.oid + '\'' + ", name='" + this.name + '\'' + ", uri='" + this.uri + '\'' + ", trackUri='" + this.trackUri + '\'' + ", id='" + this.id + '\'' + ", lastUpdated='" + this.lastUpdated + '\'' + ", editUpdated='" + this.editUpdated + '\'' + ", body='" + this.body + '\'' + ", category='" + this.category + '\'' + ", splashColorScheme=" + (Object)((Object)this.splashColorScheme) + ", splashCornerPosition=" + (Object)((Object)this.splashCornerPosition) + ", splashTextSize='" + this.splashTextSize + '\'' + ", subtitle='" + this.subtitle + '\'' + ", title='" + this.title + '\'' + ", bookmarked=" + this.bookmarked + ", headerBlurb='" + this.headerBlurb + '\'' + ", headerName='" + this.headerName + '\'' + ", bulletedDekHtml='" + this.bulletedDekHtml + '\'' + ", bulletedDeks=" + this.bulletedDeks + ", contributors=" + this.contributors + ", impressions=" + this.impressions + ", bylinePrefix='" + this.bylinePrefix + '\'' + ", sponsorUserImageUrl='" + this.sponsorUserImageUrl + '\'' + ", sponsorDisplayName='" + this.sponsorDisplayName + '\'' + ", utmTerm='" + this.utmTerm + '\'' + ", imageUrlSmall='" + this.imageUrlSmall + '\'' + ", imageUrlStandard='" + this.imageUrlStandard + '\'' + ", imageUrlBig='" + this.imageUrlBig + '\'' + ", imageUrlWide='" + this.imageUrlWide + '\'' + ", imageUrlDblBig='" + this.imageUrlDblBig + '\'' + ", imageUrlDblWide='" + this.imageUrlDblWide + '\'' + ", badges='" + this.badges + '\'' + ", flags='" + this.flags + '\'' + ", json='" + this.json + '\'' + ", isInlineAd=" + this.isInlineAd + ", isAdvertiser=" + this.isAd + ", isInternal=" + this.isInternal + ", allowContributions=" + this.allowContributions + ", timestamp=" + this.timestamp + ", poundHash='" + this.poundHash + '\'' + ", numComments='" + this.numComments + '\'' + ", metaVertical='" + this.metaVertical + '\'' + ", status='" + this.status + '\'' + ", language='" + this.language + '\'' + ", description='" + this.description + '\'' + ", tags=" + this.tags + ", pageWidth='" + this.pageWidth + '\'' + ", pageType='" + (Object)((Object)this.pageType) + '\'' + ", subbuzzs=" + this.subbuzzs + '}';
    }

    private static class BulletedDekParser {
        private static final String EMPTY = "";
        private static final String LIST_ITEM_MATCH = "<li>(.+?)</li>";
        private static final Pattern LIST_ITEM_PATTERN = Pattern.compile("<li>(.+?)</li>");
        private static final String REMOVE_TAG_MATCH = "<[^>]*>";

        private BulletedDekParser() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public static List<String> getBulletedDek(String object) {
            ArrayList<String> arrayList = new ArrayList<String>();
            if (object != null && object.length() != 0) {
                object = LIST_ITEM_PATTERN.matcher((CharSequence)object);
                while (object.find()) {
                    arrayList.add(object.group(1).replaceAll("<[^>]*>", ""));
                }
            }
            return arrayList;
        }
    }

    public static enum PageType {
        list,
        listCountUp,
        listCountDown,
        article,
        longPost,
        breaking;
        

        private PageType() {
        }
    }

    public static enum SplashColorScheme {
        LightTextDarkImage,
        DarkTextLightImage,
        LightTextNoTransparency,
        DarkTextNoTransparency;
        

        private SplashColorScheme() {
        }
    }

    public static enum SplashHeadlinePosition {
        TopLeft,
        TopRight,
        BottomLeft,
        BottomRight;
        

        private SplashHeadlinePosition() {
        }
    }

}

