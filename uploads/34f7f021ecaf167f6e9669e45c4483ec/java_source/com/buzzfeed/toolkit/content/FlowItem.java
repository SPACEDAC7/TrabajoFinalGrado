/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.content;

import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.ContentFactory;
import java.io.Serializable;
import org.json.JSONObject;

public class FlowItem
implements Serializable,
Content {
    private static final long serialVersionUID = 0;
    private Content mContent;
    private String mType;

    public FlowItem() {
    }

    public FlowItem(String string2, Content content) {
        this.mType = string2;
        this.mContent = content;
    }

    public Content getContent() {
        return this.mContent;
    }

    @Override
    public String getFlowId() {
        return this.mContent.getFlowId();
    }

    @Override
    public String getId() {
        if (this.mContent == null) {
            return null;
        }
        return this.mContent.getId();
    }

    public String getType() {
        return this.mType;
    }

    @Override
    public boolean isValid() {
        if (this.mContent != null && this.mContent.isValid()) {
            return true;
        }
        return false;
    }

    @Override
    public void parse(JSONObject jSONObject, ContentFactory contentFactory) {
        this.mType = contentFactory.parseType(jSONObject);
        this.mContent = contentFactory.parseContent(jSONObject, this.mType);
    }
}

