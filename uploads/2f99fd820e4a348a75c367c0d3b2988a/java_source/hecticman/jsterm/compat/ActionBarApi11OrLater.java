/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.ActionBar
 *  android.app.ActionBar$OnNavigationListener
 *  android.widget.SpinnerAdapter
 */
package hecticman.jsterm.compat;

import android.app.ActionBar;
import android.widget.SpinnerAdapter;
import hecticman.jsterm.compat.ActionBarCompat;

class ActionBarApi11OrLater
extends ActionBarCompat {
    private ActionBar bar;

    ActionBarApi11OrLater(Object object) {
        this.bar = (ActionBar)object;
    }

    private ActionBar.OnNavigationListener wrapOnNavigationCallback(final ActionBarCompat.OnNavigationListener onNavigationListener) {
        return new ActionBar.OnNavigationListener(){

            public boolean onNavigationItemSelected(int n, long l) {
                return onNavigationListener.onNavigationItemSelected(n, l);
            }
        };
    }

    @Override
    public int getDisplayOptions() {
        return this.bar.getDisplayOptions();
    }

    @Override
    public int getHeight() {
        return this.bar.getHeight();
    }

    @Override
    public int getNavigationItemCount() {
        return this.bar.getNavigationItemCount();
    }

    @Override
    public int getNavigationMode() {
        return this.bar.getNavigationMode();
    }

    @Override
    public int getSelectedNavigationIndex() {
        return this.bar.getSelectedNavigationIndex();
    }

    @Override
    public CharSequence getTitle() {
        return this.bar.getTitle();
    }

    @Override
    public void hide() {
        this.bar.hide();
    }

    @Override
    public boolean isShowing() {
        return this.bar.isShowing();
    }

    @Override
    public void setDisplayOptions(int n) {
        this.bar.setDisplayOptions(n);
    }

    @Override
    public void setDisplayOptions(int n, int n2) {
        this.bar.setDisplayOptions(n, n2);
    }

    @Override
    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBarCompat.OnNavigationListener onNavigationListener) {
        this.bar.setListNavigationCallbacks(spinnerAdapter, this.wrapOnNavigationCallback(onNavigationListener));
    }

    @Override
    public void setNavigationMode(int n) {
        this.bar.setNavigationMode(n);
    }

    @Override
    public void setSelectedNavigationItem(int n) {
        this.bar.setSelectedNavigationItem(n);
    }

    @Override
    public void setTitle(int n) {
        this.bar.setTitle(n);
    }

    @Override
    public void setTitle(CharSequence charSequence) {
        this.bar.setTitle(charSequence);
    }

    @Override
    public void show() {
        this.bar.show();
    }

}

