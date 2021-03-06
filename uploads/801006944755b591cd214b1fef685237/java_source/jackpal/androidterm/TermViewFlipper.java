/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Canvas
 *  android.graphics.Rect
 *  android.os.Handler
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.Toast
 *  android.widget.ViewFlipper
 */
package jackpal.androidterm;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.Toast;
import android.widget.ViewFlipper;
import jackpal.androidterm.GenericTermSession;
import jackpal.androidterm.compat.AndroidCompat;
import jackpal.androidterm.emulatorview.EmulatorView;
import jackpal.androidterm.emulatorview.TermSession;
import jackpal.androidterm.emulatorview.UpdateCallback;
import jackpal.androidterm.util.TermSettings;
import java.util.Iterator;
import java.util.LinkedList;

public class TermViewFlipper
extends ViewFlipper
implements Iterable<View> {
    private static final int SCREEN_CHECK_PERIOD = 1000;
    private LinkedList<UpdateCallback> callbacks;
    private Context context;
    private Runnable mCheckSize;
    private FrameLayout.LayoutParams mChildParams;
    private int mCurHeight;
    private int mCurWidth;
    private final Handler mHandler;
    private boolean mRedoLayout;
    private boolean mStatusBarVisible;
    private Toast mToast;
    private Rect mVisibleRect;
    private Rect mWindowRect;
    private final boolean mbPollForWindowSizeChange;

    public TermViewFlipper(Context context) {
        boolean bl = false;
        super(context);
        this.mStatusBarVisible = false;
        this.mVisibleRect = new Rect();
        this.mWindowRect = new Rect();
        this.mChildParams = null;
        this.mRedoLayout = false;
        if (AndroidCompat.SDK < 8) {
            bl = true;
        }
        this.mbPollForWindowSizeChange = bl;
        this.mHandler = new Handler();
        this.mCheckSize = new Runnable(){

            @Override
            public void run() {
                TermViewFlipper.this.adjustChildSize();
                TermViewFlipper.this.mHandler.postDelayed((Runnable)this, 1000);
            }
        };
        this.commonConstructor(context);
    }

    public TermViewFlipper(Context context, AttributeSet attributeSet) {
        boolean bl = false;
        super(context, attributeSet);
        this.mStatusBarVisible = false;
        this.mVisibleRect = new Rect();
        this.mWindowRect = new Rect();
        this.mChildParams = null;
        this.mRedoLayout = false;
        if (AndroidCompat.SDK < 8) {
            bl = true;
        }
        this.mbPollForWindowSizeChange = bl;
        this.mHandler = new Handler();
        this.mCheckSize = new ;
        this.commonConstructor(context);
    }

    private void adjustChildSize() {
        this.updateVisibleRect();
        Object object = this.mVisibleRect;
        int n = object.width();
        int n2 = object.height();
        if (this.mCurWidth != n || this.mCurHeight != n2) {
            this.mCurWidth = n;
            this.mCurHeight = n2;
            object = this.mChildParams;
            object.width = n;
            object.height = n2;
            Iterator<View> iterator = this.iterator();
            while (iterator.hasNext()) {
                this.updateViewLayout(iterator.next(), (ViewGroup.LayoutParams)object);
            }
            this.mRedoLayout = true;
            object = (EmulatorView)this.getCurrentView();
            if (object != null) {
                object.updateSize(false);
            }
        }
    }

    private void commonConstructor(Context context) {
        this.context = context;
        this.callbacks = new LinkedList();
        this.updateVisibleRect();
        context = this.mVisibleRect;
        this.mChildParams = new FrameLayout.LayoutParams(context.width(), context.height(), 51);
    }

    private void notifyChange() {
        Iterator<UpdateCallback> iterator = this.callbacks.iterator();
        while (iterator.hasNext()) {
            iterator.next().onUpdate();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void showTitle() {
        Object object;
        TermSession termSession;
        String string2;
        if (this.getChildCount() == 0 || (object = (EmulatorView)this.getCurrentView()) == null || (termSession = object.getTermSession()) == null) {
            return;
        }
        object = string2 = this.context.getString(2131296398, new Object[]{this.getDisplayedChild() + 1});
        if (termSession instanceof GenericTermSession) {
            object = ((GenericTermSession)termSession).getTitle(string2);
        }
        if (this.mToast == null) {
            this.mToast = Toast.makeText((Context)this.context, (CharSequence)object, (int)0);
            this.mToast.setGravity(17, 0, 0);
        } else {
            this.mToast.setText((CharSequence)object);
        }
        this.mToast.show();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateVisibleRect() {
        Rect rect = this.mVisibleRect;
        Rect rect2 = this.mWindowRect;
        this.getGlobalVisibleRect(rect);
        this.getWindowVisibleDisplayFrame(rect2);
        if (!this.mStatusBarVisible) {
            rect2.top = 0;
        }
        if (rect.width() == 0 && rect.height() == 0) {
            rect.left = rect2.left;
            rect.top = rect2.top;
        } else {
            if (rect.left < rect2.left) {
                rect.left = rect2.left;
            }
            if (rect.top < rect2.top) {
                rect.top = rect2.top;
            }
        }
        rect.right = rect2.right;
        rect.bottom = rect2.bottom;
    }

    public void addCallback(UpdateCallback updateCallback) {
        this.callbacks.add(updateCallback);
    }

    public void addView(View view) {
        super.addView(view, (ViewGroup.LayoutParams)this.mChildParams);
    }

    public void addView(View view, int n) {
        super.addView(view, n, (ViewGroup.LayoutParams)this.mChildParams);
    }

    @Override
    public Iterator<View> iterator() {
        return new ViewFlipperIterator();
    }

    protected void onDraw(Canvas canvas) {
        if (this.mRedoLayout) {
            this.requestLayout();
            this.mRedoLayout = false;
        }
        super.onDraw(canvas);
    }

    protected void onMeasure(int n, int n2) {
        this.adjustChildSize();
        super.onMeasure(n, n2);
    }

    public void onPause() {
        if (this.mbPollForWindowSizeChange) {
            this.mHandler.removeCallbacks(this.mCheckSize);
        }
        this.pauseCurrentView();
    }

    public void onResume() {
        if (this.mbPollForWindowSizeChange) {
            this.mCheckSize.run();
        }
        this.resumeCurrentView();
    }

    public void pauseCurrentView() {
        EmulatorView emulatorView = (EmulatorView)this.getCurrentView();
        if (emulatorView == null) {
            return;
        }
        emulatorView.onPause();
    }

    public void removeCallback(UpdateCallback updateCallback) {
        this.callbacks.remove(updateCallback);
    }

    public void resumeCurrentView() {
        EmulatorView emulatorView = (EmulatorView)this.getCurrentView();
        if (emulatorView == null) {
            return;
        }
        emulatorView.onResume();
        emulatorView.requestFocus();
    }

    public void setDisplayedChild(int n) {
        this.pauseCurrentView();
        super.setDisplayedChild(n);
        this.showTitle();
        this.resumeCurrentView();
        this.notifyChange();
    }

    public void showNext() {
        this.pauseCurrentView();
        super.showNext();
        this.showTitle();
        this.resumeCurrentView();
        this.notifyChange();
    }

    public void showPrevious() {
        this.pauseCurrentView();
        super.showPrevious();
        this.showTitle();
        this.resumeCurrentView();
        this.notifyChange();
    }

    public void updatePrefs(TermSettings termSettings) {
        boolean bl = termSettings.showStatusBar();
        this.setBackgroundColor(termSettings.getColorScheme()[1]);
        this.mStatusBarVisible = bl;
    }

    class ViewFlipperIterator
    implements Iterator<View> {
        int pos;

        ViewFlipperIterator() {
            this.pos = 0;
        }

        @Override
        public boolean hasNext() {
            if (this.pos < TermViewFlipper.this.getChildCount()) {
                return true;
            }
            return false;
        }

        @Override
        public View next() {
            TermViewFlipper termViewFlipper = TermViewFlipper.this;
            int n = this.pos;
            this.pos = n + 1;
            return termViewFlipper.getChildAt(n);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

}

