/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.AnswersEventValidator;
import com.crashlytics.android.answers.PredefinedEvent;
import java.math.BigDecimal;
import java.util.Currency;

public class PurchaseEvent
extends PredefinedEvent<PurchaseEvent> {
    static final String CURRENCY_ATTRIBUTE = "currency";
    static final String ITEM_ID_ATTRIBUTE = "itemId";
    static final String ITEM_NAME_ATTRIBUTE = "itemName";
    static final String ITEM_PRICE_ATTRIBUTE = "itemPrice";
    static final String ITEM_TYPE_ATTRIBUTE = "itemType";
    static final BigDecimal MICRO_CONSTANT = BigDecimal.valueOf(1000000);
    static final String SUCCESS_ATTRIBUTE = "success";
    static final String TYPE = "purchase";

    @Override
    String getPredefinedType() {
        return "purchase";
    }

    long priceToMicros(BigDecimal bigDecimal) {
        return MICRO_CONSTANT.multiply(bigDecimal).longValue();
    }

    public PurchaseEvent putCurrency(Currency currency) {
        if (!this.validator.isNull(currency, "currency")) {
            this.predefinedAttributes.put("currency", currency.getCurrencyCode());
        }
        return this;
    }

    public PurchaseEvent putItemId(String string2) {
        this.predefinedAttributes.put("itemId", string2);
        return this;
    }

    public PurchaseEvent putItemName(String string2) {
        this.predefinedAttributes.put("itemName", string2);
        return this;
    }

    public PurchaseEvent putItemPrice(BigDecimal bigDecimal) {
        if (!this.validator.isNull(bigDecimal, "itemPrice")) {
            this.predefinedAttributes.put("itemPrice", this.priceToMicros(bigDecimal));
        }
        return this;
    }

    public PurchaseEvent putItemType(String string2) {
        this.predefinedAttributes.put("itemType", string2);
        return this;
    }

    public PurchaseEvent putSuccess(boolean bl) {
        this.predefinedAttributes.put("success", Boolean.toString(bl));
        return this;
    }
}

