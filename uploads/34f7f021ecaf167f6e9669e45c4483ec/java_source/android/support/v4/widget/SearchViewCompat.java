/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ComponentName
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.View
 */
package android.support.v4.widget;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.support.v4.widget.SearchViewCompatHoneycomb;
import android.support.v4.widget.SearchViewCompatIcs;
import android.view.View;

public final class SearchViewCompat {
    private static final SearchViewCompatImpl IMPL = Build.VERSION.SDK_INT >= 14 ? new SearchViewCompatIcsImpl() : (Build.VERSION.SDK_INT >= 11 ? new SearchViewCompatHoneycombImpl() : new SearchViewCompatStubImpl());

    private SearchViewCompat(Context context) {
    }

    public static CharSequence getQuery(View view) {
        return IMPL.getQuery(view);
    }

    public static boolean isIconified(View view) {
        return IMPL.isIconified(view);
    }

    public static boolean isQueryRefinementEnabled(View view) {
        return IMPL.isQueryRefinementEnabled(view);
    }

    public static boolean isSubmitButtonEnabled(View view) {
        return IMPL.isSubmitButtonEnabled(view);
    }

    public static View newSearchView(Context context) {
        return IMPL.newSearchView(context);
    }

    public static void setIconified(View view, boolean bl) {
        IMPL.setIconified(view, bl);
    }

    public static void setImeOptions(View view, int n2) {
        IMPL.setImeOptions(view, n2);
    }

    public static void setInputType(View view, int n2) {
        IMPL.setInputType(view, n2);
    }

    public static void setMaxWidth(View view, int n2) {
        IMPL.setMaxWidth(view, n2);
    }

    public static void setOnCloseListener(View view, OnCloseListener onCloseListener) {
        IMPL.setOnCloseListener(view, onCloseListener);
    }

    public static void setOnQueryTextListener(View view, OnQueryTextListener onQueryTextListener) {
        IMPL.setOnQueryTextListener(view, onQueryTextListener);
    }

    public static void setQuery(View view, CharSequence charSequence, boolean bl) {
        IMPL.setQuery(view, charSequence, bl);
    }

    public static void setQueryHint(View view, CharSequence charSequence) {
        IMPL.setQueryHint(view, charSequence);
    }

    public static void setQueryRefinementEnabled(View view, boolean bl) {
        IMPL.setQueryRefinementEnabled(view, bl);
    }

    public static void setSearchableInfo(View view, ComponentName componentName) {
        IMPL.setSearchableInfo(view, componentName);
    }

    public static void setSubmitButtonEnabled(View view, boolean bl) {
        IMPL.setSubmitButtonEnabled(view, bl);
    }

    public static interface OnCloseListener {
        public boolean onClose();
    }

    @Deprecated
    public static abstract class OnCloseListenerCompat
    implements OnCloseListener {
        @Override
        public boolean onClose() {
            return false;
        }
    }

    public static interface OnQueryTextListener {
        public boolean onQueryTextChange(String var1);

        public boolean onQueryTextSubmit(String var1);
    }

    @Deprecated
    public static abstract class OnQueryTextListenerCompat
    implements OnQueryTextListener {
        @Override
        public boolean onQueryTextChange(String string2) {
            return false;
        }

        @Override
        public boolean onQueryTextSubmit(String string2) {
            return false;
        }
    }

