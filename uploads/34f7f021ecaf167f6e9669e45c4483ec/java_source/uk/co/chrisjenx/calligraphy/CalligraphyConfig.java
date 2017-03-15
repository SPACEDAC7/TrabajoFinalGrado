/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.text.TextUtils
 *  android.widget.AutoCompleteTextView
 *  android.widget.Button
 *  android.widget.CheckBox
 *  android.widget.EditText
 *  android.widget.MultiAutoCompleteTextView
 *  android.widget.RadioButton
 *  android.widget.TextView
 *  android.widget.ToggleButton
 *  uk.co.chrisjenx.calligraphy.R
 *  uk.co.chrisjenx.calligraphy.R$attr
 */
package uk.co.chrisjenx.calligraphy;

import android.os.Build;
import android.text.TextUtils;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.MultiAutoCompleteTextView;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.ToggleButton;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import uk.co.chrisjenx.calligraphy.R;

public class CalligraphyConfig {
    private static final Map<Class<? extends TextView>, Integer> DEFAULT_STYLES = new HashMap<Class<? extends TextView>, Integer>();
    private static CalligraphyConfig sInstance;
    private final int mAttrId;
    private final Map<Class<? extends TextView>, Integer> mClassStyleAttributeMap;
    private final boolean mCustomViewCreation;
    private final String mFontPath;
    private final boolean mIsFontSet;
    private final boolean mReflection;

    static {
        DEFAULT_STYLES.put(TextView.class, 16842884);
        DEFAULT_STYLES.put(Button.class, 16842824);
        DEFAULT_STYLES.put(EditText.class, 16842862);
        DEFAULT_STYLES.put(AutoCompleteTextView.class, 16842859);
        DEFAULT_STYLES.put(MultiAutoCompleteTextView.class, 16842859);
        DEFAULT_STYLES.put(CheckBox.class, 16842860);
        DEFAULT_STYLES.put(RadioButton.class, 16842878);
        DEFAULT_STYLES.put(ToggleButton.class, 16842827);
    }

    protected CalligraphyConfig(Builder builder) {
        this.mIsFontSet = builder.isFontSet;
        this.mFontPath = builder.fontAssetPath;
        this.mAttrId = builder.attrId;
        this.mReflection = builder.reflection;
        this.mCustomViewCreation = builder.customViewCreation;
        HashMap<Class<? extends TextView>, Integer> hashMap = new HashMap<Class<? extends TextView>, Integer>(DEFAULT_STYLES);
        hashMap.putAll(builder.mStyleClassMap);
        this.mClassStyleAttributeMap = Collections.unmodifiableMap(hashMap);
    }

    public static CalligraphyConfig get() {
        if (sInstance == null) {
            sInstance = new CalligraphyConfig(new Builder());
        }
        return sInstance;
    }

    public static void initDefault(CalligraphyConfig calligraphyConfig) {
        sInstance = calligraphyConfig;
    }

    public int getAttrId() {
        return this.mAttrId;
    }

    Map<Class<? extends TextView>, Integer> getClassStyles() {
        return this.mClassStyleAttributeMap;
    }

    public String getFontPath() {
        return this.mFontPath;
    }

    public boolean isCustomViewCreation() {
        return this.mCustomViewCreation;
    }

    boolean isFontSet() {
        return this.mIsFontSet;
    }

    public boolean isReflection() {
        return this.mReflection;
    }

    public static class Builder {
        public static final int INVALID_ATTR_ID = -1;
        private int attrId;
        private boolean customViewCreation;
        private String fontAssetPath;
        private boolean isFontSet;
        private Map<Class<? extends TextView>, Integer> mStyleClassMap;
        private boolean reflection;

        /*
         * Enabled aggressive block sorting
         */
        public Builder() {
            boolean bl = Build.VERSION.SDK_INT >= 11;
            this.reflection = bl;
            this.customViewCreation = true;
            this.attrId = R.attr.fontPath;
            this.isFontSet = false;
            this.fontAssetPath = null;
            this.mStyleClassMap = new HashMap<Class<? extends TextView>, Integer>();
        }

        public Builder addCustomStyle(Class<? extends TextView> class_, int n2) {
            if (class_ == null || n2 == 0) {
                return this;
            }
            this.mStyleClassMap.put(class_, n2);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public CalligraphyConfig build() {
            boolean bl = !TextUtils.isEmpty((CharSequence)this.fontAssetPath);
            this.isFontSet = bl;
            return new CalligraphyConfig(this);
        }

        public Builder disableCustomViewInflation() {
            this.customViewCreation = false;
            return this;
        }

        public Builder disablePrivateFactoryInjection() {
            this.reflection = false;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setDefaultFontPath(String string2) {
            boolean bl = !TextUtils.isEmpty((CharSequence)string2);
            this.isFontSet = bl;
            this.fontAssetPath = string2;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setFontAttrId(int n2) {
            if (n2 == -1) {
                n2 = -1;
            }
            this.attrId = n2;
            return this;
        }
    }

}

