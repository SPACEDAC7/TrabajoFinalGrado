/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.AnswersEventValidator;
import com.crashlytics.android.answers.PredefinedEvent;
import java.math.BigDecimal;
import java.util.Currency;

public class AddToCartEvent
extends PredefinedEvent<AddToCartEvent> {
    static final String CURRENCY_ATTRIBUTE = "currency";
    static final String ITEM_ID_ATTRIBUTE = "itemId";
    static final String ITEM_NAME_ATTRIBUTE = "itemName";
    static final String ITEM_PRICE_ATTRIBUTE = "itemPrice";
    static final String ITEM_TYPE_ATTRIBUTE = "itemType";
    static final BigDecimal MICRO_CONSTANT = BigDecimal.valueOf(1000000);
    static final String TYPE = "addToCart";

    @Override
    String getPredefinedType() {
        return "addToCart";
    }

    long priceToMicros(BigDecimal bigDecimal) {
        return MICRO_CONSTANT.multiply(bigDecimal).longValue();
    }

    public AddToCartEvent putCurrency(Currency currency) {
        if (!this.validator.isNull(currency, "currency")) {
            this.predefinedAttributes.put("currency", currency.getCurrencyCode());
        }
        return this;
    }

    public AddToCartEvent putItemId(String string2) {
        this.predefinedAttributes.put("itemId", string2);
        return this;
    }

    public AddToCartEvent putItemName(String string2) {
        this.predefinedAttributes.put("itemName", string2);
        return this;
    }

    public AddToCartEvent putItemPrice(BigDecimal bigDecimal) {
        if (!this.validator.isNull(bigDecimal, "itemPrice")) {
            this.predefinedAttributes.put("itemPrice", this.priceToMicros(bigDecimal));
        }
        return this;
    }

    public AddToCartEvent putItemType(String string2) {
        this.predefinedAttributes.put("itemType", string2);
        return this;
    }
}

