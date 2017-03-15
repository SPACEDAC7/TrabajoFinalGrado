/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  com.urbanairship.actions.ActionValue$1
 *  com.urbanairship.actions.ActionValueException
 *  com.urbanairship.json.JsonException
 *  com.urbanairship.json.JsonList
 *  com.urbanairship.json.JsonMap
 *  com.urbanairship.json.JsonValue
 */
package com.urbanairship.actions;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.urbanairship.actions.ActionValue;
import com.urbanairship.actions.ActionValueException;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonList;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonSerializable;
import com.urbanairship.json.JsonValue;

public class ActionValue
implements JsonSerializable,
Parcelable {
    public static final Parcelable.Creator<ActionValue> CREATOR = new 1();
    private final JsonValue jsonValue;

    public ActionValue() {
        this.jsonValue = JsonValue.NULL;
    }

    public ActionValue(JsonValue jsonValue) {
        JsonValue jsonValue2 = jsonValue;
        if (jsonValue == null) {
            jsonValue2 = JsonValue.NULL;
        }
        this.jsonValue = jsonValue2;
    }

    @NonNull
    public static ActionValue wrap(char c2) {
        return new ActionValue(JsonValue.wrap((char)c2));
    }

    @NonNull
    public static ActionValue wrap(int n2) {
        return new ActionValue(JsonValue.wrap((int)n2));
    }

    @NonNull
    public static ActionValue wrap(long l2) {
        return new ActionValue(JsonValue.wrap((long)l2));
    }

    @NonNull
    public static ActionValue wrap(JsonSerializable jsonSerializable) {
        return new ActionValue(JsonValue.wrap((JsonSerializable)jsonSerializable));
    }

    @NonNull
    public static ActionValue wrap(Object object) throws ActionValueException {
        try {
            ActionValue actionValue = new ActionValue(JsonValue.wrap((Object)object));
            return actionValue;
        }
        catch (JsonException var1_2) {
            throw new ActionValueException("Invalid ActionValue object: " + object, (Exception)var1_2);
        }
    }

    @NonNull
    public static ActionValue wrap(String string2) {
        return new ActionValue(JsonValue.wrap((String)string2));
    }

    @NonNull
    public static ActionValue wrap(boolean bl) {
        return new ActionValue(JsonValue.wrap((boolean)bl));
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object instanceof ActionValue) {
            object = (ActionValue)object;
            return this.jsonValue.equals((Object)object.jsonValue);
        }
        return false;
    }

    public boolean getBoolean(boolean bl) {
        return this.jsonValue.getBoolean(bl);
    }

    public double getDouble(double d2) {
        return this.jsonValue.getDouble(d2);
    }

    public int getInt(int n2) {
        return this.jsonValue.getInt(n2);
    }

    public JsonList getList() {
        return this.jsonValue.getList();
    }

    public long getLong(long l2) {
        return this.jsonValue.getLong(l2);
    }

    public JsonMap getMap() {
        return this.jsonValue.getMap();
    }

    public String getString() {
        return this.getString(null);
    }

    public String getString(String string2) {
        return this.jsonValue.getString(string2);
    }

    public int hashCode() {
        return this.jsonValue.hashCode();
    }

    public boolean isNull() {
        return this.jsonValue.isNull();
    }

    @Override
    public JsonValue toJsonValue() {
        return this.jsonValue;
    }

    public String toString() {
        return this.jsonValue.toString();
    }

    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeParcelable((Parcelable)this.jsonValue, n2);
    }
}

