/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.graphics.Bitmap
 *  android.graphics.Typeface
 *  android.text.Editable
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.CheckBox
 *  android.widget.CompoundButton
 *  android.widget.CompoundButton$OnCheckedChangeListener
 *  android.widget.EditText
 *  android.widget.ImageView
 *  android.widget.LinearLayout
 *  android.widget.LinearLayout$LayoutParams
 *  android.widget.ScrollView
 *  android.widget.SeekBar
 *  android.widget.SeekBar$OnSeekBarChangeListener
 *  android.widget.TextView
 */
package jackpal.androidterm.shortcuts;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.text.Editable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import jackpal.androidterm.compat.AlertDialogCompat;
import jackpal.androidterm.shortcuts.TextIcon;

public class ColorValue
implements CompoundButton.OnCheckedChangeListener {
    private final int FP = -1;
    private final int WC = -2;
    private boolean barLock = false;
    private AlertDialog.Builder builder;
    private final int[] color = new int[]{255, 0, 0, 0};
    private final Context context;
    private String imgtext = "";
    private final ImageView imgview;
    private final boolean[] locks = new boolean[]{false, false, false, false};
    private final String[] result;
    private boolean started = false;
    private EditText value;

    public ColorValue(Context context, ImageView imageView, String[] arrstring) {
        this.context = context;
        this.imgtext = arrstring[0];
        this.imgview = imageView;
        this.result = arrstring;
        this.colorValue();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void buttonHit(int n, int n2) {
        switch (n) {
            default: {
                return;
            }
            case -1: {
                this.result[1] = this.imgtext = this.value.getText().toString();
                this.imgview.setTag((Object)n2);
                if (this.imgtext.equals("")) return;
                this.imgview.setImageBitmap(TextIcon.getTextIcon(this.imgtext, n2, 96, 96));
                return;
            }
        }
    }

    public void colorValue() {
        int n;
        this.builder = AlertDialogCompat.newInstanceBuilder(this.context, AlertDialogCompat.THEME_HOLO_DARK);
        Object object = new LinearLayout(this.context);
        object.setOrientation(1);
        String string2 = this.context.getString(2131296276) + " ";
        String string3 = this.context.getString(2131296279) + " ";
        String string4 = this.context.getString(2131296278) + " ";
        String string5 = this.context.getString(2131296277) + " ";
        int n2 = (Integer)this.imgview.getTag();
        for (n = 0; n < 4; ++n) {
            this.color[n] = n2 >> 24 - n * 8 & 255;
        }
        final TextView[] arrtextView = new TextView[](this.context);
        arrtextView.setText((CharSequence)this.context.getString(2131296275));
        arrtextView.setPadding(arrtextView.getPaddingLeft(), arrtextView.getPaddingTop(), 5, arrtextView.getPaddingBottom());
        arrtextView.setGravity(5);
        this.value = new EditText(this.context);
        this.value.setText((CharSequence)this.imgtext);
        this.value.setSingleLine(false);
        this.value.setGravity(17);
        this.value.setTextColor(((Integer)this.imgview.getTag()).intValue());
        this.value.setBackgroundColor(-16746599);
        final SeekBar[] arrseekBar = new SeekBar[](this.context);
        arrseekBar.setOrientation(0);
        arrseekBar.setGravity(1);
        arrseekBar.addView((View)this.value);
        this.value.setHint((CharSequence)this.context.getString(2131296274));
        object.addView((View)arrseekBar);
        object.addView((View)arrtextView);
        arrseekBar = new SeekBar[5];
        CheckBox[] arrcheckBox = new CheckBox[4];
        arrtextView = new TextView[4];
        for (n = 0; n < 4; ++n) {
            LinearLayout linearLayout = new LinearLayout(this.context);
            linearLayout.setGravity(16);
            TextView textView = new TextView(this.context);
            textView.setTypeface(Typeface.MONOSPACE);
            textView.setText((CharSequence)new String[]{string2, string3, string4, string5}[n]);
            textView.setTextColor(new int[]{-1, -65536, -16711936, -16776961}[n]);
            arrseekBar[n] = new SeekBar(this.context);
            arrseekBar[n].setMax(255);
            arrseekBar[n].setProgress(this.color[n]);
            arrseekBar[n].setSecondaryProgress(this.color[n]);
            arrseekBar[n].setTag((Object)n);
            arrseekBar[n].setBackgroundColor(-16777216 | this.color[n] << 24 - n * 8);
            arrseekBar[n].setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-2, -2, 1.0f));
            arrseekBar[n].setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener(){

                /*
                 * Enabled aggressive block sorting
                 */
                private void doProgressChanged(SeekBar seekBar, int n, boolean bl) {
                    if (bl && ColorValue.this.started) {
                        int n2 = (Integer)seekBar.getTag();
                        int n3 = ColorValue.this.color[0];
                        int n4 = ColorValue.this.color[1];
                        int n5 = ColorValue.this.color[2];
                        int n6 = ColorValue.this.color[3];
                        ColorValue.this.value.setTextColor(n3 << 24 | n4 << 16 | n5 << 8 | n6);
                        if (ColorValue.this.barLock && ColorValue.this.locks[n2]) {
                            n3 = 0;
                            n4 = 3;
                        } else {
                            n3 = n4 = ((Integer)seekBar.getTag()).intValue();
                        }
                        while (n3 <= n4) {
                            if (n3 == n2 || ColorValue.this.barLock && ColorValue.this.locks[n3]) {
                                ColorValue.access$100((ColorValue)ColorValue.this)[n3] = n;
                                ColorValue.this.toHexWindow(arrtextView[n3], ColorValue.this.color[n3]);
                                arrseekBar[n3].setBackgroundColor(-16777216 | n << 24 - n3 * 8);
                                arrseekBar[n3].setProgress(n);
                            }
                            ++n3;
                        }
                        return;
                    }
                }

                public void onProgressChanged(SeekBar seekBar, int n, boolean bl) {
                    this.doProgressChanged(seekBar, n, bl);
                }

                public void onStartTrackingTouch(SeekBar seekBar) {
                    this.doProgressChanged(seekBar, seekBar.getProgress(), true);
                }

                public void onStopTrackingTouch(SeekBar seekBar) {
                    this.doProgressChanged(seekBar, seekBar.getProgress(), true);
                }
            });
            arrcheckBox[n] = new CheckBox(this.context);
            arrcheckBox[n].setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-2, -2, 0.0f));
            arrcheckBox[n].setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)this);
            arrcheckBox[n].setTag((Object)n);
            linearLayout.addView((View)textView);
            linearLayout.addView((View)arrseekBar[n]);
            linearLayout.addView((View)arrcheckBox[n]);
            object.addView((View)linearLayout, -1, -2);
        }
        string2 = new LinearLayout(this.context);
        string2.setGravity(17);
        for (n = 0; n < 4; ++n) {
            arrtextView[n] = new TextView(this.context);
            this.toHexWindow(arrtextView[n], this.color[n]);
            string2.addView((View)arrtextView[n]);
        }
        object.addView((View)string2);
        string2 = new ScrollView(this.context);
        string2.addView((View)object);
        this.builder.setView((View)string2);
        object = new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n) {
                ColorValue.this.buttonHit(n, ColorValue.this.color[0] << 24 | ColorValue.this.color[1] << 16 | ColorValue.this.color[2] << 8 | ColorValue.this.color[3]);
            }
        };
        string2 = this.context.getString(2131296264);
        this.builder.setTitle((CharSequence)string2);
        this.builder.setPositiveButton(17039379, (DialogInterface.OnClickListener)object);
        this.builder.setNegativeButton(17039360, (DialogInterface.OnClickListener)object);
        this.builder.show();
        this.started = true;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
        int n = (Integer)compoundButton.getTag();
        this.locks[n] = bl;
        this.barLock = false;
        for (n = 0; n < this.locks.length; ++n) {
            if (!this.locks[n]) continue;
            this.barLock = true;
        }
    }

    public void toHexWindow(TextView textView, int n) {
        String string2 = "";
        int n2 = (int)((long)n & 255);
        for (n = 8 - 4; n >= 0; n -= 4) {
            string2 = string2 + "0123456789ABCDEF".charAt(n2 >> n & 15);
        }
        textView.setText((CharSequence)string2);
    }

}