    static class SearchViewCompatHoneycombImpl
    extends SearchViewCompatStubImpl {
        SearchViewCompatHoneycombImpl() {
        }

        protected void checkIfLegalArg(View view) {
            SearchViewCompatHoneycomb.checkIfLegalArg(view);
        }

        @Override
        public CharSequence getQuery(View view) {
            this.checkIfLegalArg(view);
            return SearchViewCompatHoneycomb.getQuery(view);
        }

        @Override
        public boolean isIconified(View view) {
            this.checkIfLegalArg(view);
            return SearchViewCompatHoneycomb.isIconified(view);
        }

        @Override
        public boolean isQueryRefinementEnabled(View view) {
            this.checkIfLegalArg(view);
            return SearchViewCompatHoneycomb.isQueryRefinementEnabled(view);
        }

        @Override
        public boolean isSubmitButtonEnabled(View view) {
            this.checkIfLegalArg(view);
            return SearchViewCompatHoneycomb.isSubmitButtonEnabled(view);
        }

        @Override
        public Object newOnCloseListener(final OnCloseListener onCloseListener) {
            return SearchViewCompatHoneycomb.newOnCloseListener(new SearchViewCompatHoneycomb.OnCloseListenerCompatBridge(){

                @Override
                public boolean onClose() {
                    return onCloseListener.onClose();
                }
            });
        }

        @Override
        public Object newOnQueryTextListener(final OnQueryTextListener onQueryTextListener) {
            return SearchViewCompatHoneycomb.newOnQueryTextListener(new SearchViewCompatHoneycomb.OnQueryTextListenerCompatBridge(){

                @Override
                public boolean onQueryTextChange(String string2) {
                    return onQueryTextListener.onQueryTextChange(string2);
                }

                @Override
                public boolean onQueryTextSubmit(String string2) {
                    return onQueryTextListener.onQueryTextSubmit(string2);
                }
            });
        }

        @Override
        public View newSearchView(Context context) {
            return SearchViewCompatHoneycomb.newSearchView(context);
        }

        @Override
        public void setIconified(View view, boolean bl) {
            this.checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setIconified(view, bl);
        }

        @Override
        public void setMaxWidth(View view, int n2) {
            this.checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setMaxWidth(view, n2);
        }

        @Override
        public void setOnCloseListener(View view, OnCloseListener onCloseListener) {
            this.checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setOnCloseListener(view, this.newOnCloseListener(onCloseListener));
        }

        @Override
        public void setOnQueryTextListener(View view, OnQueryTextListener onQueryTextListener) {
            this.checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setOnQueryTextListener(view, this.newOnQueryTextListener(onQueryTextListener));
        }

        @Override
        public void setQuery(View view, CharSequence charSequence, boolean bl) {
            this.checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setQuery(view, charSequence, bl);
        }

        @Override
        public void setQueryHint(View view, CharSequence charSequence) {
            this.checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setQueryHint(view, charSequence);
        }

        @Override
        public void setQueryRefinementEnabled(View view, boolean bl) {
            this.checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setQueryRefinementEnabled(view, bl);
        }

        @Override
        public void setSearchableInfo(View view, ComponentName componentName) {
            this.checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setSearchableInfo(view, componentName);
        }

        @Override
        public void setSubmitButtonEnabled(View view, boolean bl) {
            this.checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setSubmitButtonEnabled(view, bl);
        }

    }

    static class SearchViewCompatIcsImpl
    extends SearchViewCompatHoneycombImpl {
        SearchViewCompatIcsImpl() {
        }

        @Override
        public View newSearchView(Context context) {
            return SearchViewCompatIcs.newSearchView(context);
        }

        @Override
        public void setImeOptions(View view, int n2) {
            this.checkIfLegalArg(view);
            SearchViewCompatIcs.setImeOptions(view, n2);
        }

        @Override
        public void setInputType(View view, int n2) {
            this.checkIfLegalArg(view);
            SearchViewCompatIcs.setInputType(view, n2);
        }
    }

    static interface SearchViewCompatImpl {
        public CharSequence getQuery(View var1);

        public boolean isIconified(View var1);

        public boolean isQueryRefinementEnabled(View var1);

        public boolean isSubmitButtonEnabled(View var1);

        public Object newOnCloseListener(OnCloseListener var1);

        public Object newOnQueryTextListener(OnQueryTextListener var1);

        public View newSearchView(Context var1);

        public void setIconified(View var1, boolean var2);

        public void setImeOptions(View var1, int var2);

        public void setInputType(View var1, int var2);

        public void setMaxWidth(View var1, int var2);

        public void setOnCloseListener(View var1, OnCloseListener var2);

        public void setOnQueryTextListener(View var1, OnQueryTextListener var2);

        public void setQuery(View var1, CharSequence var2, boolean var3);

        public void setQueryHint(View var1, CharSequence var2);

        public void setQueryRefinementEnabled(View var1, boolean var2);

        public void setSearchableInfo(View var1, ComponentName var2);

        public void setSubmitButtonEnabled(View var1, boolean var2);
    }

    static class SearchViewCompatStubImpl
    implements SearchViewCompatImpl {
        SearchViewCompatStubImpl() {
        }

        @Override
        public CharSequence getQuery(View view) {
            return null;
        }

        @Override
        public boolean isIconified(View view) {
            return true;
        }

        @Override
        public boolean isQueryRefinementEnabled(View view) {
            return false;
        }

        @Override
        public boolean isSubmitButtonEnabled(View view) {
            return false;
        }

        @Override
        public Object newOnCloseListener(OnCloseListener onCloseListener) {
            return null;
        }

        @Override
        public Object newOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
            return null;
        }

        @Override
        public View newSearchView(Context context) {
            return null;
        }

        @Override
        public void setIconified(View view, boolean bl) {
        }

        @Override
        public void setImeOptions(View view, int n2) {
        }

        @Override
        public void setInputType(View view, int n2) {
        }

        @Override
        public void setMaxWidth(View view, int n2) {
        }

        @Override
        public void setOnCloseListener(View view, OnCloseListener onCloseListener) {
        }

        @Override
        public void setOnQueryTextListener(View view, OnQueryTextListener onQueryTextListener) {
        }

        @Override
        public void setQuery(View view, CharSequence charSequence, boolean bl) {
        }

        @Override
        public void setQueryHint(View view, CharSequence charSequence) {
        }

        @Override
        public void setQueryRefinementEnabled(View view, boolean bl) {
        }

        @Override
        public void setSearchableInfo(View view, ComponentName componentName) {
        }

        @Override
        public void setSubmitButtonEnabled(View view, boolean bl) {
        }
    }

}

