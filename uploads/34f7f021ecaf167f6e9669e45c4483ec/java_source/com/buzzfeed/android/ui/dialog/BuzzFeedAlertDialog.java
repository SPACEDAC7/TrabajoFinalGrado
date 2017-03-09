/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.DialogInterface$OnShowListener
 *  android.content.res.Resources
 *  android.view.ContextThemeWrapper
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.Window
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.ArrayAdapter
 *  android.widget.LinearLayout
 *  android.widget.LinearLayout$LayoutParams
 *  android.widget.ListAdapter
 *  android.widget.ListView
 *  android.widget.TextView
 */
package com.buzzfeed.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.buzzfeed.toolkit.util.UIUtil;

public class BuzzFeedAlertDialog
extends AlertDialog {
    private View mDialogAlertView;
    private boolean mIsBookmarkWarningDialog = false;

    protected BuzzFeedAlertDialog(Context context, int n2) {
        super((Context)new ContextThemeWrapper(context, 2131558565), n2);
        this.mDialogAlertView = LayoutInflater.from((Context)context).inflate(2130903139, null);
        this.setView(this.mDialogAlertView);
        this.setCanceledOnTouchOutside(false);
    }

    private void setSingleChoiceButtons(ArrayAdapter arrayAdapter, AdapterView.OnItemClickListener onItemClickListener, int n2) {
        ListView listView = (ListView)UIUtil.findView(this.mDialogAlertView, 2131820884);
        UIUtil.findView(this.mDialogAlertView, 2131820883).setVisibility(0);
        listView.setAdapter((ListAdapter)arrayAdapter);
        listView.setChoiceMode(1);
        listView.setItemsCanFocus(true);
        listView.setOnItemClickListener(onItemClickListener);
        listView.setItemChecked(n2, true);
    }

    public void setIsBookmarkWarningDialog(boolean bl) {
        this.mIsBookmarkWarningDialog = bl;
    }

    @Override
    public void setMessage(CharSequence charSequence) {
        TextView textView = (TextView)UIUtil.findView(this.mDialogAlertView, 2131820748);
        textView.setVisibility(0);
        textView.setText(charSequence);
    }

    public void setProgressBarVisibility(boolean bl) {
        if (bl) {
            UIUtil.findView(this.mDialogAlertView, 2131820745).setVisibility(0);
        }
    }

    public void setSingleChoiceButtons(Object[] arrobject, AdapterView.OnItemClickListener onItemClickListener, int n2) {
        this.setSingleChoiceButtons(new ArrayAdapter(this.getContext(), 2130903141, arrobject), onItemClickListener, n2);
    }

    public void setSingleChoiceButtons(String[] arrstring, AdapterView.OnItemClickListener onItemClickListener, int n2) {
        this.setSingleChoiceButtons(new ArrayAdapter(this.getContext(), 2130903141, (Object[])arrstring), onItemClickListener, n2);
    }

    public void setStackedButtons(String[] arrstring, AdapterView.OnItemClickListener onItemClickListener) {
        ListView listView = (ListView)UIUtil.findView(this.mDialogAlertView, 2131820751);
        listView.setAdapter((ListAdapter)new ArrayAdapter<String>(this.getContext(), 2130903143, arrstring){

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @NonNull
            public View getView(int n2, View view, ViewGroup viewGroup) {
                view = super.getView(n2, view, viewGroup);
                if (!BuzzFeedAlertDialog.this.mIsBookmarkWarningDialog) return view;
                viewGroup = (TextView)view.findViewById(2131820885);
                if (n2 == 1) {
                    viewGroup.setTextColor(ContextCompat.getColor(this.getContext(), 2131755045));
                    return view;
                }
                viewGroup.setTextColor(ContextCompat.getColor(this.getContext(), 2131755029));
                return view;
            }
        });
        listView.setChoiceMode(1);
        listView.setItemsCanFocus(true);
        listView.setOnItemClickListener(onItemClickListener);
    }

    @Override
    public void setTitle(CharSequence charSequence) {
        ((TextView)UIUtil.findView(this.mDialogAlertView, 2131820747)).setText(charSequence);
    }

    public static class Builder
    extends AlertDialog.Builder {
        private final Context mContext;
        private final BuilderParams mParams;
        private final int mTheme;

        public Builder(Context context) {
            this(context, 2131558565);
        }

        public Builder(Context context, int n2) {
            super(context, n2);
            this.mContext = context;
            this.mParams = new BuilderParams();
            this.mTheme = n2;
        }

        @Override
        public AlertDialog create() {
            final BuzzFeedAlertDialog buzzFeedAlertDialog = new BuzzFeedAlertDialog(this.mContext, this.mTheme);
            this.mParams.apply(buzzFeedAlertDialog);
            buzzFeedAlertDialog.setOnShowListener(new DialogInterface.OnShowListener(){

                public void onShow(DialogInterface dialogInterface) {
                    buzzFeedAlertDialog.getWindow().findViewById(2131820646).findViewById(2131820644).setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, (int)Builder.this.mContext.getResources().getDimension(2131427513)));
                }
            });
            return buzzFeedAlertDialog;
        }

        public AlertDialog.Builder setIsBookmarkWarningDialog(boolean bl) {
            this.mParams.mIsBookmarkWarningDialog = bl;
            return this;
        }

        @Override
        public Builder setMessage(int n2) {
            this.mParams.mMessage = this.mContext.getText(n2);
            return this;
        }

        @Override
        public Builder setMessage(CharSequence charSequence) {
            this.mParams.mMessage = charSequence;
            return this;
        }

        @Override
        public Builder setNegativeButton(int n2, DialogInterface.OnClickListener onClickListener) {
            this.mParams.mNegativeButtonText = this.mContext.getText(n2);
            this.mParams.mNegativeButtonListener = onClickListener;
            return this;
        }

        @Override
        public Builder setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.mParams.mNegativeButtonText = charSequence;
            this.mParams.mNegativeButtonListener = onClickListener;
            return this;
        }

        @Override
        public Builder setNeutralButton(int n2, DialogInterface.OnClickListener onClickListener) {
            this.mParams.mNeutralButtonText = this.mContext.getText(n2);
            this.mParams.mNeutralButtonListener = onClickListener;
            return this;
        }

        @Override
        public Builder setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.mParams.mNeutralButtonText = charSequence;
            this.mParams.mNeutralButtonListener = onClickListener;
            return this;
        }

        @Override
        public Builder setPositiveButton(int n2, DialogInterface.OnClickListener onClickListener) {
            this.mParams.mPositiveButtonText = this.mContext.getText(n2);
            this.mParams.mPositiveButtonListener = onClickListener;
            return this;
        }

        @Override
        public Builder setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.mParams.mPositiveButtonText = charSequence;
            this.mParams.mPositiveButtonListener = onClickListener;
            return this;
        }

        public AlertDialog.Builder setProgressBarVisiblilty(boolean bl) {
            this.mParams.mProgressBarVisibility = bl;
            return this;
        }

        public Builder setSingleChoiceItems(Object[] arrobject, int n2, AdapterView.OnItemClickListener onItemClickListener) {
            this.mParams.mSingleChoiceObjects = arrobject;
            this.mParams.mSingleChoiceOnItemClickListener = onItemClickListener;
            this.mParams.mCheckedItem = n2;
            this.mParams.mSingleChoiceItems = null;
            return this;
        }

        public Builder setSingleChoiceItems(String[] arrstring, int n2, AdapterView.OnItemClickListener onItemClickListener) {
            this.mParams.mSingleChoiceItems = arrstring;
            this.mParams.mSingleChoiceOnItemClickListener = onItemClickListener;
            this.mParams.mCheckedItem = n2;
            this.mParams.mSingleChoiceObjects = null;
            return this;
        }

        public Builder setStackedListItems(String[] arrstring, AdapterView.OnItemClickListener onItemClickListener) {
            this.mParams.mItems = arrstring;
            this.mParams.mOnItemClickListener = onItemClickListener;
            return this;
        }

        @Override
        public Builder setTitle(int n2) {
            this.mParams.mTitle = this.mContext.getText(n2);
            return this;
        }

        @Override
        public Builder setTitle(CharSequence charSequence) {
            this.mParams.mTitle = charSequence;
            return this;
        }

        private static class BuilderParams {
            public int mCheckedItem;
            public boolean mIsBookmarkWarningDialog = false;
            public String[] mItems;
            public CharSequence mMessage;
            public DialogInterface.OnClickListener mNegativeButtonListener;
            public CharSequence mNegativeButtonText;
            public DialogInterface.OnClickListener mNeutralButtonListener;
            public CharSequence mNeutralButtonText;
            public AdapterView.OnItemClickListener mOnItemClickListener;
            public DialogInterface.OnClickListener mPositiveButtonListener;
            public CharSequence mPositiveButtonText;
            public boolean mProgressBarVisibility;
            public String[] mSingleChoiceItems;
            public Object[] mSingleChoiceObjects;
            public AdapterView.OnItemClickListener mSingleChoiceOnItemClickListener;
            public CharSequence mTitle;

            private BuilderParams() {
            }

            /*
             * Enabled aggressive block sorting
             */
            public void apply(BuzzFeedAlertDialog buzzFeedAlertDialog) {
                if (this.mTitle != null) {
                    buzzFeedAlertDialog.setTitle(this.mTitle);
                }
                if (this.mMessage != null) {
                    buzzFeedAlertDialog.setMessage(this.mMessage);
                }
                if (this.mPositiveButtonText != null) {
                    buzzFeedAlertDialog.setButton(-1, this.mPositiveButtonText, this.mPositiveButtonListener);
                }
                if (this.mNegativeButtonText != null) {
                    buzzFeedAlertDialog.setButton(-2, this.mNegativeButtonText, this.mNegativeButtonListener);
                }
                if (this.mNeutralButtonText != null) {
                    buzzFeedAlertDialog.setButton(-3, this.mNeutralButtonText, this.mNeutralButtonListener);
                }
                buzzFeedAlertDialog.setProgressBarVisibility(this.mProgressBarVisibility);
                if (this.mItems != null) {
                    buzzFeedAlertDialog.setStackedButtons(this.mItems, this.mOnItemClickListener);
                }
                if (this.mSingleChoiceItems != null) {
                    buzzFeedAlertDialog.setSingleChoiceButtons(this.mSingleChoiceItems, this.mSingleChoiceOnItemClickListener, this.mCheckedItem);
                } else if (this.mSingleChoiceObjects != null) {
                    buzzFeedAlertDialog.setSingleChoiceButtons(this.mSingleChoiceObjects, this.mSingleChoiceOnItemClickListener, this.mCheckedItem);
                }
                buzzFeedAlertDialog.setIsBookmarkWarningDialog(this.mIsBookmarkWarningDialog);
            }
        }

    }

}

