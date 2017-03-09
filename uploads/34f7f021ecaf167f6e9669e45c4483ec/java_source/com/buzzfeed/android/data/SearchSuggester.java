/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.SearchRecentSuggestionsProvider
 */
package com.buzzfeed.android.data;

import android.content.SearchRecentSuggestionsProvider;

public class SearchSuggester
extends SearchRecentSuggestionsProvider {
    public static final String AUTHORITY = "com.buzzfeed.android.data.SearchSuggester";
    public static final int MODE = 1;

    public SearchSuggester() {
        this.setupSuggestions("com.buzzfeed.android.data.SearchSuggester", 1);
    }
}

