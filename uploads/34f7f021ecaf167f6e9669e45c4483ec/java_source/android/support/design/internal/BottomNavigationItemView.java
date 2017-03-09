/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$ConstantState
 *  android.util.AttributeSet
 *  android.view.LayoutInflater
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class BottomNavigationItemView
extends FrameLayout
implements MenuView.ItemView {
    private static final int[] CHECKED_STATE_SET = new int[]{16842912};
    public static final int INVALID_ITEM_POSITION = -1;
    private final int mDefaultMargin;
    private ImageView mIcon;
    private ColorStateList mIconTint;
    private MenuItemImpl mItemData;
    private int mItemPosition = -1;
    private final TextView mLargeLabel;
    private final float mScaleDownFactor;
    private final float mScaleUpFactor;
    private final int mShiftAmount;
    private boolean mShiftingMode;
    private final TextView mSmallLabel;

    public BottomNavigationItemView(@NonNull Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(@NonNull Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        attributeSet = this.getResources();
        n2 = attributeSet.getDimensionPixelSize(R.dimen.design_bottom_navigation_text_size);
        int n3 = attributeSet.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_text_size);
        this.mDefaultMargin = attributeSet.getDimensionPixelSize(R.dimen.design_bottom_navigation_margin);
        this.mShiftAmount = n2 - n3;
        this.mScaleUpFactor = (float)n3 * 1.0f / (float)n2;
        this.mScaleDownFactor = (float)n2 * 1.0f / (float)n3;
        LayoutInflater.from((Context)context).inflate(R.layout.design_bottom_navigation_item, (ViewGroup)this, true);
        this.setBackgroundResource(R.drawable.design_bottom_navigation_item_background);
        this.mIcon = (ImageView)this.findViewById(R.id.icon);
        this.mSmallLabel = (TextView)this.findViewById(R.id.smallLabel);
        this.mLargeLabel = (TextView)this.findViewById(R.id.largeLabel);
    }

    @Override
    public MenuItemImpl getItemData() {
        return this.mItemData;
    }

    public int getItemPosition() {
        return this.mItemPosition;
    }

    @Override
    public void initialize(MenuItemImpl menuItemImpl, int n2) {
        this.mItemData = menuItemImpl;
        this.setCheckable(menuItemImpl.isCheckable());
        this.setChecked(menuItemImpl.isChecked());
        this.setEnabled(menuItemImpl.isEnabled());
        this.setIcon(menuItemImpl.getIcon());
        this.setTitle(menuItemImpl.getTitle());
        this.setId(menuItemImpl.getItemId());
    }

    public int[] onCreateDrawableState(int n2) {
        int[] arrn = super.onCreateDrawableState(n2 + 1);
        if (this.mItemData != null && this.mItemData.isCheckable() && this.mItemData.isChecked()) {
            BottomNavigationItemView.mergeDrawableStates((int[])arrn, (int[])CHECKED_STATE_SET);
        }
        return arrn;
    }

    @Override
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override
    public void setCheckable(boolean bl) {
        this.refreshDrawableState();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setChecked(boolean bl) {
        this.mItemData.setChecked(bl);
        ViewCompat.setPivotX((View)this.mLargeLabel, this.mLargeLabel.getWidth() / 2);
        ViewCompat.setPivotY((View)this.mLargeLabel, this.mLargeLabel.getBaseline());
        ViewCompat.setPivotX((View)this.mSmallLabel, this.mSmallLabel.getWidth() / 2);
        ViewCompat.setPivotY((View)this.mSmallLabel, this.mSmallLabel.getBaseline());
        if (this.mShiftingMode) {
            if (bl) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)this.mIcon.getLayoutParams();
                layoutParams.gravity = 49;
                layoutParams.topMargin = this.mDefaultMargin;
                this.mIcon.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
                this.mLargeLabel.setVisibility(0);
                ViewCompat.setScaleX((View)this.mLargeLabel, 1.0f);
                ViewCompat.setScaleY((View)this.mLargeLabel, 1.0f);
            } else {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)this.mIcon.getLayoutParams();
                layoutParams.gravity = 17;
                layoutParams.topMargin = this.mDefaultMargin;
                this.mIcon.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
                this.mLargeLabel.setVisibility(4);
                ViewCompat.setScaleX((View)this.mLargeLabel, 0.5f);
                ViewCompat.setScaleY((View)this.mLargeLabel, 0.5f);
            }
            this.mSmallLabel.setVisibility(4);
        } else if (bl) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)this.mIcon.getLayoutParams();
            layoutParams.gravity = 49;
            layoutParams.topMargin = this.mDefaultMargin + this.mShiftAmount;
            this.mIcon.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
            this.mLargeLabel.setVisibility(0);
            this.mSmallLabel.setVisibility(4);
            ViewCompat.setScaleX((View)this.mLargeLabel, 1.0f);
            ViewCompat.setScaleY((View)this.mLargeLabel, 1.0f);
            ViewCompat.setScaleX((View)this.mSmallLabel, this.mScaleUpFactor);
            ViewCompat.setScaleY((View)this.mSmallLabel, this.mScaleUpFactor);
        } else {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)this.mIcon.getLayoutParams();
            layoutParams.gravity = 49;
            layoutParams.topMargin = this.mDefaultMargin;
            this.mIcon.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
            this.mLargeLabel.setVisibility(4);
            this.mSmallLabel.setVisibility(0);
            ViewCompat.setScaleX((View)this.mLargeLabel, this.mScaleDownFactor);
            ViewCompat.setScaleY((View)this.mLargeLabel, this.mScaleDownFactor);
            ViewCompat.setScaleX((View)this.mSmallLabel, 1.0f);
            ViewCompat.setScaleY((View)this.mSmallLabel, 1.0f);
        }
        this.refreshDrawableState();
    }

    @Override
    public void setEnabled(boolean bl) {
        super.setEnabled(bl);
        this.mSmallLabel.setEnabled(bl);
        this.mLargeLabel.setEnabled(bl);
        this.mIcon.setEnabled(bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setIcon(Drawable drawable2) {
        Drawable drawable3 = drawable2;
        if (drawable2 != null) {
            drawable3 = drawable2.getConstantState();
            if (drawable3 != null) {
                drawable2 = drawable3.newDrawable();
            }
            drawable3 = DrawableCompat.wrap(drawable2).mutate();
            DrawableCompat.setTintList(drawable3, this.mIconTint);
        }
        this.mIcon.setImageDrawable(drawable3);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.mIconTint = colorStateList;
        if (this.mItemData != null) {
            this.setIcon(this.mItemData.getIcon());
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setItemBackground(int n2) {
        Drawable drawable2 = n2 == 0 ? null : ContextCompat.getDrawable(this.getContext(), n2);
        ViewCompat.setBackground((View)this, drawable2);
    }

    public void setItemPosition(int n2) {
        this.mItemPosition = n2;
    }

    public void setShiftingMode(boolean bl) {
        this.mShiftingMode = bl;
    }

    @Override
    public void setShortcut(boolean bl, char c2) {
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.mSmallLabel.setTextColor(colorStateList);
        this.mLargeLabel.setTextColor(colorStateList);
    }

    @Override
    public void setTitle(CharSequence charSequence) {
        this.mSmallLabel.setText(charSequence);
        this.mLargeLabel.setText(charSequence);
    }

    @Override
    public boolean showsIcon() {
        return true;
    }
}

