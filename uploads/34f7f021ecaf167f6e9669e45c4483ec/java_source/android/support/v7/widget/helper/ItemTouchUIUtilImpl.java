/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Canvas
 *  android.view.View
 */
package android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.R;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchUIUtil;
import android.view.View;

class ItemTouchUIUtilImpl {
    ItemTouchUIUtilImpl() {
    }

    static class Gingerbread
    implements ItemTouchUIUtil {
        Gingerbread() {
        }

        private void draw(Canvas canvas, RecyclerView recyclerView, View view, float f2, float f3) {
            canvas.save();
            canvas.translate(f2, f3);
            recyclerView.drawChild(canvas, view, 0);
            canvas.restore();
        }

        @Override
        public void clearView(View view) {
            view.setVisibility(0);
        }

        @Override
        public void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f2, float f3, int n2, boolean bl) {
            if (n2 != 2) {
                this.draw(canvas, recyclerView, view, f2, f3);
            }
        }

        @Override
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, View view, float f2, float f3, int n2, boolean bl) {
            if (n2 == 2) {
                this.draw(canvas, recyclerView, view, f2, f3);
            }
        }

        @Override
        public void onSelected(View view) {
            view.setVisibility(4);
        }
    }

    static class Honeycomb
    implements ItemTouchUIUtil {
        Honeycomb() {
        }

        @Override
        public void clearView(View view) {
            ViewCompat.setTranslationX(view, 0.0f);
            ViewCompat.setTranslationY(view, 0.0f);
        }

        @Override
        public void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f2, float f3, int n2, boolean bl) {
            ViewCompat.setTranslationX(view, f2);
            ViewCompat.setTranslationY(view, f3);
        }

        @Override
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, View view, float f2, float f3, int n2, boolean bl) {
        }

        @Override
        public void onSelected(View view) {
        }
    }

    static class Lollipop
    extends Honeycomb {
        Lollipop() {
        }

        /*
         * Enabled aggressive block sorting
         */
        private float findMaxElevation(RecyclerView recyclerView, View view) {
            int n2 = recyclerView.getChildCount();
            float f2 = 0.0f;
            int n3 = 0;
            while (n3 < n2) {
                float f3;
                View view2 = recyclerView.getChildAt(n3);
                if (view2 == view) {
                    f3 = f2;
                } else {
                    float f4 = ViewCompat.getElevation(view2);
                    f3 = f2;
                    if (f4 > f2) {
                        f3 = f4;
                    }
                }
                ++n3;
                f2 = f3;
            }
            return f2;
        }

        @Override
        public void clearView(View view) {
            Object object = view.getTag(R.id.item_touch_helper_previous_elevation);
            if (object != null && object instanceof Float) {
                ViewCompat.setElevation(view, ((Float)object).floatValue());
            }
            view.setTag(R.id.item_touch_helper_previous_elevation, (Object)null);
            super.clearView(view);
        }

        @Override
        public void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f2, float f3, int n2, boolean bl) {
            if (bl && view.getTag(R.id.item_touch_helper_previous_elevation) == null) {
                float f4 = ViewCompat.getElevation(view);
                ViewCompat.setElevation(view, 1.0f + this.findMaxElevation(recyclerView, view));
                view.setTag(R.id.item_touch_helper_previous_elevation, (Object)Float.valueOf(f4));
            }
            super.onDraw(canvas, recyclerView, view, f2, f3, n2, bl);
        }
    }

}

