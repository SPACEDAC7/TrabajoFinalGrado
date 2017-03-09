/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Parcel
 *  android.os.Parcelable
 */
package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
import java.util.ArrayList;
import java.util.List;

public final class GameRequestContent
implements ShareModel {
    private final ActionType actionType;
    private final String data;
    private final Filters filters;
    private final String message;
    private final String objectId;
    private final ArrayList<String> suggestions;
    private final String title;
    private final String to;

    GameRequestContent(Parcel parcel) {
        this.message = parcel.readString();
        this.to = parcel.readString();
        this.title = parcel.readString();
        this.data = parcel.readString();
        this.actionType = ActionType.valueOf(parcel.readString());
        this.objectId = parcel.readString();
        this.filters = Filters.valueOf(parcel.readString());
        this.suggestions = new ArrayList();
        parcel.readStringList(this.suggestions);
    }

    private GameRequestContent(Builder builder) {
        this.message = builder.message;
        this.to = builder.to;
        this.title = builder.title;
        this.data = builder.data;
        this.actionType = builder.actionType;
        this.objectId = builder.objectId;
        this.filters = builder.filters;
        this.suggestions = builder.suggestions;
    }

    public int describeContents() {
        return 0;
    }

    public ActionType getActionType() {
        return this.actionType;
    }

    public String getData() {
        return this.data;
    }

    public Filters getFilters() {
        return this.filters;
    }

    public String getMessage() {
        return this.message;
    }

    public String getObjectId() {
        return this.objectId;
    }

    public ArrayList<String> getSuggestions() {
        return this.suggestions;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTo() {
        return this.to;
    }

    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeString(this.message);
        parcel.writeString(this.to);
        parcel.writeString(this.title);
        parcel.writeString(this.data);
        parcel.writeString(this.getActionType().toString());
        parcel.writeString(this.getObjectId());
        parcel.writeString(this.getFilters().toString());
        parcel.writeStringList(this.getSuggestions());
    }

    public static enum ActionType {
        SEND,
        ASKFOR,
        TURN;
        

        private ActionType() {
        }
    }

    public static class Builder
    implements ShareModelBuilder<GameRequestContent, Builder> {
        private ActionType actionType;
        private String data;
        private Filters filters;
        private String message;
        private String objectId;
        private ArrayList<String> suggestions;
        private String title;
        private String to;

        @Override
        public GameRequestContent build() {
            return new GameRequestContent(this);
        }

        @Override
        public Builder readFrom(Parcel parcel) {
            return this.readFrom((GameRequestContent)parcel.readParcelable(GameRequestContent.class.getClassLoader()));
        }

        @Override
        public Builder readFrom(GameRequestContent gameRequestContent) {
            if (gameRequestContent == null) {
                return this;
            }
            return this.setMessage(gameRequestContent.getMessage()).setTo(gameRequestContent.getTo()).setTitle(gameRequestContent.getTitle()).setData(gameRequestContent.getData()).setActionType(gameRequestContent.getActionType()).setObjectId(gameRequestContent.getObjectId()).setFilters(gameRequestContent.getFilters()).setSuggestions(gameRequestContent.getSuggestions());
        }

        public Builder setActionType(ActionType actionType) {
            this.actionType = actionType;
            return this;
        }

        public Builder setData(String string2) {
            this.data = string2;
            return this;
        }

        public Builder setFilters(Filters filters) {
            this.filters = filters;
            return this;
        }

        public Builder setMessage(String string2) {
            this.message = string2;
            return this;
        }

        public Builder setObjectId(String string2) {
            this.objectId = string2;
            return this;
        }

        public Builder setSuggestions(ArrayList<String> arrayList) {
            this.suggestions = arrayList;
            return this;
        }

        public Builder setTitle(String string2) {
            this.title = string2;
            return this;
        }

        public Builder setTo(String string2) {
            this.to = string2;
            return this;
        }
    }

    public static enum Filters {
        APP_USERS,
        APP_NON_USERS;
        

        private Filters() {
        }
    }

}

