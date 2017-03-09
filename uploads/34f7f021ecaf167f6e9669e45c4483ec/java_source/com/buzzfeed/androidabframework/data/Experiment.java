/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.androidabframework.data;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.buzzfeed.androidabframework.data.Variant;
import com.buzzfeed.androidabframework.data.VariantBlockInterface;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Experiment
implements Serializable {
    private static final String EXPERIMENT_KEY_NAME = "name";
    private static final String EXPERIMENT_KEY_VARIANTS = "variants";
    private static final long serialVersionUID = 0;
    @Nullable
    private Integer mId;
    @Nullable
    private String mName;
    @Nullable
    private Boolean mResolved;
    @Nullable
    private Integer mSelectedVariantId;
    @NonNull
    private boolean mSelectedVariantInitialBlockExecuted = false;
    @Nullable
    private String mSelectedVariantName;
    @Nullable
    private String mTemporaryVariantName;
    @Nullable
    private LinkedHashMap<String, Variant> mVariantMap;
    @Nullable
    private Integer mVersion;

    private Experiment() {
    }

    @NonNull
    private static Experiment experimentFromJson(@NonNull JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            throw new JSONException("experimentJsonObject parameter cannot be null");
        }
        Experiment experiment = new Experiment();
        experiment.setName(jSONObject.getString("name"));
        jSONObject = jSONObject.getJSONArray("variants");
        if (jSONObject != null) {
            experiment.setVariantList(Variant.variantListFromJson((JSONArray)jSONObject));
        }
        return experiment;
    }

    @NonNull
    public static ArrayList<Experiment> experimentListFromJson(@NonNull JSONArray jSONArray) throws JSONException {
        if (jSONArray == null) {
            throw new JSONException("experimentListJsonArray parameter cannot be null");
        }
        ArrayList<Experiment> arrayList = new ArrayList<Experiment>();
        for (int i2 = 0; i2 < jSONArray.length(); ++i2) {
            arrayList.add(Experiment.experimentFromJson((JSONObject)jSONArray.get(i2)));
        }
        return arrayList;
    }

    private Experiment setVariantList(List<Variant> object) {
        this.mVariantMap = new LinkedHashMap();
        object = object.iterator();
        while (object.hasNext()) {
            Variant variant = (Variant)object.next();
            this.mVariantMap.put(variant.getName(), variant);
        }
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        boolean bl = true;
        boolean bl2 = false;
        if (this == object) {
            return true;
        }
        boolean bl3 = bl2;
        if (object == null) return bl3;
        bl3 = bl2;
        if (this.getClass() != object.getClass()) return bl3;
        object = (Experiment)object;
        bl3 = bl2;
        if (this.mSelectedVariantInitialBlockExecuted != object.mSelectedVariantInitialBlockExecuted) return bl3;
        if (this.mName != null) {
            bl3 = bl2;
            if (!this.mName.equals(object.mName)) return bl3;
        } else if (object.mName != null) {
            return false;
        }
        if (this.mId != null) {
            bl3 = bl2;
            if (!this.mId.equals(object.mId)) return bl3;
        } else if (object.mId != null) {
            return false;
        }
        if (this.mVersion != null) {
            bl3 = bl2;
            if (!this.mVersion.equals(object.mVersion)) return bl3;
        } else if (object.mVersion != null) {
            return false;
        }
        if (this.mResolved != null) {
            bl3 = bl2;
            if (!this.mResolved.equals(object.mResolved)) return bl3;
        } else if (object.mResolved != null) {
            return false;
        }
        if (this.mVariantMap != null) {
            bl3 = bl2;
            if (!this.mVariantMap.equals(object.mVariantMap)) return bl3;
        } else if (object.mVariantMap != null) {
            return false;
        }
        if (this.mSelectedVariantName != null) {
            bl3 = bl2;
            if (!this.mSelectedVariantName.equals(object.mSelectedVariantName)) return bl3;
        } else if (object.mSelectedVariantName != null) {
            return false;
        }
        if (this.mSelectedVariantId != null) {
            bl3 = bl2;
            if (!this.mSelectedVariantId.equals(object.mSelectedVariantId)) return bl3;
        } else if (object.mSelectedVariantId != null) {
            return false;
        }
        if (this.mTemporaryVariantName == null) {
            if (object.mTemporaryVariantName != null) return false;
            return bl;
        }
        bl3 = bl;
        if (this.mTemporaryVariantName.equals(object.mTemporaryVariantName)) return bl3;
        return false;
    }

    public void executeBlock(@NonNull Map<String, VariantBlockInterface> object, @NonNull VariantBlockInterface variantBlockInterface) {
        if (object == null) {
            throw new IllegalArgumentException("variantBlockMap parameter cannot be null");
        }
        if (variantBlockInterface == null) {
            throw new IllegalArgumentException("fallbackBlock parameter cannot be null");
        }
        String string2 = this.getSelectedVariantName();
        if (string2 != null && (object = object.get(string2)) != null) {
            object.executeBlock(this);
            if (!this.hasSelectedVariantInitialBlockExecuted()) {
                object.initialExecuteBlock(this);
                this.setSelectedVariantInitialBlockExecuted(true);
            }
            return;
        }
        variantBlockInterface.executeBlock(this);
    }

    @Nullable
    public Integer getId() {
        return this.mId;
    }

    @Nullable
    public String getName() {
        return this.mName;
    }

    @Nullable
    public Boolean getResolved() {
        return this.mResolved;
    }

    @Nullable
    public Integer getSelectedVariantId() {
        if (this.mTemporaryVariantName != null) {
            return null;
        }
        return this.mSelectedVariantId;
    }

    @Nullable
    public String getSelectedVariantName() {
        if (this.mTemporaryVariantName != null) {
            return this.mTemporaryVariantName;
        }
        return this.mSelectedVariantName;
    }

    @Nullable
    public String getTemporaryVariantName() {
        return this.mTemporaryVariantName;
    }

    @Nullable
    public Variant getVariant(String string2) {
        return this.mVariantMap.get(string2);
    }

    @NonNull
    public ArrayList<Variant> getVariantList() {
        return new ArrayList<Variant>(this.mVariantMap.values());
    }

    @Nullable
    public Integer getVersion() {
        return this.mVersion;
    }

    public boolean hasSelectedVariantInitialBlockExecuted() {
        return this.mSelectedVariantInitialBlockExecuted;
    }

    public boolean hasTemporaryVariant() {
        if (this.mTemporaryVariantName != null) {
            return true;
        }
        return false;
    }

    public boolean hasVariant(String string2) {
        return this.mVariantMap.containsKey(string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public int hashCode() {
        int n2 = 0;
        int n3 = this.mName != null ? this.mName.hashCode() : 0;
        int n4 = this.mId != null ? this.mId.hashCode() : 0;
        int n5 = this.mVersion != null ? this.mVersion.hashCode() : 0;
        int n6 = this.mResolved != null ? this.mResolved.hashCode() : 0;
        int n7 = this.mVariantMap != null ? this.mVariantMap.hashCode() : 0;
        int n8 = this.mSelectedVariantName != null ? this.mSelectedVariantName.hashCode() : 0;
        int n9 = this.mSelectedVariantId != null ? this.mSelectedVariantId.hashCode() : 0;
        int n10 = this.mSelectedVariantInitialBlockExecuted ? 1 : 0;
        if (this.mTemporaryVariantName != null) {
            n2 = this.mTemporaryVariantName.hashCode();
        }
        return (((((((n3 * 31 + n4) * 31 + n5) * 31 + n6) * 31 + n7) * 31 + n8) * 31 + n9) * 31 + n10) * 31 + n2;
    }

    public boolean isSelectedVariant(Variant variant) {
        return this.isSelectedVariant(variant.getName());
    }

    public boolean isSelectedVariant(String string2) {
        if (this.mTemporaryVariantName != null) {
            return string2.equals(this.mTemporaryVariantName);
        }
        return string2.equals(this.mSelectedVariantName);
    }

    protected boolean isSelectedVariantValid() {
        if (this.mVariantMap.get(this.mSelectedVariantName) != null) {
            return true;
        }
        return false;
    }

    public Experiment setId(Integer n2) {
        this.mId = n2;
        return this;
    }

    public Experiment setName(String string2) {
        this.mName = string2;
        return this;
    }

    public Experiment setResolved(Boolean bl) {
        this.mResolved = bl;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public Experiment setSelectedVariant(@Nullable String string2, @Nullable Integer n2) throws IllegalArgumentException {
        if (string2 == null) {
            if (this.mSelectedVariantName != null) {
                this.mSelectedVariantName = null;
                this.setSelectedVariantInitialBlockExecuted(false);
            }
            this.mSelectedVariantId = null;
            return this;
        } else {
            if (this.mVariantMap.get(string2) == null) {
                throw new IllegalArgumentException("selectedVariantName parameter is not a valid variant: " + string2);
            }
            if (this.mSelectedVariantName != null && this.mSelectedVariantName.equals(string2)) return this;
            {
                this.mSelectedVariantName = string2;
                this.mSelectedVariantId = n2;
                this.setSelectedVariantInitialBlockExecuted(false);
                return this;
            }
        }
    }

    protected Experiment setSelectedVariantInitialBlockExecuted(boolean bl) {
        this.mSelectedVariantInitialBlockExecuted = bl;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public Experiment setTemporaryVariant(@Nullable String string2) {
        if (string2 == null || string2.equals(this.mSelectedVariantName)) {
            this.mTemporaryVariantName = null;
        } else {
            if (this.mVariantMap.get(string2) == null) {
                throw new IllegalArgumentException("temporaryVariantName parameter is not a valid variant: " + string2);
            }
            this.mTemporaryVariantName = string2;
        }
        this.setSelectedVariantInitialBlockExecuted(false);
        return this;
    }

    public Experiment setVersion(Integer n2) {
        this.mVersion = n2;
        return this;
    }

    public String toString() {
        return "Experiment{mName='" + this.mName + '\'' + ", mId=" + this.mId + ", mVersion=" + this.mVersion + ", mResolved=" + this.mResolved + ", mVariantMap=" + this.mVariantMap + ", mSelectedVariant='" + this.mSelectedVariantName + '\'' + ", mSelectedVariantId=" + this.mSelectedVariantId + ", mSelectedVariantInitialBlockExecuted=" + this.mSelectedVariantInitialBlockExecuted + ", mTemporaryVariant='" + this.mTemporaryVariantName + '\'' + '}';
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void updateWithExperiment(@NonNull Experiment object) throws IllegalArgumentException {
        if (object == null) {
            throw new IllegalArgumentException("experiment parameter cannot be null");
        }
        if (object.mName != null && object.mName.equals(this.mName)) {
            this.setVariantList(object.getVariantList());
            if (this.isSelectedVariantValid()) return;
            this.setSelectedVariant(null, null);
            return;
        }
        StringBuilder stringBuilder = new StringBuilder().append("Experiment names do not match: object=").append(this.mName).append(", experiment.name=");
        if (object.getName() == null) {
            object = "null";
            do {
                throw new IllegalArgumentException(stringBuilder.append((String)object).toString());
                break;
            } while (true);
        }
        object = object.getName();
        throw new IllegalArgumentException(stringBuilder.append((String)object).toString());
    }
}

