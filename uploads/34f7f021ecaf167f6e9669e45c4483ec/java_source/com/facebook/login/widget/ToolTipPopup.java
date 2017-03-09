/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnScrollChangedListener
 *  android.view.Window
 *  android.widget.FrameLayout
 *  android.widget.ImageView
 *  android.widget.PopupWindow
 *  android.widget.TextView
 */
package com.facebook.login.widget;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.facebook.R;
import java.lang.ref.WeakReference;

public class ToolTipPopup {
    public static final long DEFAULT_POPUP_DISPLAY_TIME = 6000;
    private final WeakReference<View> mAnchorViewRef;
    private final Context mContext;
    private long mNuxDisplayTime = 6000;
    private PopupContentView mPopupContent;
    private PopupWindow mPopupWindow;
    private final ViewTreeObserver.OnScrollChangedListener mScrollListener;
    private Style mStyle = Style.BLUE;
    private final String mText;

    public ToolTipPopup(String string2, View view) {
        this.mScrollListener = new ViewTreeObserver.OnScrollChangedListener(){

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            public void onScrollChanged() {
                if (ToolTipPopup.this.mAnchorViewRef.get() == null || ToolTipPopup.this.mPopupWindow == null || !ToolTipPopup.this.mPopupWindow.isShowing()) return;
                if (ToolTipPopup.this.mPopupWindow.isAboveAnchor()) {
                    ToolTipPopup.this.mPopupContent.showBottomArrow();
                    return;
                }
                ToolTipPopup.this.mPopupContent.showTopArrow();
            }
        };
        this.mText = string2;
        this.mAnchorViewRef = new WeakReference<View>(view);
        this.mContext = view.getContext();
    }

    private void registerObserver() {
        this.unregisterObserver();
        if (this.mAnchorViewRef.get() != null) {
            this.mAnchorViewRef.get().getViewTreeObserver().addOnScrollChangedListener(this.mScrollListener);
        }
    }

    private void unregisterObserver() {
        if (this.mAnchorViewRef.get() != null) {
            this.mAnchorViewRef.get().getViewTreeObserver().removeOnScrollChangedListener(this.mScrollListener);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void updateArrows() {
        if (this.mPopupWindow == null || !this.mPopupWindow.isShowing()) return;
        if (this.mPopupWindow.isAboveAnchor()) {
            this.mPopupContent.showBottomArrow();
            return;
        }
        this.mPopupContent.showTopArrow();
    }

    public void dismiss() {
        this.unregisterObserver();
        if (this.mPopupWindow != null) {
            this.mPopupWindow.dismiss();
        }
    }

    public void setNuxDisplayTime(long l2) {
        this.mNuxDisplayTime = l2;
    }

    public void setStyle(Style style2) {
        this.mStyle = style2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void show() {
        if (this.mAnchorViewRef.get() != null) {
            this.mPopupContent = new PopupContentView(this.mContext);
            ((TextView)this.mPopupContent.findViewById(R.id.com_facebook_tooltip_bubble_view_text_body)).setText((CharSequence)this.mText);
            if (this.mStyle == Style.BLUE) {
                this.mPopupContent.bodyFrame.setBackgroundResource(R.drawable.com_facebook_tooltip_blue_background);
                this.mPopupContent.bottomArrow.setImageResource(R.drawable.com_facebook_tooltip_blue_bottomnub);
                this.mPopupContent.topArrow.setImageResource(R.drawable.com_facebook_tooltip_blue_topnub);
                this.mPopupContent.xOut.setImageResource(R.drawable.com_facebook_tooltip_blue_xout);
            } else {
                this.mPopupContent.bodyFrame.setBackgroundResource(R.drawable.com_facebook_tooltip_black_background);
                this.mPopupContent.bottomArrow.setImageResource(R.drawable.com_facebook_tooltip_black_bottomnub);
                this.mPopupContent.topArrow.setImageResource(R.drawable.com_facebook_tooltip_black_topnub);
                this.mPopupContent.xOut.setImageResource(R.drawable.com_facebook_tooltip_black_xout);
            }
            View view = ((Activity)this.mContext).getWindow().getDecorView();
            int n2 = view.getWidth();
            int n3 = view.getHeight();
            this.registerObserver();
            this.mPopupContent.measure(View.MeasureSpec.makeMeasureSpec((int)n2, (int)Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec((int)n3, (int)Integer.MIN_VALUE));
            this.mPopupWindow = new PopupWindow((View)this.mPopupContent, this.mPopupContent.getMeasuredWidth(), this.mPopupContent.getMeasuredHeight());
            this.mPopupWindow.showAsDropDown(this.mAnchorViewRef.get());
            this.updateArrows();
            if (this.mNuxDisplayTime > 0) {
                this.mPopupContent.postDelayed(new Runnable(){

                    @Override
                    public void run() {
                        ToolTipPopup.this.dismiss();
                    }
                }, this.mNuxDisplayTime);
            }
            this.mPopupWindow.setTouchable(true);
            this.mPopupContent.setOnClickListener(new View.OnClickListener(){

                public void onClick(View view) {
                    ToolTipPopup.this.dismiss();
                }
            });
        }
    }

    private class PopupContentView
    extends FrameLayout {
        private View bodyFrame;
        private ImageView bottomArrow;
        private ImageView topArrow;
        private ImageView xOut;

        public PopupContentView(Context context) {
            super(context);
            this.init();
        }

        private void init() {
            LayoutInflater.from((Context)this.getContext()).inflate(R.layout.com_facebook_tooltip_bubble, (ViewGroup)this);
            this.topArrow = (ImageView)this.findViewById(R.id.com_facebook_tooltip_bubble_view_top_pointer);
            this.bottomArrow = (ImageView)this.findViewById(R.id.com_facebook_tooltip_bubble_view_bottom_pointer);
            this.bodyFrame = this.findViewById(R.id.com_facebook_body_frame);
            this.xOut = (ImageView)this.findViewById(R.id.com_facebook_button_xout);
        }

        public void showBottomArrow() {
            this.topArrow.setVisibility(4);
            this.bottomArrow.setVisibility(0);
        }

        public void showTopArrow() {
            this.topArrow.setVisibility(0);
            this.bottomArrow.setVisibility(4);
        }
    }

    public static enum Style {
        BLUE,
        BLACK;
        

        private Style() {
        }
    }

}

