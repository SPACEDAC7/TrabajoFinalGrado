/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Rect
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.view.View
 */
package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompatApi21;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompatApi22;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompatApi23;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompatApi24;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompatIcs;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompatJellyBean;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompatJellybeanMr1;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompatJellybeanMr2;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompatKitKat;
import android.support.v4.view.accessibility.AccessibilityWindowInfoCompat;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class AccessibilityNodeInfoCompat {
    public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
    public static final String ACTION_ARGUMENT_COLUMN_INT = "android.view.accessibility.action.ARGUMENT_COLUMN_INT";
    public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
    public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
    public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
    public static final String ACTION_ARGUMENT_PROGRESS_VALUE = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE";
    public static final String ACTION_ARGUMENT_ROW_INT = "android.view.accessibility.action.ARGUMENT_ROW_INT";
    public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
    public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
    public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE";
    public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
    public static final int ACTION_CLEAR_FOCUS = 2;
    public static final int ACTION_CLEAR_SELECTION = 8;
    public static final int ACTION_CLICK = 16;
    public static final int ACTION_COLLAPSE = 524288;
    public static final int ACTION_COPY = 16384;
    public static final int ACTION_CUT = 65536;
    public static final int ACTION_DISMISS = 1048576;
    public static final int ACTION_EXPAND = 262144;
    public static final int ACTION_FOCUS = 1;
    public static final int ACTION_LONG_CLICK = 32;
    public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
    public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
    public static final int ACTION_PASTE = 32768;
    public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
    public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
    public static final int ACTION_SCROLL_BACKWARD = 8192;
    public static final int ACTION_SCROLL_FORWARD = 4096;
    public static final int ACTION_SELECT = 4;
    public static final int ACTION_SET_SELECTION = 131072;
    public static final int ACTION_SET_TEXT = 2097152;
    public static final int FOCUS_ACCESSIBILITY = 2;
    public static final int FOCUS_INPUT = 1;
    static final AccessibilityNodeInfoImpl IMPL = Build.VERSION.SDK_INT >= 24 ? new AccessibilityNodeInfoApi24Impl() : (Build.VERSION.SDK_INT >= 23 ? new AccessibilityNodeInfoApi23Impl() : (Build.VERSION.SDK_INT >= 22 ? new AccessibilityNodeInfoApi22Impl() : (Build.VERSION.SDK_INT >= 21 ? new AccessibilityNodeInfoApi21Impl() : (Build.VERSION.SDK_INT >= 19 ? new AccessibilityNodeInfoKitKatImpl() : (Build.VERSION.SDK_INT >= 18 ? new AccessibilityNodeInfoJellybeanMr2Impl() : (Build.VERSION.SDK_INT >= 17 ? new AccessibilityNodeInfoJellybeanMr1Impl() : (Build.VERSION.SDK_INT >= 16 ? new AccessibilityNodeInfoJellybeanImpl() : (Build.VERSION.SDK_INT >= 14 ? new AccessibilityNodeInfoIcsImpl() : new AccessibilityNodeInfoStubImpl()))))))));
    public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
    public static final int MOVEMENT_GRANULARITY_LINE = 4;
    public static final int MOVEMENT_GRANULARITY_PAGE = 16;
    public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
    public static final int MOVEMENT_GRANULARITY_WORD = 2;
    private final Object mInfo;

    public AccessibilityNodeInfoCompat(Object object) {
        this.mInfo = object;
    }

    private static String getActionSymbolicName(int n2) {
        switch (n2) {
            default: {
                return "ACTION_UNKNOWN";
            }
            case 1: {
                return "ACTION_FOCUS";
            }
            case 2: {
                return "ACTION_CLEAR_FOCUS";
            }
            case 4: {
                return "ACTION_SELECT";
            }
            case 8: {
                return "ACTION_CLEAR_SELECTION";
            }
            case 16: {
                return "ACTION_CLICK";
            }
            case 32: {
                return "ACTION_LONG_CLICK";
            }
            case 64: {
                return "ACTION_ACCESSIBILITY_FOCUS";
            }
            case 128: {
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            }
            case 256: {
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            }
            case 512: {
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            }
            case 1024: {
                return "ACTION_NEXT_HTML_ELEMENT";
            }
            case 2048: {
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            }
            case 4096: {
                return "ACTION_SCROLL_FORWARD";
            }
            case 8192: {
                return "ACTION_SCROLL_BACKWARD";
            }
            case 65536: {
                return "ACTION_CUT";
            }
            case 16384: {
                return "ACTION_COPY";
            }
            case 32768: {
                return "ACTION_PASTE";
            }
            case 131072: 
        }
        return "ACTION_SET_SELECTION";
    }

    public static AccessibilityNodeInfoCompat obtain() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.obtain());
    }

    public static AccessibilityNodeInfoCompat obtain(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.obtain(accessibilityNodeInfoCompat.mInfo));
    }

    public static AccessibilityNodeInfoCompat obtain(View view) {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.obtain(view));
    }

    public static AccessibilityNodeInfoCompat obtain(View view, int n2) {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.obtain(view, n2));
    }

    static AccessibilityNodeInfoCompat wrapNonNullInstance(Object object) {
        if (object != null) {
            return new AccessibilityNodeInfoCompat(object);
        }
        return null;
    }

    public void addAction(int n2) {
        IMPL.addAction(this.mInfo, n2);
    }

    public void addAction(AccessibilityActionCompat accessibilityActionCompat) {
        IMPL.addAction(this.mInfo, accessibilityActionCompat.mAction);
    }

    public void addChild(View view) {
        IMPL.addChild(this.mInfo, view);
    }

    public void addChild(View view, int n2) {
        IMPL.addChild(this.mInfo, view, n2);
    }

    public boolean canOpenPopup() {
        return IMPL.canOpenPopup(this.mInfo);
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null) {
            return false;
        }
        if (this.getClass() != object.getClass()) {
            return false;
        }
        object = (AccessibilityNodeInfoCompat)object;
        if (this.mInfo == null) {
            if (object.mInfo == null) return true;
            return false;
        }
        if (!this.mInfo.equals(object.mInfo)) return false;
        return true;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String object) {
        ArrayList<AccessibilityNodeInfoCompat> arrayList = new ArrayList<AccessibilityNodeInfoCompat>();
        object = IMPL.findAccessibilityNodeInfosByText(this.mInfo, (String)object);
        int n2 = object.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            arrayList.add(new AccessibilityNodeInfoCompat(object.get(i2)));
        }
        return arrayList;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByViewId(String list) {
        if ((list = IMPL.findAccessibilityNodeInfosByViewId(this.mInfo, (String)((Object)list))) != null) {
            ArrayList<AccessibilityNodeInfoCompat> arrayList = new ArrayList<AccessibilityNodeInfoCompat>();
            Iterator<AccessibilityNodeInfoCompat> iterator = list.iterator();
            do {
                list = arrayList;
                if (iterator.hasNext()) {
                    arrayList.add(new AccessibilityNodeInfoCompat(iterator.next()));
                    continue;
                }
                break;
                break;
            } while (true);
        } else {
            list = Collections.emptyList();
        }
        return list;
    }

    public AccessibilityNodeInfoCompat findFocus(int n2) {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.findFocus(this.mInfo, n2));
    }

    public AccessibilityNodeInfoCompat focusSearch(int n2) {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.focusSearch(this.mInfo, n2));
    }

    public List<AccessibilityActionCompat> getActionList() {
        List<AccessibilityActionCompat> list;
        List<Object> list2 = IMPL.getActionList(this.mInfo);
        if (list2 != null) {
            ArrayList<AccessibilityActionCompat> arrayList = new ArrayList<AccessibilityActionCompat>();
            int n2 = list2.size();
            int n3 = 0;
            do {
                list = arrayList;
                if (n3 < n2) {
                    arrayList.add(new AccessibilityActionCompat(list2.get(n3)));
                    ++n3;
                    continue;
                }
                break;
                break;
            } while (true);
        } else {
            list = Collections.emptyList();
        }
        return list;
    }

    public int getActions() {
        return IMPL.getActions(this.mInfo);
    }

    public void getBoundsInParent(Rect rect) {
        IMPL.getBoundsInParent(this.mInfo, rect);
    }

    public void getBoundsInScreen(Rect rect) {
        IMPL.getBoundsInScreen(this.mInfo, rect);
    }

    public AccessibilityNodeInfoCompat getChild(int n2) {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.getChild(this.mInfo, n2));
    }

    public int getChildCount() {
        return IMPL.getChildCount(this.mInfo);
    }

    public CharSequence getClassName() {
        return IMPL.getClassName(this.mInfo);
    }

    public CollectionInfoCompat getCollectionInfo() {
        Object object = IMPL.getCollectionInfo(this.mInfo);
        if (object == null) {
            return null;
        }
        return new CollectionInfoCompat(object);
    }

    public CollectionItemInfoCompat getCollectionItemInfo() {
        Object object = IMPL.getCollectionItemInfo(this.mInfo);
        if (object == null) {
            return null;
        }
        return new CollectionItemInfoCompat(object);
    }

    public CharSequence getContentDescription() {
        return IMPL.getContentDescription(this.mInfo);
    }

    public int getDrawingOrder() {
        return IMPL.getDrawingOrder(this.mInfo);
    }

    public CharSequence getError() {
        return IMPL.getError(this.mInfo);
    }

    public Bundle getExtras() {
        return IMPL.getExtras(this.mInfo);
    }

    public Object getInfo() {
        return this.mInfo;
    }

    public int getInputType() {
        return IMPL.getInputType(this.mInfo);
    }

    public AccessibilityNodeInfoCompat getLabelFor() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.getLabelFor(this.mInfo));
    }

    public AccessibilityNodeInfoCompat getLabeledBy() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.getLabeledBy(this.mInfo));
    }

    public int getLiveRegion() {
        return IMPL.getLiveRegion(this.mInfo);
    }

    public int getMaxTextLength() {
        return IMPL.getMaxTextLength(this.mInfo);
    }

    public int getMovementGranularities() {
        return IMPL.getMovementGranularities(this.mInfo);
    }

    public CharSequence getPackageName() {
        return IMPL.getPackageName(this.mInfo);
    }

    public AccessibilityNodeInfoCompat getParent() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.getParent(this.mInfo));
    }

    public RangeInfoCompat getRangeInfo() {
        Object object = IMPL.getRangeInfo(this.mInfo);
        if (object == null) {
            return null;
        }
        return new RangeInfoCompat(object);
    }

    @Nullable
    public CharSequence getRoleDescription() {
        return IMPL.getRoleDescription(this.mInfo);
    }

    public CharSequence getText() {
        return IMPL.getText(this.mInfo);
    }

    public int getTextSelectionEnd() {
        return IMPL.getTextSelectionEnd(this.mInfo);
    }

    public int getTextSelectionStart() {
        return IMPL.getTextSelectionStart(this.mInfo);
    }

    public AccessibilityNodeInfoCompat getTraversalAfter() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.getTraversalAfter(this.mInfo));
    }

    public AccessibilityNodeInfoCompat getTraversalBefore() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.getTraversalBefore(this.mInfo));
    }

    public String getViewIdResourceName() {
        return IMPL.getViewIdResourceName(this.mInfo);
    }

    public AccessibilityWindowInfoCompat getWindow() {
        return AccessibilityWindowInfoCompat.wrapNonNullInstance(IMPL.getWindow(this.mInfo));
    }

    public int getWindowId() {
        return IMPL.getWindowId(this.mInfo);
    }

    public int hashCode() {
        if (this.mInfo == null) {
            return 0;
        }
        return this.mInfo.hashCode();
    }

    public boolean isAccessibilityFocused() {
        return IMPL.isAccessibilityFocused(this.mInfo);
    }

    public boolean isCheckable() {
        return IMPL.isCheckable(this.mInfo);
    }

    public boolean isChecked() {
        return IMPL.isChecked(this.mInfo);
    }

    public boolean isClickable() {
        return IMPL.isClickable(this.mInfo);
    }

    public boolean isContentInvalid() {
        return IMPL.isContentInvalid(this.mInfo);
    }

    public boolean isContextClickable() {
        return IMPL.isContextClickable(this.mInfo);
    }

    public boolean isDismissable() {
        return IMPL.isDismissable(this.mInfo);
    }

    public boolean isEditable() {
        return IMPL.isEditable(this.mInfo);
    }

    public boolean isEnabled() {
        return IMPL.isEnabled(this.mInfo);
    }

    public boolean isFocusable() {
        return IMPL.isFocusable(this.mInfo);
    }

    public boolean isFocused() {
        return IMPL.isFocused(this.mInfo);
    }

    public boolean isImportantForAccessibility() {
        return IMPL.isImportantForAccessibility(this.mInfo);
    }

    public boolean isLongClickable() {
        return IMPL.isLongClickable(this.mInfo);
    }

    public boolean isMultiLine() {
        return IMPL.isMultiLine(this.mInfo);
    }

    public boolean isPassword() {
        return IMPL.isPassword(this.mInfo);
    }

    public boolean isScrollable() {
        return IMPL.isScrollable(this.mInfo);
    }

    public boolean isSelected() {
        return IMPL.isSelected(this.mInfo);
    }

    public boolean isVisibleToUser() {
        return IMPL.isVisibleToUser(this.mInfo);
    }

    public boolean performAction(int n2) {
        return IMPL.performAction(this.mInfo, n2);
    }

    public boolean performAction(int n2, Bundle bundle) {
        return IMPL.performAction(this.mInfo, n2, bundle);
    }

    public void recycle() {
        IMPL.recycle(this.mInfo);
    }

    public boolean refresh() {
        return IMPL.refresh(this.mInfo);
    }

    public boolean removeAction(AccessibilityActionCompat accessibilityActionCompat) {
        return IMPL.removeAction(this.mInfo, accessibilityActionCompat.mAction);
    }

    public boolean removeChild(View view) {
        return IMPL.removeChild(this.mInfo, view);
    }

    public boolean removeChild(View view, int n2) {
        return IMPL.removeChild(this.mInfo, view, n2);
    }

    public void setAccessibilityFocused(boolean bl) {
        IMPL.setAccessibilityFocused(this.mInfo, bl);
    }

    public void setBoundsInParent(Rect rect) {
        IMPL.setBoundsInParent(this.mInfo, rect);
    }

    public void setBoundsInScreen(Rect rect) {
        IMPL.setBoundsInScreen(this.mInfo, rect);
    }

    public void setCanOpenPopup(boolean bl) {
        IMPL.setCanOpenPopup(this.mInfo, bl);
    }

    public void setCheckable(boolean bl) {
        IMPL.setCheckable(this.mInfo, bl);
    }

    public void setChecked(boolean bl) {
        IMPL.setChecked(this.mInfo, bl);
    }

    public void setClassName(CharSequence charSequence) {
        IMPL.setClassName(this.mInfo, charSequence);
    }

    public void setClickable(boolean bl) {
        IMPL.setClickable(this.mInfo, bl);
    }

    public void setCollectionInfo(Object object) {
        IMPL.setCollectionInfo(this.mInfo, ((CollectionInfoCompat)object).mInfo);
    }

    public void setCollectionItemInfo(Object object) {
        IMPL.setCollectionItemInfo(this.mInfo, ((CollectionItemInfoCompat)object).mInfo);
    }

    public void setContentDescription(CharSequence charSequence) {
        IMPL.setContentDescription(this.mInfo, charSequence);
    }

    public void setContentInvalid(boolean bl) {
        IMPL.setContentInvalid(this.mInfo, bl);
    }

    public void setContextClickable(boolean bl) {
        IMPL.setContextClickable(this.mInfo, bl);
    }

    public void setDismissable(boolean bl) {
        IMPL.setDismissable(this.mInfo, bl);
    }

    public void setDrawingOrder(int n2) {
        IMPL.setDrawingOrder(this.mInfo, n2);
    }

    public void setEditable(boolean bl) {
        IMPL.setEditable(this.mInfo, bl);
    }

    public void setEnabled(boolean bl) {
        IMPL.setEnabled(this.mInfo, bl);
    }

    public void setError(CharSequence charSequence) {
        IMPL.setError(this.mInfo, charSequence);
    }

    public void setFocusable(boolean bl) {
        IMPL.setFocusable(this.mInfo, bl);
    }

    public void setFocused(boolean bl) {
        IMPL.setFocused(this.mInfo, bl);
    }

    public void setImportantForAccessibility(boolean bl) {
        IMPL.setImportantForAccessibility(this.mInfo, bl);
    }

    public void setInputType(int n2) {
        IMPL.setInputType(this.mInfo, n2);
    }

    public void setLabelFor(View view) {
        IMPL.setLabelFor(this.mInfo, view);
    }

    public void setLabelFor(View view, int n2) {
        IMPL.setLabelFor(this.mInfo, view, n2);
    }

    public void setLabeledBy(View view) {
        IMPL.setLabeledBy(this.mInfo, view);
    }

    public void setLabeledBy(View view, int n2) {
        IMPL.setLabeledBy(this.mInfo, view, n2);
    }

    public void setLiveRegion(int n2) {
        IMPL.setLiveRegion(this.mInfo, n2);
    }

    public void setLongClickable(boolean bl) {
        IMPL.setLongClickable(this.mInfo, bl);
    }

    public void setMaxTextLength(int n2) {
        IMPL.setMaxTextLength(this.mInfo, n2);
    }

    public void setMovementGranularities(int n2) {
        IMPL.setMovementGranularities(this.mInfo, n2);
    }

    public void setMultiLine(boolean bl) {
        IMPL.setMultiLine(this.mInfo, bl);
    }

    public void setPackageName(CharSequence charSequence) {
        IMPL.setPackageName(this.mInfo, charSequence);
    }

    public void setParent(View view) {
        IMPL.setParent(this.mInfo, view);
    }

    public void setParent(View view, int n2) {
        IMPL.setParent(this.mInfo, view, n2);
    }

    public void setPassword(boolean bl) {
        IMPL.setPassword(this.mInfo, bl);
    }

    public void setRangeInfo(RangeInfoCompat rangeInfoCompat) {
        IMPL.setRangeInfo(this.mInfo, rangeInfoCompat.mInfo);
    }

    public void setRoleDescription(@Nullable CharSequence charSequence) {
        IMPL.setRoleDescription(this.mInfo, charSequence);
    }

    public void setScrollable(boolean bl) {
        IMPL.setScrollable(this.mInfo, bl);
    }

    public void setSelected(boolean bl) {
        IMPL.setSelected(this.mInfo, bl);
    }

    public void setSource(View view) {
        IMPL.setSource(this.mInfo, view);
    }

    public void setSource(View view, int n2) {
        IMPL.setSource(this.mInfo, view, n2);
    }

    public void setText(CharSequence charSequence) {
        IMPL.setText(this.mInfo, charSequence);
    }

    public void setTextSelection(int n2, int n3) {
        IMPL.setTextSelection(this.mInfo, n2, n3);
    }

    public void setTraversalAfter(View view) {
        IMPL.setTraversalAfter(this.mInfo, view);
    }

    public void setTraversalAfter(View view, int n2) {
        IMPL.setTraversalAfter(this.mInfo, view, n2);
    }

    public void setTraversalBefore(View view) {
        IMPL.setTraversalBefore(this.mInfo, view);
    }

    public void setTraversalBefore(View view, int n2) {
        IMPL.setTraversalBefore(this.mInfo, view, n2);
    }

    public void setViewIdResourceName(String string2) {
        IMPL.setViewIdResourceName(this.mInfo, string2);
    }

    public void setVisibleToUser(boolean bl) {
        IMPL.setVisibleToUser(this.mInfo, bl);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        Rect rect = new Rect();
        this.getBoundsInParent(rect);
        stringBuilder.append("; boundsInParent: " + (Object)rect);
        this.getBoundsInScreen(rect);
        stringBuilder.append("; boundsInScreen: " + (Object)rect);
        stringBuilder.append("; packageName: ").append(this.getPackageName());
        stringBuilder.append("; className: ").append(this.getClassName());
        stringBuilder.append("; text: ").append(this.getText());
        stringBuilder.append("; contentDescription: ").append(this.getContentDescription());
        stringBuilder.append("; viewId: ").append(this.getViewIdResourceName());
        stringBuilder.append("; checkable: ").append(this.isCheckable());
        stringBuilder.append("; checked: ").append(this.isChecked());
        stringBuilder.append("; focusable: ").append(this.isFocusable());
        stringBuilder.append("; focused: ").append(this.isFocused());
        stringBuilder.append("; selected: ").append(this.isSelected());
        stringBuilder.append("; clickable: ").append(this.isClickable());
        stringBuilder.append("; longClickable: ").append(this.isLongClickable());
        stringBuilder.append("; enabled: ").append(this.isEnabled());
        stringBuilder.append("; password: ").append(this.isPassword());
        stringBuilder.append("; scrollable: " + this.isScrollable());
        stringBuilder.append("; [");
        int n2 = this.getActions();
        while (n2 != 0) {
            int n3 = 1 << Integer.numberOfTrailingZeros(n2);
            int n4 = n2 & ~ n3;
            stringBuilder.append(AccessibilityNodeInfoCompat.getActionSymbolicName(n3));
            n2 = n4;
            if (n4 == 0) continue;
            stringBuilder.append(", ");
            n2 = n4;
        }
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public static class AccessibilityActionCompat {
        public static final AccessibilityActionCompat ACTION_ACCESSIBILITY_FOCUS;
        public static final AccessibilityActionCompat ACTION_CLEAR_ACCESSIBILITY_FOCUS;
        public static final AccessibilityActionCompat ACTION_CLEAR_FOCUS;
        public static final AccessibilityActionCompat ACTION_CLEAR_SELECTION;
        public static final AccessibilityActionCompat ACTION_CLICK;
        public static final AccessibilityActionCompat ACTION_COLLAPSE;
        public static final AccessibilityActionCompat ACTION_CONTEXT_CLICK;
        public static final AccessibilityActionCompat ACTION_COPY;
        public static final AccessibilityActionCompat ACTION_CUT;
        public static final AccessibilityActionCompat ACTION_DISMISS;
        public static final AccessibilityActionCompat ACTION_EXPAND;
        public static final AccessibilityActionCompat ACTION_FOCUS;
        public static final AccessibilityActionCompat ACTION_LONG_CLICK;
        public static final AccessibilityActionCompat ACTION_NEXT_AT_MOVEMENT_GRANULARITY;
        public static final AccessibilityActionCompat ACTION_NEXT_HTML_ELEMENT;
        public static final AccessibilityActionCompat ACTION_PASTE;
        public static final AccessibilityActionCompat ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY;
        public static final AccessibilityActionCompat ACTION_PREVIOUS_HTML_ELEMENT;
        public static final AccessibilityActionCompat ACTION_SCROLL_BACKWARD;
        public static final AccessibilityActionCompat ACTION_SCROLL_DOWN;
        public static final AccessibilityActionCompat ACTION_SCROLL_FORWARD;
        public static final AccessibilityActionCompat ACTION_SCROLL_LEFT;
        public static final AccessibilityActionCompat ACTION_SCROLL_RIGHT;
        public static final AccessibilityActionCompat ACTION_SCROLL_TO_POSITION;
        public static final AccessibilityActionCompat ACTION_SCROLL_UP;
        public static final AccessibilityActionCompat ACTION_SELECT;
        public static final AccessibilityActionCompat ACTION_SET_PROGRESS;
        public static final AccessibilityActionCompat ACTION_SET_SELECTION;
        public static final AccessibilityActionCompat ACTION_SET_TEXT;
        public static final AccessibilityActionCompat ACTION_SHOW_ON_SCREEN;
        final Object mAction;

        static {
            ACTION_FOCUS = new AccessibilityActionCompat(1, null);
            ACTION_CLEAR_FOCUS = new AccessibilityActionCompat(2, null);
            ACTION_SELECT = new AccessibilityActionCompat(4, null);
            ACTION_CLEAR_SELECTION = new AccessibilityActionCompat(8, null);
            ACTION_CLICK = new AccessibilityActionCompat(16, null);
            ACTION_LONG_CLICK = new AccessibilityActionCompat(32, null);
            ACTION_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(64, null);
            ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(128, null);
            ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(256, null);
            ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(512, null);
            ACTION_NEXT_HTML_ELEMENT = new AccessibilityActionCompat(1024, null);
            ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityActionCompat(2048, null);
            ACTION_SCROLL_FORWARD = new AccessibilityActionCompat(4096, null);
            ACTION_SCROLL_BACKWARD = new AccessibilityActionCompat(8192, null);
            ACTION_COPY = new AccessibilityActionCompat(16384, null);
            ACTION_PASTE = new AccessibilityActionCompat(32768, null);
            ACTION_CUT = new AccessibilityActionCompat(65536, null);
            ACTION_SET_SELECTION = new AccessibilityActionCompat(131072, null);
            ACTION_EXPAND = new AccessibilityActionCompat(262144, null);
            ACTION_COLLAPSE = new AccessibilityActionCompat(524288, null);
            ACTION_DISMISS = new AccessibilityActionCompat(1048576, null);
            ACTION_SET_TEXT = new AccessibilityActionCompat(2097152, null);
            ACTION_SHOW_ON_SCREEN = new AccessibilityActionCompat(AccessibilityNodeInfoCompat.IMPL.getActionShowOnScreen());
            ACTION_SCROLL_TO_POSITION = new AccessibilityActionCompat(AccessibilityNodeInfoCompat.IMPL.getActionScrollToPosition());
            ACTION_SCROLL_UP = new AccessibilityActionCompat(AccessibilityNodeInfoCompat.IMPL.getActionScrollUp());
            ACTION_SCROLL_LEFT = new AccessibilityActionCompat(AccessibilityNodeInfoCompat.IMPL.getActionScrollLeft());
            ACTION_SCROLL_DOWN = new AccessibilityActionCompat(AccessibilityNodeInfoCompat.IMPL.getActionScrollDown());
            ACTION_SCROLL_RIGHT = new AccessibilityActionCompat(AccessibilityNodeInfoCompat.IMPL.getActionScrollRight());
            ACTION_CONTEXT_CLICK = new AccessibilityActionCompat(AccessibilityNodeInfoCompat.IMPL.getActionContextClick());
            ACTION_SET_PROGRESS = new AccessibilityActionCompat(AccessibilityNodeInfoCompat.IMPL.getActionSetProgress());
        }

        public AccessibilityActionCompat(int n2, CharSequence charSequence) {
            this(AccessibilityNodeInfoCompat.IMPL.newAccessibilityAction(n2, charSequence));
        }

        AccessibilityActionCompat(Object object) {
            this.mAction = object;
        }

        public int getId() {
            return AccessibilityNodeInfoCompat.IMPL.getAccessibilityActionId(this.mAction);
        }

        public CharSequence getLabel() {
            return AccessibilityNodeInfoCompat.IMPL.getAccessibilityActionLabel(this.mAction);
        }
    }

    static class AccessibilityNodeInfoApi21Impl
    extends AccessibilityNodeInfoKitKatImpl {
        AccessibilityNodeInfoApi21Impl() {
        }

        @Override
        public void addAction(Object object, Object object2) {
            AccessibilityNodeInfoCompatApi21.addAction(object, object2);
        }

        @Override
        public int getAccessibilityActionId(Object object) {
            return AccessibilityNodeInfoCompatApi21.getAccessibilityActionId(object);
        }

        @Override
        public CharSequence getAccessibilityActionLabel(Object object) {
            return AccessibilityNodeInfoCompatApi21.getAccessibilityActionLabel(object);
        }

        @Override
        public List<Object> getActionList(Object object) {
            return AccessibilityNodeInfoCompatApi21.getActionList(object);
        }

        @Override
        public int getCollectionInfoSelectionMode(Object object) {
            return AccessibilityNodeInfoCompatApi21.CollectionInfo.getSelectionMode(object);
        }

        @Override
        public CharSequence getError(Object object) {
            return AccessibilityNodeInfoCompatApi21.getError(object);
        }

        @Override
        public int getMaxTextLength(Object object) {
            return AccessibilityNodeInfoCompatApi21.getMaxTextLength(object);
        }

        @Override
        public Object getWindow(Object object) {
            return AccessibilityNodeInfoCompatApi21.getWindow(object);
        }

        @Override
        public boolean isCollectionItemSelected(Object object) {
            return AccessibilityNodeInfoCompatApi21.CollectionItemInfo.isSelected(object);
        }

        @Override
        public Object newAccessibilityAction(int n2, CharSequence charSequence) {
            return AccessibilityNodeInfoCompatApi21.newAccessibilityAction(n2, charSequence);
        }

        @Override
        public Object obtainCollectionInfo(int n2, int n3, boolean bl, int n4) {
            return AccessibilityNodeInfoCompatApi21.obtainCollectionInfo(n2, n3, bl, n4);
        }

        @Override
        public Object obtainCollectionItemInfo(int n2, int n3, int n4, int n5, boolean bl, boolean bl2) {
            return AccessibilityNodeInfoCompatApi21.obtainCollectionItemInfo(n2, n3, n4, n5, bl, bl2);
        }

        @Override
        public boolean removeAction(Object object, Object object2) {
            return AccessibilityNodeInfoCompatApi21.removeAction(object, object2);
        }

        @Override
        public boolean removeChild(Object object, View view) {
            return AccessibilityNodeInfoCompatApi21.removeChild(object, view);
        }

        @Override
        public boolean removeChild(Object object, View view, int n2) {
            return AccessibilityNodeInfoCompatApi21.removeChild(object, view, n2);
        }

        @Override
        public void setError(Object object, CharSequence charSequence) {
            AccessibilityNodeInfoCompatApi21.setError(object, charSequence);
        }

        @Override
        public void setMaxTextLength(Object object, int n2) {
            AccessibilityNodeInfoCompatApi21.setMaxTextLength(object, n2);
        }
    }

    static class AccessibilityNodeInfoApi22Impl
    extends AccessibilityNodeInfoApi21Impl {
        AccessibilityNodeInfoApi22Impl() {
        }

        @Override
        public Object getTraversalAfter(Object object) {
            return AccessibilityNodeInfoCompatApi22.getTraversalAfter(object);
        }

        @Override
        public Object getTraversalBefore(Object object) {
            return AccessibilityNodeInfoCompatApi22.getTraversalBefore(object);
        }

        @Override
        public void setTraversalAfter(Object object, View view) {
            AccessibilityNodeInfoCompatApi22.setTraversalAfter(object, view);
        }

        @Override
        public void setTraversalAfter(Object object, View view, int n2) {
            AccessibilityNodeInfoCompatApi22.setTraversalAfter(object, view, n2);
        }

        @Override
        public void setTraversalBefore(Object object, View view) {
            AccessibilityNodeInfoCompatApi22.setTraversalBefore(object, view);
        }

        @Override
        public void setTraversalBefore(Object object, View view, int n2) {
            AccessibilityNodeInfoCompatApi22.setTraversalBefore(object, view, n2);
        }
    }

    static class AccessibilityNodeInfoApi23Impl
    extends AccessibilityNodeInfoApi22Impl {
        AccessibilityNodeInfoApi23Impl() {
        }

        @Override
        public Object getActionContextClick() {
            return AccessibilityNodeInfoCompatApi23.getActionContextClick();
        }

        @Override
        public Object getActionScrollDown() {
            return AccessibilityNodeInfoCompatApi23.getActionScrollDown();
        }

        @Override
        public Object getActionScrollLeft() {
            return AccessibilityNodeInfoCompatApi23.getActionScrollLeft();
        }

        @Override
        public Object getActionScrollRight() {
            return AccessibilityNodeInfoCompatApi23.getActionScrollRight();
        }

        @Override
        public Object getActionScrollToPosition() {
            return AccessibilityNodeInfoCompatApi23.getActionScrollToPosition();
        }

        @Override
        public Object getActionScrollUp() {
            return AccessibilityNodeInfoCompatApi23.getActionScrollUp();
        }

        @Override
        public Object getActionShowOnScreen() {
            return AccessibilityNodeInfoCompatApi23.getActionShowOnScreen();
        }

        @Override
        public boolean isContextClickable(Object object) {
            return AccessibilityNodeInfoCompatApi23.isContextClickable(object);
        }

        @Override
        public void setContextClickable(Object object, boolean bl) {
            AccessibilityNodeInfoCompatApi23.setContextClickable(object, bl);
        }
    }

    static class AccessibilityNodeInfoApi24Impl
    extends AccessibilityNodeInfoApi23Impl {
        AccessibilityNodeInfoApi24Impl() {
        }

        @Override
        public Object getActionSetProgress() {
            return AccessibilityNodeInfoCompatApi24.getActionSetProgress();
        }

        @Override
        public int getDrawingOrder(Object object) {
            return AccessibilityNodeInfoCompatApi24.getDrawingOrder(object);
        }

        @Override
        public boolean isImportantForAccessibility(Object object) {
            return AccessibilityNodeInfoCompatApi24.isImportantForAccessibility(object);
        }

        @Override
        public void setDrawingOrder(Object object, int n2) {
            AccessibilityNodeInfoCompatApi24.setDrawingOrder(object, n2);
        }

        @Override
        public void setImportantForAccessibility(Object object, boolean bl) {
            AccessibilityNodeInfoCompatApi24.setImportantForAccessibility(object, bl);
        }
    }

    static class AccessibilityNodeInfoIcsImpl
    extends AccessibilityNodeInfoStubImpl {
        AccessibilityNodeInfoIcsImpl() {
        }

        @Override
        public void addAction(Object object, int n2) {
            AccessibilityNodeInfoCompatIcs.addAction(object, n2);
        }

        @Override
        public void addChild(Object object, View view) {
            AccessibilityNodeInfoCompatIcs.addChild(object, view);
        }

        @Override
        public List<Object> findAccessibilityNodeInfosByText(Object object, String string2) {
            return AccessibilityNodeInfoCompatIcs.findAccessibilityNodeInfosByText(object, string2);
        }

        @Override
        public int getActions(Object object) {
            return AccessibilityNodeInfoCompatIcs.getActions(object);
        }

        @Override
        public void getBoundsInParent(Object object, Rect rect) {
            AccessibilityNodeInfoCompatIcs.getBoundsInParent(object, rect);
        }

        @Override
        public void getBoundsInScreen(Object object, Rect rect) {
            AccessibilityNodeInfoCompatIcs.getBoundsInScreen(object, rect);
        }

        @Override
        public Object getChild(Object object, int n2) {
            return AccessibilityNodeInfoCompatIcs.getChild(object, n2);
        }

        @Override
        public int getChildCount(Object object) {
            return AccessibilityNodeInfoCompatIcs.getChildCount(object);
        }

        @Override
        public CharSequence getClassName(Object object) {
            return AccessibilityNodeInfoCompatIcs.getClassName(object);
        }

        @Override
        public CharSequence getContentDescription(Object object) {
            return AccessibilityNodeInfoCompatIcs.getContentDescription(object);
        }

        @Override
        public CharSequence getPackageName(Object object) {
            return AccessibilityNodeInfoCompatIcs.getPackageName(object);
        }

        @Override
        public Object getParent(Object object) {
            return AccessibilityNodeInfoCompatIcs.getParent(object);
        }

        @Override
        public CharSequence getText(Object object) {
            return AccessibilityNodeInfoCompatIcs.getText(object);
        }

        @Override
        public int getWindowId(Object object) {
            return AccessibilityNodeInfoCompatIcs.getWindowId(object);
        }

        @Override
        public boolean isCheckable(Object object) {
            return AccessibilityNodeInfoCompatIcs.isCheckable(object);
        }

        @Override
        public boolean isChecked(Object object) {
            return AccessibilityNodeInfoCompatIcs.isChecked(object);
        }

        @Override
        public boolean isClickable(Object object) {
            return AccessibilityNodeInfoCompatIcs.isClickable(object);
        }

        @Override
        public boolean isEnabled(Object object) {
            return AccessibilityNodeInfoCompatIcs.isEnabled(object);
        }

        @Override
        public boolean isFocusable(Object object) {
            return AccessibilityNodeInfoCompatIcs.isFocusable(object);
        }

        @Override
        public boolean isFocused(Object object) {
            return AccessibilityNodeInfoCompatIcs.isFocused(object);
        }

        @Override
        public boolean isLongClickable(Object object) {
            return AccessibilityNodeInfoCompatIcs.isLongClickable(object);
        }

        @Override
        public boolean isPassword(Object object) {
            return AccessibilityNodeInfoCompatIcs.isPassword(object);
        }

        @Override
        public boolean isScrollable(Object object) {
            return AccessibilityNodeInfoCompatIcs.isScrollable(object);
        }

        @Override
        public boolean isSelected(Object object) {
            return AccessibilityNodeInfoCompatIcs.isSelected(object);
        }

        @Override
        public Object obtain() {
            return AccessibilityNodeInfoCompatIcs.obtain();
        }

        @Override
        public Object obtain(View view) {
            return AccessibilityNodeInfoCompatIcs.obtain(view);
        }

        @Override
        public Object obtain(Object object) {
            return AccessibilityNodeInfoCompatIcs.obtain(object);
        }

        @Override
        public boolean performAction(Object object, int n2) {
            return AccessibilityNodeInfoCompatIcs.performAction(object, n2);
        }

        @Override
        public void recycle(Object object) {
            AccessibilityNodeInfoCompatIcs.recycle(object);
        }

        @Override
        public void setBoundsInParent(Object object, Rect rect) {
            AccessibilityNodeInfoCompatIcs.setBoundsInParent(object, rect);
        }

        @Override
        public void setBoundsInScreen(Object object, Rect rect) {
            AccessibilityNodeInfoCompatIcs.setBoundsInScreen(object, rect);
        }

        @Override
        public void setCheckable(Object object, boolean bl) {
            AccessibilityNodeInfoCompatIcs.setCheckable(object, bl);
        }

        @Override
        public void setChecked(Object object, boolean bl) {
            AccessibilityNodeInfoCompatIcs.setChecked(object, bl);
        }

        @Override
        public void setClassName(Object object, CharSequence charSequence) {
            AccessibilityNodeInfoCompatIcs.setClassName(object, charSequence);
        }

        @Override
        public void setClickable(Object object, boolean bl) {
            AccessibilityNodeInfoCompatIcs.setClickable(object, bl);
        }

        @Override
        public void setContentDescription(Object object, CharSequence charSequence) {
            AccessibilityNodeInfoCompatIcs.setContentDescription(object, charSequence);
        }

        @Override
        public void setEnabled(Object object, boolean bl) {
            AccessibilityNodeInfoCompatIcs.setEnabled(object, bl);
        }

        @Override
        public void setFocusable(Object object, boolean bl) {
            AccessibilityNodeInfoCompatIcs.setFocusable(object, bl);
        }

        @Override
        public void setFocused(Object object, boolean bl) {
            AccessibilityNodeInfoCompatIcs.setFocused(object, bl);
        }

        @Override
        public void setLongClickable(Object object, boolean bl) {
            AccessibilityNodeInfoCompatIcs.setLongClickable(object, bl);
        }

        @Override
        public void setPackageName(Object object, CharSequence charSequence) {
            AccessibilityNodeInfoCompatIcs.setPackageName(object, charSequence);
        }

        @Override
        public void setParent(Object object, View view) {
            AccessibilityNodeInfoCompatIcs.setParent(object, view);
        }

        @Override
        public void setPassword(Object object, boolean bl) {
            AccessibilityNodeInfoCompatIcs.setPassword(object, bl);
        }

        @Override
        public void setScrollable(Object object, boolean bl) {
            AccessibilityNodeInfoCompatIcs.setScrollable(object, bl);
        }

        @Override
        public void setSelected(Object object, boolean bl) {
            AccessibilityNodeInfoCompatIcs.setSelected(object, bl);
        }

        @Override
        public void setSource(Object object, View view) {
            AccessibilityNodeInfoCompatIcs.setSource(object, view);
        }

        @Override
        public void setText(Object object, CharSequence charSequence) {
            AccessibilityNodeInfoCompatIcs.setText(object, charSequence);
        }
    }

    static interface AccessibilityNodeInfoImpl {
        public void addAction(Object var1, int var2);

        public void addAction(Object var1, Object var2);

        public void addChild(Object var1, View var2);

        public void addChild(Object var1, View var2, int var3);

        public boolean canOpenPopup(Object var1);

        public List<Object> findAccessibilityNodeInfosByText(Object var1, String var2);

        public List<Object> findAccessibilityNodeInfosByViewId(Object var1, String var2);

        public Object findFocus(Object var1, int var2);

        public Object focusSearch(Object var1, int var2);

        public int getAccessibilityActionId(Object var1);

        public CharSequence getAccessibilityActionLabel(Object var1);

        public Object getActionContextClick();

        public List<Object> getActionList(Object var1);

        public Object getActionScrollDown();

        public Object getActionScrollLeft();

        public Object getActionScrollRight();

        public Object getActionScrollToPosition();

        public Object getActionScrollUp();

        public Object getActionSetProgress();

        public Object getActionShowOnScreen();

        public int getActions(Object var1);

        public void getBoundsInParent(Object var1, Rect var2);

        public void getBoundsInScreen(Object var1, Rect var2);

        public Object getChild(Object var1, int var2);

        public int getChildCount(Object var1);

        public CharSequence getClassName(Object var1);

        public Object getCollectionInfo(Object var1);

        public int getCollectionInfoColumnCount(Object var1);

        public int getCollectionInfoRowCount(Object var1);

        public int getCollectionInfoSelectionMode(Object var1);

        public int getCollectionItemColumnIndex(Object var1);

        public int getCollectionItemColumnSpan(Object var1);

        public Object getCollectionItemInfo(Object var1);

        public int getCollectionItemRowIndex(Object var1);

        public int getCollectionItemRowSpan(Object var1);

        public CharSequence getContentDescription(Object var1);

        public int getDrawingOrder(Object var1);

        public CharSequence getError(Object var1);

        public Bundle getExtras(Object var1);

        public int getInputType(Object var1);

        public Object getLabelFor(Object var1);

        public Object getLabeledBy(Object var1);

        public int getLiveRegion(Object var1);

        public int getMaxTextLength(Object var1);

        public int getMovementGranularities(Object var1);

        public CharSequence getPackageName(Object var1);

        public Object getParent(Object var1);

        public Object getRangeInfo(Object var1);

        public CharSequence getRoleDescription(Object var1);

        public CharSequence getText(Object var1);

        public int getTextSelectionEnd(Object var1);

        public int getTextSelectionStart(Object var1);

        public Object getTraversalAfter(Object var1);

        public Object getTraversalBefore(Object var1);

        public String getViewIdResourceName(Object var1);

        public Object getWindow(Object var1);

        public int getWindowId(Object var1);

        public boolean isAccessibilityFocused(Object var1);

        public boolean isCheckable(Object var1);

        public boolean isChecked(Object var1);

        public boolean isClickable(Object var1);

        public boolean isCollectionInfoHierarchical(Object var1);

        public boolean isCollectionItemHeading(Object var1);

        public boolean isCollectionItemSelected(Object var1);

        public boolean isContentInvalid(Object var1);

        public boolean isContextClickable(Object var1);

        public boolean isDismissable(Object var1);

        public boolean isEditable(Object var1);

        public boolean isEnabled(Object var1);

        public boolean isFocusable(Object var1);

        public boolean isFocused(Object var1);

        public boolean isImportantForAccessibility(Object var1);

        public boolean isLongClickable(Object var1);

        public boolean isMultiLine(Object var1);

        public boolean isPassword(Object var1);

        public boolean isScrollable(Object var1);

        public boolean isSelected(Object var1);

        public boolean isVisibleToUser(Object var1);

        public Object newAccessibilityAction(int var1, CharSequence var2);

        public Object obtain();

        public Object obtain(View var1);

        public Object obtain(View var1, int var2);

        public Object obtain(Object var1);

        public Object obtainCollectionInfo(int var1, int var2, boolean var3);

        public Object obtainCollectionInfo(int var1, int var2, boolean var3, int var4);

        public Object obtainCollectionItemInfo(int var1, int var2, int var3, int var4, boolean var5);

        public Object obtainCollectionItemInfo(int var1, int var2, int var3, int var4, boolean var5, boolean var6);

        public Object obtainRangeInfo(int var1, float var2, float var3, float var4);

        public boolean performAction(Object var1, int var2);

        public boolean performAction(Object var1, int var2, Bundle var3);

        public void recycle(Object var1);

        public boolean refresh(Object var1);

        public boolean removeAction(Object var1, Object var2);

        public boolean removeChild(Object var1, View var2);

        public boolean removeChild(Object var1, View var2, int var3);

        public void setAccessibilityFocused(Object var1, boolean var2);

        public void setBoundsInParent(Object var1, Rect var2);

        public void setBoundsInScreen(Object var1, Rect var2);

        public void setCanOpenPopup(Object var1, boolean var2);

        public void setCheckable(Object var1, boolean var2);

        public void setChecked(Object var1, boolean var2);

        public void setClassName(Object var1, CharSequence var2);

        public void setClickable(Object var1, boolean var2);

        public void setCollectionInfo(Object var1, Object var2);

        public void setCollectionItemInfo(Object var1, Object var2);

        public void setContentDescription(Object var1, CharSequence var2);

        public void setContentInvalid(Object var1, boolean var2);

        public void setContextClickable(Object var1, boolean var2);

        public void setDismissable(Object var1, boolean var2);

        public void setDrawingOrder(Object var1, int var2);

        public void setEditable(Object var1, boolean var2);

        public void setEnabled(Object var1, boolean var2);

        public void setError(Object var1, CharSequence var2);

        public void setFocusable(Object var1, boolean var2);

        public void setFocused(Object var1, boolean var2);

        public void setImportantForAccessibility(Object var1, boolean var2);

        public void setInputType(Object var1, int var2);

        public void setLabelFor(Object var1, View var2);

        public void setLabelFor(Object var1, View var2, int var3);

        public void setLabeledBy(Object var1, View var2);

        public void setLabeledBy(Object var1, View var2, int var3);

        public void setLiveRegion(Object var1, int var2);

        public void setLongClickable(Object var1, boolean var2);

        public void setMaxTextLength(Object var1, int var2);

        public void setMovementGranularities(Object var1, int var2);

        public void setMultiLine(Object var1, boolean var2);

        public void setPackageName(Object var1, CharSequence var2);

        public void setParent(Object var1, View var2);

        public void setParent(Object var1, View var2, int var3);

        public void setPassword(Object var1, boolean var2);

        public void setRangeInfo(Object var1, Object var2);

        public void setRoleDescription(Object var1, CharSequence var2);

        public void setScrollable(Object var1, boolean var2);

        public void setSelected(Object var1, boolean var2);

        public void setSource(Object var1, View var2);

        public void setSource(Object var1, View var2, int var3);

        public void setText(Object var1, CharSequence var2);

        public void setTextSelection(Object var1, int var2, int var3);

        public void setTraversalAfter(Object var1, View var2);

        public void setTraversalAfter(Object var1, View var2, int var3);

        public void setTraversalBefore(Object var1, View var2);

        public void setTraversalBefore(Object var1, View var2, int var3);

        public void setViewIdResourceName(Object var1, String var2);

        public void setVisibleToUser(Object var1, boolean var2);
    }

    static class AccessibilityNodeInfoJellybeanImpl
    extends AccessibilityNodeInfoIcsImpl {
        AccessibilityNodeInfoJellybeanImpl() {
        }

        @Override
        public void addChild(Object object, View view, int n2) {
            AccessibilityNodeInfoCompatJellyBean.addChild(object, view, n2);
        }

        @Override
        public Object findFocus(Object object, int n2) {
            return AccessibilityNodeInfoCompatJellyBean.findFocus(object, n2);
        }

        @Override
        public Object focusSearch(Object object, int n2) {
            return AccessibilityNodeInfoCompatJellyBean.focusSearch(object, n2);
        }

        @Override
        public int getMovementGranularities(Object object) {
            return AccessibilityNodeInfoCompatJellyBean.getMovementGranularities(object);
        }

        @Override
        public boolean isAccessibilityFocused(Object object) {
            return AccessibilityNodeInfoCompatJellyBean.isAccessibilityFocused(object);
        }

        @Override
        public boolean isVisibleToUser(Object object) {
            return AccessibilityNodeInfoCompatJellyBean.isVisibleToUser(object);
        }

        @Override
        public Object obtain(View view, int n2) {
            return AccessibilityNodeInfoCompatJellyBean.obtain(view, n2);
        }

        @Override
        public boolean performAction(Object object, int n2, Bundle bundle) {
            return AccessibilityNodeInfoCompatJellyBean.performAction(object, n2, bundle);
        }

        @Override
        public void setAccessibilityFocused(Object object, boolean bl) {
            AccessibilityNodeInfoCompatJellyBean.setAccesibilityFocused(object, bl);
        }

        @Override
        public void setMovementGranularities(Object object, int n2) {
            AccessibilityNodeInfoCompatJellyBean.setMovementGranularities(object, n2);
        }

        @Override
        public void setParent(Object object, View view, int n2) {
            AccessibilityNodeInfoCompatJellyBean.setParent(object, view, n2);
        }

        @Override
        public void setSource(Object object, View view, int n2) {
            AccessibilityNodeInfoCompatJellyBean.setSource(object, view, n2);
        }

        @Override
        public void setVisibleToUser(Object object, boolean bl) {
            AccessibilityNodeInfoCompatJellyBean.setVisibleToUser(object, bl);
        }
    }

    static class AccessibilityNodeInfoJellybeanMr1Impl
    extends AccessibilityNodeInfoJellybeanImpl {
        AccessibilityNodeInfoJellybeanMr1Impl() {
        }

        @Override
        public Object getLabelFor(Object object) {
            return AccessibilityNodeInfoCompatJellybeanMr1.getLabelFor(object);
        }

        @Override
        public Object getLabeledBy(Object object) {
            return AccessibilityNodeInfoCompatJellybeanMr1.getLabeledBy(object);
        }

        @Override
        public void setLabelFor(Object object, View view) {
            AccessibilityNodeInfoCompatJellybeanMr1.setLabelFor(object, view);
        }

        @Override
        public void setLabelFor(Object object, View view, int n2) {
            AccessibilityNodeInfoCompatJellybeanMr1.setLabelFor(object, view, n2);
        }

        @Override
        public void setLabeledBy(Object object, View view) {
            AccessibilityNodeInfoCompatJellybeanMr1.setLabeledBy(object, view);
        }

        @Override
        public void setLabeledBy(Object object, View view, int n2) {
            AccessibilityNodeInfoCompatJellybeanMr1.setLabeledBy(object, view, n2);
        }
    }

    static class AccessibilityNodeInfoJellybeanMr2Impl
    extends AccessibilityNodeInfoJellybeanMr1Impl {
        AccessibilityNodeInfoJellybeanMr2Impl() {
        }

        @Override
        public List<Object> findAccessibilityNodeInfosByViewId(Object object, String string2) {
            return AccessibilityNodeInfoCompatJellybeanMr2.findAccessibilityNodeInfosByViewId(object, string2);
        }

        @Override
        public int getTextSelectionEnd(Object object) {
            return AccessibilityNodeInfoCompatJellybeanMr2.getTextSelectionEnd(object);
        }

        @Override
        public int getTextSelectionStart(Object object) {
            return AccessibilityNodeInfoCompatJellybeanMr2.getTextSelectionStart(object);
        }

        @Override
        public String getViewIdResourceName(Object object) {
            return AccessibilityNodeInfoCompatJellybeanMr2.getViewIdResourceName(object);
        }

        @Override
        public boolean isEditable(Object object) {
            return AccessibilityNodeInfoCompatJellybeanMr2.isEditable(object);
        }

        @Override
        public boolean refresh(Object object) {
            return AccessibilityNodeInfoCompatJellybeanMr2.refresh(object);
        }

        @Override
        public void setEditable(Object object, boolean bl) {
            AccessibilityNodeInfoCompatJellybeanMr2.setEditable(object, bl);
        }

        @Override
        public void setTextSelection(Object object, int n2, int n3) {
            AccessibilityNodeInfoCompatJellybeanMr2.setTextSelection(object, n2, n3);
        }

        @Override
        public void setViewIdResourceName(Object object, String string2) {
            AccessibilityNodeInfoCompatJellybeanMr2.setViewIdResourceName(object, string2);
        }
    }

    static class AccessibilityNodeInfoKitKatImpl
    extends AccessibilityNodeInfoJellybeanMr2Impl {
        AccessibilityNodeInfoKitKatImpl() {
        }

        @Override
        public boolean canOpenPopup(Object object) {
            return AccessibilityNodeInfoCompatKitKat.canOpenPopup(object);
        }

        @Override
        public Object getCollectionInfo(Object object) {
            return AccessibilityNodeInfoCompatKitKat.getCollectionInfo(object);
        }

        @Override
        public int getCollectionInfoColumnCount(Object object) {
            return AccessibilityNodeInfoCompatKitKat.CollectionInfo.getColumnCount(object);
        }

        @Override
        public int getCollectionInfoRowCount(Object object) {
            return AccessibilityNodeInfoCompatKitKat.CollectionInfo.getRowCount(object);
        }

        @Override
        public int getCollectionItemColumnIndex(Object object) {
            return AccessibilityNodeInfoCompatKitKat.CollectionItemInfo.getColumnIndex(object);
        }

        @Override
        public int getCollectionItemColumnSpan(Object object) {
            return AccessibilityNodeInfoCompatKitKat.CollectionItemInfo.getColumnSpan(object);
        }

        @Override
        public Object getCollectionItemInfo(Object object) {
            return AccessibilityNodeInfoCompatKitKat.getCollectionItemInfo(object);
        }

        @Override
        public int getCollectionItemRowIndex(Object object) {
            return AccessibilityNodeInfoCompatKitKat.CollectionItemInfo.getRowIndex(object);
        }

        @Override
        public int getCollectionItemRowSpan(Object object) {
            return AccessibilityNodeInfoCompatKitKat.CollectionItemInfo.getRowSpan(object);
        }

        @Override
        public Bundle getExtras(Object object) {
            return AccessibilityNodeInfoCompatKitKat.getExtras(object);
        }

        @Override
        public int getInputType(Object object) {
            return AccessibilityNodeInfoCompatKitKat.getInputType(object);
        }

        @Override
        public int getLiveRegion(Object object) {
            return AccessibilityNodeInfoCompatKitKat.getLiveRegion(object);
        }

        @Override
        public Object getRangeInfo(Object object) {
            return AccessibilityNodeInfoCompatKitKat.getRangeInfo(object);
        }

        @Override
        public CharSequence getRoleDescription(Object object) {
            return AccessibilityNodeInfoCompatKitKat.getRoleDescription(object);
        }

        @Override
        public boolean isCollectionInfoHierarchical(Object object) {
            return AccessibilityNodeInfoCompatKitKat.CollectionInfo.isHierarchical(object);
        }

        @Override
        public boolean isCollectionItemHeading(Object object) {
            return AccessibilityNodeInfoCompatKitKat.CollectionItemInfo.isHeading(object);
        }

        @Override
        public boolean isContentInvalid(Object object) {
            return AccessibilityNodeInfoCompatKitKat.isContentInvalid(object);
        }

        @Override
        public boolean isDismissable(Object object) {
            return AccessibilityNodeInfoCompatKitKat.isDismissable(object);
        }

        @Override
        public boolean isMultiLine(Object object) {
            return AccessibilityNodeInfoCompatKitKat.isMultiLine(object);
        }

        @Override
        public Object obtainCollectionInfo(int n2, int n3, boolean bl) {
            return AccessibilityNodeInfoCompatKitKat.obtainCollectionInfo(n2, n3, bl);
        }

        @Override
        public Object obtainCollectionInfo(int n2, int n3, boolean bl, int n4) {
            return AccessibilityNodeInfoCompatKitKat.obtainCollectionInfo(n2, n3, bl, n4);
        }

        @Override
        public Object obtainCollectionItemInfo(int n2, int n3, int n4, int n5, boolean bl) {
            return AccessibilityNodeInfoCompatKitKat.obtainCollectionItemInfo(n2, n3, n4, n5, bl);
        }

        @Override
        public Object obtainCollectionItemInfo(int n2, int n3, int n4, int n5, boolean bl, boolean bl2) {
            return AccessibilityNodeInfoCompatKitKat.obtainCollectionItemInfo(n2, n3, n4, n5, bl);
        }

        @Override
        public Object obtainRangeInfo(int n2, float f2, float f3, float f4) {
            return AccessibilityNodeInfoCompatKitKat.obtainRangeInfo(n2, f2, f3, f4);
        }

        @Override
        public void setCanOpenPopup(Object object, boolean bl) {
            AccessibilityNodeInfoCompatKitKat.setCanOpenPopup(object, bl);
        }

        @Override
        public void setCollectionInfo(Object object, Object object2) {
            AccessibilityNodeInfoCompatKitKat.setCollectionInfo(object, object2);
        }

        @Override
        public void setCollectionItemInfo(Object object, Object object2) {
            AccessibilityNodeInfoCompatKitKat.setCollectionItemInfo(object, object2);
        }

        @Override
        public void setContentInvalid(Object object, boolean bl) {
            AccessibilityNodeInfoCompatKitKat.setContentInvalid(object, bl);
        }

        @Override
        public void setDismissable(Object object, boolean bl) {
            AccessibilityNodeInfoCompatKitKat.setDismissable(object, bl);
        }

        @Override
        public void setInputType(Object object, int n2) {
            AccessibilityNodeInfoCompatKitKat.setInputType(object, n2);
        }

        @Override
        public void setLiveRegion(Object object, int n2) {
            AccessibilityNodeInfoCompatKitKat.setLiveRegion(object, n2);
        }

        @Override
        public void setMultiLine(Object object, boolean bl) {
            AccessibilityNodeInfoCompatKitKat.setMultiLine(object, bl);
        }

        @Override
        public void setRangeInfo(Object object, Object object2) {
            AccessibilityNodeInfoCompatKitKat.setRangeInfo(object, object2);
        }

        @Override
        public void setRoleDescription(Object object, CharSequence charSequence) {
            AccessibilityNodeInfoCompatKitKat.setRoleDescription(object, charSequence);
        }
    }

    static class AccessibilityNodeInfoStubImpl
    implements AccessibilityNodeInfoImpl {
        AccessibilityNodeInfoStubImpl() {
        }

        @Override
        public void addAction(Object object, int n2) {
        }

        @Override
        public void addAction(Object object, Object object2) {
        }

        @Override
        public void addChild(Object object, View view) {
        }

        @Override
        public void addChild(Object object, View view, int n2) {
        }

        @Override
        public boolean canOpenPopup(Object object) {
            return false;
        }

        @Override
        public List<Object> findAccessibilityNodeInfosByText(Object object, String string2) {
            return Collections.emptyList();
        }

        @Override
        public List<Object> findAccessibilityNodeInfosByViewId(Object object, String string2) {
            return Collections.emptyList();
        }

        @Override
        public Object findFocus(Object object, int n2) {
            return null;
        }

        @Override
        public Object focusSearch(Object object, int n2) {
            return null;
        }

        @Override
        public int getAccessibilityActionId(Object object) {
            return 0;
        }

        @Override
        public CharSequence getAccessibilityActionLabel(Object object) {
            return null;
        }

        @Override
        public Object getActionContextClick() {
            return null;
        }

        @Override
        public List<Object> getActionList(Object object) {
            return null;
        }

        @Override
        public Object getActionScrollDown() {
            return null;
        }

        @Override
        public Object getActionScrollLeft() {
            return null;
        }

        @Override
        public Object getActionScrollRight() {
            return null;
        }

        @Override
        public Object getActionScrollToPosition() {
            return null;
        }

        @Override
        public Object getActionScrollUp() {
            return null;
        }

        @Override
        public Object getActionSetProgress() {
            return null;
        }

        @Override
        public Object getActionShowOnScreen() {
            return null;
        }

        @Override
        public int getActions(Object object) {
            return 0;
        }

        @Override
        public void getBoundsInParent(Object object, Rect rect) {
        }

        @Override
        public void getBoundsInScreen(Object object, Rect rect) {
        }

        @Override
        public Object getChild(Object object, int n2) {
            return null;
        }

        @Override
        public int getChildCount(Object object) {
            return 0;
        }

        @Override
        public CharSequence getClassName(Object object) {
            return null;
        }

        @Override
        public Object getCollectionInfo(Object object) {
            return null;
        }

        @Override
        public int getCollectionInfoColumnCount(Object object) {
            return 0;
        }

        @Override
        public int getCollectionInfoRowCount(Object object) {
            return 0;
        }

        @Override
        public int getCollectionInfoSelectionMode(Object object) {
            return 0;
        }

        @Override
        public int getCollectionItemColumnIndex(Object object) {
            return 0;
        }

        @Override
        public int getCollectionItemColumnSpan(Object object) {
            return 0;
        }

        @Override
        public Object getCollectionItemInfo(Object object) {
            return null;
        }

        @Override
        public int getCollectionItemRowIndex(Object object) {
            return 0;
        }

        @Override
        public int getCollectionItemRowSpan(Object object) {
            return 0;
        }

        @Override
        public CharSequence getContentDescription(Object object) {
            return null;
        }

        @Override
        public int getDrawingOrder(Object object) {
            return 0;
        }

        @Override
        public CharSequence getError(Object object) {
            return null;
        }

        @Override
        public Bundle getExtras(Object object) {
            return new Bundle();
        }

        @Override
        public int getInputType(Object object) {
            return 0;
        }

        @Override
        public Object getLabelFor(Object object) {
            return null;
        }

        @Override
        public Object getLabeledBy(Object object) {
            return null;
        }

        @Override
        public int getLiveRegion(Object object) {
            return 0;
        }

        @Override
        public int getMaxTextLength(Object object) {
            return -1;
        }

        @Override
        public int getMovementGranularities(Object object) {
            return 0;
        }

        @Override
        public CharSequence getPackageName(Object object) {
            return null;
        }

        @Override
        public Object getParent(Object object) {
            return null;
        }

        @Override
        public Object getRangeInfo(Object object) {
            return null;
        }

        @Override
        public CharSequence getRoleDescription(Object object) {
            return null;
        }

        @Override
        public CharSequence getText(Object object) {
            return null;
        }

        @Override
        public int getTextSelectionEnd(Object object) {
            return -1;
        }

        @Override
        public int getTextSelectionStart(Object object) {
            return -1;
        }

        @Override
        public Object getTraversalAfter(Object object) {
            return null;
        }

        @Override
        public Object getTraversalBefore(Object object) {
            return null;
        }

        @Override
        public String getViewIdResourceName(Object object) {
            return null;
        }

        @Override
        public Object getWindow(Object object) {
            return null;
        }

        @Override
        public int getWindowId(Object object) {
            return 0;
        }

        @Override
        public boolean isAccessibilityFocused(Object object) {
            return false;
        }

        @Override
        public boolean isCheckable(Object object) {
            return false;
        }

        @Override
        public boolean isChecked(Object object) {
            return false;
        }

        @Override
        public boolean isClickable(Object object) {
            return false;
        }

        @Override
        public boolean isCollectionInfoHierarchical(Object object) {
            return false;
        }

        @Override
        public boolean isCollectionItemHeading(Object object) {
            return false;
        }

        @Override
        public boolean isCollectionItemSelected(Object object) {
            return false;
        }

        @Override
        public boolean isContentInvalid(Object object) {
            return false;
        }

        @Override
        public boolean isContextClickable(Object object) {
            return false;
        }

        @Override
        public boolean isDismissable(Object object) {
            return false;
        }

        @Override
        public boolean isEditable(Object object) {
            return false;
        }

        @Override
        public boolean isEnabled(Object object) {
            return false;
        }

        @Override
        public boolean isFocusable(Object object) {
            return false;
        }

        @Override
        public boolean isFocused(Object object) {
            return false;
        }

        @Override
        public boolean isImportantForAccessibility(Object object) {
            return true;
        }

        @Override
        public boolean isLongClickable(Object object) {
            return false;
        }

        @Override
        public boolean isMultiLine(Object object) {
            return false;
        }

        @Override
        public boolean isPassword(Object object) {
            return false;
        }

        @Override
        public boolean isScrollable(Object object) {
            return false;
        }

        @Override
        public boolean isSelected(Object object) {
            return false;
        }

        @Override
        public boolean isVisibleToUser(Object object) {
            return false;
        }

        @Override
        public Object newAccessibilityAction(int n2, CharSequence charSequence) {
            return null;
        }

        @Override
        public Object obtain() {
            return null;
        }

        @Override
        public Object obtain(View view) {
            return null;
        }

        @Override
        public Object obtain(View view, int n2) {
            return null;
        }

        @Override
        public Object obtain(Object object) {
            return null;
        }

        @Override
        public Object obtainCollectionInfo(int n2, int n3, boolean bl) {
            return null;
        }

        @Override
        public Object obtainCollectionInfo(int n2, int n3, boolean bl, int n4) {
            return null;
        }

        @Override
        public Object obtainCollectionItemInfo(int n2, int n3, int n4, int n5, boolean bl) {
            return null;
        }

        @Override
        public Object obtainCollectionItemInfo(int n2, int n3, int n4, int n5, boolean bl, boolean bl2) {
            return null;
        }

        @Override
        public Object obtainRangeInfo(int n2, float f2, float f3, float f4) {
            return null;
        }

        @Override
        public boolean performAction(Object object, int n2) {
            return false;
        }

        @Override
        public boolean performAction(Object object, int n2, Bundle bundle) {
            return false;
        }

        @Override
        public void recycle(Object object) {
        }

        @Override
        public boolean refresh(Object object) {
            return false;
        }

        @Override
        public boolean removeAction(Object object, Object object2) {
            return false;
        }

        @Override
        public boolean removeChild(Object object, View view) {
            return false;
        }

        @Override
        public boolean removeChild(Object object, View view, int n2) {
            return false;
        }

        @Override
        public void setAccessibilityFocused(Object object, boolean bl) {
        }

        @Override
        public void setBoundsInParent(Object object, Rect rect) {
        }

        @Override
        public void setBoundsInScreen(Object object, Rect rect) {
        }

        @Override
        public void setCanOpenPopup(Object object, boolean bl) {
        }

        @Override
        public void setCheckable(Object object, boolean bl) {
        }

        @Override
        public void setChecked(Object object, boolean bl) {
        }

        @Override
        public void setClassName(Object object, CharSequence charSequence) {
        }

        @Override
        public void setClickable(Object object, boolean bl) {
        }

        @Override
        public void setCollectionInfo(Object object, Object object2) {
        }

        @Override
        public void setCollectionItemInfo(Object object, Object object2) {
        }

        @Override
        public void setContentDescription(Object object, CharSequence charSequence) {
        }

        @Override
        public void setContentInvalid(Object object, boolean bl) {
        }

        @Override
        public void setContextClickable(Object object, boolean bl) {
        }

        @Override
        public void setDismissable(Object object, boolean bl) {
        }

        @Override
        public void setDrawingOrder(Object object, int n2) {
        }

        @Override
        public void setEditable(Object object, boolean bl) {
        }

        @Override
        public void setEnabled(Object object, boolean bl) {
        }

        @Override
        public void setError(Object object, CharSequence charSequence) {
        }

        @Override
        public void setFocusable(Object object, boolean bl) {
        }

        @Override
        public void setFocused(Object object, boolean bl) {
        }

        @Override
        public void setImportantForAccessibility(Object object, boolean bl) {
        }

        @Override
        public void setInputType(Object object, int n2) {
        }

        @Override
        public void setLabelFor(Object object, View view) {
        }

        @Override
        public void setLabelFor(Object object, View view, int n2) {
        }

        @Override
        public void setLabeledBy(Object object, View view) {
        }

        @Override
        public void setLabeledBy(Object object, View view, int n2) {
        }

        @Override
        public void setLiveRegion(Object object, int n2) {
        }

        @Override
        public void setLongClickable(Object object, boolean bl) {
        }

        @Override
        public void setMaxTextLength(Object object, int n2) {
        }

        @Override
        public void setMovementGranularities(Object object, int n2) {
        }

        @Override
        public void setMultiLine(Object object, boolean bl) {
        }

        @Override
        public void setPackageName(Object object, CharSequence charSequence) {
        }

        @Override
        public void setParent(Object object, View view) {
        }

        @Override
        public void setParent(Object object, View view, int n2) {
        }

        @Override
        public void setPassword(Object object, boolean bl) {
        }

        @Override
        public void setRangeInfo(Object object, Object object2) {
        }

        @Override
        public void setRoleDescription(Object object, CharSequence charSequence) {
        }

        @Override
        public void setScrollable(Object object, boolean bl) {
        }

        @Override
        public void setSelected(Object object, boolean bl) {
        }

        @Override
        public void setSource(Object object, View view) {
        }

        @Override
        public void setSource(Object object, View view, int n2) {
        }

        @Override
        public void setText(Object object, CharSequence charSequence) {
        }

        @Override
        public void setTextSelection(Object object, int n2, int n3) {
        }

        @Override
        public void setTraversalAfter(Object object, View view) {
        }

        @Override
        public void setTraversalAfter(Object object, View view, int n2) {
        }

        @Override
        public void setTraversalBefore(Object object, View view) {
        }

        @Override
        public void setTraversalBefore(Object object, View view, int n2) {
        }

        @Override
        public void setViewIdResourceName(Object object, String string2) {
        }

        @Override
        public void setVisibleToUser(Object object, boolean bl) {
        }
    }

    public static class CollectionInfoCompat {
        public static final int SELECTION_MODE_MULTIPLE = 2;
        public static final int SELECTION_MODE_NONE = 0;
        public static final int SELECTION_MODE_SINGLE = 1;
        final Object mInfo;

        CollectionInfoCompat(Object object) {
            this.mInfo = object;
        }

        public static CollectionInfoCompat obtain(int n2, int n3, boolean bl) {
            return new CollectionInfoCompat(AccessibilityNodeInfoCompat.IMPL.obtainCollectionInfo(n2, n3, bl));
        }

        public static CollectionInfoCompat obtain(int n2, int n3, boolean bl, int n4) {
            return new CollectionInfoCompat(AccessibilityNodeInfoCompat.IMPL.obtainCollectionInfo(n2, n3, bl, n4));
        }

        public int getColumnCount() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionInfoColumnCount(this.mInfo);
        }

        public int getRowCount() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionInfoRowCount(this.mInfo);
        }

        public int getSelectionMode() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionInfoSelectionMode(this.mInfo);
        }

        public boolean isHierarchical() {
            return AccessibilityNodeInfoCompat.IMPL.isCollectionInfoHierarchical(this.mInfo);
        }
    }

    public static class CollectionItemInfoCompat {
        final Object mInfo;

        CollectionItemInfoCompat(Object object) {
            this.mInfo = object;
        }

        public static CollectionItemInfoCompat obtain(int n2, int n3, int n4, int n5, boolean bl) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfoCompat.IMPL.obtainCollectionItemInfo(n2, n3, n4, n5, bl));
        }

        public static CollectionItemInfoCompat obtain(int n2, int n3, int n4, int n5, boolean bl, boolean bl2) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfoCompat.IMPL.obtainCollectionItemInfo(n2, n3, n4, n5, bl, bl2));
        }

        public int getColumnIndex() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionItemColumnIndex(this.mInfo);
        }

        public int getColumnSpan() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionItemColumnSpan(this.mInfo);
        }

        public int getRowIndex() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionItemRowIndex(this.mInfo);
        }

        public int getRowSpan() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionItemRowSpan(this.mInfo);
        }

        public boolean isHeading() {
            return AccessibilityNodeInfoCompat.IMPL.isCollectionItemHeading(this.mInfo);
        }

        public boolean isSelected() {
            return AccessibilityNodeInfoCompat.IMPL.isCollectionItemSelected(this.mInfo);
        }
    }

    public static class RangeInfoCompat {
        public static final int RANGE_TYPE_FLOAT = 1;
        public static final int RANGE_TYPE_INT = 0;
        public static final int RANGE_TYPE_PERCENT = 2;
        final Object mInfo;

        RangeInfoCompat(Object object) {
            this.mInfo = object;
        }

        public static RangeInfoCompat obtain(int n2, float f2, float f3, float f4) {
            return new RangeInfoCompat(AccessibilityNodeInfoCompat.IMPL.obtainRangeInfo(n2, f2, f3, f4));
        }

        public float getCurrent() {
            return AccessibilityNodeInfoCompatKitKat.RangeInfo.getCurrent(this.mInfo);
        }

        public float getMax() {
            return AccessibilityNodeInfoCompatKitKat.RangeInfo.getMax(this.mInfo);
        }

        public float getMin() {
            return AccessibilityNodeInfoCompatKitKat.RangeInfo.getMin(this.mInfo);
        }

        public int getType() {
            return AccessibilityNodeInfoCompatKitKat.RangeInfo.getType(this.mInfo);
        }
    }

}

