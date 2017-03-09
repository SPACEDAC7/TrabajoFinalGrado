/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.ProfileManager;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import org.json.JSONException;
import org.json.JSONObject;

public final class Profile
implements Parcelable {
    public static final Parcelable.Creator<Profile> CREATOR = new Parcelable.Creator(){

        public Profile createFromParcel(Parcel parcel) {
            return new Profile(parcel);
        }

        public Profile[] newArray(int n2) {
            return new Profile[n2];
        }
    };
    private static final String FIRST_NAME_KEY = "first_name";
    private static final String ID_KEY = "id";
    private static final String LAST_NAME_KEY = "last_name";
    private static final String LINK_URI_KEY = "link_uri";
    private static final String MIDDLE_NAME_KEY = "middle_name";
    private static final String NAME_KEY = "name";
    private final String firstName;
    private final String id;
    private final String lastName;
    private final Uri linkUri;
    private final String middleName;
    private final String name;

    /*
     * Enabled aggressive block sorting
     */
    private Profile(Parcel object) {
        this.id = object.readString();
        this.firstName = object.readString();
        this.middleName = object.readString();
        this.lastName = object.readString();
        this.name = object.readString();
        object = object.readString();
        object = object == null ? null : Uri.parse((String)object);
        this.linkUri = object;
    }

    public Profile(String string2, @Nullable String string3, @Nullable String string4, @Nullable String string5, @Nullable String string6, @Nullable Uri uri) {
        Validate.notNullOrEmpty(string2, "id");
        this.id = string2;
        this.firstName = string3;
        this.middleName = string4;
        this.lastName = string5;
        this.name = string6;
        this.linkUri = uri;
    }

    /*
     * Enabled aggressive block sorting
     */
    Profile(JSONObject object) {
        Object var2_2 = null;
        this.id = object.optString("id", null);
        this.firstName = object.optString("first_name", null);
        this.middleName = object.optString("middle_name", null);
        this.lastName = object.optString("last_name", null);
        this.name = object.optString("name", null);
        object = object.optString("link_uri", null);
        object = object == null ? var2_2 : Uri.parse((String)object);
        this.linkUri = object;
    }

    public static void fetchProfileForCurrentAccessToken() {
        AccessToken accessToken = AccessToken.getCurrentAccessToken();
        if (accessToken == null) {
            Profile.setCurrentProfile(null);
            return;
        }
        Utility.getGraphMeRequestWithCacheAsync(accessToken.getToken(), new Utility.GraphMeRequestWithCacheCallback(){

            @Override
            public void onFailure(FacebookException facebookException) {
            }

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onSuccess(JSONObject jSONObject) {
                String string2 = jSONObject.optString("id");
                if (string2 == null) {
                    return;
                }
                String string3 = jSONObject.optString("link");
                String string4 = jSONObject.optString("first_name");
                String string5 = jSONObject.optString("middle_name");
                String string6 = jSONObject.optString("last_name");
                String string7 = jSONObject.optString("name");
                jSONObject = string3 != null ? Uri.parse((String)string3) : null;
                Profile.setCurrentProfile(new Profile(string2, string4, string5, string6, string7, (Uri)jSONObject));
            }
        });
    }

    public static Profile getCurrentProfile() {
        return ProfileManager.getInstance().getCurrentProfile();
    }

    public static void setCurrentProfile(Profile profile) {
        ProfileManager.getInstance().setCurrentProfile(profile);
    }

    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        if (this == object) return true;
        if (!(object instanceof Profile)) {
            return false;
        }
        object = (Profile)object;
        if (this.id.equals(object.id) && this.firstName == null) {
            if (object.firstName == null) return true;
            return false;
        }
        if (this.firstName.equals(object.firstName) && this.middleName == null) {
            if (object.middleName == null) return true;
            return false;
        }
        if (this.middleName.equals(object.middleName) && this.lastName == null) {
            if (object.lastName == null) return true;
            return false;
        }
        if (this.lastName.equals(object.lastName) && this.name == null) {
            if (object.name == null) return true;
            return false;
        }
        if (!this.name.equals(object.name) || this.linkUri != null) return this.linkUri.equals((Object)object.linkUri);
        {
            if (object.linkUri != null) return false;
        }
        return true;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getId() {
        return this.id;
    }

    public String getLastName() {
        return this.lastName;
    }

    public Uri getLinkUri() {
        return this.linkUri;
    }

    public String getMiddleName() {
        return this.middleName;
    }

    public String getName() {
        return this.name;
    }

    public Uri getProfilePictureUri(int n2, int n3) {
        return ImageRequest.getProfilePictureUri(this.id, n2, n3);
    }

    public int hashCode() {
        int n2;
        int n3 = n2 = this.id.hashCode() + 527;
        if (this.firstName != null) {
            n3 = n2 * 31 + this.firstName.hashCode();
        }
        n2 = n3;
        if (this.middleName != null) {
            n2 = n3 * 31 + this.middleName.hashCode();
        }
        n3 = n2;
        if (this.lastName != null) {
            n3 = n2 * 31 + this.lastName.hashCode();
        }
        n2 = n3;
        if (this.name != null) {
            n2 = n3 * 31 + this.name.hashCode();
        }
        n3 = n2;
        if (this.linkUri != null) {
            n3 = n2 * 31 + this.linkUri.hashCode();
        }
        return n3;
    }

    JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", (Object)this.id);
            jSONObject.put("first_name", (Object)this.firstName);
            jSONObject.put("middle_name", (Object)this.middleName);
            jSONObject.put("last_name", (Object)this.lastName);
            jSONObject.put("name", (Object)this.name);
            if (this.linkUri != null) {
                jSONObject.put("link_uri", (Object)this.linkUri.toString());
            }
            return jSONObject;
        }
        catch (JSONException var1_2) {
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeString(this.id);
        parcel.writeString(this.firstName);
        parcel.writeString(this.middleName);
        parcel.writeString(this.lastName);
        parcel.writeString(this.name);
        String string2 = this.linkUri == null ? null : this.linkUri.toString();
        parcel.writeString(string2);
    }

}

