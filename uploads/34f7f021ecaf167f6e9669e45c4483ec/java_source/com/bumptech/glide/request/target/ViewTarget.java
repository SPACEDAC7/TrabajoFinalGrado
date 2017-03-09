/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.graphics.Point
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.Log
 *  android.view.Display
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnPreDrawListener
 *  android.view.WindowManager
 */
package com.bumptech.glide.request.target;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.target.BaseTarget;
import com.bumptech.glide.request.target.SizeReadyCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class ViewTarget<T extends View, Z>
extends BaseTarget<Z> {
    private static final String TAG = "ViewTarget";
    private static boolean isTagUsedAtLeastOnce = false;
    private static Integer tagId = null;
    private final SizeDeterminer sizeDeterminer;
    protected final T view;

    public ViewTarget(T t2) {
        if (t2 == null) {
            throw new NullPointerException("View must not be null!");
        }
        this.view = t2;
        this.sizeDeterminer = new SizeDeterminer((View)t2);
    }

    private Object getTag() {
        if (tagId == null) {
            return this.view.getTag();
        }
        return this.view.getTag(tagId.intValue());
    }

    private void setTag(Object object) {
        if (tagId == null) {
            isTagUsedAtLeastOnce = true;
            this.view.setTag(object);
            return;
        }
        this.view.setTag(tagId.intValue(), object);
    }

    public static void setTagId(int n2) {
        if (tagId != null || isTagUsedAtLeastOnce) {
            throw new IllegalArgumentException("You cannot set the tag id more than once or change the tag id after the first request has been made");
        }
        tagId = n2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public Request getRequest() {
        Object object = this.getTag();
        Request request = null;
        if (object == null) return request;
        if (!(object instanceof Request)) throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
        return (Request)object;
    }

    @Override
    public void getSize(SizeReadyCallback sizeReadyCallback) {
        this.sizeDeterminer.getSize(sizeReadyCallback);
    }

    public T getView() {
        return this.view;
    }

    @Override
    public void setRequest(Request request) {
        this.setTag(request);
    }

    public String toString() {
        return "Target for: " + this.view;
    }

    private static class SizeDeterminer {
        private static final int PENDING_SIZE = 0;
        private final List<SizeReadyCallback> cbs = new ArrayList<SizeReadyCallback>();
        private Point displayDimens;
        private SizeDeterminerLayoutListener layoutListener;
        private final View view;

        public SizeDeterminer(View view) {
            this.view = view;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        private void checkCurrentDimens() {
            if (this.cbs.isEmpty()) {
                return;
            }
            int n2 = this.getViewWidthOrParam();
            int n3 = this.getViewHeightOrParam();
            if (!this.isSizeValid(n2)) return;
            if (!this.isSizeValid(n3)) return;
            this.notifyCbs(n2, n3);
            ViewTreeObserver viewTreeObserver = this.view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener((ViewTreeObserver.OnPreDrawListener)this.layoutListener);
            }
            this.layoutListener = null;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @TargetApi(value=13)
        private Point getDisplayDimens() {
            if (this.displayDimens != null) {
                return this.displayDimens;
            }
            Display display = ((WindowManager)this.view.getContext().getSystemService("window")).getDefaultDisplay();
            if (Build.VERSION.SDK_INT >= 13) {
                this.displayDimens = new Point();
                display.getSize(this.displayDimens);
                do {
                    return this.displayDimens;
                    break;
                } while (true);
            }
            this.displayDimens = new Point(display.getWidth(), display.getHeight());
            return this.displayDimens;
        }

        private int getSizeForParam(int n2, boolean bl) {
            if (n2 == -2) {
                Point point = this.getDisplayDimens();
                if (bl) {
                    return point.y;
                }
                return point.x;
            }
            return n2;
        }

        private int getViewHeightOrParam() {
            ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
            if (this.isSizeValid(this.view.getHeight())) {
                return this.view.getHeight();
            }
            if (layoutParams != null) {
                return this.getSizeForParam(layoutParams.height, true);
            }
            return 0;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private int getViewWidthOrParam() {
            int n2 = 0;
            ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
            if (this.isSizeValid(this.view.getWidth())) {
                return this.view.getWidth();
            }
            if (layoutParams == null) return n2;
            return this.getSizeForParam(layoutParams.width, false);
        }

        private boolean isSizeValid(int n2) {
            if (n2 > 0 || n2 == -2) {
                return true;
            }
            return false;
        }

        private void notifyCbs(int n2, int n3) {
            Iterator<SizeReadyCallback> iterator = this.cbs.iterator();
            while (iterator.hasNext()) {
                iterator.next().onSizeReady(n2, n3);
            }
            this.cbs.clear();
        }

        /*
         * Enabled aggressive block sorting
         */
        public void getSize(SizeReadyCallback sizeReadyCallback) {
            int n2 = this.getViewWidthOrParam();
            int n3 = this.getViewHeightOrParam();
            if (this.isSizeValid(n2) && this.isSizeValid(n3)) {
                sizeReadyCallback.onSizeReady(n2, n3);
                return;
            } else {
                if (!this.cbs.contains(sizeReadyCallback)) {
                    this.cbs.add(sizeReadyCallback);
                }
                if (this.layoutListener != null) return;
                {
                    sizeReadyCallback = this.view.getViewTreeObserver();
                    this.layoutListener = new SizeDeterminerLayoutListener(this);
                    sizeReadyCallback.addOnPreDrawListener((ViewTreeObserver.OnPreDrawListener)this.layoutListener);
                    return;
                }
            }
        }

        private static class SizeDeterminerLayoutListener
        implements ViewTreeObserver.OnPreDrawListener {
            private final WeakReference<SizeDeterminer> sizeDeterminerRef;

            public SizeDeterminerLayoutListener(SizeDeterminer sizeDeterminer) {
                this.sizeDeterminerRef = new WeakReference<SizeDeterminer>(sizeDeterminer);
            }

            public boolean onPreDraw() {
                SizeDeterminer sizeDeterminer;
                if (Log.isLoggable((String)"ViewTarget", (int)2)) {
                    Log.v((String)"ViewTarget", (String)("OnGlobalLayoutListener called listener=" + this));
                }
                if ((sizeDeterminer = this.sizeDeterminerRef.get()) != null) {
                    sizeDeterminer.checkCurrentDimens();
                }
                return true;
            }
        }

    }

}

