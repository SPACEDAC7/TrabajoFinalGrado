/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.PackageManager
 *  android.content.pm.ResolveInfo
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.database.DataSetObserver
 *  android.graphics.drawable.Drawable
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.View$OnClickListener
 *  android.view.View$OnLongClickListener
 *  android.view.View$OnTouchListener
 *  android.view.ViewGroup
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnGlobalLayoutListener
 *  android.widget.Adapter
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.BaseAdapter
 *  android.widget.FrameLayout
 *  android.widget.ImageView
 *  android.widget.ListAdapter
 *  android.widget.ListView
 *  android.widget.PopupWindow
 *  android.widget.PopupWindow$OnDismissListener
 *  android.widget.TextView
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.ShowableListMenu;
import android.support.v7.widget.ActivityChooserModel;
import android.support.v7.widget.ForwardingListener;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.ListPopupWindow;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class ActivityChooserView
extends ViewGroup
implements ActivityChooserModel.ActivityChooserModelClient {
    private static final String LOG_TAG = "ActivityChooserView";
    private final LinearLayoutCompat mActivityChooserContent;
    private final Drawable mActivityChooserContentBackground;
    final ActivityChooserViewAdapter mAdapter;
    private final Callbacks mCallbacks;
    private int mDefaultActionButtonContentDescription;
    final FrameLayout mDefaultActivityButton;
    private final ImageView mDefaultActivityButtonImage;
    final FrameLayout mExpandActivityOverflowButton;
    private final ImageView mExpandActivityOverflowButtonImage;
    int mInitialActivityCount;
    private boolean mIsAttachedToWindow;
    boolean mIsSelectingDefaultActivity;
    private final int mListPopupMaxWidth;
    private ListPopupWindow mListPopupWindow;
    final DataSetObserver mModelDataSetObserver;
    PopupWindow.OnDismissListener mOnDismissListener;
    private final ViewTreeObserver.OnGlobalLayoutListener mOnGlobalLayoutListener;
    ActionProvider mProvider;

    public ActivityChooserView(Context context) {
        this(context, null);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.mModelDataSetObserver = new DataSetObserver(){

            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.mAdapter.notifyDataSetChanged();
            }

            public void onInvalidated() {
                super.onInvalidated();
                ActivityChooserView.this.mAdapter.notifyDataSetInvalidated();
            }
        };
        this.mOnGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener(){

            /*
             * Enabled aggressive block sorting
             */
            public void onGlobalLayout() {
                if (!ActivityChooserView.this.isShowingPopup()) return;
                {
                    if (!ActivityChooserView.this.isShown()) {
                        ActivityChooserView.this.getListPopupWindow().dismiss();
                        return;
                    } else {
                        ActivityChooserView.this.getListPopupWindow().show();
                        if (ActivityChooserView.this.mProvider == null) return;
                        {
                            ActivityChooserView.this.mProvider.subUiVisibilityChanged(true);
                            return;
                        }
                    }
                }
            }
        };
        this.mInitialActivityCount = 4;
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.ActivityChooserView, n2, 0);
        this.mInitialActivityCount = typedArray.getInt(R.styleable.ActivityChooserView_initialActivityCount, 4);
        attributeSet = typedArray.getDrawable(R.styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        typedArray.recycle();
        LayoutInflater.from((Context)this.getContext()).inflate(R.layout.abc_activity_chooser_view, (ViewGroup)this, true);
        this.mCallbacks = new Callbacks();
        this.mActivityChooserContent = (LinearLayoutCompat)this.findViewById(R.id.activity_chooser_view_content);
        this.mActivityChooserContentBackground = this.mActivityChooserContent.getBackground();
        this.mDefaultActivityButton = (FrameLayout)this.findViewById(R.id.default_activity_button);
        this.mDefaultActivityButton.setOnClickListener((View.OnClickListener)this.mCallbacks);
        this.mDefaultActivityButton.setOnLongClickListener((View.OnLongClickListener)this.mCallbacks);
        this.mDefaultActivityButtonImage = (ImageView)this.mDefaultActivityButton.findViewById(R.id.image);
        typedArray = (FrameLayout)this.findViewById(R.id.expand_activities_button);
        typedArray.setOnClickListener((View.OnClickListener)this.mCallbacks);
        typedArray.setOnTouchListener((View.OnTouchListener)new ForwardingListener((View)typedArray){

            @Override
            public ShowableListMenu getPopup() {
                return ActivityChooserView.this.getListPopupWindow();
            }

            @Override
            protected boolean onForwardingStarted() {
                ActivityChooserView.this.showPopup();
                return true;
            }

            @Override
            protected boolean onForwardingStopped() {
                ActivityChooserView.this.dismissPopup();
                return true;
            }
        });
        this.mExpandActivityOverflowButton = typedArray;
        this.mExpandActivityOverflowButtonImage = (ImageView)typedArray.findViewById(R.id.image);
        this.mExpandActivityOverflowButtonImage.setImageDrawable((Drawable)attributeSet);
        this.mAdapter = new ActivityChooserViewAdapter();
        this.mAdapter.registerDataSetObserver(new DataSetObserver(){

            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.updateAppearance();
            }
        });
        context = context.getResources();
        this.mListPopupMaxWidth = Math.max(context.getDisplayMetrics().widthPixels / 2, context.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
    }

    public boolean dismissPopup() {
        if (this.isShowingPopup()) {
            this.getListPopupWindow().dismiss();
            ViewTreeObserver viewTreeObserver = this.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
            }
        }
        return true;
    }

    public ActivityChooserModel getDataModel() {
        return this.mAdapter.getDataModel();
    }

    ListPopupWindow getListPopupWindow() {
        if (this.mListPopupWindow == null) {
            this.mListPopupWindow = new ListPopupWindow(this.getContext());
            this.mListPopupWindow.setAdapter((ListAdapter)this.mAdapter);
            this.mListPopupWindow.setAnchorView((View)this);
            this.mListPopupWindow.setModal(true);
            this.mListPopupWindow.setOnItemClickListener(this.mCallbacks);
            this.mListPopupWindow.setOnDismissListener(this.mCallbacks);
        }
        return this.mListPopupWindow;
    }

    public boolean isShowingPopup() {
        return this.getListPopupWindow().isShowing();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ActivityChooserModel activityChooserModel = this.mAdapter.getDataModel();
        if (activityChooserModel != null) {
            activityChooserModel.registerObserver((Object)this.mModelDataSetObserver);
        }
        this.mIsAttachedToWindow = true;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActivityChooserModel activityChooserModel = this.mAdapter.getDataModel();
        if (activityChooserModel != null) {
            activityChooserModel.unregisterObserver((Object)this.mModelDataSetObserver);
        }
        if ((activityChooserModel = this.getViewTreeObserver()).isAlive()) {
            activityChooserModel.removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
        }
        if (this.isShowingPopup()) {
            this.dismissPopup();
        }
        this.mIsAttachedToWindow = false;
    }

    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        this.mActivityChooserContent.layout(0, 0, n4 - n2, n5 - n3);
        if (!this.isShowingPopup()) {
            this.dismissPopup();
        }
    }

    protected void onMeasure(int n2, int n3) {
        LinearLayoutCompat linearLayoutCompat = this.mActivityChooserContent;
        int n4 = n3;
        if (this.mDefaultActivityButton.getVisibility() != 0) {
            n4 = View.MeasureSpec.makeMeasureSpec((int)View.MeasureSpec.getSize((int)n3), (int)1073741824);
        }
        this.measureChild((View)linearLayoutCompat, n2, n4);
        this.setMeasuredDimension(linearLayoutCompat.getMeasuredWidth(), linearLayoutCompat.getMeasuredHeight());
    }

    @Override
    public void setActivityChooserModel(ActivityChooserModel activityChooserModel) {
        this.mAdapter.setDataModel(activityChooserModel);
        if (this.isShowingPopup()) {
            this.dismissPopup();
            this.showPopup();
        }
    }

    public void setDefaultActionButtonContentDescription(int n2) {
        this.mDefaultActionButtonContentDescription = n2;
    }

    public void setExpandActivityOverflowButtonContentDescription(int n2) {
        String string2 = this.getContext().getString(n2);
        this.mExpandActivityOverflowButtonImage.setContentDescription((CharSequence)string2);
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable2) {
        this.mExpandActivityOverflowButtonImage.setImageDrawable(drawable2);
    }

    public void setInitialActivityCount(int n2) {
        this.mInitialActivityCount = n2;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setProvider(ActionProvider actionProvider) {
        this.mProvider = actionProvider;
    }

    public boolean showPopup() {
        if (this.isShowingPopup() || !this.mIsAttachedToWindow) {
            return false;
        }
        this.mIsSelectingDefaultActivity = false;
        this.showPopupUnchecked(this.mInitialActivityCount);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    void showPopupUnchecked(int n2) {
        ListPopupWindow listPopupWindow;
        if (this.mAdapter.getDataModel() == null) {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        this.getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
        boolean bl = this.mDefaultActivityButton.getVisibility() == 0;
        int n3 = this.mAdapter.getActivityCount();
        int n4 = bl ? 1 : 0;
        if (n2 != Integer.MAX_VALUE && n3 > n2 + n4) {
            this.mAdapter.setShowFooterView(true);
            this.mAdapter.setMaxActivityCount(n2 - 1);
        } else {
            this.mAdapter.setShowFooterView(false);
            this.mAdapter.setMaxActivityCount(n2);
        }
        if (!(listPopupWindow = this.getListPopupWindow()).isShowing()) {
            if (this.mIsSelectingDefaultActivity || !bl) {
                this.mAdapter.setShowDefaultActivity(true, bl);
            } else {
                this.mAdapter.setShowDefaultActivity(false, false);
            }
            listPopupWindow.setContentWidth(Math.min(this.mAdapter.measureContentWidth(), this.mListPopupMaxWidth));
            listPopupWindow.show();
            if (this.mProvider != null) {
                this.mProvider.subUiVisibilityChanged(true);
            }
            listPopupWindow.getListView().setContentDescription((CharSequence)this.getContext().getString(R.string.abc_activitychooserview_choose_application));
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void updateAppearance() {
        if (this.mAdapter.getCount() > 0) {
            this.mExpandActivityOverflowButton.setEnabled(true);
        } else {
            this.mExpandActivityOverflowButton.setEnabled(false);
        }
        int n2 = this.mAdapter.getActivityCount();
        int n3 = this.mAdapter.getHistorySize();
        if (n2 == 1 || n2 > 1 && n3 > 0) {
            this.mDefaultActivityButton.setVisibility(0);
            Object object = this.mAdapter.getDefaultActivity();
            PackageManager packageManager = this.getContext().getPackageManager();
            this.mDefaultActivityButtonImage.setImageDrawable(object.loadIcon(packageManager));
            if (this.mDefaultActionButtonContentDescription != 0) {
                object = object.loadLabel(packageManager);
                object = this.getContext().getString(this.mDefaultActionButtonContentDescription, new Object[]{object});
                this.mDefaultActivityButton.setContentDescription((CharSequence)object);
            }
        } else {
            this.mDefaultActivityButton.setVisibility(8);
        }
        if (this.mDefaultActivityButton.getVisibility() == 0) {
            this.mActivityChooserContent.setBackgroundDrawable(this.mActivityChooserContentBackground);
            return;
        }
        this.mActivityChooserContent.setBackgroundDrawable(null);
    }

    private class ActivityChooserViewAdapter
    extends BaseAdapter {
        private static final int ITEM_VIEW_TYPE_ACTIVITY = 0;
        private static final int ITEM_VIEW_TYPE_COUNT = 3;
        private static final int ITEM_VIEW_TYPE_FOOTER = 1;
        public static final int MAX_ACTIVITY_COUNT_DEFAULT = 4;
        public static final int MAX_ACTIVITY_COUNT_UNLIMITED = Integer.MAX_VALUE;
        private ActivityChooserModel mDataModel;
        private boolean mHighlightDefaultActivity;
        private int mMaxActivityCount;
        private boolean mShowDefaultActivity;
        private boolean mShowFooterView;

        ActivityChooserViewAdapter() {
            this.mMaxActivityCount = 4;
        }

        public int getActivityCount() {
            return this.mDataModel.getActivityCount();
        }

        public int getCount() {
            int n2;
            int n3 = n2 = this.mDataModel.getActivityCount();
            if (!this.mShowDefaultActivity) {
                n3 = n2;
                if (this.mDataModel.getDefaultActivity() != null) {
                    n3 = n2 - 1;
                }
            }
            n3 = n2 = Math.min(n3, this.mMaxActivityCount);
            if (this.mShowFooterView) {
                n3 = n2 + 1;
            }
            return n3;
        }

        public ActivityChooserModel getDataModel() {
            return this.mDataModel;
        }

        public ResolveInfo getDefaultActivity() {
            return this.mDataModel.getDefaultActivity();
        }

        public int getHistorySize() {
            return this.mDataModel.getHistorySize();
        }

        public Object getItem(int n2) {
            switch (this.getItemViewType(n2)) {
                default: {
                    throw new IllegalArgumentException();
                }
                case 1: {
                    return null;
                }
                case 0: 
            }
            int n3 = n2;
            if (!this.mShowDefaultActivity) {
                n3 = n2;
                if (this.mDataModel.getDefaultActivity() != null) {
                    n3 = n2 + 1;
                }
            }
            return this.mDataModel.getActivity(n3);
        }

        public long getItemId(int n2) {
            return n2;
        }

        public int getItemViewType(int n2) {
            if (this.mShowFooterView && n2 == this.getCount() - 1) {
                return 1;
            }
            return 0;
        }

        public boolean getShowDefaultActivity() {
            return this.mShowDefaultActivity;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public View getView(int n2, View view, ViewGroup viewGroup) {
            View view2;
            block9 : {
                switch (this.getItemViewType(n2)) {
                    default: {
                        throw new IllegalArgumentException();
                    }
                    case 1: {
                        View view3;
                        if (view != null) {
                            view3 = view;
                            if (view.getId() == 1) return view3;
                        }
                        view3 = LayoutInflater.from((Context)ActivityChooserView.this.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                        view3.setId(1);
                        ((TextView)view3.findViewById(R.id.title)).setText((CharSequence)ActivityChooserView.this.getContext().getString(R.string.abc_activity_chooser_view_see_all));
                        return view3;
                    }
                    case 0: 
                }
                if (view != null) {
                    view2 = view;
                    if (view.getId() == R.id.list_item) break block9;
                }
                view2 = LayoutInflater.from((Context)ActivityChooserView.this.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
            }
            view = ActivityChooserView.this.getContext().getPackageManager();
            viewGroup = (ImageView)view2.findViewById(R.id.icon);
            ResolveInfo resolveInfo = (ResolveInfo)this.getItem(n2);
            viewGroup.setImageDrawable(resolveInfo.loadIcon((PackageManager)view));
            ((TextView)view2.findViewById(R.id.title)).setText(resolveInfo.loadLabel((PackageManager)view));
            if (this.mShowDefaultActivity && n2 == 0 && this.mHighlightDefaultActivity) {
                ViewCompat.setActivated(view2, true);
                do {
                    return view2;
                    break;
                } while (true);
            }
            ViewCompat.setActivated(view2, false);
            return view2;
        }

        public int getViewTypeCount() {
            return 3;
        }

        public int measureContentWidth() {
            int n2 = this.mMaxActivityCount;
            this.mMaxActivityCount = Integer.MAX_VALUE;
            int n3 = 0;
            View view = null;
            int n4 = View.MeasureSpec.makeMeasureSpec((int)0, (int)0);
            int n5 = View.MeasureSpec.makeMeasureSpec((int)0, (int)0);
            int n6 = this.getCount();
            for (int i2 = 0; i2 < n6; ++i2) {
                view = this.getView(i2, view, null);
                view.measure(n4, n5);
                n3 = Math.max(n3, view.getMeasuredWidth());
            }
            this.mMaxActivityCount = n2;
            return n3;
        }

        public void setDataModel(ActivityChooserModel activityChooserModel) {
            ActivityChooserModel activityChooserModel2 = ActivityChooserView.this.mAdapter.getDataModel();
            if (activityChooserModel2 != null && ActivityChooserView.this.isShown()) {
                activityChooserModel2.unregisterObserver((Object)ActivityChooserView.this.mModelDataSetObserver);
            }
            this.mDataModel = activityChooserModel;
            if (activityChooserModel != null && ActivityChooserView.this.isShown()) {
                activityChooserModel.registerObserver((Object)ActivityChooserView.this.mModelDataSetObserver);
            }
            this.notifyDataSetChanged();
        }

        public void setMaxActivityCount(int n2) {
            if (this.mMaxActivityCount != n2) {
                this.mMaxActivityCount = n2;
                this.notifyDataSetChanged();
            }
        }

        public void setShowDefaultActivity(boolean bl, boolean bl2) {
            if (this.mShowDefaultActivity != bl || this.mHighlightDefaultActivity != bl2) {
                this.mShowDefaultActivity = bl;
                this.mHighlightDefaultActivity = bl2;
                this.notifyDataSetChanged();
            }
        }

        public void setShowFooterView(boolean bl) {
            if (this.mShowFooterView != bl) {
                this.mShowFooterView = bl;
                this.notifyDataSetChanged();
            }
        }
    }

    private class Callbacks
    implements AdapterView.OnItemClickListener,
    View.OnClickListener,
    View.OnLongClickListener,
    PopupWindow.OnDismissListener {
        Callbacks() {
        }

        private void notifyOnDismissListener() {
            if (ActivityChooserView.this.mOnDismissListener != null) {
                ActivityChooserView.this.mOnDismissListener.onDismiss();
            }
        }

        public void onClick(View view) {
            if (view == ActivityChooserView.this.mDefaultActivityButton) {
                ActivityChooserView.this.dismissPopup();
                view = ActivityChooserView.this.mAdapter.getDefaultActivity();
                int n2 = ActivityChooserView.this.mAdapter.getDataModel().getActivityIndex((ResolveInfo)view);
                view = ActivityChooserView.this.mAdapter.getDataModel().chooseActivity(n2);
                if (view != null) {
                    view.addFlags(524288);
                    ActivityChooserView.this.getContext().startActivity((Intent)view);
                }
                return;
            }
            if (view == ActivityChooserView.this.mExpandActivityOverflowButton) {
                ActivityChooserView.this.mIsSelectingDefaultActivity = false;
                ActivityChooserView.this.showPopupUnchecked(ActivityChooserView.this.mInitialActivityCount);
                return;
            }
            throw new IllegalArgumentException();
        }

        public void onDismiss() {
            this.notifyOnDismissListener();
            if (ActivityChooserView.this.mProvider != null) {
                ActivityChooserView.this.mProvider.subUiVisibilityChanged(false);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        public void onItemClick(AdapterView<?> intent, View view, int n2, long l2) {
            switch (((ActivityChooserViewAdapter)intent.getAdapter()).getItemViewType(n2)) {
                default: {
                    throw new IllegalArgumentException();
                }
                case 1: {
                    ActivityChooserView.this.showPopupUnchecked(Integer.MAX_VALUE);
                    return;
                }
                case 0: {
                    ActivityChooserView.this.dismissPopup();
                    if (ActivityChooserView.this.mIsSelectingDefaultActivity) {
                        if (n2 <= 0) return;
                        ActivityChooserView.this.mAdapter.getDataModel().setDefaultActivity(n2);
                        return;
                    }
                    if (!ActivityChooserView.this.mAdapter.getShowDefaultActivity()) {
                        ++n2;
                    }
                    if ((intent = ActivityChooserView.this.mAdapter.getDataModel().chooseActivity(n2)) == null) return;
                    intent.addFlags(524288);
                    ActivityChooserView.this.getContext().startActivity(intent);
                    return;
                }
            }
        }

        public boolean onLongClick(View view) {
            if (view == ActivityChooserView.this.mDefaultActivityButton) {
                if (ActivityChooserView.this.mAdapter.getCount() > 0) {
                    ActivityChooserView.this.mIsSelectingDefaultActivity = true;
                    ActivityChooserView.this.showPopupUnchecked(ActivityChooserView.this.mInitialActivityCount);
                }
                return true;
            }
            throw new IllegalArgumentException();
        }
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static class InnerLayout
    extends LinearLayoutCompat {
        private static final int[] TINT_ATTRS = new int[]{16842964};

        public InnerLayout(Context object, AttributeSet attributeSet) {
            super((Context)object, attributeSet);
            object = TintTypedArray.obtainStyledAttributes((Context)object, attributeSet, TINT_ATTRS);
            this.setBackgroundDrawable(object.getDrawable(0));
            object.recycle();
        }
    }

}

