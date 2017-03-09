/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.content.Intent$ShortcutIconResource
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.graphics.Typeface
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.Environment
 *  android.os.Parcelable
 *  android.preference.PreferenceManager
 *  android.text.Editable
 *  android.util.Log
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.View$OnFocusChangeListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.Button
 *  android.widget.EditText
 *  android.widget.ImageView
 *  android.widget.ImageView$ScaleType
 *  android.widget.LinearLayout
 *  android.widget.LinearLayout$LayoutParams
 *  android.widget.ScrollView
 *  android.widget.TextView
 */
package jackpal.androidterm.shortcuts;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import jackpal.androidterm.RemoteInterface;
import jackpal.androidterm.RunShortcut;
import jackpal.androidterm.compat.AlertDialogCompat;
import jackpal.androidterm.compat.PRNGFixes;
import jackpal.androidterm.shortcuts.ColorValue;
import jackpal.androidterm.shortcuts.FSNavigator;
import jackpal.androidterm.shortcuts.TextIcon;
import jackpal.androidterm.util.ShortcutEncryption;
import java.io.File;
import java.security.GeneralSecurityException;

public class AddShortcut
extends Activity {
    private final int ARGS;
    private final int NAME;
    private final int OP_MAKE_SHORTCUT = 1;
    private final int PATH;
    private SharedPreferences SP;
    private final Context context;
    private final EditText[] et;
    private String[] iconText;
    private int ix;
    private String name;
    private String path;

    public AddShortcut() {
        this.context = this;
        int n = this.ix = 0;
        this.ix = n + 1;
        this.PATH = n;
        n = this.ix;
        this.ix = n + 1;
        this.ARGS = n;
        n = this.ix;
        this.ix = n + 1;
        this.NAME = n;
        this.et = new EditText[5];
        this.name = "";
        this.iconText = new String[]{"", null};
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    void buildShortcut(String string2, String string3, String string4, String string5, int n) {
        Object object;
        PRNGFixes.apply();
        Object object2 = object = ShortcutEncryption.getKeys(this.context);
        if (object == null) {
            object2 = ShortcutEncryption.generateKeys();
            ShortcutEncryption.saveKeys(this.context, (ShortcutEncryption.Keys)object2);
        }
        object = new StringBuilder();
        if (string2 != null && !string2.equals("")) {
            object.append(RemoteInterface.quoteForBash(string2));
        }
        if (string3 != null && !string3.equals("")) {
            object.append(" " + string3);
        }
        string2 = object.toString();
        try {
            string3 = ShortcutEncryption.encrypt(string2, (ShortcutEncryption.Keys)object2);
        }
        catch (GeneralSecurityException var1_3) {
            Log.e((String)"Term", (String)("Shortcut encryption failed: " + var1_3.toString()));
            throw new RuntimeException(var1_3);
        }
        string2 = new Intent().setClass(this.context, (Class)RunShortcut.class);
        string2.setAction("jackpal.androidterm.RUN_SHORTCUT");
        string2.putExtra("jackpal.androidterm.iShortcutCommand", string3);
        string2.putExtra("jackpal.androidterm.window_handle", string4);
        string2.addFlags(268435456);
        string3 = new Intent();
        string3.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
        string3.putExtra("android.intent.extra.shortcut.INTENT", (Parcelable)string2);
        if (string4 != null && !string4.equals("")) {
            string3.putExtra("android.intent.extra.shortcut.NAME", string4);
        }
        if (string5 != null && !string5.equals("")) {
            string3.putExtra("android.intent.extra.shortcut.ICON", (Parcelable)TextIcon.getTextIcon(string5, n, 96, 96));
        } else {
            string3.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", (Parcelable)Intent.ShortcutIconResource.fromContext((Context)this.context, (int)2130837510));
        }
        this.setResult(-1, (Intent)string3);
        this.finish();
        return;
        catch (GeneralSecurityException generalSecurityException) {
            Log.e((String)"Term", (String)("Generating shortcut encryption keys failed: " + generalSecurityException.toString()));
            throw new RuntimeException(generalSecurityException);
        }
    }

    LinearLayout layoutTextViewH(String string2, View view) {
        return this.layoutTextViewH(string2, view, true);
    }

    LinearLayout layoutTextViewH(String string2, View view, boolean bl) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        TextView textView = new TextView(this.context);
        textView.setText((CharSequence)string2);
        if (bl) {
            textView.setTypeface(Typeface.DEFAULT_BOLD);
        }
        if (bl) {
            textView.setGravity(21);
        }
        textView.setPadding(10, textView.getPaddingTop(), 10, textView.getPaddingBottom());
        string2 = new LinearLayout(this.context);
        string2.setOrientation(0);
        string2.addView((View)textView, (ViewGroup.LayoutParams)layoutParams);
        if (view != null) {
            string2.addView(view, (ViewGroup.LayoutParams)layoutParams);
        }
        return string2;
    }

    LinearLayout layoutViewViewH(View view, View view2) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        LinearLayout linearLayout = new LinearLayout(this.context);
        linearLayout.setOrientation(0);
        linearLayout.addView(view, (ViewGroup.LayoutParams)layoutParams);
        if (view2 != null) {
            linearLayout.addView(view2, (ViewGroup.LayoutParams)layoutParams);
        }
        return linearLayout;
    }

    void makeShortcut() {
        if (this.path == null) {
            this.path = "";
        }
        AlertDialog.Builder builder = AlertDialogCompat.newInstanceBuilder(this.context, AlertDialogCompat.THEME_HOLO_DARK);
        LinearLayout linearLayout = new LinearLayout(this.context);
        linearLayout.setOrientation(1);
        int n = this.et.length;
        for (int i = 0; i < n; ++i) {
            this.et[i] = new EditText(this.context);
            this.et[i].setSingleLine(true);
        }
        if (!this.path.equals("")) {
            this.et[0].setText((CharSequence)this.path);
        }
        this.et[this.PATH].setHint((CharSequence)this.getString(2131296261));
        this.et[this.NAME].setText((CharSequence)this.name);
        this.et[this.ARGS].setHint((CharSequence)this.getString(2131296263));
        this.et[this.ARGS].setOnFocusChangeListener(new View.OnFocusChangeListener(){

            public void onFocusChange(View object, boolean bl) {
                if (!bl && AddShortcut.this.et[AddShortcut.this.NAME].getText().toString().equals("") && !(object = AddShortcut.this.et[AddShortcut.this.ARGS].getText().toString()).equals("")) {
                    AddShortcut.this.et[AddShortcut.this.NAME].setText((CharSequence)object.split("\\s")[0]);
                }
            }
        });
        Button button = new Button(this.context);
        button.setText((CharSequence)this.getString(2131296259));
        button.setOnClickListener(new View.OnClickListener(){

            /*
             * Enabled aggressive block sorting
             */
            public void onClick(View object) {
                object = AddShortcut.this.SP.getString("lastPath", null);
                object = object == null ? Environment.getExternalStorageDirectory() : new File((String)object).getParentFile();
                Intent intent = new Intent();
                if (AddShortcut.this.SP.getBoolean("useInternalScriptFinder", false)) {
                    intent.setClass(AddShortcut.this.getApplicationContext(), (Class)FSNavigator.class).setData(Uri.fromFile((File)object)).putExtra("title", AddShortcut.this.getString(2131296265));
                } else {
                    intent.putExtra("CONTENT_TYPE", "*/*").setAction("android.intent.action.PICK");
                }
                AddShortcut.this.startActivityForResult(intent, 1);
            }
        });
        linearLayout.addView((View)this.layoutTextViewH(this.getString(2131296262), null, false));
        linearLayout.addView((View)this.layoutViewViewH((View)button, (View)this.et[this.PATH]));
        linearLayout.addView((View)this.layoutTextViewH(this.getString(2131296258), (View)this.et[this.ARGS]));
        linearLayout.addView((View)this.layoutTextViewH(this.getString(2131296266), (View)this.et[this.NAME]));
        button = new ImageView(this.context);
        button.setImageResource(2130837510);
        button.setMaxHeight(100);
        button.setTag((Object)-1);
        button.setMaxWidth(100);
        button.setAdjustViewBounds(true);
        button.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        Button button2 = new Button(this.context);
        button2.setText((CharSequence)this.getString(2131296260));
        button2.setOnClickListener(new View.OnClickListener((ImageView)button){
            final /* synthetic */ ImageView val$img;

            public void onClick(View view) {
                new ColorValue(AddShortcut.this.context, this.val$img, AddShortcut.this.iconText);
            }
        });
        linearLayout.addView((View)this.layoutTextViewH(this.getString(2131296267), null, false));
        linearLayout.addView((View)this.layoutViewViewH((View)button2, (View)button));
        button2 = new ScrollView(this.context);
        button2.setFillViewport(true);
        button2.addView((View)linearLayout);
        builder.setView((View)button2);
        builder.setTitle((CharSequence)this.getString(2131296268));
        builder.setPositiveButton(17039379, new DialogInterface.OnClickListener((ImageView)button){
            final /* synthetic */ ImageView val$img;

            public void onClick(DialogInterface dialogInterface, int n) {
                AddShortcut.this.buildShortcut(AddShortcut.this.path, AddShortcut.this.et[AddShortcut.this.ARGS].getText().toString(), AddShortcut.this.et[AddShortcut.this.NAME].getText().toString(), AddShortcut.this.iconText[1], (Integer)this.val$img.getTag());
            }
        });
        builder.setNegativeButton(17039360, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n) {
                AddShortcut.this.finish();
            }
        });
        builder.show();
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onActivityResult(int n, int n2, Intent object) {
        super.onActivityResult(n, n2, (Intent)object);
        this.path = null;
        switch (n) {
            default: {
                return;
            }
            case 1: {
                if (object != null && (object = object.getData()) != null) {
                    this.path = object = object.getPath();
                    if (object != null) {
                        this.SP.edit().putString("lastPath", this.path).commit();
                        this.et[this.PATH].setText((CharSequence)this.path);
                        this.name = this.path.replaceAll(".*/", "");
                        if (this.et[this.NAME].getText().toString().equals("")) {
                            this.et[this.NAME].setText((CharSequence)this.name);
                        }
                        if (this.iconText[0] == null || !this.iconText[0].equals("")) return;
                        this.iconText[0] = this.name;
                        return;
                    } else {
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        this.finish();
    }

    protected void onCreate(Bundle object) {
        super.onCreate((Bundle)object);
        this.SP = PreferenceManager.getDefaultSharedPreferences((Context)this.context);
        object = this.getIntent().getAction();
        if (object != null && object.equals("android.intent.action.CREATE_SHORTCUT")) {
            this.makeShortcut();
            return;
        }
        this.finish();
    }

}

