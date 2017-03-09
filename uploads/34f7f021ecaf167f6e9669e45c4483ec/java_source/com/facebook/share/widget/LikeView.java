/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.ContextWrapper
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.os.Bundle
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.LinearLayout
 *  android.widget.LinearLayout$LayoutParams
 *  android.widget.TextView
 */
package com.facebook.share.widget;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.FacebookException;
import com.facebook.R;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.share.internal.LikeActionController;
import com.facebook.share.internal.LikeBoxCountView;
import com.facebook.share.internal.LikeButton;

public class LikeView
extends FrameLayout {
    private static final int NO_FOREGROUND_COLOR = -1;
    private AuxiliaryViewPosition auxiliaryViewPosition = AuxiliaryViewPosition.DEFAULT;
    private BroadcastReceiver broadcastReceiver;
    private LinearLayout containerView;
    private LikeActionControllerCreationCallback creationCallback;
    private int edgePadding;
    private boolean explicitlyDisabled;
    private int foregroundColor = -1;
    private HorizontalAlignment horizontalAlignment = HorizontalAlignment.DEFAULT;
    private boolean implicitlyDisabled;
    private int internalPadding;
    private LikeActionController likeActionController;
    private LikeBoxCountView likeBoxCountView;
    private LikeButton likeButton;
    private Style likeViewStyle = Style.DEFAULT;
    private String objectId;
    private ObjectType objectType;
    private OnErrorListener onErrorListener;
    private Fragment parentFragment;
    private TextView socialSentenceView;

    public LikeView(Context context) {
        super(context);
        this.initialize(context);
    }

    public LikeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.parseAttributes(attributeSet);
        this.initialize(context);
    }

    private void associateWithLikeActionController(LikeActionController object) {
        this.likeActionController = object;
        this.implicitlyDisabled = object.shouldDisableView();
        this.broadcastReceiver = new LikeControllerBroadcastReceiver();
        object = LocalBroadcastManager.getInstance(this.getContext());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.LikeActionController.UPDATED");
        intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_ERROR");
        intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_RESET");
        object.registerReceiver(this.broadcastReceiver, intentFilter);
    }

    private Bundle getAnalyticsParameters() {
        Bundle bundle = new Bundle();
        bundle.putString("style", this.likeViewStyle.toString());
        bundle.putString("auxiliary_position", this.auxiliaryViewPosition.toString());
        bundle.putString("horizontal_alignment", this.horizontalAlignment.toString());
        bundle.putString("object_id", Utility.coerceValueIfNullOrEmpty(this.objectId, ""));
        bundle.putString("object_type", this.objectType.toString());
        return bundle;
    }

    private void initialize(Context context) {
        this.edgePadding = this.getResources().getDimensionPixelSize(R.dimen.com_facebook_likeview_edge_padding);
        this.internalPadding = this.getResources().getDimensionPixelSize(R.dimen.com_facebook_likeview_internal_padding);
        if (this.foregroundColor == -1) {
            this.foregroundColor = this.getResources().getColor(R.color.com_facebook_likeview_text_color);
        }
        this.setBackgroundColor(0);
        this.containerView = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        this.containerView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        this.initializeLikeButton(context);
        this.initializeSocialSentenceView(context);
        this.initializeLikeCountView(context);
        this.containerView.addView((View)this.likeButton);
        this.containerView.addView((View)this.socialSentenceView);
        this.containerView.addView((View)this.likeBoxCountView);
        this.addView((View)this.containerView);
        this.setObjectIdAndTypeForced(this.objectId, this.objectType);
        this.updateLikeStateAndLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void initializeLikeButton(Context context) {
        boolean bl = this.likeActionController != null && this.likeActionController.isObjectLiked();
        this.likeButton = new LikeButton(context, bl);
        this.likeButton.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                LikeView.this.toggleLike();
            }
        });
        context = new LinearLayout.LayoutParams(-2, -2);
        this.likeButton.setLayoutParams((ViewGroup.LayoutParams)context);
    }

    private void initializeLikeCountView(Context context) {
        this.likeBoxCountView = new LikeBoxCountView(context);
        context = new LinearLayout.LayoutParams(-1, -1);
        this.likeBoxCountView.setLayoutParams((ViewGroup.LayoutParams)context);
    }

    private void initializeSocialSentenceView(Context context) {
        this.socialSentenceView = new TextView(context);
        this.socialSentenceView.setTextSize(0, this.getResources().getDimension(R.dimen.com_facebook_likeview_text_size));
        this.socialSentenceView.setMaxLines(2);
        this.socialSentenceView.setTextColor(this.foregroundColor);
        this.socialSentenceView.setGravity(17);
        context = new LinearLayout.LayoutParams(-2, -1);
        this.socialSentenceView.setLayoutParams((ViewGroup.LayoutParams)context);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void parseAttributes(AttributeSet attributeSet) {
        if (attributeSet == null || this.getContext() == null || (attributeSet = this.getContext().obtainStyledAttributes(attributeSet, R.styleable.com_facebook_like_view)) == null) {
            return;
        }
        this.objectId = Utility.coerceValueIfNullOrEmpty(attributeSet.getString(R.styleable.com_facebook_like_view_object_id), null);
        this.objectType = ObjectType.fromInt(attributeSet.getInt(R.styleable.com_facebook_like_view_object_type, ObjectType.DEFAULT.getValue()));
        this.likeViewStyle = Style.fromInt(attributeSet.getInt(R.styleable.com_facebook_like_view_style, Style.DEFAULT.getValue()));
        if (this.likeViewStyle == null) {
            throw new IllegalArgumentException("Unsupported value for LikeView 'style'");
        }
        this.auxiliaryViewPosition = AuxiliaryViewPosition.fromInt(attributeSet.getInt(R.styleable.com_facebook_like_view_auxiliary_view_position, AuxiliaryViewPosition.DEFAULT.getValue()));
        if (this.auxiliaryViewPosition == null) {
            throw new IllegalArgumentException("Unsupported value for LikeView 'auxiliary_view_position'");
        }
        this.horizontalAlignment = HorizontalAlignment.fromInt(attributeSet.getInt(R.styleable.com_facebook_like_view_horizontal_alignment, HorizontalAlignment.DEFAULT.getValue()));
        if (this.horizontalAlignment == null) {
            throw new IllegalArgumentException("Unsupported value for LikeView 'horizontal_alignment'");
        }
        this.foregroundColor = attributeSet.getColor(R.styleable.com_facebook_like_view_foreground_color, -1);
        attributeSet.recycle();
    }

    private void setObjectIdAndTypeForced(String string2, ObjectType objectType) {
        this.tearDownObjectAssociations();
        this.objectId = string2;
        this.objectType = objectType;
        if (Utility.isNullOrEmpty(string2)) {
            return;
        }
        this.creationCallback = new LikeActionControllerCreationCallback();
        LikeActionController.getControllerForObjectId(string2, objectType, this.creationCallback);
    }

    private void tearDownObjectAssociations() {
        if (this.broadcastReceiver != null) {
            LocalBroadcastManager.getInstance(this.getContext()).unregisterReceiver(this.broadcastReceiver);
            this.broadcastReceiver = null;
        }
        if (this.creationCallback != null) {
            this.creationCallback.cancel();
            this.creationCallback = null;
        }
        this.likeActionController = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void toggleLike() {
        if (this.likeActionController != null) {
            Activity activity;
            Activity activity2 = activity = null;
            if (this.parentFragment == null) {
                Context context = this.getContext();
                if (context instanceof Activity) {
                    activity2 = (Activity)context;
                } else {
                    activity2 = activity;
                    if (context instanceof ContextWrapper) {
                        context = ((ContextWrapper)context).getBaseContext();
                        activity2 = activity;
                        if (context instanceof Activity) {
                            activity2 = (Activity)context;
                        }
                    }
                }
            }
            this.likeActionController.toggleLike(activity2, this.parentFragment, this.getAnalyticsParameters());
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateBoxCountCaretPosition() {
        switch (.$SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition[this.auxiliaryViewPosition.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.likeBoxCountView.setCaretPosition(LikeBoxCountView.LikeBoxCountViewCaretPosition.BOTTOM);
                return;
            }
            case 2: {
                this.likeBoxCountView.setCaretPosition(LikeBoxCountView.LikeBoxCountViewCaretPosition.TOP);
                return;
            }
            case 3: 
        }
        LikeBoxCountView likeBoxCountView = this.likeBoxCountView;
        LikeBoxCountView.LikeBoxCountViewCaretPosition likeBoxCountViewCaretPosition = this.horizontalAlignment == HorizontalAlignment.RIGHT ? LikeBoxCountView.LikeBoxCountViewCaretPosition.RIGHT : LikeBoxCountView.LikeBoxCountViewCaretPosition.LEFT;
        likeBoxCountView.setCaretPosition(likeBoxCountViewCaretPosition);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void updateLayout() {
        int n2 = 1;
        Object object = (FrameLayout.LayoutParams)this.containerView.getLayoutParams();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams)this.likeButton.getLayoutParams();
        int n3 = this.horizontalAlignment == HorizontalAlignment.LEFT ? 3 : (this.horizontalAlignment == HorizontalAlignment.CENTER ? 1 : 5);
        object.gravity = n3 | 48;
        layoutParams.gravity = n3;
        this.socialSentenceView.setVisibility(8);
        this.likeBoxCountView.setVisibility(8);
        if (this.likeViewStyle == Style.STANDARD && this.likeActionController != null && !Utility.isNullOrEmpty(this.likeActionController.getSocialSentence())) {
            object = this.socialSentenceView;
        } else {
            if (this.likeViewStyle != Style.BOX_COUNT) return;
            if (this.likeActionController == null) return;
            if (Utility.isNullOrEmpty(this.likeActionController.getLikeCountString())) return;
            this.updateBoxCountCaretPosition();
            object = this.likeBoxCountView;
        }
        object.setVisibility(0);
        ((LinearLayout.LayoutParams)object.getLayoutParams()).gravity = n3;
        layoutParams = this.containerView;
        n3 = n2;
        if (this.auxiliaryViewPosition == AuxiliaryViewPosition.INLINE) {
            n3 = 0;
        }
        layoutParams.setOrientation(n3);
        if (this.auxiliaryViewPosition == AuxiliaryViewPosition.TOP || this.auxiliaryViewPosition == AuxiliaryViewPosition.INLINE && this.horizontalAlignment == HorizontalAlignment.RIGHT) {
            this.containerView.removeView((View)this.likeButton);
            this.containerView.addView((View)this.likeButton);
        } else {
            this.containerView.removeView((View)object);
            this.containerView.addView((View)object);
        }
        switch (.$SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition[this.auxiliaryViewPosition.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                object.setPadding(this.edgePadding, this.edgePadding, this.edgePadding, this.internalPadding);
                return;
            }
            case 2: {
                object.setPadding(this.edgePadding, this.internalPadding, this.edgePadding, this.edgePadding);
                return;
            }
            case 3: 
        }
        if (this.horizontalAlignment == HorizontalAlignment.RIGHT) {
            object.setPadding(this.edgePadding, this.edgePadding, this.internalPadding, this.edgePadding);
            return;
        }
        object.setPadding(this.internalPadding, this.edgePadding, this.edgePadding, this.edgePadding);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateLikeStateAndLayout() {
        boolean bl = !this.implicitlyDisabled && !this.explicitlyDisabled;
        super.setEnabled(bl);
        this.likeButton.setEnabled(bl);
        if (this.likeActionController == null) {
            this.likeButton.setSelected(false);
            this.socialSentenceView.setText(null);
            this.likeBoxCountView.setText(null);
        } else {
            this.likeButton.setSelected(this.likeActionController.isObjectLiked());
            this.socialSentenceView.setText((CharSequence)this.likeActionController.getSocialSentence());
            this.likeBoxCountView.setText(this.likeActionController.getLikeCountString());
        }
        this.updateLayout();
    }

    public OnErrorListener getOnErrorListener() {
        return this.onErrorListener;
    }

    protected void onDetachedFromWindow() {
        this.setObjectIdAndType(null, ObjectType.UNKNOWN);
        super.onDetachedFromWindow();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setAuxiliaryViewPosition(AuxiliaryViewPosition auxiliaryViewPosition) {
        if (auxiliaryViewPosition == null) {
            auxiliaryViewPosition = AuxiliaryViewPosition.DEFAULT;
        }
        if (this.auxiliaryViewPosition != auxiliaryViewPosition) {
            this.auxiliaryViewPosition = auxiliaryViewPosition;
            this.updateLayout();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setEnabled(boolean bl) {
        bl = !bl;
        this.explicitlyDisabled = bl;
        this.updateLikeStateAndLayout();
    }

    public void setForegroundColor(int n2) {
        if (this.foregroundColor != n2) {
            this.socialSentenceView.setTextColor(n2);
        }
    }

    public void setFragment(Fragment fragment) {
        this.parentFragment = fragment;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setHorizontalAlignment(HorizontalAlignment horizontalAlignment) {
        if (horizontalAlignment == null) {
            horizontalAlignment = HorizontalAlignment.DEFAULT;
        }
        if (this.horizontalAlignment != horizontalAlignment) {
            this.horizontalAlignment = horizontalAlignment;
            this.updateLayout();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setLikeViewStyle(Style style2) {
        if (style2 == null) {
            style2 = Style.DEFAULT;
        }
        if (this.likeViewStyle != style2) {
            this.likeViewStyle = style2;
            this.updateLayout();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setObjectIdAndType(String string2, ObjectType objectType) {
        string2 = Utility.coerceValueIfNullOrEmpty(string2, null);
        if (objectType == null) {
            objectType = ObjectType.DEFAULT;
        }
        if (!Utility.areObjectsEqual(string2, this.objectId) || objectType != this.objectType) {
            this.setObjectIdAndTypeForced(string2, objectType);
            this.updateLikeStateAndLayout();
        }
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.onErrorListener = onErrorListener;
    }

    public static enum AuxiliaryViewPosition {
        BOTTOM("bottom", 0),
        INLINE("inline", 1),
        TOP("top", 2);
        
        static AuxiliaryViewPosition DEFAULT;
        private int intValue;
        private String stringValue;

        static {
            DEFAULT = BOTTOM;
        }

        private AuxiliaryViewPosition(String string3, int n3) {
            this.stringValue = string3;
            this.intValue = n3;
        }

        static AuxiliaryViewPosition fromInt(int n2) {
            for (AuxiliaryViewPosition auxiliaryViewPosition : AuxiliaryViewPosition.values()) {
                if (auxiliaryViewPosition.getValue() != n2) continue;
                return auxiliaryViewPosition;
            }
            return null;
        }

        private int getValue() {
            return this.intValue;
        }

        public String toString() {
            return this.stringValue;
        }
    }

    public static enum HorizontalAlignment {
        CENTER("center", 0),
        LEFT("left", 1),
        RIGHT("right", 2);
        
        static HorizontalAlignment DEFAULT;
        private int intValue;
        private String stringValue;

        static {
            DEFAULT = CENTER;
        }

        private HorizontalAlignment(String string3, int n3) {
            this.stringValue = string3;
            this.intValue = n3;
        }

        static HorizontalAlignment fromInt(int n2) {
            for (HorizontalAlignment horizontalAlignment : HorizontalAlignment.values()) {
                if (horizontalAlignment.getValue() != n2) continue;
                return horizontalAlignment;
            }
            return null;
        }

        private int getValue() {
            return this.intValue;
        }

        public String toString() {
            return this.stringValue;
        }
    }

    private class LikeActionControllerCreationCallback
    implements LikeActionController.CreationCallback {
        private boolean isCancelled;

        private LikeActionControllerCreationCallback() {
        }

        public void cancel() {
            this.isCancelled = true;
        }

        @Override
        public void onComplete(LikeActionController likeActionController, FacebookException facebookException) {
            if (this.isCancelled) {
                return;
            }
            FacebookException facebookException2 = facebookException;
            if (likeActionController != null) {
                if (likeActionController.shouldDisableView()) {
                    facebookException = new FacebookException("Cannot use LikeView. The device may not be supported.");
                }
                LikeView.this.associateWithLikeActionController(likeActionController);
                LikeView.this.updateLikeStateAndLayout();
                facebookException2 = facebookException;
            }
            if (facebookException2 != null && LikeView.this.onErrorListener != null) {
                LikeView.this.onErrorListener.onError(facebookException2);
            }
            LikeView.this.creationCallback = null;
        }
    }

    private class LikeControllerBroadcastReceiver
    extends BroadcastReceiver {
        private LikeControllerBroadcastReceiver() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public void onReceive(Context object, Intent intent) {
            object = intent.getAction();
            intent = intent.getExtras();
            boolean bl = true;
            if (intent != null) {
                String string2 = intent.getString("com.facebook.sdk.LikeActionController.OBJECT_ID");
                if (!Utility.isNullOrEmpty(string2) && !Utility.areObjectsEqual(LikeView.this.objectId, string2)) {
                    return;
                }
                bl = true;
                if (!bl) return;
            }
            if ("com.facebook.sdk.LikeActionController.UPDATED".equals(object)) {
                LikeView.this.updateLikeStateAndLayout();
                return;
            }
            if ("com.facebook.sdk.LikeActionController.DID_ERROR".equals(object)) {
                if (LikeView.this.onErrorListener == null) return;
                {
                    LikeView.this.onErrorListener.onError(NativeProtocol.getExceptionFromErrorData((Bundle)intent));
                    return;
                }
            }
            if (!"com.facebook.sdk.LikeActionController.DID_RESET".equals(object)) {
                return;
            }
            LikeView.this.setObjectIdAndTypeForced(LikeView.this.objectId, LikeView.this.objectType);
            LikeView.this.updateLikeStateAndLayout();
        }
    }

    public static enum ObjectType {
        UNKNOWN("unknown", 0),
        OPEN_GRAPH("open_graph", 1),
        PAGE("page", 2);
        
        public static ObjectType DEFAULT = UNKNOWN;
        private int intValue;
        private String stringValue;

        private ObjectType(String string3, int n3) {
            this.stringValue = string3;
            this.intValue = n3;
        }

        public static ObjectType fromInt(int n2) {
            for (ObjectType objectType : ObjectType.values()) {
                if (objectType.getValue() != n2) continue;
                return objectType;
            }
            return null;
        }

        public int getValue() {
            return this.intValue;
        }

        public String toString() {
            return this.stringValue;
        }
    }

    public static interface OnErrorListener {
        public void onError(FacebookException var1);
    }

    public static enum Style {
        STANDARD("standard", 0),
        BUTTON("button", 1),
        BOX_COUNT("box_count", 2);
        
        static Style DEFAULT;
        private int intValue;
        private String stringValue;

        static {
            DEFAULT = STANDARD;
        }

        private Style(String string3, int n3) {
            this.stringValue = string3;
            this.intValue = n3;
        }

        static Style fromInt(int n2) {
            for (Style style2 : Style.values()) {
                if (style2.getValue() != n2) continue;
                return style2;
            }
            return null;
        }

        private int getValue() {
            return this.intValue;
        }

        public String toString() {
            return this.stringValue;
        }
    }

}

