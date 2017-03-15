/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.text.TextUtils
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.android.data;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.buzzfeed.android.data.FlowItem;
import com.buzzfeed.android.util.BulletedDekParser;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.toolkit.util.LogUtil;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
public class Buzz
implements Serializable,
Cloneable,
Comparable<Buzz>,
FlowItem.Content {
    private static final String HTTP_REGEXP = "^https?://";
    private static final String IMAGE_CONVERSION_FORMAT = "webp";
    private static final String IMAGE_CONVERSION_FORMAT_PARAM = "output-format";
    private static final String IMAGE_CONVERSION_OUTPUT_QAULITY = "88";
    private static final String IMAGE_CONVERSION_OUTPUT_QAULITY_PARAM = "output-quality";
    private static final String LAST_UPDATED_DEFAULT = "0";
    private static final String TAG = Buzz.class.getSimpleName();
    private static final String VIEW_BUZZ_URI_ID = "viewBuzzUri";
    private static final Pattern httpPattern = Pattern.compile("^https?://");
    private static final long serialVersionUID = 155273390532513252L;
    private boolean allowContributions = true;
    private String badges;
    private String blurb;
    private String body;
    private long bookmarked;
    private String bulletedDekHtml;
    private List<String> bulletedDeks;
    protected String buzzId;
    private String bylinePrefix;
    private String category;
    private ArrayList<Contributor> contributors;
    private String flags;
    private String form;
    private String formattedTimestamp = null;
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
    private String lastUpdated;
    private String link;
    private Context mContext;
    private String name;
    private int numComments = 0;
    private String oid;
    private String ouserid;
    private String poundHash = null;
    private SplashColorScheme splashColorScheme;
    private SplashHeadlinePosition splashCornerPosition;
    private String splashTextSize;
    private String sponsorDisplayName;
    private String sponsorUserImageUrl;
    private String subtitle;
    private String thumbnail;
    private long timestamp;
    private String title;
    private String trackUri;
    private String uri;
    private String utmTerm;

    public Buzz(Context context) {
        this.mContext = context.getApplicationContext();
        this.setLastUpdated(String.valueOf(System.currentTimeMillis()));
        this.bookmarked = 0;
        this.timestamp = System.currentTimeMillis();
        this.formattedTimestamp = "";
    }

    private void formatTimestamp() {
        this.formattedTimestamp = this.getFormattedTimestamp(2131296535, this.timestamp);
    }

    private String getFormattedTimestamp(int n2, long l2) {
        Object object = new SimpleDateFormat("MMM. d, yyyy");
        Object object2 = new SimpleDateFormat("hh:mm aaa");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l2);
        object = object.format(calendar.getTime());
        object2 = object2.format(calendar.getTime());
        return String.format(this.mContext.getString(n2), object, object2);
    }

    private String getImageConversionUrl(String string2) {
        String string3 = string2;
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            string2 = Uri.parse((String)string2).buildUpon();
            string2.appendQueryParameter("output-format", "webp");
            string2.appendQueryParameter("output-quality", "88");
            string3 = string2.build().toString();
        }
        return string3;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String getPoundFromUrl(Uri object) {
        String string2;
        if (!TextUtils.isEmpty((CharSequence)object.getFragment())) {
            return object.getFragment();
        }
        if (TextUtils.isEmpty((CharSequence)object.getQuery())) return null;
        object = string2 = object.getQueryParameter("utm_term");
        if (!TextUtils.isEmpty((CharSequence)string2)) return object;
        return null;
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

    private String spliceBrackets(String charSequence) {
        String string2 = TAG + ".spliceBrackets";
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
            LogUtil.e(string2, "failed to splice string. too short.", var1_2);
            return null;
        }
    }

    public Buzz clone(Context object) {
        object = new Buzz((Context)object);
        object.link = this.link;
        object.blurb = this.blurb;
        object.thumbnail = this.thumbnail;
        object.ouserid = this.ouserid;
        object.form = this.form;
        object.oid = this.oid;
        object.name = this.name;
        object.uri = this.uri;
        object.trackUri = this.trackUri;
        object.id = this.id;
        object.buzzId = this.buzzId;
        object.lastUpdated = this.lastUpdated;
        object.body = this.body;
        object.category = this.category;
        object.splashColorScheme = this.splashColorScheme;
        object.splashCornerPosition = this.splashCornerPosition;
        object.subtitle = this.subtitle;
        object.title = this.title;
        object.splashTextSize = this.splashTextSize;
        object.bookmarked = this.bookmarked;
        object.headerBlurb = this.headerBlurb;
        object.headerName = this.headerName;
        object.contributors = this.contributors;
        object.imageUrlSmall = this.imageUrlSmall;
        object.imageUrlStandard = this.imageUrlStandard;
        object.imageUrlBig = this.imageUrlBig;
        object.imageUrlWide = this.imageUrlWide;
        object.imageUrlDblBig = this.imageUrlDblBig;
        object.imageUrlDblWide = this.imageUrlDblWide;
        object.badges = this.badges;
        object.flags = this.flags;
        object.json = this.json;
        object.setTimestamp(this.timestamp);
        object.impressions = this.impressions;
        object.bylinePrefix = this.bylinePrefix;
        object.sponsorDisplayName = this.sponsorDisplayName;
        object.sponsorUserImageUrl = this.sponsorUserImageUrl;
        object.utmTerm = this.utmTerm;
        object.poundHash = this.poundHash;
        object.isAd = this.isAd;
        object.isInlineAd = this.isInlineAd;
        object.isInternal = this.isInternal;
        object.allowContributions = this.allowContributions;
        object.numComments = this.numComments;
        return object;
    }

    @Override
    public int compareTo(Buzz buzz) {
        return this.getId().compareTo(buzz.getId());
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null) return false;
        if (this.getClass() != object.getClass()) {
            return false;
        }
        object = (Buzz)object;
        if (this.allowContributions != object.allowContributions) {
            return false;
        }
        if (this.bookmarked != object.bookmarked) {
            return false;
        }
        if (this.impressions != object.impressions) {
            return false;
        }
        if (this.bylinePrefix != null) {
            if (!this.bylinePrefix.equals(object.bylinePrefix)) {
                return false;
            }
        } else if (object.bylinePrefix != null) return false;
        if (this.isAd != object.isAd) {
            return false;
        }
        if (this.isInlineAd != object.isInlineAd) {
            return false;
        }
        if (this.isInternal != object.isInternal) {
            return false;
        }
        if (this.timestamp != object.timestamp) {
            return false;
        }
        if (this.badges != null) {
            if (!this.badges.equals(object.badges)) {
                return false;
            }
        } else if (object.badges != null) return false;
        if (this.blurb != null) {
            if (!this.blurb.equals(object.blurb)) {
                return false;
            }
        } else if (object.blurb != null) return false;
        if (this.body != null) {
            if (!this.body.equals(object.body)) {
                return false;
            }
        } else if (object.body != null) return false;
        if (this.buzzId != null) {
            if (!this.buzzId.equals(object.buzzId)) {
                return false;
            }
        } else if (object.buzzId != null) return false;
        if (this.category != null) {
            if (!this.category.equals(object.category)) {
                return false;
            }
        } else if (object.category != null) return false;
        if (this.splashColorScheme != null) {
            if (!this.splashColorScheme.equals((Object)object.splashColorScheme)) {
                return false;
            }
        } else if (object.splashColorScheme != null) return false;
        if (this.contributors != null) {
            if (!this.contributors.equals(object.contributors)) {
                return false;
            }
        } else if (object.contributors != null) return false;
        if (this.flags != null) {
            if (!this.flags.equals(object.flags)) {
                return false;
            }
        } else if (object.flags != null) return false;
        if (this.form != null) {
            if (!this.form.equals(object.form)) {
                return false;
            }
        } else if (object.form != null) return false;
        if (this.formattedTimestamp != null) {
            if (!this.formattedTimestamp.equals(object.formattedTimestamp)) {
                return false;
            }
        } else if (object.formattedTimestamp != null) return false;
        if (this.headerBlurb != null) {
            if (!this.headerBlurb.equals(object.headerBlurb)) {
                return false;
            }
        } else if (object.headerBlurb != null) return false;
        if (this.headerName != null) {
            if (!this.headerName.equals(object.headerName)) {
                return false;
            }
        } else if (object.headerName != null) return false;
        if (this.sponsorDisplayName != null) {
            if (!this.sponsorDisplayName.equals(object.sponsorDisplayName)) {
                return false;
            }
        } else if (object.sponsorDisplayName != null) return false;
        if (this.sponsorUserImageUrl != null) {
            if (!this.sponsorUserImageUrl.equals(object.sponsorUserImageUrl)) {
                return false;
            }
        } else if (object.sponsorUserImageUrl != null) return false;
        if (this.id != null) {
            if (!this.id.equals(object.id)) {
                return false;
            }
        } else if (object.id != null) return false;
        if (this.imageUrlBig != null) {
            if (!this.imageUrlBig.equals(object.imageUrlBig)) {
                return false;
            }
        } else if (object.imageUrlBig != null) return false;
        if (this.imageUrlDblBig != null) {
            if (!this.imageUrlDblBig.equals(object.imageUrlDblBig)) {
                return false;
            }
        } else if (object.imageUrlDblBig != null) return false;
        if (this.imageUrlDblWide != null) {
            if (!this.imageUrlDblWide.equals(object.imageUrlDblWide)) {
                return false;
            }
        } else if (object.imageUrlDblWide != null) return false;
        if (this.imageUrlSmall != null) {
            if (!this.imageUrlSmall.equals(object.imageUrlSmall)) {
                return false;
            }
        } else if (object.imageUrlSmall != null) return false;
        if (this.imageUrlStandard != null) {
            if (!this.imageUrlStandard.equals(object.imageUrlStandard)) {
                return false;
            }
        } else if (object.imageUrlStandard != null) return false;
        if (this.imageUrlWide != null) {
            if (!this.imageUrlWide.equals(object.imageUrlWide)) {
                return false;
            }
        } else if (object.imageUrlWide != null) return false;
        if (this.json != null) {
            if (!this.json.equals(object.json)) {
                return false;
            }
        } else if (object.json != null) return false;
        if (this.lastUpdated != null) {
            if (!this.lastUpdated.equals(object.lastUpdated)) {
                return false;
            }
        } else if (object.lastUpdated != null) return false;
        if (this.link != null) {
            if (!this.link.equals(object.link)) {
                return false;
            }
        } else if (object.link != null) return false;
        if (this.name != null) {
            if (!this.name.equals(object.name)) {
                return false;
            }
        } else if (object.name != null) return false;
        if (this.oid != null) {
            if (!this.oid.equals(object.oid)) {
                return false;
            }
        } else if (object.oid != null) return false;
        if (this.ouserid != null) {
            if (!this.ouserid.equals(object.ouserid)) {
                return false;
            }
        } else if (object.ouserid != null) return false;
        if (this.splashCornerPosition != null) {
            if (!this.splashCornerPosition.equals((Object)object.splashCornerPosition)) {
                return false;
            }
        } else if (object.splashCornerPosition != null) return false;
        if (this.poundHash != null) {
            if (!this.poundHash.equals(object.poundHash)) {
                return false;
            }
        } else if (object.poundHash != null) return false;
        if (this.splashTextSize != null) {
            if (!this.splashTextSize.equals(object.splashTextSize)) {
                return false;
            }
        } else if (object.splashTextSize != null) return false;
        if (this.subtitle != null) {
            if (!this.subtitle.equals(object.subtitle)) {
                return false;
            }
        } else if (object.subtitle != null) return false;
        if (this.thumbnail != null) {
            if (!this.thumbnail.equals(object.thumbnail)) {
                return false;
            }
        } else if (object.thumbnail != null) return false;
        if (this.title != null) {
            if (!this.title.equals(object.title)) {
                return false;
            }
        } else if (object.title != null) return false;
        if (this.trackUri != null) {
            if (!this.trackUri.equals(object.trackUri)) {
                return false;
            }
        } else if (object.trackUri != null) return false;
        if (this.uri != null) {
            if (!this.uri.equals(object.uri)) {
                return false;
            }
        } else if (object.uri != null) return false;
        if (this.utmTerm != null) {
            if (!this.utmTerm.equals(object.utmTerm)) {
                return false;
            }
        } else if (object.utmTerm != null) return false;
        if (this.numComments == object.numComments) return true;
        return false;
    }

    public JSONObject generateJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.buzzId != null) {
                jSONObject.put("id", (Object)this.buzzId);
            }
            if (this.name != null) {
                jSONObject.put("name", (Object)this.name);
            }
            if (this.blurb != null) {
                jSONObject.put("blurb", (Object)this.blurb);
            }
            if (this.thumbnail != null) {
                jSONObject.put("thumbnail", (Object)this.thumbnail);
            }
            if (this.uri != null) {
                jSONObject.put("uri", (Object)this.uri);
            }
            if (this.link != null) {
                jSONObject.put("link", (Object)this.link);
            }
            if (this.lastUpdated != null) {
                jSONObject.put("lastUpdated", (Object)this.lastUpdated);
            }
            if (this.category != null) {
                jSONObject.put("category", (Object)this.category);
            }
            return jSONObject;
        }
        catch (JSONException var1_2) {
            LogUtil.e(TAG, "Error trying to generate JSON from Buzz", (Throwable)var1_2);
            return null;
        }
    }

    public String getBadges() {
        return this.badges;
    }

    public String getBlurb() {
        return this.blurb;
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

    public String getBuzzId() {
        return this.buzzId;
    }

    public String getBylinePrefix() {
        return this.bylinePrefix;
    }

    public String getCategory() {
        return this.category;
    }

    public ArrayList<Contributor> getContributors() {
        return this.contributors;
    }

    public String getFlags() {
        return this.flags;
    }

    public String getForm() {
        return this.form;
    }

    public String getFormattedTimestamp() {
        return this.formattedTimestamp;
    }

    public String getGATrackUri() {
        return BuzzUtils.removeCacheBuster(this.uri);
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

    public String getImageUrlBig() {
        return this.getImageConversionUrl(this.imageUrlBig);
    }

    public String getImageUrlDblBig() {
        return this.getImageConversionUrl(this.imageUrlDblBig);
    }

    public String getImageUrlDblWide() {
        return this.getImageConversionUrl(this.imageUrlDblWide);
    }

    public String getImageUrlSmall() {
        return this.getImageConversionUrl(this.imageUrlSmall);
    }

    public String getImageUrlStandard() {
        return this.getImageConversionUrl(this.imageUrlStandard);
    }

    public String getImageUrlWide() {
        return this.getImageConversionUrl(this.imageUrlWide);
    }

    public int getImpressions() {
        return this.impressions;
    }

    public String getJson() {
        return this.json;
    }

    public String getLastUpdated() {
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

    public SplashColorScheme getSplashColorSchemer() {
        return this.splashColorScheme;
    }

    public String getSponsorDisplayName() {
        return this.sponsorDisplayName;
    }

    public String getSponsorUserImageUrl() {
        return this.getImageConversionUrl(this.sponsorUserImageUrl);
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    public String getThumbnail() {
        return this.getImageConversionUrl(this.thumbnail);
    }

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

    public long getTimestamp() {
        return this.timestamp;
    }

    public String getTitle() {
        return this.title;
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

    public String getTruncatedBlurb() {
        if (this.blurb.length() > 80) {
            return this.blurb.substring(0, 80) + "...";
        }
        return this.blurb;
    }

    public String getUri() {
        return this.uri;
    }

    public String getUtmTerm() {
        return this.utmTerm;
    }

    public boolean hasBulletedDek() {
        if (this.bulletedDekHtml != null) {
            return true;
        }
        return false;
    }

    public boolean hasBuzzId() {
        if (this.id != null && !this.id.equals("viewBuzzUri")) {
            return true;
        }
        return false;
    }

    public boolean hasLastUpdated() {
        if (this.lastUpdated != null && !this.lastUpdated.equals("0")) {
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
    @Override
    public int hashCode() {
        int n2 = 1;
        int n3 = 0;
        int n4 = this.link != null ? this.link.hashCode() : 0;
        int n5 = this.blurb != null ? this.blurb.hashCode() : 0;
        int n6 = this.thumbnail != null ? this.thumbnail.hashCode() : 0;
        int n7 = this.ouserid != null ? this.ouserid.hashCode() : 0;
        int n8 = this.form != null ? this.form.hashCode() : 0;
        int n9 = this.oid != null ? this.oid.hashCode() : 0;
        int n10 = this.name != null ? this.name.hashCode() : 0;
        int n11 = this.uri != null ? this.uri.hashCode() : 0;
        int n12 = this.trackUri != null ? this.trackUri.hashCode() : 0;
        int n13 = this.id != null ? this.id.hashCode() : 0;
        int n14 = this.buzzId != null ? this.buzzId.hashCode() : 0;
        int n15 = this.lastUpdated != null ? this.lastUpdated.hashCode() : 0;
        int n16 = this.body != null ? this.body.hashCode() : 0;
        int n17 = this.category != null ? this.category.hashCode() : 0;
        int n18 = this.splashColorScheme != null ? this.splashColorScheme.hashCode() : 0;
        int n19 = this.splashCornerPosition != null ? this.splashCornerPosition.hashCode() : 0;
        int n20 = this.subtitle != null ? this.subtitle.hashCode() : 0;
        int n21 = this.title != null ? this.title.hashCode() : 0;
        int n22 = this.splashTextSize != null ? this.splashTextSize.hashCode() : 0;
        int n23 = (int)(this.bookmarked ^ this.bookmarked >>> 32);
        int n24 = this.headerBlurb != null ? this.headerBlurb.hashCode() : 0;
        int n25 = this.headerName != null ? this.headerName.hashCode() : 0;
        int n26 = this.contributors != null ? this.contributors.hashCode() : 0;
        int n27 = this.impressions;
        int n28 = this.bylinePrefix != null ? this.bylinePrefix.hashCode() : 0;
        int n29 = this.sponsorDisplayName != null ? this.sponsorDisplayName.hashCode() : 0;
        int n30 = this.sponsorUserImageUrl != null ? this.sponsorUserImageUrl.hashCode() : 0;
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
        int n43 = (int)(this.timestamp ^ this.timestamp >>> 32);
        int n44 = this.formattedTimestamp != null ? this.formattedTimestamp.hashCode() : 0;
        int n45 = this.poundHash != null ? this.poundHash.hashCode() : 0;
        if (this.utmTerm != null) {
            n3 = this.utmTerm.hashCode();
        }
        return (((((((((((((((((((((((((((((((((((((((((((n4 * 31 + n5) * 31 + n6) * 31 + n7) * 31 + n8) * 31 + n9) * 31 + n10) * 31 + n11) * 31 + n12) * 31 + n13) * 31 + n14) * 31 + n15) * 31 + n16) * 31 + n17) * 31 + n18) * 31 + n19) * 31 + n20) * 31 + n21) * 31 + n22) * 31 + n23) * 31 + n24) * 31 + n25) * 31 + n26) * 31 + n27) * 31 + n28) * 31 + n29) * 31 + n30) * 31 + n31) * 31 + n32) * 31 + n33) * 31 + n34) * 31 + n35) * 31 + n36) * 31 + n37) * 31 + n38) * 31 + n39) * 31 + n40) * 31 + n41) * 31 + n42) * 31 + n2) * 31 + n43) * 31 + n44) * 31 + n45) * 31 + n3) * 31 + (this.numComments ^ this.numComments >>> 32);
    }

    public boolean isAd() {
        return this.isAd;
    }

    public boolean isAllowContributions() {
        return this.allowContributions;
    }

    public boolean isBookmarked() {
        if (this.bookmarked > 0) {
            return true;
        }
        return false;
    }

    public boolean isInlineAd() {
        return this.isInlineAd;
    }

    public boolean isInternal() {
        return this.isInternal;
    }

    @Override
    public boolean isValid() {
        if (!(this.getId() == null || this.getId().isEmpty() || this.getName() == null || this.getName().isEmpty() || this.getBlurb() == null || this.getBlurb().isEmpty() || this.getThumbnail() == null && this.getImageUrlSmall() == null && this.getImageUrlStandard() == null && this.getImageUrlBig() == null && this.getImageUrlWide() == null && this.getImageUrlDblBig() == null && this.getImageUrlDblWide() == null || (!this.isInternal() || this.getUri() == null || this.getUri().isEmpty()) && (this.isInternal() || this.getLink() == null || this.getLink().isEmpty()))) {
            return true;
        }
        return false;
    }

    @Override
    public void parse(String string2) throws JSONException {
        this.parse(new JSONObject(string2));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void parse(JSONObject jSONObject) throws JSONException {
        Object object;
        long l2;
        Object object2;
        int n2;
        Object object3;
        int n3;
        if (jSONObject.has("id") && !jSONObject.isNull("id")) {
            this.setId(jSONObject.getString("id"));
        } else if (jSONObject.has("campaignid") && !jSONObject.isNull("campaignid")) {
            this.setId(jSONObject.getString("campaignid"));
        }
        if ((object3 = jSONObject.optJSONArray("badges")) != null) {
            this.setBadges(this.spliceBrackets(object3.toString()));
        }
        this.setFlags(this.spliceBrackets(jSONObject.optString("flags")));
        this.setName(jSONObject.optString("name"));
        if (this.getName() == null || this.getName().length() == 0) {
            this.setName(jSONObject.optString("title"));
        }
        this.setBlurb(jSONObject.getString("blurb"));
        this.setThumbnail(jSONObject.optString("thumbnail"));
        if (jSONObject.has("campaign_uri")) {
            this.setUri(jSONObject.getString("campaign_uri"));
        } else {
            this.setUri(jSONObject.getString("uri"));
        }
        if (jSONObject.has("published_unix")) {
            try {
                this.setTimestamp(Long.valueOf(jSONObject.getString("published_unix")) * 1000);
            }
            catch (NumberFormatException var2_3) {
                LogUtil.e(TAG, "failed to convert timestamp to long", var2_3);
                this.timestamp = System.currentTimeMillis();
            }
        }
        this.setForm(jSONObject.optString("form"));
        if (jSONObject.has("link")) {
            this.setLink(jSONObject.getString("link"));
            if (this.getUri() == null) {
                this.isInternal = false;
            }
        }
        object3 = jSONObject.optString("last_updated").length() == 0 ? "0" : jSONObject.getString("last_updated");
        this.setLastUpdated((String)object3);
        if (jSONObject.has("promotions") && (object3 = jSONObject.optJSONObject("promotions")).has("extra_fields")) {
            object = object3.optJSONObject("extra_fields");
            this.setSplashPosition(this.parseHeadlinePosition(object.optString("position")));
            object2 = object.optString("size");
            n2 = 28;
            try {
                n2 = n3 = Integer.parseInt((String)object2);
            }
            catch (Exception var5_8) {
                LogUtil.w(TAG, "Error parsing font size: " + (String)object2);
            }
            this.setSplashTextSize(String.valueOf(n2));
            this.setSplashColorScheme(this.parseSplashColorScheme(object.optString("color")));
            object2 = object.optString("title");
            if (object2 != null && object2.length() > 0) {
                this.setTitle((String)object2);
            } else {
                this.setTitle(object3.optString("title"));
            }
            if (object.has("label")) {
                this.setSubtitle(object.optJSONObject("label").optString("value"));
            }
        }
        if (jSONObject.has("header")) {
            object3 = jSONObject.optJSONObject("header");
            this.setHeaderBlurb(object3.optString("blurb"));
            this.setHeaderName(object3.optString("name"));
            if (object3.has("users")) {
                object = object3.getJSONArray("users");
                n3 = object.length();
                if (n3 > 0) {
                    this.contributors = new ArrayList();
                }
                for (n2 = 0; n2 < n3; ++n2) {
                    Object object4 = object.getJSONObject(n2);
                    if (object4 == null) continue;
                    object2 = new Contributor();
                    object2.setUserPage(object4.optString("user_page"));
                    object2.setBylineDesc(object4.optString("byline_desc"));
                    object2.setDisplayName(object4.optString("display_name"));
                    object4 = object4.optString("user_image");
                    Stack<String> stack = new Stack<String>();
                    stack.add(this.getImageConversionUrl((String)object4));
                    if (!object4.contains("_large.jpg")) {
                        stack.add(this.getImageConversionUrl(object4.replace(".jpg", "_large.jpg")));
                    }
                    object2.setUserImages(stack);
                    this.contributors.add((Contributor)object2);
                }
            }
            if (object3.has("special_blurb") && (object3 = object3.getJSONObject("special_blurb")).has("type") && object3.getString("type").equalsIgnoreCase("bulleted_list") && object3.has("value")) {
                this.bulletedDekHtml = object3.getJSONObject("value").optString("bullets");
                this.setBulletedDeks(BulletedDekParser.getBulletedDek(this.bulletedDekHtml));
            }
        }
        if (jSONObject.has("images")) {
            object3 = jSONObject.optJSONObject("images");
            this.setImageUrlSmall(object3.optString("small"));
            this.setImageUrlStandard(object3.optString("standard"));
            this.setImageUrlBig(object3.optString("big"));
            this.setImageUrlWide(object3.optString("wide"));
            this.setImageUrlDblBig(object3.optString("dblbig"));
            this.setImageUrlDblWide(object3.optString("dblwide"));
        } else {
            object3 = this.getThumbnail();
            if (object3 != null) {
                this.setImageUrlStandard((String)object3);
                n2 = object3.lastIndexOf(".");
                object = object3.substring(n2);
                this.setImageUrlBig(object3.substring(0, n2) + "_big" + (String)object);
                this.setImageUrlDblBig(object3.substring(0, n2) + "_dblbig" + (String)object);
            }
        }
        if (jSONObject.has("allow_contributions")) {
            boolean bl = 1 == jSONObject.getInt("allow_contributions");
            this.setAllowContributions(bl);
        }
        if (jSONObject.has("category")) {
            this.setCategory(jSONObject.getString("category"));
        }
        if ((object3 = jSONObject.optString("category_name", null)) != null && !object3.equals("VerticalFeature")) {
            this.setCategory((String)object3);
        }
        if (this.getCategory() != null && (this.getCategory().equalsIgnoreCase("Breaking") || this.getCategory().equalsIgnoreCase("Politics"))) {
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
            this.setImpressions(Integer.parseInt(jSONObject.getString("impressions")));
        }
        if (jSONObject.has("utm_term")) {
            this.utmTerm = jSONObject.getString("utm_term");
        }
        if (!TextUtils.isEmpty((CharSequence)(object3 = jSONObject.optString("byline_prefix")))) {
            this.setBylinePrefix((String)object3);
        }
        this.parseSponsorNameAndImageUrl(jSONObject);
        this.setNumComments(jSONObject.optInt("comments_count"));
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void parseSponsorNameAndImageUrl(JSONObject object) {
        String string2 = object.optString("display_name");
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            this.setSponsorDisplayName(string2);
        } else {
            string2 = object.optString("username");
            if (!TextUtils.isEmpty((CharSequence)string2)) {
                this.setSponsorDisplayName(string2);
            }
        }
        if (!TextUtils.isEmpty((CharSequence)(object = object.optString("user_image")))) {
            this.setSponsorUserImageUrl((String)object);
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

    public Buzz setBlurb(String string2) {
        this.blurb = string2;
        return this;
    }

    public Buzz setBody(String string2) {
        this.body = string2;
        return this;
    }

    public Buzz setBookmarked(long l2) {
        this.bookmarked = l2;
        return this;
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
        this.buzzId = string2;
        return this;
    }

    public void setImageUrlBig(String string2) {
        if (string2 == null || string2.length() == 0) {
            this.imageUrlBig = null;
            return;
        }
        if (httpPattern.matcher(string2).lookingAt()) {
            this.imageUrlBig = string2;
            return;
        }
        this.imageUrlBig = "https://img.buzzfeed.com" + string2;
    }

    public void setImageUrlDblBig(String string2) {
        if (string2 == null || string2.length() == 0) {
            this.imageUrlDblBig = null;
            return;
        }
        if (httpPattern.matcher(string2).lookingAt()) {
            this.imageUrlDblBig = string2;
            return;
        }
        this.imageUrlDblBig = "https://img.buzzfeed.com" + string2;
    }

    public void setImageUrlDblWide(String string2) {
        if (string2 == null || string2.length() == 0) {
            this.imageUrlDblWide = null;
            return;
        }
        if (httpPattern.matcher(string2).lookingAt()) {
            this.imageUrlDblWide = string2;
            return;
        }
        this.imageUrlDblWide = "https://img.buzzfeed.com" + string2;
    }

    public void setImageUrlSmall(String string2) {
        if (string2 == null || string2.length() == 0) {
            this.imageUrlSmall = null;
            return;
        }
        if (httpPattern.matcher(string2).lookingAt()) {
            this.imageUrlSmall = string2;
            return;
        }
        this.imageUrlSmall = "https://img.buzzfeed.com" + string2;
    }

    public void setImageUrlStandard(String string2) {
        if (string2 == null || string2.length() == 0) {
            this.imageUrlStandard = null;
            return;
        }
        if (httpPattern.matcher(string2).lookingAt()) {
            this.imageUrlStandard = string2;
            return;
        }
        this.imageUrlStandard = "https://img.buzzfeed.com" + string2;
    }

    public void setImageUrlWide(String string2) {
        if (string2 == null || string2.length() == 0) {
            this.imageUrlWide = null;
            return;
        }
        if (httpPattern.matcher(string2).lookingAt()) {
            this.imageUrlWide = string2;
            return;
        }
        this.imageUrlWide = "https://img.buzzfeed.com" + string2;
    }

    public void setImpressions(int n2) {
        this.impressions = n2;
    }

    protected Buzz setInlineAd(boolean bl) {
        this.isInlineAd = bl;
        return this;
    }

    protected Buzz setIsAd(boolean bl) {
        this.isAd = bl;
        return this;
    }

    public Buzz setJson(String string2) {
        this.json = string2;
        return this;
    }

    public Buzz setLastUpdated(String string2) {
        this.lastUpdated = string2;
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
        if (TextUtils.isEmpty((CharSequence)string2)) {
            this.sponsorUserImageUrl = null;
            return;
        }
        if (httpPattern.matcher(string2).lookingAt()) {
            this.sponsorUserImageUrl = string2;
            return;
        }
        this.sponsorUserImageUrl = "https://img.buzzfeed.com" + string2;
    }

    public Buzz setSubtitle(String string2) {
        this.subtitle = string2;
        return this;
    }

    public Buzz setThumbnail(String string2) {
        if (string2 == null) {
            this.thumbnail = null;
            return this;
        }
        if (httpPattern.matcher(string2).lookingAt()) {
            this.thumbnail = string2;
            return this;
        }
        this.thumbnail = "https://img.buzzfeed.com" + string2;
        return this;
    }

    public Buzz setTimestamp(long l2) {
        this.timestamp = l2;
        this.formatTimestamp();
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

    @Override
    public String toString() {
        return "Buzz{link='" + this.link + '\'' + ", blurb='" + this.blurb + '\'' + ", thumbnail='" + this.thumbnail + '\'' + ", ouserid='" + this.ouserid + '\'' + ", form='" + this.form + '\'' + ", oid='" + this.oid + '\'' + ", name='" + this.name + '\'' + ", uri='" + this.uri + '\'' + ", trackUri='" + this.trackUri + '\'' + ", id='" + this.id + '\'' + ", buzzId='" + this.buzzId + '\'' + ", lastUpdated='" + this.lastUpdated + '\'' + ", body='" + this.body + '\'' + ", category='" + this.category + '\'' + ", color='" + (Object)((Object)this.splashColorScheme) + '\'' + ", position='" + (Object)((Object)this.splashCornerPosition) + '\'' + ", subtitle='" + this.subtitle + '\'' + ", title='" + this.title + '\'' + ", size='" + this.splashTextSize + '\'' + ", bookmarked=" + this.bookmarked + ", headerBlurb='" + this.headerBlurb + '\'' + ", headerName='" + this.headerName + '\'' + ", contributors=" + this.contributors + ", impressions=" + this.impressions + ", bylinePrefix='" + this.bylinePrefix + '\'' + ", sponsorDisplayName='" + this.sponsorDisplayName + '\'' + ", sponsorImageUrl='" + this.sponsorUserImageUrl + '\'' + ", imageUrlSmall='" + this.imageUrlSmall + '\'' + ", imageUrlStandard='" + this.imageUrlStandard + '\'' + ", imageUrlBig='" + this.imageUrlBig + '\'' + ", imageUrlWide='" + this.imageUrlWide + '\'' + ", imageUrlDblBig='" + this.imageUrlDblBig + '\'' + ", imageUrlDblWide='" + this.imageUrlDblWide + '\'' + ", badges='" + this.badges + '\'' + ", flags='" + this.flags + '\'' + ", json='" + this.json + '\'' + ", isInlineAd=" + this.isInlineAd + ", isAdvertiser=" + this.isAd + ", isInternal=" + this.isInternal + ", allowContributions=" + this.allowContributions + ", timestamp=" + this.timestamp + ", formattedTimestamp='" + this.formattedTimestamp + '\'' + ", poundHash='" + this.poundHash + '\'' + ", utmTerm='" + this.utmTerm + '\'' + ", numComments='" + this.numComments + '\'' + '}';
    }

    public static class Contributor
    implements Serializable,
    Cloneable {
        static final long serialVersionUID = 8092350489351661857L;
        private String bylineDesc;
        private String displayName;
        private Stack<String> userImages;
        private String userPage;

        /*
         * Enabled aggressive block sorting
         */
        public boolean equals(Object object) {
            if (this == object) {
                return true;
            }
            if (object == null) {
                return false;
            }
            object = (Contributor)object;
            if (this.userPage != null) {
                if (!this.userPage.equals(object.userPage)) {
                    return false;
                }
            } else if (object.userPage != null) return false;
            if (this.bylineDesc != null) {
                if (!this.bylineDesc.equals(object.bylineDesc)) {
                    return false;
                }
            } else if (object.bylineDesc != null) return false;
            if (this.displayName != null) {
                if (!this.displayName.equals(object.displayName)) {
                    return false;
                }
            } else if (object.displayName != null) return false;
            if (this.userImages != null) {
                if (this.userImages.equals(object.userImages)) return true;
                return false;
            }
            if (object.userImages == null) return true;
            return false;
        }

        public String getBylineDesc() {
            return this.bylineDesc;
        }

        public String getDisplayName() {
            return this.displayName;
        }

        public Stack<String> getUserImages() {
            return this.userImages;
        }

        public String getUserPage() {
            return this.userPage;
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n2 = 0;
            int n3 = this.userPage != null ? this.userPage.hashCode() : 0;
            int n4 = this.bylineDesc != null ? this.bylineDesc.hashCode() : 0;
            int n5 = this.displayName != null ? this.displayName.hashCode() : 0;
            if (this.userImages != null) {
                n2 = this.userImages.hashCode();
            }
            return ((n3 * 31 + n4) * 31 + n5) * 31 + n2;
        }

        public void setBylineDesc(String string2) {
            this.bylineDesc = string2;
        }

        public void setDisplayName(String string2) {
            this.displayName = string2;
        }

        public void setUserImages(Stack<String> stack) {
            this.userImages = stack;
        }

        public void setUserPage(String string2) {
            this.userPage = string2;
        }

        public String toString() {
            return "Contributor{, userPage=" + this.userPage + ", bylineDesc=" + this.bylineDesc + ", displayName=" + this.displayName + ", userImage=" + LogUtil.printList(this.userImages) + '}';
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

