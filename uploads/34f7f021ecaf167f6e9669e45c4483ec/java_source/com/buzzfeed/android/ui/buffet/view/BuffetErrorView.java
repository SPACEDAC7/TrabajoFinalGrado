/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.ImageView
 *  android.widget.RelativeLayout
 */
package com.buzzfeed.android.ui.buffet.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.buzzfeed.android.ui.buffet.listener.BuffetErrorListener;
import com.buzzfeed.toolkit.util.UIUtil;

public class BuffetErrorView
extends RelativeLayout {
    private View mBookmarkEmptyView;
    private View mBookmarkSigninView;
    private View mBookmarkbackground;
    private View mEmptySearchText;
    private BuffetErrorListener mErrorListener;
    private ErrorType mErrorType;
    private ImageView mSadCattyImageView;

    public BuffetErrorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        BuffetErrorView.inflate((Context)this.getContext(), (int)2130903090, (ViewGroup)this);
        this.setErrorType(ErrorType.DEFAULT);
    }

    private void displayBookmarksBackground() {
        this.mBookmarkbackground.setVisibility(0);
    }

    private void findViews() {
        this.mBookmarkbackground = UIUtil.findView((View)this, 2131820739);
        this.mSadCattyImageView = (ImageView)UIUtil.findView((View)this, 2131820738);
        this.mEmptySearchText = UIUtil.findView((View)this, 2131820740);
        this.mBookmarkEmptyView = UIUtil.findView(this.mBookmarkbackground, 2131820730);
        this.mBookmarkSigninView = UIUtil.findView(this.mBookmarkbackground, 2131820732);
    }

    public void displayBookmarkSignInView() {
        this.mBookmarkEmptyView.setVisibility(8);
        this.mBookmarkSigninView.setVisibility(0);
    }

    public void displayDefaultErrorView() {
        this.mSadCattyImageView.setVisibility(0);
    }

    public void displayEmptyBookmarksView() {
        this.mBookmarkEmptyView.setVisibility(0);
        this.mBookmarkSigninView.setVisibility(8);
    }

    public void displayEmptySearchView() {
        this.mEmptySearchText.setVisibility(0);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.findViews();
    }

    public void refreshErrorView(boolean bl) {
        this.resetErrorViews();
        if (this.mErrorType == ErrorType.BOOKMARK_EMPTY) {
            this.displayBookmarksBackground();
            if (bl) {
                this.displayEmptyBookmarksView();
                return;
            }
            this.displayBookmarkSignInView();
            this.setSignInClickListener();
            return;
        }
        if (this.mErrorType == ErrorType.SEARCH) {
            this.displayEmptySearchView();
            return;
        }
        this.displayDefaultErrorView();
    }

    public void resetErrorViews() {
        this.mBookmarkbackground.setVisibility(8);
        this.mSadCattyImageView.setVisibility(8);
        this.mEmptySearchText.setVisibility(8);
    }

    public void setErrorListener(BuffetErrorListener buffetErrorListener) {
        this.mErrorListener = buffetErrorListener;
    }

    public void setErrorType(ErrorType errorType) {
        this.mErrorType = errorType;
    }

    public void setSignInClickListener() {
        if (this.mErrorListener != null) {
            UIUtil.findView(this.mBookmarkbackground, 2131820734).setOnClickListener(new View.OnClickListener(){

                public void onClick(View view) {
                    BuffetErrorView.this.mErrorListener.onBuffetSignIn();
                }
            });
        }
    }

    public static enum ErrorType {
        DEFAULT,
        SEARCH,
        BOOKMARK_EMPTY;
        

        private ErrorType() {
        }
    }

}

