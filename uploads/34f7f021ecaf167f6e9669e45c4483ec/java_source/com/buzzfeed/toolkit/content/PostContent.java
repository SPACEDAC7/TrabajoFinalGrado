/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.content;

import com.buzzfeed.toolkit.content.AuthorContent;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.sharmo.Shareable;
import java.util.Date;
import java.util.List;
import java.util.Stack;

public interface PostContent
extends Content,
Shareable {
    public List<AuthorContent> getAuthorContents();

    public String getAuthorDisplayName();

    public String getAuthorId();

    public String getAuthorUserPage();

    public String getCategory();

    public String getDataSource();

    public String getDescription();

    public Date getEditUpdated();

    public Stack<String> getImageStack(float var1);

    public Date getLastUpdated();

    public Date getPublished();

    public Stack<String> getThumbnailStack();

    public String getTitle();

    public String getUri();

    public long getViewCount();

    public Stack<String> getWideStack();

    public boolean hasEditUpdated();

    public boolean isAd();

    public boolean isAllowContributions();

    public boolean isBookmarked();

    public boolean isBreaking();

    public boolean isCommentsEnabled();

    public boolean isReactionsEnabled();

    public void setBookmarked(long var1);
}

