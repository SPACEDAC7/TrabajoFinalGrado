/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.TypedArray
 *  android.graphics.Canvas
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.view.View
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;

public class DividerItemDecoration
extends RecyclerView.ItemDecoration {
    private static final int[] ATTRS = new int[]{16843284};
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;
    private final Rect mBounds = new Rect();
    private Drawable mDivider;
    private int mOrientation;

    public DividerItemDecoration(Context context, int n2) {
        context = context.obtainStyledAttributes(ATTRS);
        this.mDivider = context.getDrawable(0);
        context.recycle();
        this.setOrientation(n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void drawHorizontal(Canvas canvas, RecyclerView recyclerView) {
        int n2;
        int n3;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            n3 = recyclerView.getPaddingTop();
            n2 = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), n3, recyclerView.getWidth() - recyclerView.getPaddingRight(), n2);
        } else {
            n3 = 0;
            n2 = recyclerView.getHeight();
        }
        int n4 = recyclerView.getChildCount();
        int n5 = 0;
        do {
            if (n5 >= n4) {
                canvas.restore();
                return;
            }
            View view = recyclerView.getChildAt(n5);
            recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(view, this.mBounds);
            int n6 = this.mBounds.right + Math.round(ViewCompat.getTranslationX(view));
            int n7 = this.mDivider.getIntrinsicWidth();
            this.mDivider.setBounds(n6 - n7, n3, n6, n2);
            this.mDivider.draw(canvas);
            ++n5;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void drawVertical(Canvas canvas, RecyclerView recyclerView) {
        int n2;
        int n3;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            n2 = recyclerView.getPaddingLeft();
            n3 = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(n2, recyclerView.getPaddingTop(), n3, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            n2 = 0;
            n3 = recyclerView.getWidth();
        }
        int n4 = recyclerView.getChildCount();
        int n5 = 0;
        do {
            if (n5 >= n4) {
                canvas.restore();
                return;
            }
            View view = recyclerView.getChildAt(n5);
            recyclerView.getDecoratedBoundsWithMargins(view, this.mBounds);
            int n6 = this.mBounds.bottom + Math.round(ViewCompat.getTranslationY(view));
            int n7 = this.mDivider.getIntrinsicHeight();
            this.mDivider.setBounds(n2, n6 - n7, n3, n6);
            this.mDivider.draw(canvas);
            ++n5;
        } while (true);
    }

    @Override
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            rect.set(0, 0, 0, this.mDivider.getIntrinsicHeight());
            return;
        }
        rect.set(0, 0, this.mDivider.getIntrinsicWidth(), 0);
    }

    @Override
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        if (this.mOrientation == 1) {
            this.drawVertical(canvas, recyclerView);
            return;
        }
        this.drawHorizontal(canvas, recyclerView);
    }

    public void setDrawable(@NonNull Drawable drawable2) {
        if (drawable2 == null) {
            throw new IllegalArgumentException("Drawable cannot be null.");
        }
        this.mDivider = drawable2;
    }

    public void setOrientation(int n2) {
        if (n2 != 0 && n2 != 1) {
            throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL");
        }
        this.mOrientation = n2;
    }
}

