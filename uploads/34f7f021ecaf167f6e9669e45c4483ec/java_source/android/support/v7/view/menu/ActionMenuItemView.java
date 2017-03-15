/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.os.Parcelable
 *  android.text.TextUtils
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.View$OnClickListener
 *  android.view.View$OnLongClickListener
 *  android.widget.Toast
 */
package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.ConfigurationHelper;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.ShowableListMenu;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.ForwardingListener;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class ActionMenuItemView
extends AppCompatTextView
implements MenuView.ItemView,
View.OnClickListener,
View.OnLongClickListener,
ActionMenuView.ActionMenuChildView {
    private static final int MAX_ICON_SIZE = 32;
    private static final String TAG = "ActionMenuItemView";
    private boolean mAllowTextWithIcon;
    private boolean mExpandedFormat;
    private ForwardingListener mForwardingListener;
    private Drawable mIcon;
    MenuItemImpl mItemData;
    MenuBuilder.ItemInvoker mItemInvoker;
    private int mMaxIconSize;
    private int mMinWidth;
    PopupCallback mPopupCallback;
    private int mSavedPaddingLeft;
    private CharSequence mTitle;

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        Resources resources = context.getResources();
        this.mAllowTextWithIcon = this.shouldAllowTextWithIcon();
        context = context.obtainStyledAttributes(attributeSet, R.styleable.ActionMenuItemView, n2, 0);
        this.mMinWidth = context.getDimensionPixelSize(R.styleable.ActionMenuItemView_android_minWidth, 0);
        context.recycle();
        this.mMaxIconSize = (int)(32.0f * resources.getDisplayMetrics().density + 0.5f);
        this.setOnClickListener((View.OnClickListener)this);
        this.setOnLongClickListener((View.OnLongClickListener)this);
        this.mSavedPaddingLeft = -1;
        this.setSaveEnabled(false);
    }

    private boolean shouldAllowTextWithIcon() {
        Configuration configuration = this.getContext().getResources().getConfiguration();
        int n2 = ConfigurationHelper.getScreenWidthDp(this.getResources());
        int n3 = ConfigurationHelper.getScreenHeightDp(this.getResources());
        if (n2 >= 480 || n2 >= 640 && n3 >= 480 || configuration.orientation == 2) {
            return true;
        }
        return false;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void updateTextButtonVisibility() {
        var4_1 = false;
        var2_2 = TextUtils.isEmpty((CharSequence)this.mTitle) == false;
        if (this.mIcon == null) ** GOTO lbl-1000
        var3_3 = var4_1;
        if (!this.mItemData.showsTextAsAction()) ** GOTO lbl10
        if (this.mAllowTextWithIcon) ** GOTO lbl-1000
        var3_3 = var4_1;
        if (this.mExpandedFormat) lbl-1000: // 3 sources:
        {
            var3_3 = true;
        }
lbl10: // 4 sources:
        var1_4 = (var2_2 & var3_3) != false ? this.mTitle : null;
        this.setText(var1_4);
    }

    @Override
    public MenuItemImpl getItemData() {
        return this.mItemData;
    }

    public boolean hasText() {
        if (!TextUtils.isEmpty((CharSequence)this.getText())) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void initialize(MenuItemImpl menuItemImpl, int n2) {
        this.mItemData = menuItemImpl;
        this.setIcon(menuItemImpl.getIcon());
        this.setTitle(menuItemImpl.getTitleForItemView(this));
        this.setId(menuItemImpl.getItemId());
        n2 = menuItemImpl.isVisible() ? 0 : 8;
        this.setVisibility(n2);
        this.setEnabled(menuItemImpl.isEnabled());
        if (menuItemImpl.hasSubMenu() && this.mForwardingListener == null) {
            this.mForwardingListener = new ActionMenuItemForwardingListener();
        }
    }

    @Override
    public boolean needsDividerAfter() {
        return this.hasText();
    }

    @Override
    public boolean needsDividerBefore() {
        if (this.hasText() && this.mItemData.getIcon() == null) {
            return true;
        }
        return false;
    }

    public void onClick(View view) {
        if (this.mItemInvoker != null) {
            this.mItemInvoker.invokeItem(this.mItemData);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mAllowTextWithIcon = this.shouldAllowTextWithIcon();
        this.updateTextButtonVisibility();
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onLongClick(View view) {
        int n2;
        if (this.hasText()) {
            return false;
        }
        int[] arrn = new int[2];
        Rect rect = new Rect();
        this.getLocationOnScreen(arrn);
        this.getWindowVisibleDisplayFrame(rect);
        Context context = this.getContext();
        int n3 = this.getWidth();
        int n4 = this.getHeight();
        int n5 = arrn[1];
        int n6 = n4 / 2;
        n3 = n2 = arrn[0] + n3 / 2;
        if (ViewCompat.getLayoutDirection(view) == 0) {
            n3 = context.getResources().getDisplayMetrics().widthPixels - n2;
        }
        view = Toast.makeText((Context)context, (CharSequence)this.mItemData.getTitle(), (int)0);
        if (n5 + n6 < rect.height()) {
            view.setGravity(8388661, n3, arrn[1] + n4 - rect.top);
        } else {
            view.setGravity(81, 0, n4);
        }
        view.show();
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onMeasure(int n2, int n3) {
        boolean bl = this.hasText();
        if (bl && this.mSavedPaddingLeft >= 0) {
            super.setPadding(this.mSavedPaddingLeft, this.getPaddingTop(), this.getPaddingRight(), this.getPaddingBottom());
        }
        super.onMeasure(n2, n3);
        int n4 = View.MeasureSpec.getMode((int)n2);
        n2 = View.MeasureSpec.getSize((int)n2);
        int n5 = this.getMeasuredWidth();
        n2 = n4 == Integer.MIN_VALUE ? Math.min(n2, this.mMinWidth) : this.mMinWidth;
        if (n4 != 1073741824 && this.mMinWidth > 0 && n5 < n2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec((int)n2, (int)1073741824), n3);
        }
        if (!bl && this.mIcon != null) {
            super.setPadding((this.getMeasuredWidth() - this.mIcon.getBounds().width()) / 2, this.getPaddingTop(), this.getPaddingRight(), this.getPaddingBottom());
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mItemData.hasSubMenu() && this.mForwardingListener != null && this.mForwardingListener.onTouch((View)this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public boolean prefersCondensedTitle() {
        return true;
    }

    @Override
    public void setCheckable(boolean bl) {
    }

    @Override
    public void setChecked(boolean bl) {
    }

    public void setExpandedFormat(boolean bl) {
        if (this.mExpandedFormat != bl) {
            this.mExpandedFormat = bl;
            if (this.mItemData != null) {
                this.mItemData.actionFormatChanged();
            }
        }
    }

    @Override
    public void setIcon(Drawable drawable2) {
        this.mIcon = drawable2;
        if (drawable2 != null) {
            int n2;
            float f2;
            int n3 = drawable2.getIntrinsicWidth();
            int n4 = n2 = drawable2.getIntrinsicHeight();
            int n5 = n3;
            if (n3 > this.mMaxIconSize) {
                f2 = (float)this.mMaxIconSize / (float)n3;
                n5 = this.mMaxIconSize;
                n4 = (int)((float)n2 * f2);
            }
            n3 = n4;
            n2 = n5;
            if (n4 > this.mMaxIconSize) {
                f2 = (float)this.mMaxIconSize / (float)n4;
                n3 = this.mMaxIconSize;
                n2 = (int)((float)n5 * f2);
            }
            drawable2.setBounds(0, 0, n2, n3);
        }
        this.setCompoundDrawables(drawable2, null, null, null);
        this.updateTextButtonVisibility();
    }

    public void setItemInvoker(MenuBuilder.ItemInvoker itemInvoker) {
        this.mItemInvoker = itemInvoker;
    }

    public void setPadding(int n2, int n3, int n4, int n5) {
        this.mSavedPaddingLeft = n2;
        super.setPadding(n2, n3, n4, n5);
    }

    public void setPopupCallback(PopupCallback popupCallback) {
        this.mPopupCallback = popupCallback;
    }

    @Override
    public void setShortcut(boolean bl, char c2) {
    }

    @Override
    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        this.setContentDescription(this.mTitle);
        this.updateTextButtonVisibility();
    }

    @Override
    public boolean showsIcon() {
        return true;
    }

    private class ActionMenuItemForwardingListener
    extends ForwardingListener {
        public ActionMenuItemForwardingListener() {
            super((View)ActionMenuItemView.this);
        }

        @Override
        public ShowableListMenu getPopup() {
            if (ActionMenuItemView.this.mPopupCallback != null) {
                return ActionMenuItemView.this.mPopupCallback.getPopup();
            }
            return null;
        }

        @Override
        protected boolean onForwardingStarted() {
            boolean bl;
            boolean bl2 = bl = false;
            if (ActionMenuItemView.this.mItemInvoker != null) {
                bl2 = bl;
                if (ActionMenuItemView.this.mItemInvoker.invokeItem(ActionMenuItemView.this.mItemData)) {
                    ShowableListMenu showableListMenu = this.getPopup();
                    bl2 = bl;
                    if (showableListMenu != null) {
                        bl2 = bl;
                        if (showableListMenu.isShowing()) {
                            bl2 = true;
                        }
                    }
                }
            }
            return bl2;
        }
    }

    public static abstract class PopupCallback {
        public abstract ShowableListMenu getPopup();
    }

}

