/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.gson.FieldNamingPolicy
 *  com.google.gson.Gson
 *  com.google.gson.GsonBuilder
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.android.data.bookmark;

import com.buzzfeed.toolkit.content.AuthorContent;
import com.buzzfeed.toolkit.content.Buzz;
import com.buzzfeed.toolkit.content.Contributor;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Stack;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class BookmarkConverter {
    private static final String TAG = LogUtil.makeLogTag(BookmarkConverter.class);

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static String convertToJson(Buzz object) {
        long l2;
        JSONObject jSONObject;
        JSONArray jSONArray;
        try {
            jSONObject = new JSONObject();
            jSONArray = new JSONArray();
            for (Contributor contributor : object.getContributors()) {
                JSONObject jSONObject2 = new JSONObject(BookmarkConverter.getGson().toJson((Object)contributor));
                jSONObject2.put("user_image", (Object)contributor.getAvatar());
                jSONArray.put((Object)jSONObject2);
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("users", (Object)jSONArray);
            jSONObject3.put("blurb", (Object)object.getBlurb());
            jSONObject3.put("name", (Object)object.getName());
            jSONObject.put("name", (Object)object.getName());
            jSONObject.put("header", (Object)jSONObject3);
            jSONObject.put("id", (Object)object.getId());
            jSONObject.put("impressions", object.getViral());
            jSONObject.put("thumbnail", (Object)object.getThumbnail());
            jSONObject.put("blurb", (Object)object.getDescription());
            jSONObject.put("flags", (Object)object.getFlags());
            l2 = object.hasLastUpdated() ? object.getLastUpdated().getTime() : 0;
        }
        catch (JSONException var0_1) {
            LogUtil.d(TAG, "Unable to serialize json for buzz object: " + var0_1.getMessage());
            return null;
        }
        jSONObject.put("last_updated_unix", l2);
        jSONObject.put("uri", (Object)object.getUri());
        jSONArray = new JSONObject();
        jSONArray.put("small", (Object)object.getImageUrlSmall());
        jSONArray.put("standard", (Object)object.getImageUrlStandard());
        jSONArray.put("big", (Object)object.getImageUrlBig());
        jSONArray.put("wide", (Object)object.getImageUrlWide());
        jSONArray.put("dblbig", (Object)object.getImageUrlDblBig());
        jSONArray.put("dblwide", (Object)object.getImageUrlDblWide());
        jSONObject.put("images", (Object)jSONArray);
        return jSONObject.toString();
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Buzz fromPostContent(PostContent postContent, float f2) {
        Buzz buzz = new Buzz();
        buzz.setId(postContent.getId());
        buzz.setAllowContributions(postContent.isAllowContributions());
        ArrayList<Contributor> arrayList = new ArrayList<Contributor>();
        for (AuthorContent authorContent : postContent.getAuthorContents()) {
            Contributor contributor = new Contributor();
            contributor.setDisplayName(authorContent.getDisplayName());
            Stack<String> stack = new Stack<String>();
            stack.add(authorContent.getAvatar());
            contributor.setUserImages(stack);
            contributor.setBylineDesc(authorContent.getTitle());
            arrayList.add(contributor);
        }
        buzz.setContributors(arrayList);
        buzz.setDescription(postContent.getDescription());
        buzz.setCategory(postContent.getCategory());
        if (postContent.getImageStack(f2) != null && !postContent.getImageStack(f2).isEmpty()) {
            Stack<String> stack = postContent.getImageStack(f2);
            if (!stack.isEmpty()) {
                buzz.setImageUrlDblBig(stack.pop());
            }
            if (!stack.isEmpty()) {
                buzz.setImageUrlBig(stack.pop());
            }
            if (!stack.isEmpty()) {
                buzz.setImageUrlStandard(stack.pop());
            }
            if (!stack.isEmpty()) {
                buzz.setImageUrlSmall(stack.pop());
            }
        }
        buzz.setName(postContent.getTitle());
        buzz.setTitle(postContent.getTitle());
        buzz.setTimestamp(postContent.getPublished());
        buzz.setUri(postContent.getUri());
        if (!postContent.getThumbnailStack().isEmpty()) {
            buzz.setThumbnail(postContent.getThumbnailStack().peek());
        }
        long l2 = postContent.isBookmarked() ? 1 : 0;
        buzz.setBookmarked(l2);
        buzz.setEditUpdated(postContent.getEditUpdated());
        buzz.setIsAd(postContent.isAd());
        buzz.setJson(BookmarkConverter.convertToJson(buzz));
        return buzz;
    }

    private static Gson getGson() {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES);
        return gsonBuilder.create();
    }
}

