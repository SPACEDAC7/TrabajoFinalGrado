/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  com.google.android.gms.analytics.ecommerce.Product
 *  com.google.android.gms.analytics.ecommerce.ProductAction
 *  com.google.android.gms.analytics.ecommerce.Promotion
 *  com.google.android.gms.analytics.internal.zzae
 *  com.google.android.gms.analytics.internal.zzao
 *  com.google.android.gms.analytics.zzc
 */
package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.analytics.internal.zzae;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.analytics.zzc;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class HitBuilders {

    @Deprecated
    public static class AppViewBuilder
    extends HitBuilder<AppViewBuilder> {
        public AppViewBuilder() {
            this.set("&t", "screenview");
        }
    }

    public static class EventBuilder
    extends HitBuilder<EventBuilder> {
        public EventBuilder() {
            this.set("&t", "event");
        }

        public EventBuilder(String string2, String string3) {
            this();
            this.setCategory(string2);
            this.setAction(string3);
        }

        public EventBuilder setAction(String string2) {
            this.set("&ea", string2);
            return this;
        }

        public EventBuilder setCategory(String string2) {
            this.set("&ec", string2);
            return this;
        }

        public EventBuilder setLabel(String string2) {
            this.set("&el", string2);
            return this;
        }

        public EventBuilder setValue(long l2) {
            this.set("&ev", Long.toString(l2));
            return this;
        }
    }

    protected static class HitBuilder<T extends HitBuilder> {
        private Map<String, String> aO = new HashMap<String, String>();
        ProductAction aP;
        Map<String, List<Product>> aQ = new HashMap<String, List<Product>>();
        List<Promotion> aR = new ArrayList<Promotion>();
        List<Product> aS = new ArrayList<Product>();

        protected HitBuilder() {
        }

        private T zzn(String string2, String string3) {
            if (string2 != null) {
                if (string3 != null) {
                    this.aO.put(string2, string3);
                }
                return (T)this;
            }
            zzae.zzdi((String)"HitBuilder.setIfNonNull() called with a null paramName.");
            return (T)this;
        }

        public T addImpression(Product product, String string2) {
            if (product == null) {
                zzae.zzdi((String)"product should be non-null");
                return (T)this;
            }
            String string3 = string2;
            if (string2 == null) {
                string3 = "";
            }
            if (!this.aQ.containsKey(string3)) {
                this.aQ.put(string3, new ArrayList());
            }
            this.aQ.get(string3).add(product);
            return (T)this;
        }

        public T addProduct(Product product) {
            if (product == null) {
                zzae.zzdi((String)"product should be non-null");
                return (T)this;
            }
            this.aS.add(product);
            return (T)this;
        }

        public T addPromotion(Promotion promotion) {
            if (promotion == null) {
                zzae.zzdi((String)"promotion should be non-null");
                return (T)this;
            }
            this.aR.add(promotion);
            return (T)this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Map<String, String> build() {
            HashMap<String, String> hashMap = new HashMap<String, String>(this.aO);
            if (this.aP != null) {
                hashMap.putAll(this.aP.build());
            }
            Object object = this.aR.iterator();
            int n2 = 1;
            while (object.hasNext()) {
                hashMap.putAll(object.next().zzep(zzc.zzbr((int)n2)));
                ++n2;
            }
            object = this.aS.iterator();
            n2 = 1;
            while (object.hasNext()) {
                hashMap.putAll(((Product)object.next()).zzep(zzc.zzbp((int)n2)));
                ++n2;
            }
            Iterator<Map.Entry<String, List<Product>>> iterator = this.aQ.entrySet().iterator();
            n2 = 1;
            while (iterator.hasNext()) {
                Map.Entry<String, List<Product>> entry = iterator.next();
                object = entry.getValue();
                String string2 = zzc.zzbu((int)n2);
                Iterator iterator2 = object.iterator();
                int n3 = 1;
                while (iterator2.hasNext()) {
                    Product product = (Product)iterator2.next();
                    object = String.valueOf(string2);
                    String string3 = String.valueOf(zzc.zzbt((int)n3));
                    object = string3.length() != 0 ? object.concat(string3) : new String((String)object);
                    hashMap.putAll(product.zzep((String)object));
                    ++n3;
                }
                if (!TextUtils.isEmpty((CharSequence)entry.getKey())) {
                    object = String.valueOf(string2);
                    string2 = String.valueOf("nm");
                    object = string2.length() != 0 ? object.concat(string2) : new String((String)object);
                    hashMap.put((String)object, entry.getKey());
                }
                ++n2;
            }
            return hashMap;
        }

        protected String get(String string2) {
            return this.aO.get(string2);
        }

        public final T set(String string2, String string3) {
            if (string2 != null) {
                this.aO.put(string2, string3);
                return (T)this;
            }
            zzae.zzdi((String)"HitBuilder.set() called with a null paramName.");
            return (T)this;
        }

        public final T setAll(Map<String, String> map) {
            if (map == null) {
                return (T)this;
            }
            this.aO.putAll(new HashMap<String, String>(map));
            return (T)this;
        }

        public T setCampaignParamsFromUrl(String object) {
            if (TextUtils.isEmpty((CharSequence)(object = zzao.zzfk((String)object)))) {
                return (T)this;
            }
            object = zzao.zzfi((String)object);
            this.zzn("&cc", (String)object.get("utm_content"));
            this.zzn("&cm", (String)object.get("utm_medium"));
            this.zzn("&cn", (String)object.get("utm_campaign"));
            this.zzn("&cs", (String)object.get("utm_source"));
            this.zzn("&ck", (String)object.get("utm_term"));
            this.zzn("&ci", (String)object.get("utm_id"));
            this.zzn("&anid", (String)object.get("anid"));
            this.zzn("&gclid", (String)object.get("gclid"));
            this.zzn("&dclid", (String)object.get("dclid"));
            this.zzn("&aclid", (String)object.get("aclid"));
            this.zzn("&gmob_t", (String)object.get("gmob_t"));
            return (T)this;
        }

        public T setCustomDimension(int n2, String string2) {
            this.set(zzc.zzbl((int)n2), string2);
            return (T)this;
        }

        public T setCustomMetric(int n2, float f2) {
            this.set(zzc.zzbn((int)n2), Float.toString(f2));
            return (T)this;
        }

        protected T setHitType(String string2) {
            this.set("&t", string2);
            return (T)this;
        }

        public T setNewSession() {
            this.set("&sc", "start");
            return (T)this;
        }

        public T setNonInteraction(boolean bl) {
            this.set("&ni", zzao.zzax((boolean)bl));
            return (T)this;
        }

        public T setProductAction(ProductAction productAction) {
            this.aP = productAction;
            return (T)this;
        }

        public T setPromotionAction(String string2) {
            this.aO.put("&promoa", string2);
            return (T)this;
        }
    }

    public static class ScreenViewBuilder
    extends HitBuilder<ScreenViewBuilder> {
        public ScreenViewBuilder() {
            this.set("&t", "screenview");
        }
    }

}

