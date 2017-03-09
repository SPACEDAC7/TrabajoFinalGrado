/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.graphics.Typeface
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.Environment
 *  android.preference.PreferenceManager
 *  android.view.KeyEvent
 *  android.view.Menu
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.View$OnKeyListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.Window
 *  android.widget.EditText
 *  android.widget.HorizontalScrollView
 *  android.widget.ImageView
 *  android.widget.ImageView$ScaleType
 *  android.widget.LinearLayout
 *  android.widget.LinearLayout$LayoutParams
 *  android.widget.ScrollView
 *  android.widget.TextView
 *  android.widget.Toast
 */
package jackpal.androidterm.shortcuts;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;

public class FSNavigator
extends Activity {
    private final int ACTION_THEME_SWAP = 256;
    private final int BUTTON_SIZE = 150;
    private SharedPreferences SP;
    private HashMap<Integer, LinearLayout> cachedDirectoryView;
    private HashMap<Integer, TextView> cachedDividerView;
    private HashMap<Integer, LinearLayout> cachedFileView;
    private File cd;
    private LinearLayout contentView;
    private Context context;
    private int countDirectoryView;
    private int countDividerView;
    private int countFileView;
    View.OnClickListener directoryListener;
    private String extSdCard;
    private File extSdCardFile;
    View.OnClickListener fileListener;
    private LinearLayout pathEntryView;
    Comparator<String> stringSortComparator;
    private float textLg;
    private int theme;
    private LinearLayout titleView;

    public FSNavigator() {
        this.context = this;
        this.textLg = 24.0f;
        this.theme = 16973829;
        this.fileListener = new View.OnClickListener(){

            public void onClick(View object) {
                if ((object = (String)object.getTag()) != null) {
                    FSNavigator.this.setResult(-1, FSNavigator.this.getIntent().setData(Uri.fromFile((File)new File(FSNavigator.this.cd, (String)object))));
                    FSNavigator.this.finish();
                }
            }
        };
        this.directoryListener = new View.OnClickListener(){

            /*
             * Enabled aggressive block sorting
             */
            public void onClick(View object) {
                if ((object = (String)object.getTag()) != null) {
                    if ((object = new File((String)object)).isFile()) {
                        FSNavigator.this.setResult(-1, FSNavigator.this.getIntent().setData(Uri.fromFile((File)object)));
                        FSNavigator.this.finish();
                    } else {
                        FSNavigator.this.chdir((File)object);
                    }
                    FSNavigator.this.makeView();
                }
            }
        };
        this.stringSortComparator = new Comparator<String>(){

            @Override
            public int compare(String string2, String string3) {
                return string2.toLowerCase().compareTo(string3.toLowerCase());
            }
        };
    }

    private File chdir(File object) {
        object = this.ifAvailable(this.getCanonicalPath((File)object));
        System.setProperty("user.dir", (String)object);
        this.cd = object = new File((String)object);
        return object;
    }

    private File chdir(String string2) {
        return this.chdir(new File(string2));
    }

    /*
     * Enabled aggressive block sorting
     */
    private LinearLayout directoryEntry(String string2) {
        LinearLayout linearLayout;
        boolean bl = string2.equals("..");
        if (bl) {
            linearLayout = this.directoryView(bl);
        } else {
            if (this.countDirectoryView < this.cachedDirectoryView.size()) {
                linearLayout = this.cachedDirectoryView.get(this.countDirectoryView);
            } else {
                linearLayout = this.directoryView(bl);
                this.cachedDirectoryView.put(this.countDirectoryView, linearLayout);
            }
            ++this.countDirectoryView;
        }
        TextView textView = (TextView)linearLayout.findViewById(2131165187);
        textView.setTag((Object)string2);
        String string3 = bl ? "[" + this.cd.getPath() + "]" : string2;
        textView.setText((CharSequence)string3);
        ((ImageView)linearLayout.findViewById(2131165184)).setTag((Object)string2);
        return linearLayout;
    }

    /*
     * Enabled aggressive block sorting
     */
    private LinearLayout directoryView(boolean bl) {
        ImageView imageView = this.imageViewFolder(bl);
        TextView textView = new TextView(this.context);
        if (bl) {
            textView.setGravity(19);
        } else {
            textView.setGravity(19);
        }
        textView.setClickable(true);
        textView.setLongClickable(true);
        textView.setFocusable(true);
        textView.setOnClickListener(this.directoryListener);
        textView.setMaxLines(1);
        textView.setTextSize(this.textLg);
        textView.setPadding(10, 5, 10, 5);
        textView.setId(2131165187);
        textView.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, 150, 1.0f));
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(this.context);
        horizontalScrollView.addView((View)textView);
        horizontalScrollView.setFillViewport(true);
        horizontalScrollView.setFocusable(true);
        horizontalScrollView.setOnClickListener(this.directoryListener);
        horizontalScrollView.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, 150, 7.0f));
        textView = new LinearLayout(this.context);
        textView.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, 150, 2.0f));
        textView.setOrientation(0);
        textView.setGravity(119);
        textView.setOnClickListener(this.directoryListener);
        textView.addView((View)imageView);
        textView.addView((View)horizontalScrollView);
        return textView;
    }

    private boolean doOptionsItem(int n) {
        switch (n) {
            default: {
                return false;
            }
            case 256: 
        }
        this.swapTheme();
        return true;
    }

    private void doPause() {
        this.SP.edit().putString("lastDirectory", this.getCanonicalPath(this.cd)).commit();
    }

    private void doResume() {
        this.makeView();
    }

    /*
     * Enabled aggressive block sorting
     */
    private TextView entryDividerH() {
        TextView textView;
        if (this.countDividerView < this.cachedDividerView.size()) {
            textView = this.cachedDividerView.get(this.countDividerView);
        } else {
            textView = new TextView(this.context);
            textView.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, 1, 1.0f));
            this.cachedDividerView.put(this.countDividerView, textView);
        }
        ++this.countDividerView;
        return textView;
    }

    /*
     * Enabled aggressive block sorting
     */
    private LinearLayout fileEntry(String string2) {
        LinearLayout linearLayout;
        Object object;
        boolean bl = true;
        boolean bl2 = true;
        if (string2 == null) {
            if (string2 != null) {
                bl2 = false;
            }
            linearLayout = this.fileView(bl2);
        } else {
            if (this.countFileView < this.cachedFileView.size()) {
                linearLayout = this.cachedFileView.get(this.countFileView);
            } else {
                object = this.cachedFileView;
                int n = this.countFileView;
                bl2 = string2 == null ? bl : false;
                linearLayout = this.fileView(bl2);
                object.put(n, linearLayout);
            }
            ++this.countFileView;
        }
        TextView textView = (TextView)linearLayout.findViewById(2131165187);
        object = string2 == null ? "" : string2;
        textView.setText((CharSequence)object);
        object = string2;
        if (string2 == null) {
            object = "";
        }
        textView.setTag(object);
        return linearLayout;
    }

    /*
     * Enabled aggressive block sorting
     */
    private LinearLayout fileView(boolean bl) {
        EditText editText;
        LinearLayout linearLayout = new LinearLayout(this.context);
        linearLayout.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2, 1.0f));
        linearLayout.setOrientation(0);
        linearLayout.setGravity(119);
        if (bl) {
            editText = new EditText(this.context);
            editText.setHint((CharSequence)this.getString(2131296311));
            editText.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -1, 2.0f));
            editText.setOnKeyListener(new View.OnKeyListener((TextView)editText){
                final /* synthetic */ TextView val$tv;

                /*
                 * Enabled aggressive block sorting
                 */
                public boolean onKey(View object, int n, KeyEvent object2) {
                    if (n != 66) return false;
                    object = this.val$tv.getText().toString();
                    object2 = new File(FSNavigator.this.getCanonicalPath((String)object));
                    FSNavigator fSNavigator = FSNavigator.this;
                    object = object2.getParentFile() == null ? object2 : object2.getParentFile();
                    fSNavigator.chdir((File)object);
                    if (object2.isFile()) {
                        FSNavigator.this.setResult(-1, FSNavigator.this.getIntent().setData(Uri.fromFile((File)object2)));
                        FSNavigator.this.finish();
                        return true;
                    }
                    FSNavigator.this.chdir((File)object2);
                    FSNavigator.this.makeView();
                    return true;
                }
            });
            linearLayout.addView((View)editText);
        } else {
            editText = new TextView(this.context);
            editText.setClickable(true);
            editText.setLongClickable(true);
            editText.setOnClickListener(this.fileListener);
            editText.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -1, 1.0f));
            HorizontalScrollView horizontalScrollView = new HorizontalScrollView(this.context);
            horizontalScrollView.setFillViewport(true);
            horizontalScrollView.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, 150, 7.0f));
            horizontalScrollView.addView((View)editText);
            linearLayout.addView((View)horizontalScrollView);
        }
        editText.setFocusable(true);
        editText.setSingleLine();
        editText.setTextSize(this.textLg);
        editText.setTypeface(Typeface.SERIF, 1);
        editText.setGravity(19);
        editText.setPadding(10, 5, 10, 5);
        editText.setId(2131165187);
        return linearLayout;
    }

    private String ifAvailable(String string2) {
        String string3;
        if (!string2.startsWith(this.extSdCard) || (string3 = Environment.getExternalStorageState()).equals("mounted") || string3.equals("mounted_ro")) {
            return string2;
        }
        this.toast(this.getString(2131296310), 1);
        return this.extSdCard;
    }

    /*
     * Enabled aggressive block sorting
     */
    private ImageView imageViewFolder(boolean bl) {
        ImageView imageView = new ImageView(this.context);
        imageView.setClickable(true);
        imageView.setFocusable(true);
        imageView.setId(2131165184);
        imageView.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(120, 120, 1.0f));
        int n = bl ? 2130837509 : 2130837508;
        imageView.setImageResource(n);
        imageView.setOnClickListener(this.directoryListener);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        return imageView;
    }

    private LinearLayout makeContentView() {
        LinearLayout linearLayout = new LinearLayout(this.context);
        linearLayout.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2, 1.0f));
        linearLayout.setId(2131165185);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(119);
        ScrollView scrollView = new ScrollView(this.context);
        scrollView.setId(2131165186);
        scrollView.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2, 1.0f));
        scrollView.addView((View)linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(this.context);
        linearLayout2.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2, 1.0f));
        linearLayout2.setOrientation(1);
        linearLayout2.setGravity(119);
        linearLayout2.setTag((Object)linearLayout);
        linearLayout2.addView((View)this.titleView, -1, -2);
        linearLayout2.addView((View)scrollView);
        linearLayout2.addView((View)this.pathEntryView, -1, -2);
        return linearLayout2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void makeView() {
        String[] arrstring;
        int n;
        int n2;
        this.countFileView = 0;
        this.countDirectoryView = 0;
        ScrollView scrollView = (ScrollView)this.contentView.findViewById(2131165186);
        LinearLayout linearLayout = (LinearLayout)scrollView.findViewById(2131165185);
        linearLayout.removeAllViews();
        if (this.cd == null) {
            this.chdir("/");
        }
        String[] arrstring2 = arrstring = this.getCanonicalPath(this.cd);
        if (arrstring.equals("")) {
            arrstring2 = "/";
            this.chdir("/");
        }
        if (arrstring2.equals("/")) {
            this.titleView.setVisibility(8);
        } else {
            this.titleView.setVisibility(0);
            this.titleView.requestLayout();
            ((TextView)this.titleView.findViewById(2131165187)).setText((CharSequence)("[" + this.cd.getPath() + "]"));
        }
        if ((arrstring2 = this.cd.list(new FilenameFilter(){

            @Override
            public boolean accept(File file, String string2) {
                return new File(file, string2).isDirectory();
            }
        })) != null) {
            Arrays.sort(arrstring2, 0, arrstring2.length, this.stringSortComparator);
            n2 = arrstring2.length;
            for (n = 0; n < n2; ++n) {
                if (arrstring2[n].equals(".")) continue;
                linearLayout.addView((View)this.directoryEntry(arrstring2[n]));
                linearLayout.addView((View)this.entryDividerH());
            }
        }
        if ((arrstring2 = this.cd.list(new FilenameFilter(){

            @Override
            public boolean accept(File file, String string2) {
                if (!new File(file, string2).isDirectory()) {
                    return true;
                }
                return false;
            }
        })) != null) {
            Arrays.sort(arrstring2, 0, arrstring2.length, this.stringSortComparator);
            n2 = arrstring2.length;
            for (n = 0; n < n2; ++n) {
                linearLayout.addView((View)this.fileEntry(arrstring2[n]));
                linearLayout.addView((View)this.entryDividerH());
            }
        }
        ((TextView)this.pathEntryView.findViewById(2131165187)).setText((CharSequence)"");
        scrollView.scrollTo(0, 0);
        this.setContentView((View)this.contentView);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void swapTheme() {
        switch (this.theme) {
            default: {
                return;
            }
            case 16973829: {
                this.theme = 16973836;
                break;
            }
            case 16973836: {
                this.theme = 16973829;
            }
        }
        this.SP.edit().putInt("theme", this.theme).commit();
        this.startActivityForResult(this.getIntent().addFlags(33554432), -1);
        this.finish();
    }

    private void toast(final String string2, final int n) {
        this.runOnUiThread(new Runnable(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void run() {
                Context context = FSNavigator.this.context;
                String string22 = string2;
                int n2 = n == 0 ? 0 : 1;
                Toast.makeText((Context)context, (CharSequence)string22, (int)n2).show();
            }
        });
    }

    String getCanonicalPath(File file) {
        try {
            String string2 = file.getCanonicalPath();
            return string2;
        }
        catch (IOException var2_3) {
            return file.getPath();
        }
    }

    String getCanonicalPath(String string2) {
        return this.getCanonicalPath(new File(string2));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onCreate(Bundle object) {
        super.onCreate((Bundle)object);
        this.setTitle((CharSequence)this.getString(2131296312));
        this.SP = PreferenceManager.getDefaultSharedPreferences((Context)this.context);
        this.theme = this.SP.getInt("theme", this.theme);
        this.setTheme(this.theme);
        this.getWindow().setSoftInputMode(3);
        Intent intent = this.getIntent();
        this.extSdCardFile = Environment.getExternalStorageDirectory();
        this.extSdCard = this.getCanonicalPath(this.extSdCardFile);
        object = intent.getData();
        object = object == null ? null : object.getPath();
        if (object == null || this.chdir((String)object) == null) {
            this.chdir(this.extSdCard);
        }
        if (intent.hasExtra("title")) {
            this.setTitle((CharSequence)intent.getStringExtra("title"));
        }
        this.titleView = this.directoryEntry("..");
        this.pathEntryView = this.fileEntry(null);
        this.contentView = this.makeContentView();
        this.cachedDirectoryView = new HashMap();
        this.cachedFileView = new HashMap();
        this.cachedDividerView = new HashMap();
    }

    public boolean onCreateOptionsMenu(Menu menu2) {
        super.onCreateOptionsMenu(menu2);
        menu2.add(0, 256, 0, (CharSequence)this.getString(2131296309));
        return true;
    }

    public boolean onKeyUp(int n, KeyEvent keyEvent) {
        if (n == 4) {
            this.finish();
            return true;
        }
        return super.onKeyUp(n, keyEvent);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        return this.doOptionsItem(menuItem.getItemId());
    }

    public void onPause() {
        super.onPause();
        this.doPause();
    }

    public void onResume() {
        super.onResume();
        this.doResume();
    }

}

