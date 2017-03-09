/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersAttributes;
import com.crashlytics.android.answers.AnswersEventValidator;
import com.crashlytics.android.answers.PredefinedEvent;
import java.math.BigDecimal;
import java.util.Currency;

public class StartCheckoutEvent
extends PredefinedEvent<StartCheckoutEvent> {
    static final String CURRENCY_ATTRIBUTE = "currency";
    static final String ITEM_COUNT_ATTRIBUTE = "itemCount";
    static final BigDecimal MICRO_CONSTANT = BigDecimal.valueOf(1000000);
    static final String TOTAL_PRICE_ATTRIBUTE = "totalPrice";
    static final String TYPE = "startCheckout";

    @Override
    String getPredefinedType() {
        return "startCheckout";
    }

    long priceToMicros(BigDecimal bigDecimal) {
        return MICRO_CONSTANT.multiply(bigDecimal).longValue();
    }

    public StartCheckoutEvent putCurrency(Currency currency) {
        if (!this.validator.isNull(currency, "currency")) {
            this.predefinedAttributes.put("currency", currency.getCurrencyCode());
        }
        return this;
    }

    public StartCheckoutEvent putItemCount(int n2) {
        this.predefinedAttributes.put("itemCount", n2);
        return this;
    }

    public StartCheckoutEvent putTotalPrice(BigDecimal bigDecimal) {
        if (!this.validator.isNull(bigDecimal, "totalPrice")) {
            this.predefinedAttributes.put("totalPrice", this.priceToMicros(bigDecimal));
        }
        return this;
    }
}

