/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnCancelListener
 *  android.content.DialogInterface$OnClickListener
 *  android.graphics.Color
 *  android.view.LayoutInflater
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$OnTouchListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnGlobalLayoutListener
 *  android.widget.ImageView
 *  android.widget.RelativeLayout
 *  android.widget.RelativeLayout$LayoutParams
 */
package yuku.ambilwarna;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import yuku.ambilwarna.AmbilWarnaKotak;
import yuku.ambilwarna.R;

public class AmbilWarnaDialog {
    final float[] currentColorHsv = new float[3];
    final AlertDialog dialog;
    final OnAmbilWarnaListener listener;
    final ViewGroup viewContainer;
    final ImageView viewCursor;
    final View viewHue;
    final View viewNewColor;
    final View viewOldColor;
    final AmbilWarnaKotak viewSatVal;
    final ImageView viewTarget;

    public AmbilWarnaDialog(Context context, int n, OnAmbilWarnaListener onAmbilWarnaListener) {
        this.listener = onAmbilWarnaListener;
        Color.colorToHSV((int)n, (float[])this.currentColorHsv);
        onAmbilWarnaListener = LayoutInflater.from((Context)context).inflate(R.layout.ambilwarna_dialog, null);
        this.viewHue = onAmbilWarnaListener.findViewById(R.id.ambilwarna_viewHue);
        this.viewSatVal = (AmbilWarnaKotak)onAmbilWarnaListener.findViewById(R.id.ambilwarna_viewSatBri);
        this.viewCursor = (ImageView)onAmbilWarnaListener.findViewById(R.id.ambilwarna_cursor);
        this.viewOldColor = onAmbilWarnaListener.findViewById(R.id.ambilwarna_warnaLama);
        this.viewNewColor = onAmbilWarnaListener.findViewById(R.id.ambilwarna_warnaBaru);
        this.viewTarget = (ImageView)onAmbilWarnaListener.findViewById(R.id.ambilwarna_target);
        this.viewContainer = (ViewGroup)onAmbilWarnaListener.findViewById(R.id.ambilwarna_viewContainer);
        this.viewSatVal.setHue(this.getHue());
        this.viewOldColor.setBackgroundColor(n);
        this.viewNewColor.setBackgroundColor(n);
        this.viewHue.setOnTouchListener(new View.OnTouchListener(){

            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 2 || motionEvent.getAction() == 0 || motionEvent.getAction() == 1) {
                    float f;
                    float f2 = f = motionEvent.getY();
                    if (f < 0.0f) {
                        f2 = 0.0f;
                    }
                    f = f2;
                    if (f2 > (float)AmbilWarnaDialog.this.viewHue.getMeasuredHeight()) {
                        f = (float)AmbilWarnaDialog.this.viewHue.getMeasuredHeight() - 0.001f;
                    }
                    f2 = f = 360.0f - 360.0f / (float)AmbilWarnaDialog.this.viewHue.getMeasuredHeight() * f;
                    if (f == 360.0f) {
                        f2 = 0.0f;
                    }
                    AmbilWarnaDialog.this.setHue(f2);
                    AmbilWarnaDialog.this.viewSatVal.setHue(AmbilWarnaDialog.this.getHue());
                    AmbilWarnaDialog.this.moveCursor();
                    AmbilWarnaDialog.this.viewNewColor.setBackgroundColor(AmbilWarnaDialog.this.getColor());
                    return true;
                }
                return false;
            }
        });
        this.viewSatVal.setOnTouchListener(new View.OnTouchListener(){

            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 2 || motionEvent.getAction() == 0 || motionEvent.getAction() == 1) {
                    float f = motionEvent.getX();
                    float f2 = motionEvent.getY();
                    float f3 = f;
                    if (f < 0.0f) {
                        f3 = 0.0f;
                    }
                    f = f3;
                    if (f3 > (float)AmbilWarnaDialog.this.viewSatVal.getMeasuredWidth()) {
                        f = AmbilWarnaDialog.this.viewSatVal.getMeasuredWidth();
                    }
                    f3 = f2;
                    if (f2 < 0.0f) {
                        f3 = 0.0f;
                    }
                    f2 = f3;
                    if (f3 > (float)AmbilWarnaDialog.this.viewSatVal.getMeasuredHeight()) {
                        f2 = AmbilWarnaDialog.this.viewSatVal.getMeasuredHeight();
                    }
                    AmbilWarnaDialog.this.setSat(1.0f / (float)AmbilWarnaDialog.this.viewSatVal.getMeasuredWidth() * f);
                    AmbilWarnaDialog.this.setVal(1.0f - 1.0f / (float)AmbilWarnaDialog.this.viewSatVal.getMeasuredHeight() * f2);
                    AmbilWarnaDialog.this.moveTarget();
                    AmbilWarnaDialog.this.viewNewColor.setBackgroundColor(AmbilWarnaDialog.this.getColor());
                    return true;
                }
                return false;
            }
        });
        this.dialog = new AlertDialog.Builder(context).setPositiveButton(17039370, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n) {
                if (AmbilWarnaDialog.this.listener != null) {
                    AmbilWarnaDialog.this.listener.onOk(AmbilWarnaDialog.this, AmbilWarnaDialog.this.getColor());
                }
            }
        }).setNegativeButton(17039360, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n) {
                if (AmbilWarnaDialog.this.listener != null) {
                    AmbilWarnaDialog.this.listener.onCancel(AmbilWarnaDialog.this);
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener(){

            public void onCancel(DialogInterface dialogInterface) {
                if (AmbilWarnaDialog.this.listener != null) {
                    AmbilWarnaDialog.this.listener.onCancel(AmbilWarnaDialog.this);
                }
            }
        }).create();
        this.dialog.setView((View)onAmbilWarnaListener, 0, 0, 0, 0);
        onAmbilWarnaListener.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener((View)onAmbilWarnaListener){
            private final /* synthetic */ View val$view;

            public void onGlobalLayout() {
                AmbilWarnaDialog.this.moveCursor();
                AmbilWarnaDialog.this.moveTarget();
                this.val$view.getViewTreeObserver().removeGlobalOnLayoutListener((ViewTreeObserver.OnGlobalLayoutListener)this);
            }
        });
    }

    private int getColor() {
        return Color.HSVToColor((float[])this.currentColorHsv);
    }

    private float getHue() {
        return this.currentColorHsv[0];
    }

    private float getSat() {
        return this.currentColorHsv[1];
    }

    private float getVal() {
        return this.currentColorHsv[2];
    }

    private void setHue(float f) {
        this.currentColorHsv[0] = f;
    }

    private void setSat(float f) {
        this.currentColorHsv[1] = f;
    }

    private void setVal(float f) {
        this.currentColorHsv[2] = f;
    }

    public AlertDialog getDialog() {
        return this.dialog;
    }

    protected void moveCursor() {
        float f;
        float f2 = f = (float)this.viewHue.getMeasuredHeight() - this.getHue() * (float)this.viewHue.getMeasuredHeight() / 360.0f;
        if (f == (float)this.viewHue.getMeasuredHeight()) {
            f2 = 0.0f;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams)this.viewCursor.getLayoutParams();
        layoutParams.leftMargin = (int)((double)this.viewHue.getLeft() - Math.floor(this.viewCursor.getMeasuredWidth() / 2) - (double)this.viewContainer.getPaddingLeft());
        layoutParams.topMargin = (int)((double)((float)this.viewHue.getTop() + f2) - Math.floor(this.viewCursor.getMeasuredHeight() / 2) - (double)this.viewContainer.getPaddingTop());
        this.viewCursor.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    }

    protected void moveTarget() {
        float f = this.getSat();
        float f2 = this.viewSatVal.getMeasuredWidth();
        float f3 = this.getVal();
        float f4 = this.viewSatVal.getMeasuredHeight();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams)this.viewTarget.getLayoutParams();
        layoutParams.leftMargin = (int)((double)((float)this.viewSatVal.getLeft() + f * f2) - Math.floor(this.viewTarget.getMeasuredWidth() / 2) - (double)this.viewContainer.getPaddingLeft());
        layoutParams.topMargin = (int)((double)((float)this.viewSatVal.getTop() + (1.0f - f3) * f4) - Math.floor(this.viewTarget.getMeasuredHeight() / 2) - (double)this.viewContainer.getPaddingTop());
        this.viewTarget.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    }

    public void show() {
        this.dialog.show();
    }

    public static interface OnAmbilWarnaListener {
        public void onCancel(AmbilWarnaDialog var1);

        public void onOk(AmbilWarnaDialog var1, int var2);
    }

}

