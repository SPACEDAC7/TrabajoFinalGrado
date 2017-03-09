/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.ui.comments;

import com.buzzfeed.android.ui.comments.CommentLayout;
import java.util.Observable;
import java.util.Observer;

public class CommentsChangeObserver
implements Observer {
    private CommentLayout mCommentLayout;
    private String mListId;

    public CommentsChangeObserver(String string2, CommentLayout commentLayout) {
        if (string2 == null) {
            throw new IllegalArgumentException("list id can't be null");
        }
        if (commentLayout == null) {
            throw new IllegalArgumentException("commentlayout can't be null");
        }
        this.mListId = string2;
        this.mCommentLayout = commentLayout;
    }

    @Override
    public void update(Observable object, Object object2) {
        if (object2 instanceof String && this.mListId.equals(object = (String)object2)) {
            this.mCommentLayout.reloadBuzzFeedComments();
        }
    }
}

