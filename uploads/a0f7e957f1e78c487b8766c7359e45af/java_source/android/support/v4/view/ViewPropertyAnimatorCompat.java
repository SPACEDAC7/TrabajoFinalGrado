/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.View
 *  android.view.animation.Interpolator
 */
package android.support.v4.view;

import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompatICS;
import android.support.v4.view.ViewPropertyAnimatorCompatJB;
import android.support.v4.view.ViewPropertyAnimatorCompatJellybeanMr2;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

public class ViewPropertyAnimatorCompat {
    static final ViewPropertyAnimatorCompatImpl IMPL;
    private static final String TAG = "ViewAnimatorCompat";
    private WeakReference<View> mView;

    static {
        int n2 = Build.VERSION.SDK_INT;
        IMPL = n2 >= 18 ? new JBMr2ViewPropertyAnimatorCompatImpl() : (n2 >= 16 ? new JBViewPropertyAnimatorCompatImpl() : (n2 >= 14 ? new ICSViewPropertyAnimatorCompatImpl() : new BaseViewPropertyAnimatorCompatImpl()));
    }

    ViewPropertyAnimatorCompat(View view) {
        this.mView = new WeakReference<View>(view);
    }

    public ViewPropertyAnimatorCompat alpha(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.alpha(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat alphaBy(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.alphaBy(view, f2);
        }
        return this;
    }

    public void cancel() {
        View view = this.mView.get();
        if (view != null) {
            IMPL.cancel(view);
        }
    }

    public long getDuration() {
        View view = this.mView.get();
        if (view != null) {
            return IMPL.getDuration(view);
        }
        return 0;
    }

    public Interpolator getInterpolator() {
        View view = this.mView.get();
        if (view != null) {
            return IMPL.getInterpolator(view);
        }
        return null;
    }

    public long getStartDelay() {
        View view = this.mView.get();
        if (view != null) {
            return IMPL.getStartDelay(view);
        }
        return 0;
    }

    public ViewPropertyAnimatorCompat rotation(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.rotation(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationBy(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.rotationBy(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationX(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.rotationX(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationXBy(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.rotationXBy(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationY(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.rotationY(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationYBy(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.rotationYBy(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleX(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.scaleX(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleXBy(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.scaleXBy(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleY(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.scaleY(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleYBy(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.scaleYBy(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setDuration(long l2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.setDuration(view, l2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setInterpolator(Interpolator interpolator) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.setInterpolator(view, interpolator);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setListener(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.setListener(view, viewPropertyAnimatorListener);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setStartDelay(long l2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.setStartDelay(view, l2);
        }
        return this;
    }

    public void start() {
        View view = this.mView.get();
        if (view != null) {
            IMPL.start(view);
        }
    }

    public ViewPropertyAnimatorCompat translationX(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.translationX(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationXBy(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.translationXBy(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationY(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.translationY(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationYBy(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.translationYBy(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat withEndAction(Runnable runnable) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.withEndAction(view, runnable);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat withLayer() {
        View view = this.mView.get();
        if (view != null) {
            IMPL.withLayer(view);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat withStartAction(Runnable runnable) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.withStartAction(view, runnable);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat x(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.x(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat xBy(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.xBy(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat y(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.y(view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat yBy(float f2) {
        View view = this.mView.get();
        if (view != null) {
            IMPL.yBy(view, f2);
        }
        return this;
    }

    static class BaseViewPropertyAnimatorCompatImpl
    implements ViewPropertyAnimatorCompatImpl {
        BaseViewPropertyAnimatorCompatImpl() {
        }

        @Override
        public void alpha(View view, float f2) {
        }

        @Override
        public void alphaBy(View view, float f2) {
        }

        @Override
        public void cancel(View view) {
        }

        @Override
        public long getDuration(View view) {
            return 0;
        }

        @Override
        public Interpolator getInterpolator(View view) {
            return null;
        }

        @Override
        public long getStartDelay(View view) {
            return 0;
        }

        @Override
        public void rotation(View view, float f2) {
        }

        @Override
        public void rotationBy(View view, float f2) {
        }

        @Override
        public void rotationX(View view, float f2) {
        }

        @Override
        public void rotationXBy(View view, float f2) {
        }

        @Override
        public void rotationY(View view, float f2) {
        }

        @Override
        public void rotationYBy(View view, float f2) {
        }

        @Override
        public void scaleX(View view, float f2) {
        }

        @Override
        public void scaleXBy(View view, float f2) {
        }

        @Override
        public void scaleY(View view, float f2) {
        }

        @Override
        public void scaleYBy(View view, float f2) {
        }

        @Override
        public void setDuration(View view, long l2) {
        }

        @Override
        public void setInterpolator(View view, Interpolator interpolator) {
        }

        @Override
        public void setListener(View view, ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        }

        @Override
        public void setStartDelay(View view, long l2) {
        }

        @Override
        public void start(View view) {
        }

        @Override
        public void translationX(View view, float f2) {
        }

        @Override
        public void translationXBy(View view, float f2) {
        }

        @Override
        public void translationY(View view, float f2) {
        }

        @Override
        public void translationYBy(View view, float f2) {
        }

        @Override
        public void withEndAction(View view, Runnable runnable) {
            runnable.run();
        }

        @Override
        public void withLayer(View view) {
        }

        @Override
        public void withStartAction(View view, Runnable runnable) {
            runnable.run();
        }

        @Override
        public void x(View view, float f2) {
        }

        @Override
        public void xBy(View view, float f2) {
        }

        @Override
        public void y(View view, float f2) {
        }

        @Override
        public void yBy(View view, float f2) {
        }
    }

    static class ICSViewPropertyAnimatorCompatImpl
    extends BaseViewPropertyAnimatorCompatImpl {
        ICSViewPropertyAnimatorCompatImpl() {
        }

        @Override
        public void alpha(View view, float f2) {
            ViewPropertyAnimatorCompatICS.alpha(view, f2);
        }

        @Override
        public void alphaBy(View view, float f2) {
            ViewPropertyAnimatorCompatICS.alphaBy(view, f2);
        }

        @Override
        public void cancel(View view) {
            ViewPropertyAnimatorCompatICS.cancel(view);
        }

        @Override
        public long getDuration(View view) {
            return ViewPropertyAnimatorCompatICS.getDuration(view);
        }

        @Override
        public long getStartDelay(View view) {
            return ViewPropertyAnimatorCompatICS.getStartDelay(view);
        }

        @Override
        public void rotation(View view, float f2) {
            ViewPropertyAnimatorCompatICS.rotation(view, f2);
        }

        @Override
        public void rotationBy(View view, float f2) {
            ViewPropertyAnimatorCompatICS.rotationBy(view, f2);
        }

        @Override
        public void rotationX(View view, float f2) {
            ViewPropertyAnimatorCompatICS.rotationX(view, f2);
        }

        @Override
        public void rotationXBy(View view, float f2) {
            ViewPropertyAnimatorCompatICS.rotationXBy(view, f2);
        }

        @Override
        public void rotationY(View view, float f2) {
            ViewPropertyAnimatorCompatICS.rotationY(view, f2);
        }

        @Override
        public void rotationYBy(View view, float f2) {
            ViewPropertyAnimatorCompatICS.rotationYBy(view, f2);
        }

        @Override
        public void scaleX(View view, float f2) {
            ViewPropertyAnimatorCompatICS.scaleX(view, f2);
        }

        @Override
        public void scaleXBy(View view, float f2) {
            ViewPropertyAnimatorCompatICS.scaleXBy(view, f2);
        }

        @Override
        public void scaleY(View view, float f2) {
            ViewPropertyAnimatorCompatICS.scaleY(view, f2);
        }

        @Override
        public void scaleYBy(View view, float f2) {
            ViewPropertyAnimatorCompatICS.scaleYBy(view, f2);
        }

        @Override
        public void setDuration(View view, long l2) {
            ViewPropertyAnimatorCompatICS.setDuration(view, l2);
        }

        @Override
        public void setInterpolator(View view, Interpolator interpolator) {
            ViewPropertyAnimatorCompatICS.setInterpolator(view, interpolator);
        }

        @Override
        public void setListener(View view, ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
            ViewPropertyAnimatorCompatICS.setListener(view, viewPropertyAnimatorListener);
        }

        @Override
        public void setStartDelay(View view, long l2) {
            ViewPropertyAnimatorCompatICS.setStartDelay(view, l2);
        }

        @Override
        public void start(View view) {
            ViewPropertyAnimatorCompatICS.start(view);
        }

        @Override
        public void translationX(View view, float f2) {
            ViewPropertyAnimatorCompatICS.translationX(view, f2);
        }

        @Override
        public void translationXBy(View view, float f2) {
            ViewPropertyAnimatorCompatICS.translationXBy(view, f2);
        }

        @Override
        public void translationY(View view, float f2) {
            ViewPropertyAnimatorCompatICS.translationY(view, f2);
        }

        @Override
        public void translationYBy(View view, float f2) {
            ViewPropertyAnimatorCompatICS.translationYBy(view, f2);
        }

        @Override
        public void withEndAction(View view, final Runnable runnable) {
            this.setListener(view, new ViewPropertyAnimatorListener(){

                @Override
                public void onAnimationCancel(View view) {
                }

                @Override
                public void onAnimationEnd(View view) {
                    runnable.run();
                    ICSViewPropertyAnimatorCompatImpl.this.setListener(view, null);
                }

                @Override
                public void onAnimationStart(View view) {
                }
            });
        }

        @Override
        public void withLayer(View view) {
            this.setListener(view, new ViewPropertyAnimatorListener(ViewCompat.getLayerType(view)){
                final /* synthetic */ int val$currentLayerType;

                @Override
                public void onAnimationCancel(View view) {
                }

                @Override
                public void onAnimationEnd(View view) {
                    ViewCompat.setLayerType(view, this.val$currentLayerType, null);
                    ICSViewPropertyAnimatorCompatImpl.this.setListener(view, null);
                }

                @Override
                public void onAnimationStart(View view) {
                    ViewCompat.setLayerType(view, 2, null);
                }
            });
        }

        @Override
        public void withStartAction(View view, final Runnable runnable) {
            this.setListener(view, new ViewPropertyAnimatorListener(){

                @Override
                public void onAnimationCancel(View view) {
                }

                @Override
                public void onAnimationEnd(View view) {
                }

                @Override
                public void onAnimationStart(View view) {
                    runnable.run();
                    ICSViewPropertyAnimatorCompatImpl.this.setListener(view, null);
                }
            });
        }

        @Override
        public void x(View view, float f2) {
            ViewPropertyAnimatorCompatICS.x(view, f2);
        }

        @Override
        public void xBy(View view, float f2) {
            ViewPropertyAnimatorCompatICS.xBy(view, f2);
        }

        @Override
        public void y(View view, float f2) {
            ViewPropertyAnimatorCompatICS.y(view, f2);
        }

        @Override
        public void yBy(View view, float f2) {
            ViewPropertyAnimatorCompatICS.yBy(view, f2);
        }

    }

    static class JBMr2ViewPropertyAnimatorCompatImpl
    extends JBViewPropertyAnimatorCompatImpl {
        JBMr2ViewPropertyAnimatorCompatImpl() {
        }

        @Override
        public Interpolator getInterpolator(View view) {
            return ViewPropertyAnimatorCompatJellybeanMr2.getInterpolator(view);
        }
    }

    static class JBViewPropertyAnimatorCompatImpl
    extends ICSViewPropertyAnimatorCompatImpl {
        JBViewPropertyAnimatorCompatImpl() {
        }

        @Override
        public void withEndAction(View view, Runnable runnable) {
            ViewPropertyAnimatorCompatJB.withEndAction(view, runnable);
        }

        @Override
        public void withLayer(View view) {
            ViewPropertyAnimatorCompatJB.withLayer(view);
        }

        @Override
        public void withStartAction(View view, Runnable runnable) {
            ViewPropertyAnimatorCompatJB.withStartAction(view, runnable);
        }
    }

    static interface ViewPropertyAnimatorCompatImpl {
        public void alpha(View var1, float var2);

        public void alphaBy(View var1, float var2);

        public void cancel(View var1);

        public long getDuration(View var1);

        public Interpolator getInterpolator(View var1);

        public long getStartDelay(View var1);

        public void rotation(View var1, float var2);

        public void rotationBy(View var1, float var2);

        public void rotationX(View var1, float var2);

        public void rotationXBy(View var1, float var2);

        public void rotationY(View var1, float var2);

        public void rotationYBy(View var1, float var2);

        public void scaleX(View var1, float var2);

        public void scaleXBy(View var1, float var2);

        public void scaleY(View var1, float var2);

        public void scaleYBy(View var1, float var2);

        public void setDuration(View var1, long var2);

        public void setInterpolator(View var1, Interpolator var2);

        public void setListener(View var1, ViewPropertyAnimatorListener var2);

        public void setStartDelay(View var1, long var2);

        public void start(View var1);

        public void translationX(View var1, float var2);

        public void translationXBy(View var1, float var2);

        public void translationY(View var1, float var2);

        public void translationYBy(View var1, float var2);

        public void withEndAction(View var1, Runnable var2);

        public void withLayer(View var1);

        public void withStartAction(View var1, Runnable var2);

        public void x(View var1, float var2);

        public void xBy(View var1, float var2);

        public void y(View var1, float var2);

        public void yBy(View var1, float var2);
    }

}

