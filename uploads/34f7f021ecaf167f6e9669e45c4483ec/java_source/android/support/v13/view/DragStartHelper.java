/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Point
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$OnLongClickListener
 *  android.view.View$OnTouchListener
 */
package android.support.v13.view;

import android.graphics.Point;
import android.support.v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.View;

public class DragStartHelper {
    private int mLastTouchX;
    private int mLastTouchY;
    private final OnDragStartListener mListener;
    private final View.OnLongClickListener mLongClickListener;
    private final View.OnTouchListener mTouchListener;
    private final View mView;

    public DragStartHelper(View view, OnDragStartListener onDragStartListener) {
        this.mLongClickListener = new View.OnLongClickListener(){

            public boolean onLongClick(View view) {
                return DragStartHelper.this.onLongClick(view);
            }
        };
        this.mTouchListener = new View.OnTouchListener(){

            public boolean onTouch(View view, MotionEvent motionEvent) {
                return DragStartHelper.this.onTouch(view, motionEvent);
            }
        };
        this.mView = view;
        this.mListener = onDragStartListener;
    }

    public void attach() {
        this.mView.setOnLongClickListener(this.mLongClickListener);
        this.mView.setOnTouchListener(this.mTouchListener);
    }

    public void detach() {
        this.mView.setOnLongClickListener(null);
        this.mView.setOnTouchListener(null);
    }

    public void getTouchPosition(Point point) {
        point.set(this.mLastTouchX, this.mLastTouchY);
    }

    public boolean onLongClick(View view) {
        return this.mListener.onDragStart(view, this);
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
            this.mLastTouchX = (int)motionEvent.getX();
            this.mLastTouchY = (int)motionEvent.getY();
        }
        if (motionEvent.getAction() == 2 && MotionEventCompat.isFromSource(motionEvent, 8194) && (MotionEventCompat.getButtonState(motionEvent) & 1) != 0) {
            return this.mListener.onDragStart(view, this);
        }
        return false;
    }

    public static interface OnDragStartListener {
        public boolean onDragStart(View var1, DragStartHelper var2);
    }

}

