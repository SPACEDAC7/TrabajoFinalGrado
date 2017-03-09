/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnCancelListener
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.TypedArray
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.util.TypedValue
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.Window
 *  android.widget.FrameLayout
 */
package android.support.design.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.StyleRes;
import android.support.design.R;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.CoordinatorLayout;
import android.support.v7.app.AppCompatDialog;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;

public class BottomSheetDialog
extends AppCompatDialog {
    private BottomSheetBehavior<FrameLayout> mBehavior;
    private BottomSheetBehavior.BottomSheetCallback mBottomSheetCallback;
    boolean mCancelable = true;
    private boolean mCanceledOnTouchOutside = true;
    private boolean mCanceledOnTouchOutsideSet;

    public BottomSheetDialog(@NonNull Context context) {
        this(context, 0);
    }

    public BottomSheetDialog(@NonNull Context context, @StyleRes int n2) {
        super(context, BottomSheetDialog.getThemeResId(context, n2));
        this.mBottomSheetCallback = new BottomSheetBehavior.BottomSheetCallback(){

            @Override
            public void onSlide(@NonNull View view, float f2) {
            }

            @Override
            public void onStateChanged(@NonNull View view, int n2) {
                if (n2 == 5) {
                    BottomSheetDialog.this.cancel();
                }
            }
        };
        this.supportRequestWindowFeature(1);
    }

    protected BottomSheetDialog(@NonNull Context context, boolean bl, DialogInterface.OnCancelListener onCancelListener) {
        super(context, bl, onCancelListener);
        this.mBottomSheetCallback = new ;
        this.supportRequestWindowFeature(1);
        this.mCancelable = bl;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static int getThemeResId(Context context, int n2) {
        int n3 = n2;
        if (n2 != 0) return n3;
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.bottomSheetDialogTheme, typedValue, true)) return R.style.Theme_Design_Light_BottomSheetDialog;
        return typedValue.resourceId;
    }

    /*
     * Enabled aggressive block sorting
     */
    private View wrapInBottomSheet(int n2, View view, ViewGroup.LayoutParams layoutParams) {
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout)View.inflate((Context)this.getContext(), (int)R.layout.design_bottom_sheet_dialog, (ViewGroup)null);
        View view2 = view;
        if (n2 != 0) {
            view2 = view;
            if (view == null) {
                view2 = this.getLayoutInflater().inflate(n2, (ViewGroup)coordinatorLayout, false);
            }
        }
        view = (FrameLayout)coordinatorLayout.findViewById(R.id.design_bottom_sheet);
        this.mBehavior = BottomSheetBehavior.from(view);
        this.mBehavior.setBottomSheetCallback(this.mBottomSheetCallback);
        this.mBehavior.setHideable(this.mCancelable);
        if (layoutParams == null) {
            view.addView(view2);
        } else {
            view.addView(view2, layoutParams);
        }
        coordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (BottomSheetDialog.this.mCancelable && BottomSheetDialog.this.isShowing() && BottomSheetDialog.this.shouldWindowCloseOnTouchOutside()) {
                    BottomSheetDialog.this.cancel();
                }
            }
        });
        return coordinatorLayout;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.getWindow().setLayout(-1, -1);
    }

    public void setCancelable(boolean bl) {
        super.setCancelable(bl);
        if (this.mCancelable != bl) {
            this.mCancelable = bl;
            if (this.mBehavior != null) {
                this.mBehavior.setHideable(bl);
            }
        }
    }

    public void setCanceledOnTouchOutside(boolean bl) {
        super.setCanceledOnTouchOutside(bl);
        if (bl && !this.mCancelable) {
            this.mCancelable = true;
        }
        this.mCanceledOnTouchOutside = bl;
        this.mCanceledOnTouchOutsideSet = true;
    }

    @Override
    public void setContentView(@LayoutRes int n2) {
        super.setContentView(this.wrapInBottomSheet(n2, null, null));
    }

    @Override
    public void setContentView(View view) {
        super.setContentView(this.wrapInBottomSheet(0, view, null));
    }

    @Override
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(this.wrapInBottomSheet(0, view, layoutParams));
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean shouldWindowCloseOnTouchOutside() {
        if (!this.mCanceledOnTouchOutsideSet) {
            if (Build.VERSION.SDK_INT < 11) {
                this.mCanceledOnTouchOutside = true;
            } else {
                TypedArray typedArray = this.getContext().obtainStyledAttributes(new int[]{16843611});
                this.mCanceledOnTouchOutside = typedArray.getBoolean(0, true);
                typedArray.recycle();
            }
            this.mCanceledOnTouchOutsideSet = true;
        }
        return this.mCanceledOnTouchOutside;
    }

}

