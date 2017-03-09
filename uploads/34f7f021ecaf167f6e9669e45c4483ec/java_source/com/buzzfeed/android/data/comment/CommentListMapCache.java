/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.buzzfeed.android.data.comment;

import android.text.TextUtils;
import com.buzzfeed.android.data.comment.Comment;
import com.buzzfeed.android.data.comment.CommentListCache;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.ConcurrentHashMap;

public class CommentListMapCache
implements CommentListCache {
    private static String TAG = CommentListMapCache.class.getSimpleName();
    private static CommentListMapCache sInstance;
    private final int MAX_SIZE;
    private Map<String, Comment> mCommentHashMap;
    private CommentListMap mCommentListMap;
    private CommentsCacheObservable mObservable;

    public CommentListMapCache() {
        this.mCommentListMap = new CommentListMap();
        this.mCommentHashMap = new ConcurrentHashMap<String, Comment>();
        this.mObservable = new CommentsCacheObservable();
        this.MAX_SIZE = 3;
    }

    private boolean addCommentToList(Comment comment, List<Comment> list) {
        boolean bl;
        boolean bl2 = false;
        if (comment.getParent() != null) {
            String string2 = comment.getParent().getCommentId();
            int n2 = 0;
            do {
                bl = bl2;
                if (n2 < list.size()) {
                    Comment comment2 = list.get(n2);
                    if (comment2.getCommentId().equals(string2)) {
                        comment2.getReplies().add(comment);
                    }
                    ++n2;
                    continue;
                }
                break;
                break;
            } while (true);
        } else {
            list.add(0, comment);
            bl = true;
        }
        return bl;
    }

    private void addCommentsToMap(Comment object) {
        this.mCommentHashMap.put(object.getCommentId(), (Comment)object);
        for (Comment comment : object.getReplies()) {
            this.mCommentHashMap.put(comment.getCommentId(), comment);
            if (comment.getReplies().size() <= 0) continue;
            this.addCommentsToMap(comment);
        }
    }

    public static CommentListMapCache getInstance() {
        synchronized (CommentListMapCache.class) {
            if (sInstance == null) {
                sInstance = new CommentListMapCache();
            }
            CommentListMapCache commentListMapCache = sInstance;
            return commentListMapCache;
        }
    }

    private void removeCommentsFromMap(Comment object) {
        this.mCommentHashMap.remove(object.getCommentId());
        for (Comment comment : object.getReplies()) {
            this.mCommentHashMap.remove(comment.getCommentId());
            if (comment.getReplies().size() <= 0) continue;
            this.removeCommentsFromMap(comment);
        }
    }

    @Override
    public void addComment(Comment comment, String string2) {
        String string3 = TAG + ".addComment";
        List list = (List)this.mCommentListMap.get(string2);
        if (list != null) {
            this.addCommentToList(comment, list);
            this.mCommentHashMap.put(comment.getCommentId(), comment);
            this.mObservable.setChangeFlag();
            this.mObservable.notifyObservers(string2);
            return;
        }
        LogUtil.d(string3, " failed to add new comment");
    }

    @Override
    public void addObserver(Observer observer) {
        this.mObservable.addObserver(observer);
    }

    @Override
    public void deleteAllObservers() {
        this.mObservable.deleteObservers();
    }

    @Override
    public void deleteObserver(Observer observer) {
        this.mObservable.deleteObserver(observer);
    }

    @Override
    public Comment getComment(String string2, String string3) {
        return this.mCommentHashMap.get(string3);
    }

    @Override
    public List<Comment> getCommentList(String string2) {
        return (List)this.mCommentListMap.get(string2);
    }

    @Override
    public void putCommentList(String string2, List<Comment> object) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            throw new IllegalArgumentException("listId cant be null");
        }
        this.mCommentListMap.put(string2, new ArrayList<Comment>((Collection<Comment>)object));
        object = object.iterator();
        while (object.hasNext()) {
            this.addCommentsToMap((Comment)object.next());
        }
        this.mObservable.setChangeFlag();
        this.mObservable.notifyObservers(string2);
    }

    @Override
    public void removeCommentList(String string2) {
        this.mCommentListMap.remove(string2);
        this.mObservable.setChangeFlag();
        this.mObservable.notifyObservers(string2);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void replaceComment(Comment var1_1, String var2_2) {
        var4_3 = (List)this.mCommentListMap.get(var2_2);
        if (var4_3 == null) return;
        var3_4 = 0;
        do {
            if (var3_4 >= var4_3.size()) ** GOTO lbl8
            if (((Comment)var4_3.get(var3_4)).getCommentId().equals(var1_1.getCommentId())) {
                var4_3.set(var3_4, var1_1);
lbl8: // 2 sources:
                this.mObservable.setChangeFlag();
                this.mObservable.notifyObservers(var2_2);
                return;
            }
            ++var3_4;
        } while (true);
    }

    private class CommentListMap
    extends LinkedHashMap<String, List<Comment>> {
        private CommentListMap() {
        }

        @Override
        public List<Comment> remove(Object object) {
            object = (List)super.remove(object);
            Iterator iterator = object.iterator();
            while (iterator.hasNext()) {
                Comment comment = (Comment)iterator.next();
                CommentListMapCache.this.removeCommentsFromMap(comment);
            }
            return object;
        }

        @Override
        protected boolean removeEldestEntry(Map.Entry<String, List<Comment>> entry) {
            if (this.size() > 3) {
                return true;
            }
            return false;
        }
    }

    public static class CommentsCacheObservable
    extends Observable {
        public void setChangeFlag() {
            this.setChanged();
        }
    }

}

