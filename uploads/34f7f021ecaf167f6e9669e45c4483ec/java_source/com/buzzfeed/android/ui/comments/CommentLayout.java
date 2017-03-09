/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.res.Resources
 *  android.os.Bundle
 *  android.os.Parcelable
 *  android.util.AttributeSet
 *  android.view.AbsSavedState
 *  android.view.View
 *  android.view.View$BaseSavedState
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnScrollChangedListener
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemSelectedListener
 *  android.widget.ArrayAdapter
 *  android.widget.FrameLayout
 *  android.widget.ProgressBar
 *  android.widget.ScrollView
 *  android.widget.Spinner
 *  android.widget.SpinnerAdapter
 *  android.widget.TextView
 *  android.widget.Toast
 */
package com.buzzfeed.android.ui.comments;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.comment.BuzzFeedComment;
import com.buzzfeed.android.data.comment.BuzzFeedCommentLoader;
import com.buzzfeed.android.data.comment.Comment;
import com.buzzfeed.android.data.comment.CommentListCache;
import com.buzzfeed.android.data.comment.CommentListMapCache;
import com.buzzfeed.android.data.comment.FacebookCommentsView;
import com.buzzfeed.android.ui.comments.CommentItemView;
import com.buzzfeed.android.ui.comments.CommentReplyView;
import com.buzzfeed.android.ui.comments.CommentViewPresenter;
import com.buzzfeed.android.ui.widget.DrawShadowLinearLayout;
import com.buzzfeed.android.ui.widget.TextCardView;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CommentLayout
extends FrameLayout
implements BuzzFeedCommentLoader.CommentLoaderListener {
    private static final String TAG = CommentLayout.class.getName();
    private ViewGroup mCommentContainer;
    private ViewGroup mCommentContainerWrapper;
    private ViewGroup mCommentHeader;
    private CommentViewOnClickListener mCommentItemViewClickListener;
    private ArrayList<Comment> mCommentList = new ArrayList();
    private BuzzFeedCommentLoader mCommentLoader;
    private ScrollView mCommentScrollView;
    private Spinner mCommentTypeSpinner;
    private CommentViewPresenter mCommentViewPresenter;
    private PostContent mContent;
    private FacebookCommentsView mFacebookCommentsView;
    private boolean mIsAttachedToWindow = false;
    private boolean mIsLoading = false;
    private boolean mIsShowingComments = false;
    private TextView mLoadMore;
    private TextView mNoCommentMessage;
    private TextCardView mResponseButton;
    private ScrollListener mScrollListener;
    private ProgressBar mSpinner;
    private HashMap<String, View> mViewMap = new HashMap();

    public CommentLayout(Context context) {
        this(context, null);
    }

    public CommentLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CommentLayout(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize();
    }

    @TargetApi(value=21)
    public CommentLayout(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
        this.initialize();
    }

    private void addViewToCommentContainer(View view) {
        int n2 = Math.max(0, this.mCommentContainer.getChildCount() - 2);
        this.mCommentContainer.addView(view, n2);
    }

    private View getChildViewForComment(Comment comment) {
        return this.mViewMap.get(comment.getCommentId());
    }

    private CommentListCache getCommentsCache() {
        return CommentListMapCache.getInstance();
    }

    private void initialize() {
        CommentLayout.inflate((Context)this.getContext(), (int)2130903122, (ViewGroup)this);
        this.mSpinner = (ProgressBar)this.findViewById(2131820856);
        this.mCommentHeader = (ViewGroup)this.findViewById(2131820849);
        this.mCommentContainer = (ViewGroup)this.findViewById(2131820855);
        this.mCommentTypeSpinner = (Spinner)this.findViewById(2131820850);
        this.mResponseButton = (TextCardView)this.findViewById(2131820851);
        this.mCommentScrollView = (ScrollView)this.findViewById(2131820854);
        this.mFacebookCommentsView = (FacebookCommentsView)((Object)UIUtil.findView((View)this, 2131820859));
        this.mResponseButton.setText(this.getContext().getString(2131296515).toUpperCase());
        this.mCommentContainerWrapper = (ViewGroup)UIUtil.findView((View)this, 2131820853);
        this.mResponseButton.setVisibility(8);
        this.mFacebookCommentsView.setVisibility(8);
        this.mNoCommentMessage = (TextView)this.findViewById(2131820858);
        ArrayAdapter arrayAdapter = this.getResources().getStringArray(2131492872);
        arrayAdapter = new ArrayAdapter(this.getContext(), 2130903211, (Object[])arrayAdapter);
        arrayAdapter.setDropDownViewResource(2130903210);
        this.mCommentTypeSpinner.setAdapter((SpinnerAdapter)arrayAdapter);
        this.mCommentTypeSpinner.setSelection(0, false);
        this.mCommentTypeSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener(){

            public void onItemSelected(AdapterView<?> adapterView, View view, int n2, long l2) {
                CommentLayout.this.mIsShowingComments = true;
                CommentLayout.this.onSwitchCommentType(n2);
            }

            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        this.mResponseButton.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (CommentLayout.this.mCommentItemViewClickListener != null) {
                    CommentLayout.this.mCommentItemViewClickListener.onClick(view, null);
                }
            }
        });
        this.mLoadMore = (TextView)this.findViewById(2131820857);
        this.mLoadMore.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                CommentLayout.this.mLoadMore.setVisibility(8);
                CommentLayout.this.beginLoad(CommentLayout.this.mCommentTypeSpinner.getSelectedItemPosition(), true);
            }
        });
        this.mCommentViewPresenter = new CommentViewPresenter();
        this.mScrollListener = new ScrollListener();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onRepliesLoadComplete(int n2) {
        ArrayList<Comment> arrayList;
        if (n2 < 0 || n2 >= this.mCommentList.size() || (arrayList = this.mCommentList.get(n2).getReplies()).isEmpty()) {
            return;
        }
        n2 = 0;
        while (n2 < arrayList.size()) {
            this.addCommentReplyView((BuzzFeedComment)arrayList.get(n2));
            ++n2;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onSwitchCommentType(int n2) {
        this.mLoadMore.setVisibility(8);
        if (n2 == 0) {
            this.mFacebookCommentsView.setVisibility(8);
            this.mCommentContainerWrapper.setVisibility(0);
            this.mResponseButton.setVisibility(0);
            this.reloadBuzzFeedComments();
            return;
        } else {
            this.mFacebookCommentsView.setVisibility(0);
            this.mCommentContainerWrapper.setVisibility(8);
            this.mResponseButton.setVisibility(8);
            if (this.mFacebookCommentsView.getUrl() != null) return;
            {
                String string2 = EnvironmentConfig.getUrlWithSSLBaseUrl(this.mContent.getUri());
                this.mFacebookCommentsView.loadCommentsForUrl(string2);
                return;
            }
        }
    }

    private void removeCommentViews() {
        int n2 = 0;
        while (n2 < this.mCommentContainer.getChildCount()) {
            View view = this.mCommentContainer.getChildAt(n2);
            int n3 = n2;
            if (view instanceof CommentItemView) {
                this.mCommentContainer.removeView(view);
                n3 = n2 - 1;
            }
            n2 = n3 + 1;
        }
    }

    public void addCommentReplyView(BuzzFeedComment buzzFeedComment) {
        CommentReplyView commentReplyView = this.createCommentReplyItemView(buzzFeedComment);
        this.addViewToCommentContainer((View)commentReplyView);
        this.mViewMap.put(buzzFeedComment.getCommentId(), (View)commentReplyView);
    }

    public void addCommentView(Comment comment) {
        Object object = TAG + ".addComment";
        if (comment instanceof BuzzFeedComment) {
            object = this.createCommentItemView((BuzzFeedComment)comment);
            this.addViewToCommentContainer((View)object);
            this.mViewMap.put(comment.getCommentId(), (View)object);
            return;
        }
        LogUtil.e((String)object, "Error adding comment for comment class type " + comment.getClass().getSimpleName());
    }

    public void beginLoad(int n2, boolean bl) {
        switch (n2) {
            default: {
                return;
            }
            case 0: 
        }
        this.mCommentLoader.getBuzzFeedComments(this.mContent, bl);
        this.showProgress(true);
    }

    public void clear() {
        this.removeCommentViews();
        this.mCommentLoader.getCommentList().clear();
        this.mViewMap.clear();
    }

    public CommentItemView createCommentItemView(BuzzFeedComment buzzFeedComment) {
        CommentItemView commentItemView = new CommentItemView(this.getContext());
        this.mCommentViewPresenter.onBindView((View)commentItemView, buzzFeedComment, this.mContent);
        commentItemView.setCommentItemViewListener(this.mCommentItemViewClickListener);
        return commentItemView;
    }

    public CommentReplyView createCommentReplyItemView(BuzzFeedComment buzzFeedComment) {
        CommentReplyView commentReplyView = new CommentReplyView(this.getContext());
        this.mCommentViewPresenter.onBindView((View)commentReplyView, buzzFeedComment, this.mContent);
        commentReplyView.setCommentItemViewListener(this.mCommentItemViewClickListener);
        return commentReplyView;
    }

    public void destroyCommentClickListener() {
        if (this.mCommentItemViewClickListener != null) {
            this.mCommentItemViewClickListener.destroy();
        }
    }

    public BuzzFeedCommentLoader getCommentLoader() {
        return this.mCommentLoader;
    }

    public ViewGroup getHeader() {
        return this.mCommentHeader;
    }

    public PostContent getPostContent() {
        return this.mContent;
    }

    public void loadComments() {
        this.mIsShowingComments = true;
        this.reloadBuzzFeedComments();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsAttachedToWindow = true;
        this.mCommentLoader.setListener(this);
        this.mCommentScrollView.getViewTreeObserver().addOnScrollChangedListener((ViewTreeObserver.OnScrollChangedListener)this.mScrollListener);
        this.mCommentHeader.bringToFront();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCommentLoadComplete(boolean bl, int n2, int n3) {
        int n4 = 8;
        this.showProgress(false);
        if (bl) {
            this.mIsShowingComments = true;
            Object object = this.mLoadMore;
            int n5 = this.mCommentLoader.hasMore() ? 0 : 8;
            object.setVisibility(n5);
            this.mCommentList = n2 == 0 ? (ArrayList)this.getCommentsCache().getCommentList(this.mContent.getId()) : this.mCommentLoader.getCommentList();
            if (this.mCommentList != null) {
                LogUtil.d(TAG, "size: " + this.mCommentList.size());
                while (n3 < this.mCommentList.size()) {
                    object = this.mCommentList.get(n3);
                    this.addCommentView((Comment)object);
                    if (object instanceof BuzzFeedComment) {
                        this.onRepliesLoadComplete(n3);
                    }
                    ++n3;
                }
            }
            object = this.mNoCommentMessage;
            n2 = n4;
            if (this.mCommentList != null) {
                n2 = n4;
                if (this.mCommentList.isEmpty()) {
                    n2 = 0;
                }
            }
            object.setVisibility(n2);
        }
        this.mIsLoading = false;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsAttachedToWindow = false;
        this.mCommentLoader.setListener(null);
        this.mCommentScrollView.getViewTreeObserver().removeOnScrollChangedListener((ViewTreeObserver.OnScrollChangedListener)this.mScrollListener);
    }

    @Override
    public void onFailure(String string2, Comment comment) {
        LogUtil.e(TAG, "Comment Action failed. Type: " + string2);
        Toast.makeText((Context)this.getContext(), (CharSequence)"There was an error processing your request. ", (int)1).show();
    }

    public void onRestoreInstanceState(Parcelable object) {
        if (object instanceof Bundle && (object = (Bundle)object).getParcelable("SaveState.STATE") instanceof SaveState) {
            object = (SaveState)object.getParcelable("SaveState.STATE");
            this.mIsShowingComments = object.isShowingComments;
            this.mCommentTypeSpinner.setSelection(object.selectedCommentTypePosition);
            super.onRestoreInstanceState(object.getSuperState());
            return;
        }
        super.onRestoreInstanceState((Parcelable)View.BaseSavedState.EMPTY_STATE);
    }

    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        SaveState saveState = new SaveState(super.onSaveInstanceState());
        saveState.selectedCommentTypePosition = this.mCommentTypeSpinner.getSelectedItemPosition();
        saveState.isShowingComments = this.mIsShowingComments;
        bundle.putParcelable("SaveState.STATE", (Parcelable)saveState);
        return bundle;
    }

    @Override
    public void onSuccess(final String string2, final Comment comment) {
        this.post(new Runnable(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void run() {
                LogUtil.d(TAG, "Comment Action succeeded. Type: " + string2);
                Object object = CommentLayout.this.getChildViewForComment(comment);
                if (!(object instanceof CommentItemView)) {
                    LogUtil.e(TAG, "children were added without updating addOffset()");
                    return;
                }
                object = (CommentItemView)((Object)object);
                if (string2.equals("heart_success")) {
                    object.getHeartButton().setSelected(true);
                } else {
                    object.getHateButton().setSelected(true);
                }
                CommentLayout.this.mCommentViewPresenter.updateView((View)object, object.getComment());
            }
        });
    }

    public void refreshHeader() {
        if (this.mContent != null && this.mContent.isCommentsEnabled()) {
            this.mResponseButton.setVisibility(0);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void reloadBuzzFeedComments() {
        if (!this.mIsShowingComments) return;
        if (this.mIsLoading) {
            return;
        }
        this.mIsLoading = true;
        if (this.getCommentsCache().getCommentList(this.mContent.getId()) != null) {
            this.removeCommentViews();
            this.onCommentLoadComplete(true, 0, 0);
            return;
        }
        if (this.mCommentLoader.isLoading()) return;
        List<Comment> list = this.getCommentsCache().getCommentList(this.mContent.getId());
        if (this.mCommentList != null && !this.mCommentList.isEmpty() && list != null) {
            if (list.size() == this.mCommentList.size()) return;
        }
        this.beginLoad(0, false);
    }

    public void setCommentLoader(BuzzFeedCommentLoader buzzFeedCommentLoader) {
        this.mCommentLoader = buzzFeedCommentLoader;
        if (this.mIsAttachedToWindow) {
            this.mCommentLoader.setListener(this);
        }
    }

    public void setCommentViewOnClickListener(CommentViewOnClickListener commentViewOnClickListener) {
        if (this.mCommentItemViewClickListener != commentViewOnClickListener) {
            this.mCommentItemViewClickListener = commentViewOnClickListener;
            for (int i2 = 0; i2 < this.mCommentContainer.getChildCount(); ++i2) {
                commentViewOnClickListener = this.mCommentContainer.getChildAt(i2);
                if (!(commentViewOnClickListener instanceof CommentItemView)) continue;
                ((CommentItemView)((Object)commentViewOnClickListener)).setCommentItemViewListener(this.mCommentItemViewClickListener);
            }
        }
    }

    public void setPostContent(PostContent postContent) {
        this.mContent = postContent;
    }

    public void showProgress(boolean bl) {
        if (bl) {
            this.mSpinner.setVisibility(0);
            return;
        }
        this.mSpinner.setVisibility(8);
    }

    public final class ButtonID {
        public static final int ADD_RESPONSE = 2131820851;
        public static final int HATE = 2131820837;
        public static final int HEART = 2131820835;
        public static final int REPLY = 2131820833;
        public static final int SHARE = 2131820710;
        public static final int THUMBS_UP = 2131820846;
    }

    public static interface CommentViewOnClickListener {
        public void destroy();

        public void onClick(View var1, Comment var2);
    }

    private static class SaveState
    extends View.BaseSavedState {
        protected static final String STATE = "SaveState.STATE";
        public boolean isShowingComments;
        public int selectedCommentTypePosition;

        public SaveState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    private class ScrollListener
    implements ViewTreeObserver.OnScrollChangedListener {
        private DrawShadowLinearLayout mShadowLinearLayout;

        public ScrollListener() {
            this.mShadowLinearLayout = (DrawShadowLinearLayout)CommentLayout.this.findViewById(2131820852);
        }

        /*
         * Enabled aggressive block sorting
         */
        public void onScrollChanged() {
            if (CommentLayout.this.mCommentScrollView.getScrollY() <= 0) {
                this.mShadowLinearLayout.setShadowVisible(false, true);
                return;
            } else {
                if (this.mShadowLinearLayout.isShadowVisible()) return;
                {
                    this.mShadowLinearLayout.setShadowVisible(true, true);
                    return;
                }
            }
        }
    }

}

