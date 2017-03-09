/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.ActionMode
 *  android.view.ActionMode$Callback
 *  android.view.KeyEvent
 *  android.view.KeyboardShortcutGroup
 *  android.view.Menu
 *  android.view.MenuItem
 *  android.view.MotionEvent
 *  android.view.SearchEvent
 *  android.view.View
 *  android.view.Window
 *  android.view.Window$Callback
 *  android.view.WindowManager
 *  android.view.WindowManager$LayoutParams
 *  android.view.accessibility.AccessibilityEvent
 */
package android.support.v7.view;

import android.support.annotation.RestrictTo;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class WindowCallbackWrapper
implements Window.Callback {
    final Window.Callback mWrapped;

    public WindowCallbackWrapper(Window.Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.mWrapped = callback;
    }

    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.mWrapped.dispatchGenericMotionEvent(motionEvent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.mWrapped.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return this.mWrapped.dispatchKeyShortcutEvent(keyEvent);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.mWrapped.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.mWrapped.dispatchTouchEvent(motionEvent);
    }

    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.mWrapped.dispatchTrackballEvent(motionEvent);
    }

    public void onActionModeFinished(ActionMode actionMode) {
        this.mWrapped.onActionModeFinished(actionMode);
    }

    public void onActionModeStarted(ActionMode actionMode) {
        this.mWrapped.onActionModeStarted(actionMode);
    }

    public void onAttachedToWindow() {
        this.mWrapped.onAttachedToWindow();
    }

    public void onContentChanged() {
        this.mWrapped.onContentChanged();
    }

    public boolean onCreatePanelMenu(int n2, Menu menu2) {
        return this.mWrapped.onCreatePanelMenu(n2, menu2);
    }

    public View onCreatePanelView(int n2) {
        return this.mWrapped.onCreatePanelView(n2);
    }

    public void onDetachedFromWindow() {
        this.mWrapped.onDetachedFromWindow();
    }

    public boolean onMenuItemSelected(int n2, MenuItem menuItem) {
        return this.mWrapped.onMenuItemSelected(n2, menuItem);
    }

    public boolean onMenuOpened(int n2, Menu menu2) {
        return this.mWrapped.onMenuOpened(n2, menu2);
    }

    public void onPanelClosed(int n2, Menu menu2) {
        this.mWrapped.onPanelClosed(n2, menu2);
    }

    public boolean onPreparePanel(int n2, View view, Menu menu2) {
        return this.mWrapped.onPreparePanel(n2, view, menu2);
    }

    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu2, int n2) {
        this.mWrapped.onProvideKeyboardShortcuts(list, menu2, n2);
    }

    public boolean onSearchRequested() {
        return this.mWrapped.onSearchRequested();
    }

    public boolean onSearchRequested(SearchEvent searchEvent) {
        return this.mWrapped.onSearchRequested(searchEvent);
    }

    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.mWrapped.onWindowAttributesChanged(layoutParams);
    }

    public void onWindowFocusChanged(boolean bl) {
        this.mWrapped.onWindowFocusChanged(bl);
    }

    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return this.mWrapped.onWindowStartingActionMode(callback);
    }

    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int n2) {
        return this.mWrapped.onWindowStartingActionMode(callback, n2);
    }
}

