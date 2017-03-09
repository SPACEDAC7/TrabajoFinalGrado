/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.spicerack.ui.holder;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.model.subbuzz.ImageSpice;
import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;
import com.buzzfeed.spicerack.ui.holder.SpiceViewHolder;
import com.buzzfeed.spicerack.ui.protocol.SpicyEventListener;
import com.buzzfeed.spicerack.ui.utils.SpicyGlideUtils;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Stack;

public class ImageSpiceViewHolder
extends SpiceViewHolder {
    public TextView mAttribution;
    public TextView mDescription;
    public ImageView mImage;
    private boolean mIsList = false;
    private ImageView mShareIcon;

    public ImageSpiceViewHolder(View view, boolean bl) {
        super(view);
        this.mImage = (ImageView)view.findViewById(R.id.spice_image_content);
        this.mAttribution = (TextView)view.findViewById(R.id.spice_image_attribution);
        this.mDescription = (TextView)view.findViewById(R.id.spice_image_description);
        this.mShareIcon = (ImageView)UIUtil.findView(view, R.id.spice_image_share_icon);
        this.mIsList = bl;
    }

    public int getImageWidth() {
        int n2;
        float f2 = UIUtil.convertPxToDp(this.itemView.getContext(), UIUtil.getScreenWidth());
        int n3 = n2 = Math.round(UIUtil.convertDpToPx(this.itemView.getContext(), f2));
        if (this.mIsList) {
            f2 = this.itemView.getResources().getDimensionPixelSize(R.dimen.padding_large);
            n3 = (int)((float)n2 - 2.0f * f2);
        }
        return n3;
    }

    @Override
    public void populateFrom(Content object) {
        super.populateFrom((Content)object);
        object = (ImageSpice)object;
        SpicyGlideUtils.loadImageSpice(object.getImageStack(), this.getImageWidth(), this.mImage);
        this.setText(this.mAttribution, object.getAttribution(), true);
        this.setText(this.mDescription, object.getDescription(), true);
        this.mShareIcon.setOnClickListener(new View.OnClickListener((ImageSpice)object){
            final /* synthetic */ ImageSpice val$spice;

            public void onClick(View view) {
                if (ImageSpiceViewHolder.this.getSpicyEventListener() != null) {
                    ImageSpiceViewHolder.this.getSpicyEventListener().onImageShare(this.val$spice);
                }
            }
        });
    }

}

