/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.app.Dialog
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnCancelListener
 *  android.content.DialogInterface$OnShowListener
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.content.res.Resources
 *  android.graphics.drawable.Drawable
 *  android.os.Bundle
 *  android.os.Message
 *  android.preference.PreferenceManager
 *  android.text.Html
 *  android.util.DisplayMetrics
 *  android.view.Display
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.Window
 *  android.view.WindowManager
 *  android.view.WindowManager$LayoutParams
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.ArrayAdapter
 *  android.widget.Button
 *  android.widget.ImageView
 *  android.widget.ListAdapter
 *  android.widget.ListView
 *  android.widget.TextView
 */
package com.buzzfeed.android.ui.dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.preference.PreferenceManager;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.buzzfeed.toolkit.util.LogUtil;

@Deprecated
public class BuzzDialogFragment
extends DialogFragment
implements View.OnClickListener,
DialogInterface.OnShowListener {
    public static final String ADAPTER_CONTENT = "adapter";
    private static final int CUSTOMIZED_BLUE_LIST_STYLE = 1;
    private static final int DEFAULT_LIST_STYLE = 0;
    public static final String DIALOG_FRAGMENT_TAG = "dialogFragmentTag";
    public static final int EXTRA_BUTTON_ID = 2131820759;
    private static final String KEY_IMG_FORMAT = "img";
    protected static final String KEY_RESOURCEID_PREFIX = "resourceId_";
    protected static final String KEY_STRING_PREFIX = "string_";
    private static final String LIST_STYLE = "list_style";
    public static final int NEGATIVE_BUTTON_ID = 2131820758;
    public static final int NEGATIVE_IMAGE_BUTTON = 2131820756;
    public static final int POSITIVE_BUTTON_ID = 2131820757;
    public static final int POSITIVE_IMAGE_BUTTON = 2131820754;
    private static final String TAG = BuzzDialogFragment.class.getSimpleName();
    private static final int[] buttonIDs = new int[]{2131820757, 2131820758, 2131820759, 2131820754, 2131820756};
    private final String KEY_REFERENCE_ID = "referenceId";
    private DialogInterface.OnCancelListener cancelListener;
    private AdapterView.OnItemClickListener handler;
    private BuzzDialogFragmentListener listener;

    private void clampWidth() {
        if (this.getActivity() != null) {
            Display display = ((WindowManager)this.getActivity().getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            int n2 = displayMetrics.widthPixels;
            display = this.getDialog();
            if (display != null && display.getWindow() != null) {
                displayMetrics = display.getWindow().getAttributes();
                int n3 = this.getResources().getDimensionPixelSize(2131427515);
                if (n3 < (int)Math.round((double)n2 * 0.75)) {
                    display.getWindow().setLayout(n3, displayMetrics.height);
                }
            }
        }
    }

    private String getStringForViewId(int n2) {
        String string2;
        Bundle bundle = this.getArguments();
        Resources resources = this.getActivity().getResources();
        String string3 = string2 = bundle.getString("string_" + n2);
        if (string2 == null) {
            n2 = bundle.getInt("resourceId_" + n2, -1);
            string3 = string2;
            if (n2 != -1) {
                string3 = resources.getString(n2);
            }
        }
        return string3;
    }

    public static BuzzDialogFragment newInstance(int n2) {
        return BuzzDialogFragment.newInstance(n2, false);
    }

    public static BuzzDialogFragment newInstance(int n2, boolean bl) {
        BuzzDialogFragment buzzDialogFragment = new BuzzDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("resourceId_2131820747", n2);
        bundle.putBoolean("img", bl);
        buzzDialogFragment.setArguments(bundle);
        return buzzDialogFragment;
    }

    public static BuzzDialogFragment newInstance(String string2) {
        BuzzDialogFragment buzzDialogFragment = new BuzzDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("string_2131820747", string2);
        buzzDialogFragment.setArguments(bundle);
        return buzzDialogFragment;
    }

    public static void removeDialogFragment(FragmentActivity object) {
        String string2 = TAG + ".removeDialogFragment";
        if ((object = (BuzzDialogFragment)object.getSupportFragmentManager().findFragmentByTag("dialogFragmentTag")) != null) {
            object.setRetainInstance(false);
            object.dismissAllowingStateLoss();
            return;
        }
        LogUtil.i(string2, "No DialogFragment was attached");
    }

    private void setResourceIdForId(int n2, int n3) {
        String string2 = "resourceId_" + n3;
        this.getArguments().putInt(string2, n2);
        this.getArguments().remove("string_" + n3);
    }

    private void setStringForId(String string2, int n2) {
        String string3 = "string_" + n2;
        this.getArguments().putString(string3, string2);
        this.getArguments().remove("resourceId_" + n2);
    }

    public BuzzDialogFragmentListener getListener() {
        return this.listener;
    }

    public int getReferenceId() {
        return this.getArguments().getInt("referenceId");
    }

    @Override
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        if (this.cancelListener != null) {
            this.cancelListener.onCancel(dialogInterface);
        }
    }

    public void onClick(View view) {
        if (this.listener != null) {
            this.listener.onBuzzDialogClick(this, (Button)view);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Dialog onCreateDialog(Bundle object) {
        int n2;
        Object object2;
        object = LayoutInflater.from((Context)this.getActivity().getApplicationContext());
        Bundle bundle = this.getArguments();
        AlertDialog.Builder builder = new AlertDialog.Builder((Context)this.getActivity());
        View view = object.inflate(2130903094, null);
        TextView textView = (TextView)view.findViewById(2131820749);
        boolean bl = bundle.getBoolean("img", false);
        String[] arrstring = (String[])this.getArguments().get("adapter");
        if (arrstring == null) {
            n2 = bl ? 2130903095 : (this.getStringForViewId(2131820759) != null ? 2130903097 : 2130903098);
            textView.setLayoutResource(n2);
            textView.inflate();
        }
        for (int n3 : buttonIDs) {
            object2 = (Button)view.findViewById(n3);
            String string2 = this.getStringForViewId(n3);
            if (object2 == null) continue;
            object2.setVisibility(0);
            object2.setText((CharSequence)string2);
            object2.setOnClickListener((View.OnClickListener)this);
        }
        textView = (TextView)view.findViewById(2131820748);
        object2 = this.getStringForViewId(2131820748);
        if (object2 != null) {
            textView.setText((CharSequence)Html.fromHtml((String)object2));
        } else {
            textView.setVisibility(8);
        }
        ((TextView)view.findViewById(2131820747)).setText((CharSequence)this.getStringForViewId(2131820747));
        n2 = bundle.getInt("resourceId_2131820746", -1);
        if (n2 != -1) {
            ((ImageView)view.findViewById(2131820746)).setImageResource(n2);
        }
        textView = (ViewGroup)view.findViewById(2131820752);
        n2 = bundle.getInt("resourceId_2131820752", -1);
        if (n2 != -1) {
            object.inflate(n2, (ViewGroup)textView);
        } else {
            textView.setVisibility(8);
        }
        if (arrstring != null) {
            n2 = this.getArguments().getInt("list_style");
            bundle = (ListView)view.findViewById(2131820751);
            object = null;
            if (n2 == 0) {
                object = new FeedNameArrayAdapter((Context)this.getActivity(), 2130903215, arrstring);
            } else if (n2 == 1) {
                object = new ListDialogCustomized((Context)this.getActivity(), 2130903143, arrstring);
                bundle.setDivider(null);
                bundle.setDividerHeight(0);
            }
            bundle.setAdapter((ListAdapter)object);
            bundle.setItemsCanFocus(true);
            bundle.setOnItemClickListener(this.handler);
        }
        builder.setView(view);
        this.setRetainInstance(true);
        object = builder.create();
        object.setOnShowListener((DialogInterface.OnShowListener)this);
        object.setCanceledOnTouchOutside(false);
        return object;
    }

    @Override
    public void onDestroyView() {
        if (this.getDialog() != null && this.getRetainInstance()) {
            this.getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override
    public void onDismiss(DialogInterface dialogInterface) {
        Context context = this.getActivity().getApplicationContext();
        if (this.getReferenceId() == 4 || this.getReferenceId() == 6 || this.getReferenceId() == 5) {
            PreferenceManager.getDefaultSharedPreferences((Context)context).edit().putLong("rate_me_time_of_last_prompt", System.currentTimeMillis()).apply();
        }
        if (this.getDialog() != null && this.getRetainInstance()) {
            this.getDialog().setDismissMessage(null);
        }
        super.onDismiss(dialogInterface);
    }

    public void onShow(DialogInterface dialogInterface) {
        if (this.getArguments().get("adapter") == null) {
            this.clampWidth();
        }
    }

    public BuzzDialogFragment setCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        this.cancelListener = onCancelListener;
        return this;
    }

    public BuzzDialogFragment setContentView(int n2) {
        this.setResourceIdForId(n2, 2131820752);
        return this;
    }

    public BuzzDialogFragment setExtraButton(int n2) {
        this.setResourceIdForId(n2, 2131820759);
        return this;
    }

    public BuzzDialogFragment setExtraButton(String string2) {
        this.setStringForId(string2, 2131820759);
        return this;
    }

    public BuzzDialogFragment setIcon(int n2) {
        this.setResourceIdForId(n2, 2131820746);
        return this;
    }

    public BuzzDialogFragment setListener(BuzzDialogFragmentListener buzzDialogFragmentListener) {
        this.listener = buzzDialogFragmentListener;
        return this;
    }

    public BuzzDialogFragment setMessage(int n2) {
        this.setResourceIdForId(n2, 2131820748);
        return this;
    }

    public BuzzDialogFragment setMessage(String string2) {
        this.setStringForId(string2, 2131820748);
        return this;
    }

    public BuzzDialogFragment setNegativeButton(int n2) {
        this.setResourceIdForId(n2, 2131820758);
        return this;
    }

    public BuzzDialogFragment setNegativeButton(String string2) {
        this.setStringForId(string2, 2131820758);
        return this;
    }

    public BuzzDialogFragment setPositiveButton(int n2) {
        this.setResourceIdForId(n2, 2131820757);
        return this;
    }

    public BuzzDialogFragment setPositiveButton(String string2) {
        this.setStringForId(string2, 2131820757);
        return this;
    }

    public BuzzDialogFragment setReferenceId(int n2) {
        this.getArguments().putInt("referenceId", n2);
        return this;
    }

    public BuzzDialogFragment useCustomizedListView(String[] arrstring, AdapterView.OnItemClickListener onItemClickListener) {
        this.handler = onItemClickListener;
        this.getArguments().putStringArray("adapter", arrstring);
        this.getArguments().putInt("list_style", 1);
        return this;
    }

    public BuzzDialogFragment useListView(String[] arrstring, AdapterView.OnItemClickListener onItemClickListener) {
        this.handler = onItemClickListener;
        this.getArguments().putStringArray("adapter", arrstring);
        this.getArguments().putInt("list_style", 0);
        return this;
    }

    public static interface BuzzDialogFragmentListener {
        public void onBuzzDialogClick(BuzzDialogFragment var1, Button var2);
    }

    private class FeedNameArrayAdapter
    extends ArrayAdapter<String> {
        String[] mItems;

        public FeedNameArrayAdapter(Context context, int n2, String[] arrstring) {
            super(context, n2, (Object[])arrstring);
            this.mItems = arrstring;
        }

        /*
         * Enabled aggressive block sorting
         */
        public View getView(int n2, View view, ViewGroup object) {
            if (view == null) {
                view = BuzzDialogFragment.this.getActivity().getLayoutInflater().inflate(2130903215, (ViewGroup)object, false);
                TextView textView = (TextView)view.findViewById(2131821015);
                textView.setMinLines(2);
                textView.setTextSize(2, 18.0f);
                textView.setText((CharSequence)this.mItems[n2]);
                object = new ViewHolderItem();
                object.textViewItem = textView;
                view.setTag(object);
            } else {
                object = (ViewHolderItem)view.getTag();
            }
            object.textViewItem.setText((CharSequence)this.mItems[n2]);
            return view;
        }
    }

    private class ListDialogCustomized
    extends ArrayAdapter<String> {
        String[] mItems;

        public ListDialogCustomized(Context context, int n2, String[] arrstring) {
            super(context, n2, (Object[])arrstring);
            this.mItems = arrstring;
        }

        /*
         * Enabled aggressive block sorting
         */
        public View getView(int n2, View view, ViewGroup object) {
            if (view == null) {
                view = BuzzDialogFragment.this.getActivity().getLayoutInflater().inflate(2130903143, (ViewGroup)object, false);
                TextView textView = (TextView)view.findViewById(2131820885);
                textView.setText((CharSequence)this.mItems[n2]);
                textView.setAllCaps(true);
                object = new ViewHolderItem();
                object.textViewItem = textView;
                view.setTag(object);
            } else {
                object = (ViewHolderItem)view.getTag();
            }
            object.textViewItem.setText((CharSequence)this.mItems[n2]);
            return view;
        }
    }

    static class ViewHolderItem {
        TextView textViewItem;

        ViewHolderItem() {
        }
    }

}

