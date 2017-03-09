/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Rect
 *  android.os.Bundle
 *  android.view.KeyEvent
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.ViewParent
 *  android.view.accessibility.AccessibilityEvent
 *  android.view.accessibility.AccessibilityManager
 */
package android.support.v4.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewParentCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityManagerCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v4.widget.FocusStrategy;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import java.util.ArrayList;
import java.util.List;

public abstract class ExploreByTouchHelper
extends AccessibilityDelegateCompat {
    private static final String DEFAULT_CLASS_NAME = "android.view.View";
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private static final Rect INVALID_PARENT_BOUNDS = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private static final FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat> NODE_ADAPTER = new FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat>(){

        @Override
        public void obtainBounds(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, Rect rect) {
            accessibilityNodeInfoCompat.getBoundsInParent(rect);
        }
    };
    private static final FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> SPARSE_VALUES_ADAPTER = new FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat>(){

        @Override
        public AccessibilityNodeInfoCompat get(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat, int n2) {
            return sparseArrayCompat.valueAt(n2);
        }

        @Override
        public int size(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat) {
            return sparseArrayCompat.size();
        }
    };
    private int mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
    private final View mHost;
    private int mHoveredVirtualViewId = Integer.MIN_VALUE;
    private int mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
    private final AccessibilityManager mManager;
    private MyNodeProvider mNodeProvider;
    private final int[] mTempGlobalRect = new int[2];
    private final Rect mTempParentRect = new Rect();
    private final Rect mTempScreenRect = new Rect();
    private final Rect mTempVisibleRect = new Rect();

    public ExploreByTouchHelper(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.mHost = view;
        this.mManager = (AccessibilityManager)view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (ViewCompat.getImportantForAccessibility(view) == 0) {
            ViewCompat.setImportantForAccessibility(view, 1);
        }
    }

    private boolean clearAccessibilityFocus(int n2) {
        if (this.mAccessibilityFocusedVirtualViewId == n2) {
            this.mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
            this.mHost.invalidate();
            this.sendEventForVirtualView(n2, 65536);
            return true;
        }
        return false;
    }

    private boolean clickKeyboardFocusedVirtualView() {
        if (this.mKeyboardFocusedVirtualViewId != Integer.MIN_VALUE && this.onPerformActionForVirtualView(this.mKeyboardFocusedVirtualViewId, 16, null)) {
            return true;
        }
        return false;
    }

    private AccessibilityEvent createEvent(int n2, int n3) {
        switch (n2) {
            default: {
                return this.createEventForChild(n2, n3);
            }
            case -1: 
        }
        return this.createEventForHost(n3);
    }

    private AccessibilityEvent createEventForChild(int n2, int n3) {
        AccessibilityEvent accessibilityEvent = AccessibilityEvent.obtain((int)n3);
        AccessibilityRecordCompat accessibilityRecordCompat = AccessibilityEventCompat.asRecord(accessibilityEvent);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = this.obtainAccessibilityNodeInfo(n2);
        accessibilityRecordCompat.getText().add(accessibilityNodeInfoCompat.getText());
        accessibilityRecordCompat.setContentDescription(accessibilityNodeInfoCompat.getContentDescription());
        accessibilityRecordCompat.setScrollable(accessibilityNodeInfoCompat.isScrollable());
        accessibilityRecordCompat.setPassword(accessibilityNodeInfoCompat.isPassword());
        accessibilityRecordCompat.setEnabled(accessibilityNodeInfoCompat.isEnabled());
        accessibilityRecordCompat.setChecked(accessibilityNodeInfoCompat.isChecked());
        this.onPopulateEventForVirtualView(n2, accessibilityEvent);
        if (accessibilityEvent.getText().isEmpty() && accessibilityEvent.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityRecordCompat.setClassName(accessibilityNodeInfoCompat.getClassName());
        accessibilityRecordCompat.setSource(this.mHost, n2);
        accessibilityEvent.setPackageName((CharSequence)this.mHost.getContext().getPackageName());
        return accessibilityEvent;
    }

    private AccessibilityEvent createEventForHost(int n2) {
        AccessibilityEvent accessibilityEvent = AccessibilityEvent.obtain((int)n2);
        ViewCompat.onInitializeAccessibilityEvent(this.mHost, accessibilityEvent);
        return accessibilityEvent;
    }

    /*
     * Enabled aggressive block sorting
     */
    @NonNull
    private AccessibilityNodeInfoCompat createNodeForChild(int n2) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain();
        accessibilityNodeInfoCompat.setEnabled(true);
        accessibilityNodeInfoCompat.setFocusable(true);
        accessibilityNodeInfoCompat.setClassName("android.view.View");
        accessibilityNodeInfoCompat.setBoundsInParent(INVALID_PARENT_BOUNDS);
        accessibilityNodeInfoCompat.setBoundsInScreen(INVALID_PARENT_BOUNDS);
        this.onPopulateNodeForVirtualView(n2, accessibilityNodeInfoCompat);
        if (accessibilityNodeInfoCompat.getText() == null && accessibilityNodeInfoCompat.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoCompat.getBoundsInParent(this.mTempParentRect);
        if (this.mTempParentRect.equals((Object)INVALID_PARENT_BOUNDS)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int n3 = accessibilityNodeInfoCompat.getActions();
        if ((n3 & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((n3 & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoCompat.setPackageName(this.mHost.getContext().getPackageName());
        accessibilityNodeInfoCompat.setSource(this.mHost, n2);
        accessibilityNodeInfoCompat.setParent(this.mHost);
        if (this.mAccessibilityFocusedVirtualViewId == n2) {
            accessibilityNodeInfoCompat.setAccessibilityFocused(true);
            accessibilityNodeInfoCompat.addAction(128);
        } else {
            accessibilityNodeInfoCompat.setAccessibilityFocused(false);
            accessibilityNodeInfoCompat.addAction(64);
        }
        boolean bl = this.mKeyboardFocusedVirtualViewId == n2;
        if (bl) {
            accessibilityNodeInfoCompat.addAction(2);
        } else if (accessibilityNodeInfoCompat.isFocusable()) {
            accessibilityNodeInfoCompat.addAction(1);
        }
        accessibilityNodeInfoCompat.setFocused(bl);
        if (this.intersectVisibleToUser(this.mTempParentRect)) {
            accessibilityNodeInfoCompat.setVisibleToUser(true);
            accessibilityNodeInfoCompat.setBoundsInParent(this.mTempParentRect);
        }
        accessibilityNodeInfoCompat.getBoundsInScreen(this.mTempScreenRect);
        if (this.mTempScreenRect.equals((Object)INVALID_PARENT_BOUNDS)) {
            this.mHost.getLocationOnScreen(this.mTempGlobalRect);
            accessibilityNodeInfoCompat.getBoundsInParent(this.mTempScreenRect);
            this.mTempScreenRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
            accessibilityNodeInfoCompat.setBoundsInScreen(this.mTempScreenRect);
        }
        return accessibilityNodeInfoCompat;
    }

    @NonNull
    private AccessibilityNodeInfoCompat createNodeForHost() {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain(this.mHost);
        ViewCompat.onInitializeAccessibilityNodeInfo(this.mHost, accessibilityNodeInfoCompat);
        ArrayList<Integer> arrayList = new ArrayList<Integer>();
        this.getVisibleVirtualViews(arrayList);
        if (accessibilityNodeInfoCompat.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int n2 = arrayList.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            accessibilityNodeInfoCompat.addChild(this.mHost, arrayList.get(i2));
        }
        return accessibilityNodeInfoCompat;
    }

    private SparseArrayCompat<AccessibilityNodeInfoCompat> getAllNodes() {
        ArrayList<Integer> arrayList = new ArrayList<Integer>();
        this.getVisibleVirtualViews(arrayList);
        SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat = new SparseArrayCompat<AccessibilityNodeInfoCompat>();
        for (int i2 = 0; i2 < arrayList.size(); ++i2) {
            sparseArrayCompat.put(i2, this.createNodeForChild(i2));
        }
        return sparseArrayCompat;
    }

    private void getBoundsInParent(int n2, Rect rect) {
        this.obtainAccessibilityNodeInfo(n2).getBoundsInParent(rect);
    }

    private static Rect guessPreviouslyFocusedRect(@NonNull View view, int n2, @NonNull Rect rect) {
        int n3 = view.getWidth();
        int n4 = view.getHeight();
        switch (n2) {
            default: {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            case 17: {
                rect.set(n3, 0, n3, n4);
                return rect;
            }
            case 33: {
                rect.set(0, n4, n3, n4);
                return rect;
            }
            case 66: {
                rect.set(-1, 0, -1, n4);
                return rect;
            }
            case 130: 
        }
        rect.set(0, -1, n3, -1);
        return rect;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean intersectVisibleToUser(Rect rect) {
        if (rect == null || rect.isEmpty() || this.mHost.getWindowVisibility() != 0) return false;
        ViewParent viewParent = this.mHost.getParent();
        while (viewParent instanceof View) {
            if (ViewCompat.getAlpha((View)(viewParent = (View)viewParent)) <= 0.0f || viewParent.getVisibility() != 0) return false;
            {
                viewParent = viewParent.getParent();
                continue;
            }
        }
        if (viewParent != null && this.mHost.getLocalVisibleRect(this.mTempVisibleRect)) return rect.intersect(this.mTempVisibleRect);
        return false;
    }

    private static int keyToDirection(int n2) {
        switch (n2) {
            default: {
                return 130;
            }
            case 21: {
                return 17;
            }
            case 19: {
                return 33;
            }
            case 22: 
        }
        return 66;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean moveFocus(int n2, @Nullable Rect object) {
        SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat = this.getAllNodes();
        int n3 = this.mKeyboardFocusedVirtualViewId;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = n3 == Integer.MIN_VALUE ? null : sparseArrayCompat.get(n3);
        switch (n2) {
            default: {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            case 1: 
            case 2: {
                boolean bl = ViewCompat.getLayoutDirection(this.mHost) == 1;
                object = FocusStrategy.findNextFocusInRelativeDirection(sparseArrayCompat, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, accessibilityNodeInfoCompat, n2, bl, false);
                break;
            }
            case 17: 
            case 33: 
            case 66: 
            case 130: {
                Rect rect = new Rect();
                if (this.mKeyboardFocusedVirtualViewId != Integer.MIN_VALUE) {
                    this.getBoundsInParent(this.mKeyboardFocusedVirtualViewId, rect);
                } else if (object != null) {
                    rect.set((Rect)object);
                } else {
                    ExploreByTouchHelper.guessPreviouslyFocusedRect(this.mHost, n2, rect);
                }
                object = FocusStrategy.findNextFocusInAbsoluteDirection(sparseArrayCompat, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, accessibilityNodeInfoCompat, rect, n2);
            }
        }
        if (object == null) {
            n2 = Integer.MIN_VALUE;
            return this.requestKeyboardFocusForVirtualView(n2);
        }
        n2 = sparseArrayCompat.keyAt(sparseArrayCompat.indexOfValue((AccessibilityNodeInfoCompat)object));
        return this.requestKeyboardFocusForVirtualView(n2);
    }

    private boolean performActionForChild(int n2, int n3, Bundle bundle) {
        switch (n3) {
            default: {
                return this.onPerformActionForVirtualView(n2, n3, bundle);
            }
            case 64: {
                return this.requestAccessibilityFocus(n2);
            }
            case 128: {
                return this.clearAccessibilityFocus(n2);
            }
            case 1: {
                return this.requestKeyboardFocusForVirtualView(n2);
            }
            case 2: 
        }
        return this.clearKeyboardFocusForVirtualView(n2);
    }

    private boolean performActionForHost(int n2, Bundle bundle) {
        return ViewCompat.performAccessibilityAction(this.mHost, n2, bundle);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean requestAccessibilityFocus(int n2) {
        if (!this.mManager.isEnabled() || !AccessibilityManagerCompat.isTouchExplorationEnabled(this.mManager) || this.mAccessibilityFocusedVirtualViewId == n2) {
            return false;
        }
        if (this.mAccessibilityFocusedVirtualViewId != Integer.MIN_VALUE) {
            this.clearAccessibilityFocus(this.mAccessibilityFocusedVirtualViewId);
        }
        this.mAccessibilityFocusedVirtualViewId = n2;
        this.mHost.invalidate();
        this.sendEventForVirtualView(n2, 32768);
        return true;
    }

    private void updateHoveredVirtualView(int n2) {
        if (this.mHoveredVirtualViewId == n2) {
            return;
        }
        int n3 = this.mHoveredVirtualViewId;
        this.mHoveredVirtualViewId = n2;
        this.sendEventForVirtualView(n2, 128);
        this.sendEventForVirtualView(n3, 256);
    }

    public final boolean clearKeyboardFocusForVirtualView(int n2) {
        if (this.mKeyboardFocusedVirtualViewId != n2) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
        this.onVirtualViewKeyboardFocusChanged(n2, false);
        this.sendEventForVirtualView(n2, 8);
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        boolean bl = true;
        if (!this.mManager.isEnabled()) return false;
        if (!AccessibilityManagerCompat.isTouchExplorationEnabled(this.mManager)) {
            return false;
        }
        switch (motionEvent.getAction()) {
            default: {
                return false;
            }
            case 7: 
            case 9: {
                int n2 = this.getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
                this.updateHoveredVirtualView(n2);
                if (n2 == Integer.MIN_VALUE) return false;
                return bl;
            }
            case 10: 
        }
        if (this.mAccessibilityFocusedVirtualViewId == Integer.MIN_VALUE) return false;
        this.updateHoveredVirtualView(Integer.MIN_VALUE);
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        boolean bl;
        boolean bl2 = false;
        boolean bl3 = bl = false;
        if (keyEvent.getAction() == 1) return bl3;
        int n2 = keyEvent.getKeyCode();
        switch (n2) {
            default: {
                return bl;
            }
            case 19: 
            case 20: 
            case 21: 
            case 22: {
                bl3 = bl;
                if (!KeyEventCompat.hasNoModifiers(keyEvent)) return bl3;
                int n3 = ExploreByTouchHelper.keyToDirection(n2);
                int n4 = keyEvent.getRepeatCount();
                n2 = 0;
                bl = bl2;
                do {
                    bl3 = bl;
                    if (n2 >= n4 + 1) return bl3;
                    bl3 = bl;
                    if (!this.moveFocus(n3, null)) return bl3;
                    bl = true;
                    ++n2;
                } while (true);
            }
            case 23: 
            case 66: {
                bl3 = bl;
                if (!KeyEventCompat.hasNoModifiers(keyEvent)) return bl3;
                bl3 = bl;
                if (keyEvent.getRepeatCount() != 0) return bl3;
                this.clickKeyboardFocusedVirtualView();
                return true;
            }
            case 61: 
        }
        if (KeyEventCompat.hasNoModifiers(keyEvent)) {
            return this.moveFocus(2, null);
        }
        bl3 = bl;
        if (!KeyEventCompat.hasModifiers(keyEvent, 1)) return bl3;
        return this.moveFocus(1, null);
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.mAccessibilityFocusedVirtualViewId;
    }

    @Override
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new MyNodeProvider();
        }
        return this.mNodeProvider;
    }

    @Deprecated
    public int getFocusedVirtualView() {
        return this.getAccessibilityFocusedVirtualViewId();
    }

    public final int getKeyboardFocusedVirtualViewId() {
        return this.mKeyboardFocusedVirtualViewId;
    }

    protected abstract int getVirtualViewAt(float var1, float var2);

    protected abstract void getVisibleVirtualViews(List<Integer> var1);

    public final void invalidateRoot() {
        this.invalidateVirtualView(-1, 1);
    }

    public final void invalidateVirtualView(int n2) {
        this.invalidateVirtualView(n2, 0);
    }

    public final void invalidateVirtualView(int n2, int n3) {
        ViewParent viewParent;
        if (n2 != Integer.MIN_VALUE && this.mManager.isEnabled() && (viewParent = this.mHost.getParent()) != null) {
            AccessibilityEvent accessibilityEvent = this.createEvent(n2, 2048);
            AccessibilityEventCompat.setContentChangeTypes(accessibilityEvent, n3);
            ViewParentCompat.requestSendAccessibilityEvent(viewParent, this.mHost, accessibilityEvent);
        }
    }

    @NonNull
    AccessibilityNodeInfoCompat obtainAccessibilityNodeInfo(int n2) {
        if (n2 == -1) {
            return this.createNodeForHost();
        }
        return this.createNodeForChild(n2);
    }

    public final void onFocusChanged(boolean bl, int n2, @Nullable Rect rect) {
        if (this.mKeyboardFocusedVirtualViewId != Integer.MIN_VALUE) {
            this.clearKeyboardFocusForVirtualView(this.mKeyboardFocusedVirtualViewId);
        }
        if (bl) {
            this.moveFocus(n2, rect);
        }
    }

    @Override
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        this.onPopulateEventForHost(accessibilityEvent);
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        this.onPopulateNodeForHost(accessibilityNodeInfoCompat);
    }

    protected abstract boolean onPerformActionForVirtualView(int var1, int var2, Bundle var3);

    protected void onPopulateEventForHost(AccessibilityEvent accessibilityEvent) {
    }

    protected void onPopulateEventForVirtualView(int n2, AccessibilityEvent accessibilityEvent) {
    }

    protected void onPopulateNodeForHost(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    protected abstract void onPopulateNodeForVirtualView(int var1, AccessibilityNodeInfoCompat var2);

    protected void onVirtualViewKeyboardFocusChanged(int n2, boolean bl) {
    }

    boolean performAction(int n2, int n3, Bundle bundle) {
        switch (n2) {
            default: {
                return this.performActionForChild(n2, n3, bundle);
            }
            case -1: 
        }
        return this.performActionForHost(n3, bundle);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final boolean requestKeyboardFocusForVirtualView(int n2) {
        if (!this.mHost.isFocused() && !this.mHost.requestFocus() || this.mKeyboardFocusedVirtualViewId == n2) {
            return false;
        }
        if (this.mKeyboardFocusedVirtualViewId != Integer.MIN_VALUE) {
            this.clearKeyboardFocusForVirtualView(this.mKeyboardFocusedVirtualViewId);
        }
        this.mKeyboardFocusedVirtualViewId = n2;
        this.onVirtualViewKeyboardFocusChanged(n2, true);
        this.sendEventForVirtualView(n2, 8);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final boolean sendEventForVirtualView(int n2, int n3) {
        ViewParent viewParent;
        if (n2 == Integer.MIN_VALUE || !this.mManager.isEnabled() || (viewParent = this.mHost.getParent()) == null) {
            return false;
        }
        AccessibilityEvent accessibilityEvent = this.createEvent(n2, n3);
        return ViewParentCompat.requestSendAccessibilityEvent(viewParent, this.mHost, accessibilityEvent);
    }

    private class MyNodeProvider
    extends AccessibilityNodeProviderCompat {
        MyNodeProvider() {
        }

        @Override
        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int n2) {
            return AccessibilityNodeInfoCompat.obtain(ExploreByTouchHelper.this.obtainAccessibilityNodeInfo(n2));
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public AccessibilityNodeInfoCompat findFocus(int n2) {
            n2 = n2 == 2 ? ExploreByTouchHelper.this.mAccessibilityFocusedVirtualViewId : ExploreByTouchHelper.this.mKeyboardFocusedVirtualViewId;
            if (n2 == Integer.MIN_VALUE) {
                return null;
            }
            return this.createAccessibilityNodeInfo(n2);
        }

        @Override
        public boolean performAction(int n2, int n3, Bundle bundle) {
            return ExploreByTouchHelper.this.performAction(n2, n3, bundle);
        }
    }

}

