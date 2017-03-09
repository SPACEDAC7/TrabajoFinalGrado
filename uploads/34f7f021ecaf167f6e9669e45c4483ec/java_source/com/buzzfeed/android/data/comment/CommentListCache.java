/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.data.comment;

import com.buzzfeed.android.data.comment.Comment;
import java.util.List;
import java.util.Observer;

public interface CommentListCache {
    public void addComment(Comment var1, String var2);

    public void addObserver(Observer var1);

    public void deleteAllObservers();

    public void deleteObserver(Observer var1);

    public Comment getComment(String var1, String var2);

    public List<Comment> getCommentList(String var1);

    public void putCommentList(String var1, List<Comment> var2);

    public void removeCommentList(String var1);

    public void replaceComment(Comment var1, String var2);
}

