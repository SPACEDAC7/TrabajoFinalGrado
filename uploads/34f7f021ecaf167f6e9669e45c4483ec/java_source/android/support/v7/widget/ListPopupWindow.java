/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.database.DataSetObserver
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Handler
 *  android.os.IBinder
 *  android.os.Looper
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.view.KeyEvent
 *  android.view.KeyEvent$DispatcherState
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.View$OnTouchListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewParent
 *  android.widget.AbsListView
 *  android.widget.AbsListView$OnScrollListener
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.AdapterView$OnItemSelectedListener
 *  android.widget.LinearLayout
 *  android.widget.LinearLayout$LayoutParams
 *  android.widget.ListAdapter
 *  android.widget.ListView
 *  android.widget.PopupWindow
 *  android.widget.PopupWindow$OnDismissListener
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.ShowableListMenu;
import android.support.v7.widget.AppCompatPopupWindow;
import android.support.v7.widget.DropDownListView;
import android.support.v7.widget.ForwardingListener;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

public class ListPopupWindow
implements ShowableListMenu {
    private static final boolean DEBUG = false;
    static final int EXPAND_LIST_TIMEOUT = 250;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    public static final int MATCH_PARENT = -1;
    public static final int POSITION_PROMPT_ABOVE = 0;
    public static final int POSITION_PROMPT_BELOW = 1;
    private static final String TAG = "ListPopupWindow";
    public static final int WRAP_CONTENT = -2;
    private static Method sClipToWindowEnabledMethod;
    private static Method sGetMaxAvailableHeightMethod;
    private static Method sSetEpicenterBoundsMethod;
    private ListAdapter mAdapter;
    private Context mContext;
    private boolean mDropDownAlwaysVisible = false;
    private View mDropDownAnchorView;
    private int mDropDownGravity = 0;
    private int mDropDownHeight = -2;
    private int mDropDownHorizontalOffset;
    DropDownListView mDropDownList;
    private Drawable mDropDownListHighlight;
    private int mDropDownVerticalOffset;
    private boolean mDropDownVerticalOffsetSet;
    private int mDropDownWidth = -2;
    private int mDropDownWindowLayoutType = 1002;
    private Rect mEpicenterBounds;
    private boolean mForceIgnoreOutsideTouch = false;
    final Handler mHandler;
    private final ListSelectorHider mHideSelector;
    private boolean mIsAnimatedFromAnchor = true;
    private AdapterView.OnItemClickListener mItemClickListener;
    private AdapterView.OnItemSelectedListener mItemSelectedListener;
    int mListItemExpandMaximum = Integer.MAX_VALUE;
    private boolean mModal;
    private DataSetObserver mObserver;
    PopupWindow mPopup;
    private int mPromptPosition = 0;
    private View mPromptView;
    final ResizePopupRunnable mResizePopupRunnable;
    private final PopupScrollListener mScrollListener;
    private Runnable mShowDropDownRunnable;
    private final Rect mTempRect;
    private final PopupTouchInterceptor mTouchInterceptor;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static {
        try {
            sClipToWindowEnabledMethod = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
        }
        catch (NoSuchMethodException var0) {
            Log.i((String)"ListPopupWindow", (String)"Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
        try {
            sGetMaxAvailableHeightMethod = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
        }
        catch (NoSuchMethodException var0_1) {
            Log.i((String)"ListPopupWindow", (String)"Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
        }
        try {
            sSetEpicenterBoundsMethod = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            return;
        }
        catch (NoSuchMethodException var0_2) {
            Log.i((String)"ListPopupWindow", (String)"Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            return;
        }
    }

    public ListPopupWindow(@NonNull Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int n2) {
        this(context, attributeSet, n2, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int n2, @StyleRes int n3) {
        this.mResizePopupRunnable = new ResizePopupRunnable();
        this.mTouchInterceptor = new PopupTouchInterceptor();
        this.mScrollListener = new PopupScrollListener();
        this.mHideSelector = new ListSelectorHider();
        this.mTempRect = new Rect();
        this.mContext = context;
        this.mHandler = new Handler(context.getMainLooper());
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, n2, n3);
        this.mDropDownHorizontalOffset = typedArray.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.mDropDownVerticalOffset = typedArray.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.mDropDownVerticalOffset != 0) {
            this.mDropDownVerticalOffsetSet = true;
        }
        typedArray.recycle();
        this.mPopup = Build.VERSION.SDK_INT >= 11 ? new AppCompatPopupWindow(context, attributeSet, n2, n3) : new AppCompatPopupWindow(context, attributeSet, n2);
        this.mPopup.setInputMethodMode(1);
    }

    /*
     * Enabled aggressive block sorting
     */
    private int buildDropDown() {
        boolean bl;
        int n2;
        Object object;
        int n3 = 0;
        int n4 = 0;
        if (this.mDropDownList == null) {
            Context context = this.mContext;
            this.mShowDropDownRunnable = new Runnable(){

                @Override
                public void run() {
                    View view = ListPopupWindow.this.getAnchorView();
                    if (view != null && view.getWindowToken() != null) {
                        ListPopupWindow.this.show();
                    }
                }
            };
            bl = !this.mModal;
            this.mDropDownList = this.createDropDownListView(context, bl);
            if (this.mDropDownListHighlight != null) {
                this.mDropDownList.setSelector(this.mDropDownListHighlight);
            }
            this.mDropDownList.setAdapter(this.mAdapter);
            this.mDropDownList.setOnItemClickListener(this.mItemClickListener);
            this.mDropDownList.setFocusable(true);
            this.mDropDownList.setFocusableInTouchMode(true);
            this.mDropDownList.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener(){

                public void onItemSelected(AdapterView<?> object, View view, int n2, long l2) {
                    if (n2 != -1 && (object = ListPopupWindow.this.mDropDownList) != null) {
                        object.setListSelectionHidden(false);
                    }
                }

                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.mDropDownList.setOnScrollListener((AbsListView.OnScrollListener)this.mScrollListener);
            if (this.mItemSelectedListener != null) {
                this.mDropDownList.setOnItemSelectedListener(this.mItemSelectedListener);
            }
            DropDownListView dropDownListView = this.mDropDownList;
            View view = this.mPromptView;
            object = dropDownListView;
            if (view != null) {
                object = new LinearLayout(context);
                object.setOrientation(1);
                context = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                switch (this.mPromptPosition) {
                    default: {
                        Log.e((String)"ListPopupWindow", (String)("Invalid hint position " + this.mPromptPosition));
                        break;
                    }
                    case 1: {
                        object.addView((View)dropDownListView, (ViewGroup.LayoutParams)context);
                        object.addView(view);
                        break;
                    }
                    case 0: {
                        object.addView(view);
                        object.addView((View)dropDownListView, (ViewGroup.LayoutParams)context);
                    }
                }
                if (this.mDropDownWidth >= 0) {
                    n4 = Integer.MIN_VALUE;
                    n3 = this.mDropDownWidth;
                } else {
                    n4 = 0;
                    n3 = 0;
                }
                view.measure(View.MeasureSpec.makeMeasureSpec((int)n3, (int)n4), 0);
                dropDownListView = (LinearLayout.LayoutParams)view.getLayoutParams();
                n4 = view.getMeasuredHeight() + dropDownListView.topMargin + dropDownListView.bottomMargin;
            }
            this.mPopup.setContentView((View)object);
        } else {
            object = (ViewGroup)this.mPopup.getContentView();
            object = this.mPromptView;
            n4 = n3;
            if (object != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams)object.getLayoutParams();
                n4 = object.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
        }
        if ((object = this.mPopup.getBackground()) != null) {
            object.getPadding(this.mTempRect);
            n2 = n3 = this.mTempRect.top + this.mTempRect.bottom;
            if (!this.mDropDownVerticalOffsetSet) {
                this.mDropDownVerticalOffset = - this.mTempRect.top;
                n2 = n3;
            }
        } else {
            this.mTempRect.setEmpty();
            n2 = 0;
        }
        bl = this.mPopup.getInputMethodMode() == 2;
        int n5 = this.getMaxAvailableHeight(this.getAnchorView(), this.mDropDownVerticalOffset, bl);
        if (this.mDropDownAlwaysVisible || this.mDropDownHeight == -1) {
            return n5 + n2;
        }
        switch (this.mDropDownWidth) {
            default: {
                n3 = View.MeasureSpec.makeMeasureSpec((int)this.mDropDownWidth, (int)1073741824);
                break;
            }
            case -2: {
                n3 = View.MeasureSpec.makeMeasureSpec((int)(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.mTempRect.left + this.mTempRect.right)), (int)Integer.MIN_VALUE);
                break;
            }
            case -1: {
                n3 = View.MeasureSpec.makeMeasureSpec((int)(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.mTempRect.left + this.mTempRect.right)), (int)1073741824);
            }
        }
        n5 = this.mDropDownList.measureHeightOfChildrenCompat(n3, 0, -1, n5 - n4, -1);
        n3 = n4;
        if (n5 > 0) {
            n3 = n4 + (n2 + (this.mDropDownList.getPaddingTop() + this.mDropDownList.getPaddingBottom()));
        }
        return n5 + n3;
    }

    private int getMaxAvailableHeight(View view, int n2, boolean bl) {
        if (sGetMaxAvailableHeightMethod != null) {
            try {
                int n3 = (Integer)sGetMaxAvailableHeightMethod.invoke((Object)this.mPopup, new Object[]{view, n2, bl});
                return n3;
            }
            catch (Exception var4_5) {
                Log.i((String)"ListPopupWindow", (String)"Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return this.mPopup.getMaxAvailableHeight(view, n2);
    }

    private static boolean isConfirmKey(int n2) {
        if (n2 == 66 || n2 == 23) {
            return true;
        }
        return false;
    }

    private void removePromptView() {
        ViewParent viewParent;
        if (this.mPromptView != null && (viewParent = this.mPromptView.getParent()) instanceof ViewGroup) {
            ((ViewGroup)viewParent).removeView(this.mPromptView);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void setPopupClipToScreenEnabled(boolean bl) {
        if (sClipToWindowEnabledMethod == null) return;
        try {
            sClipToWindowEnabledMethod.invoke((Object)this.mPopup, bl);
            return;
        }
        catch (Exception var2_2) {
            Log.i((String)"ListPopupWindow", (String)"Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            return;
        }
    }

    public void clearListSelection() {
        DropDownListView dropDownListView = this.mDropDownList;
        if (dropDownListView != null) {
            dropDownListView.setListSelectionHidden(true);
            dropDownListView.requestLayout();
        }
    }

    public View.OnTouchListener createDragToOpenListener(View view) {
        return new ForwardingListener(view){

            @Override
            public ListPopupWindow getPopup() {
                return ListPopupWindow.this;
            }
        };
    }

    @NonNull
    DropDownListView createDropDownListView(Context context, boolean bl) {
        return new DropDownListView(context, bl);
    }

    @Override
    public void dismiss() {
        this.mPopup.dismiss();
        this.removePromptView();
        this.mPopup.setContentView(null);
        this.mDropDownList = null;
        this.mHandler.removeCallbacks((Runnable)this.mResizePopupRunnable);
    }

    @Nullable
    public View getAnchorView() {
        return this.mDropDownAnchorView;
    }

    @StyleRes
    public int getAnimationStyle() {
        return this.mPopup.getAnimationStyle();
    }

    @Nullable
    public Drawable getBackground() {
        return this.mPopup.getBackground();
    }

    public int getHeight() {
        return this.mDropDownHeight;
    }

    public int getHorizontalOffset() {
        return this.mDropDownHorizontalOffset;
    }

    public int getInputMethodMode() {
        return this.mPopup.getInputMethodMode();
    }

    @Nullable
    @Override
    public ListView getListView() {
        return this.mDropDownList;
    }

    public int getPromptPosition() {
        return this.mPromptPosition;
    }

    @Nullable
    public Object getSelectedItem() {
        if (!this.isShowing()) {
            return null;
        }
        return this.mDropDownList.getSelectedItem();
    }

    public long getSelectedItemId() {
        if (!this.isShowing()) {
            return Long.MIN_VALUE;
        }
        return this.mDropDownList.getSelectedItemId();
    }

    public int getSelectedItemPosition() {
        if (!this.isShowing()) {
            return -1;
        }
        return this.mDropDownList.getSelectedItemPosition();
    }

    @Nullable
    public View getSelectedView() {
        if (!this.isShowing()) {
            return null;
        }
        return this.mDropDownList.getSelectedView();
    }

    public int getSoftInputMode() {
        return this.mPopup.getSoftInputMode();
    }

    public int getVerticalOffset() {
        if (!this.mDropDownVerticalOffsetSet) {
            return 0;
        }
        return this.mDropDownVerticalOffset;
    }

    public int getWidth() {
        return this.mDropDownWidth;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public boolean isDropDownAlwaysVisible() {
        return this.mDropDownAlwaysVisible;
    }

    public boolean isInputMethodNotNeeded() {
        if (this.mPopup.getInputMethodMode() == 2) {
            return true;
        }
        return false;
    }

    public boolean isModal() {
        return this.mModal;
    }

    @Override
    public boolean isShowing() {
        return this.mPopup.isShowing();
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onKeyDown(int n2, @NonNull KeyEvent keyEvent) {
        if (!this.isShowing()) return false;
        if (n2 == 62) return false;
        if (this.mDropDownList.getSelectedItemPosition() < 0) {
            if (ListPopupWindow.isConfirmKey(n2)) return false;
        }
        int n3 = this.mDropDownList.getSelectedItemPosition();
        boolean bl = !this.mPopup.isAboveAnchor();
        ListAdapter listAdapter = this.mAdapter;
        int n4 = Integer.MAX_VALUE;
        int n5 = Integer.MIN_VALUE;
        if (listAdapter != null) {
            boolean bl2 = listAdapter.areAllItemsEnabled();
            n4 = bl2 ? 0 : this.mDropDownList.lookForSelectablePosition(0, true);
            n5 = bl2 ? listAdapter.getCount() - 1 : this.mDropDownList.lookForSelectablePosition(listAdapter.getCount() - 1, false);
        }
        if (bl && n2 == 19 && n3 <= n4 || !bl && n2 == 20 && n3 >= n5) {
            this.clearListSelection();
            this.mPopup.setInputMethodMode(1);
            this.show();
            return true;
        }
        this.mDropDownList.setListSelectionHidden(false);
        if (this.mDropDownList.onKeyDown(n2, keyEvent)) {
            this.mPopup.setInputMethodMode(2);
            this.mDropDownList.requestFocusFromTouch();
            this.show();
            switch (n2) {
                case 19: 
                case 20: 
                case 23: 
                case 66: {
                    return true;
                }
            }
            return false;
        }
        if (bl && n2 == 20) {
            if (n3 != n5) return false;
            return true;
        }
        if (bl) return false;
        if (n2 != 19) return false;
        if (n3 != n4) return false;
        return true;
    }

    public boolean onKeyPreIme(int n2, @NonNull KeyEvent keyEvent) {
        if (n2 == 4 && this.isShowing()) {
            View view = this.mDropDownAnchorView;
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                if ((view = view.getKeyDispatcherState()) != null) {
                    view.startTracking(keyEvent, (Object)this);
                }
                return true;
            }
            if (keyEvent.getAction() == 1) {
                if ((view = view.getKeyDispatcherState()) != null) {
                    view.handleUpEvent(keyEvent);
                }
                if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                    this.dismiss();
                    return true;
                }
            }
        }
        return false;
    }

    public boolean onKeyUp(int n2, @NonNull KeyEvent keyEvent) {
        if (this.isShowing() && this.mDropDownList.getSelectedItemPosition() >= 0) {
            boolean bl = this.mDropDownList.onKeyUp(n2, keyEvent);
            if (bl && ListPopupWindow.isConfirmKey(n2)) {
                this.dismiss();
            }
            return bl;
        }
        return false;
    }

    public boolean performItemClick(int n2) {
        if (this.isShowing()) {
            if (this.mItemClickListener != null) {
                DropDownListView dropDownListView = this.mDropDownList;
                View view = dropDownListView.getChildAt(n2 - dropDownListView.getFirstVisiblePosition());
                ListAdapter listAdapter = dropDownListView.getAdapter();
                this.mItemClickListener.onItemClick((AdapterView)dropDownListView, view, n2, listAdapter.getItemId(n2));
            }
            return true;
        }
        return false;
    }

    public void postShow() {
        this.mHandler.post(this.mShowDropDownRunnable);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setAdapter(@Nullable ListAdapter listAdapter) {
        if (this.mObserver == null) {
            this.mObserver = new PopupDataSetObserver();
        } else if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.mObserver);
        }
        this.mAdapter = listAdapter;
        if (this.mAdapter != null) {
            listAdapter.registerDataSetObserver(this.mObserver);
        }
        if (this.mDropDownList != null) {
            this.mDropDownList.setAdapter(this.mAdapter);
        }
    }

    public void setAnchorView(@Nullable View view) {
        this.mDropDownAnchorView = view;
    }

    public void setAnimationStyle(@StyleRes int n2) {
        this.mPopup.setAnimationStyle(n2);
    }

    public void setBackgroundDrawable(@Nullable Drawable drawable2) {
        this.mPopup.setBackgroundDrawable(drawable2);
    }

    public void setContentWidth(int n2) {
        Drawable drawable2 = this.mPopup.getBackground();
        if (drawable2 != null) {
            drawable2.getPadding(this.mTempRect);
            this.mDropDownWidth = this.mTempRect.left + this.mTempRect.right + n2;
            return;
        }
        this.setWidth(n2);
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setDropDownAlwaysVisible(boolean bl) {
        this.mDropDownAlwaysVisible = bl;
    }

    public void setDropDownGravity(int n2) {
        this.mDropDownGravity = n2;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setEpicenterBounds(Rect rect) {
        this.mEpicenterBounds = rect;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public void setForceIgnoreOutsideTouch(boolean bl) {
        this.mForceIgnoreOutsideTouch = bl;
    }

    public void setHeight(int n2) {
        this.mDropDownHeight = n2;
    }

    public void setHorizontalOffset(int n2) {
        this.mDropDownHorizontalOffset = n2;
    }

    public void setInputMethodMode(int n2) {
        this.mPopup.setInputMethodMode(n2);
    }

    void setListItemExpandMax(int n2) {
        this.mListItemExpandMaximum = n2;
    }

    public void setListSelector(Drawable drawable2) {
        this.mDropDownListHighlight = drawable2;
    }

    public void setModal(boolean bl) {
        this.mModal = bl;
        this.mPopup.setFocusable(bl);
    }

    public void setOnDismissListener(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.mPopup.setOnDismissListener(onDismissListener);
    }

    public void setOnItemClickListener(@Nullable AdapterView.OnItemClickListener onItemClickListener) {
        this.mItemClickListener = onItemClickListener;
    }

    public void setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.mItemSelectedListener = onItemSelectedListener;
    }

    public void setPromptPosition(int n2) {
        this.mPromptPosition = n2;
    }

    public void setPromptView(@Nullable View view) {
        boolean bl = this.isShowing();
        if (bl) {
            this.removePromptView();
        }
        this.mPromptView = view;
        if (bl) {
            this.show();
        }
    }

    public void setSelection(int n2) {
        DropDownListView dropDownListView = this.mDropDownList;
        if (this.isShowing() && dropDownListView != null) {
            dropDownListView.setListSelectionHidden(false);
            dropDownListView.setSelection(n2);
            if (Build.VERSION.SDK_INT >= 11 && dropDownListView.getChoiceMode() != 0) {
                dropDownListView.setItemChecked(n2, true);
            }
        }
    }

    public void setSoftInputMode(int n2) {
        this.mPopup.setSoftInputMode(n2);
    }

    public void setVerticalOffset(int n2) {
        this.mDropDownVerticalOffset = n2;
        this.mDropDownVerticalOffsetSet = true;
    }

    public void setWidth(int n2) {
        this.mDropDownWidth = n2;
    }

    public void setWindowLayoutType(int n2) {
        this.mDropDownWindowLayoutType = n2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void show() {
        boolean bl = true;
        boolean bl2 = false;
        int n2 = -1;
        int n3 = this.buildDropDown();
        boolean bl3 = this.isInputMethodNotNeeded();
        PopupWindowCompat.setWindowLayoutType(this.mPopup, this.mDropDownWindowLayoutType);
        if (this.mPopup.isShowing()) {
            PopupWindow popupWindow;
            int n4;
            int n5 = this.mDropDownWidth == -1 ? -1 : (this.mDropDownWidth == -2 ? this.getAnchorView().getWidth() : this.mDropDownWidth);
            if (this.mDropDownHeight == -1) {
                if (!bl3) {
                    n3 = -1;
                }
                if (bl3) {
                    popupWindow = this.mPopup;
                    n4 = this.mDropDownWidth == -1 ? -1 : 0;
                    popupWindow.setWidth(n4);
                    this.mPopup.setHeight(0);
                } else {
                    popupWindow = this.mPopup;
                    n4 = this.mDropDownWidth == -1 ? -1 : 0;
                    popupWindow.setWidth(n4);
                    this.mPopup.setHeight(-1);
                }
            } else if (this.mDropDownHeight != -2) {
                n3 = this.mDropDownHeight;
            }
            popupWindow = this.mPopup;
            bl = bl2;
            if (!this.mForceIgnoreOutsideTouch) {
                bl = bl2;
                if (!this.mDropDownAlwaysVisible) {
                    bl = true;
                }
            }
            popupWindow.setOutsideTouchable(bl);
            popupWindow = this.mPopup;
            View view = this.getAnchorView();
            n4 = this.mDropDownHorizontalOffset;
            int n6 = this.mDropDownVerticalOffset;
            if (n5 < 0) {
                n5 = -1;
            }
            if (n3 < 0) {
                n3 = n2;
            }
            popupWindow.update(view, n4, n6, n5, n3);
            return;
        }
        int n7 = this.mDropDownWidth == -1 ? -1 : (this.mDropDownWidth == -2 ? this.getAnchorView().getWidth() : this.mDropDownWidth);
        if (this.mDropDownHeight == -1) {
            n3 = -1;
        } else if (this.mDropDownHeight != -2) {
            n3 = this.mDropDownHeight;
        }
        this.mPopup.setWidth(n7);
        this.mPopup.setHeight(n3);
        this.setPopupClipToScreenEnabled(true);
        PopupWindow popupWindow = this.mPopup;
        if (this.mForceIgnoreOutsideTouch || this.mDropDownAlwaysVisible) {
            bl = false;
        }
        popupWindow.setOutsideTouchable(bl);
        this.mPopup.setTouchInterceptor((View.OnTouchListener)this.mTouchInterceptor);
        if (sSetEpicenterBoundsMethod != null) {
            try {
                sSetEpicenterBoundsMethod.invoke((Object)this.mPopup, new Object[]{this.mEpicenterBounds});
            }
            catch (Exception var1_10) {
                Log.e((String)"ListPopupWindow", (String)"Could not invoke setEpicenterBounds on PopupWindow", (Throwable)var1_10);
            }
        }
        PopupWindowCompat.showAsDropDown(this.mPopup, this.getAnchorView(), this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, this.mDropDownGravity);
        this.mDropDownList.setSelection(-1);
        if (!this.mModal || this.mDropDownList.isInTouchMode()) {
            this.clearListSelection();
        }
        if (this.mModal) return;
        {
            this.mHandler.post((Runnable)this.mHideSelector);
            return;
        }
    }

    private class ListSelectorHider
    implements Runnable {
        ListSelectorHider() {
        }

        @Override
        public void run() {
            ListPopupWindow.this.clearListSelection();
        }
    }

    private class PopupDataSetObserver
    extends DataSetObserver {
        PopupDataSetObserver() {
        }

        public void onChanged() {
            if (ListPopupWindow.this.isShowing()) {
                ListPopupWindow.this.show();
            }
        }

        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    private class PopupScrollListener
    implements AbsListView.OnScrollListener {
        PopupScrollListener() {
        }

        public void onScroll(AbsListView absListView, int n2, int n3, int n4) {
        }

        public void onScrollStateChanged(AbsListView absListView, int n2) {
            if (n2 == 1 && !ListPopupWindow.this.isInputMethodNotNeeded() && ListPopupWindow.this.mPopup.getContentView() != null) {
                ListPopupWindow.this.mHandler.removeCallbacks((Runnable)ListPopupWindow.this.mResizePopupRunnable);
                ListPopupWindow.this.mResizePopupRunnable.run();
            }
        }
    }

    private class PopupTouchInterceptor
    implements View.OnTouchListener {
        PopupTouchInterceptor() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int n2 = motionEvent.getAction();
            int n3 = (int)motionEvent.getX();
            int n4 = (int)motionEvent.getY();
            if (n2 == 0 && ListPopupWindow.this.mPopup != null && ListPopupWindow.this.mPopup.isShowing() && n3 >= 0 && n3 < ListPopupWindow.this.mPopup.getWidth() && n4 >= 0 && n4 < ListPopupWindow.this.mPopup.getHeight()) {
                ListPopupWindow.this.mHandler.postDelayed((Runnable)ListPopupWindow.this.mResizePopupRunnable, 250);
                return false;
            }
            if (n2 != 1) return false;
            ListPopupWindow.this.mHandler.removeCallbacks((Runnable)ListPopupWindow.this.mResizePopupRunnable);
            return false;
        }
    }

    private class ResizePopupRunnable
    implements Runnable {
        ResizePopupRunnable() {
        }

        @Override
        public void run() {
            if (ListPopupWindow.this.mDropDownList != null && ViewCompat.isAttachedToWindow((View)ListPopupWindow.this.mDropDownList) && ListPopupWindow.this.mDropDownList.getCount() > ListPopupWindow.this.mDropDownList.getChildCount() && ListPopupWindow.this.mDropDownList.getChildCount() <= ListPopupWindow.this.mListItemExpandMaximum) {
                ListPopupWindow.this.mPopup.setInputMethodMode(2);
                ListPopupWindow.this.show();
            }
        }
    }

}

