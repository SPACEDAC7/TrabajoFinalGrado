/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.AnimatorListenerAdapter
 *  android.animation.AnimatorSet
 *  android.animation.ObjectAnimator
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.ViewParent
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnGlobalLayoutListener
 */
package com.buzzfeed.android.vcr.toolbox;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.support.annotation.CallSuper;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.buzzfeed.android.vcr.toolbox.MaskItemDecoration;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class ImmersiveModeHelper {
    public static final long DEFAULT_ANIMATION_DURATION = 500;
    private static final String TAG = ImmersiveModeHelper.class.getSimpleName();
    @Nullable
    private AnimatorSet mAnimatorSet;
    private InternalChildDrawingOrderCallback mChildDrawingOrderCallback;
    private State mCurState = State.NORMAL;
    private final AnimatorListenerAdapter mEnterAnimatorListener;
    private final AnimatorListenerAdapter mExitAnimatorListener;
    private ImmersiveTransitionCallback mImmersiveTransitionCallback;
    private MaskItemDecoration mMaskItemDecoration;
    private InternalOnItemTouchListener mOnItemTouchListener;
    private InternalScrollListener mOnScrollListener;
    private RecyclerView mRecyclerView;
    private int mSelectedIndex;
    @Nullable
    private View mSelectedView;
    private CopyOnWriteArrayList<SelectionChangeListener> mSelectionChangeListeners;
    private float mTargetTranslation;

    public ImmersiveModeHelper() {
        this.mChildDrawingOrderCallback = new InternalChildDrawingOrderCallback();
        this.mOnItemTouchListener = new InternalOnItemTouchListener();
        this.mOnScrollListener = new InternalScrollListener();
        this.mEnterAnimatorListener = new AnimatorListenerAdapter(){

            public void onAnimationEnd(Animator animator2) {
                ImmersiveModeHelper.this.mAnimatorSet = null;
                if (ImmersiveModeHelper.this.mCurState == State.ENTERING_IMMERSIVE_MODE) {
                    ImmersiveModeHelper.this.mCurState = State.IMMERSIVE_MODE;
                }
            }
        };
        this.mExitAnimatorListener = new AnimatorListenerAdapter(){

            public void onAnimationEnd(Animator animator2) {
                ImmersiveModeHelper.this.mAnimatorSet = null;
                if (ImmersiveModeHelper.this.mCurState == State.EXITING_IMMERSIVE_MODE) {
                    ImmersiveModeHelper.this.mCurState = State.NORMAL;
                    ImmersiveModeHelper.this.mSelectedView = null;
                    ImmersiveModeHelper.this.mSelectedIndex = -1;
                    ImmersiveModeHelper.this.mMaskItemDecoration.setVisibleChild(null);
                }
            }
        };
        this.mSelectionChangeListeners = new CopyOnWriteArrayList();
    }

    private void animateSelectedView(boolean bl, float f2, Animator.AnimatorListener animatorListener) {
        int n2 = 0;
        if (this.mSelectedView == null) {
            return;
        }
        if (this.mAnimatorSet != null) {
            this.mAnimatorSet.cancel();
        }
        this.mTargetTranslation = f2;
        ArrayList<Animator> arrayList = new ArrayList<Animator>();
        ObjectAnimator objectAnimator = ObjectAnimator.ofFloat((Object)this.mSelectedView, (String)"translationY", (float[])new float[]{this.mSelectedView.getTranslationY(), f2});
        objectAnimator.setDuration(500);
        arrayList.add((Animator)objectAnimator);
        if (bl) {
            this.mMaskItemDecoration.setVisibleChild(this.mSelectedView);
        }
        if (bl) {
            n2 = 255;
        }
        arrayList.add(this.mMaskItemDecoration.setupAnimator(n2));
        this.onCreateAnimators(this.getSelectedViewHolder(), bl, arrayList);
        this.mAnimatorSet = new AnimatorSet();
        this.mAnimatorSet.playTogether(arrayList);
        this.mAnimatorSet.addListener(animatorListener);
        this.mAnimatorSet.start();
    }

    private void animateSelectedViewToImmersiveMode() {
        if (this.mSelectedView == null || this.mSelectedView.getParent() == null || this.isImmersiveMode()) {
            return;
        }
        this.mCurState = State.ENTERING_IMMERSIVE_MODE;
        float f2 = this.calculateImmersiveTranslationY(this.mSelectedView);
        ((View)this.mSelectedView.getParent()).invalidate();
        this.animateSelectedView(true, f2, (Animator.AnimatorListener)this.mEnterAnimatorListener);
    }

    private void animateSelectedViewToNormalState() {
        if (this.mSelectedView == null || this.mCurState == State.NORMAL || this.mCurState == State.EXITING_IMMERSIVE_MODE) {
            return;
        }
        this.mCurState = State.EXITING_IMMERSIVE_MODE;
        this.animateSelectedView(false, 0.0f, (Animator.AnimatorListener)this.mExitAnimatorListener);
    }

    private void notifyOnViewHolderSelectionChanged(View view, boolean bl) {
        this.onViewHolderSelectionChanged(this.mRecyclerView.getChildViewHolder(view), bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onViewSelectionChanged(View view, int n2, boolean bl) {
        if (bl) {
            this.mSelectedView = view;
            this.mSelectedIndex = n2;
            this.animateSelectedViewToImmersiveMode();
        } else {
            this.animateSelectedViewToNormalState();
        }
        this.notifyOnViewHolderSelectionChanged(view, bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void restoreImmersiveMode(final int n2) {
        if (this.mRecyclerView.getChildCount() != 0) {
            this.restoreImmersiveWithViewHolder(this.mRecyclerView.findViewHolderForAdapterPosition(n2));
            return;
        } else {
            ViewTreeObserver viewTreeObserver = this.mRecyclerView.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) return;
            {
                viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener(){

                    public void onGlobalLayout() {
                        ImmersiveModeHelper.this.mRecyclerView.getViewTreeObserver().removeOnGlobalLayoutListener((ViewTreeObserver.OnGlobalLayoutListener)this);
                        RecyclerView.ViewHolder viewHolder = ImmersiveModeHelper.this.mRecyclerView.findViewHolderForAdapterPosition(n2);
                        ImmersiveModeHelper.this.restoreImmersiveWithViewHolder(viewHolder);
                    }
                });
                return;
            }
        }
    }

    private void restoreImmersiveWithViewHolder(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder == null || viewHolder.itemView == null) {
            LogUtil.w(TAG, "Could not restore immersive mode, view was null.");
            return;
        }
        this.mSelectedView = viewHolder.itemView;
        this.mSelectedIndex = this.mRecyclerView.indexOfChild(this.mSelectedView);
        this.mTargetTranslation = this.calculateImmersiveTranslationY(this.mSelectedView);
        this.mSelectedView.setTranslationY(this.mTargetTranslation);
        this.mCurState = State.IMMERSIVE_MODE;
        this.mMaskItemDecoration.setVisibleChild(this.mSelectedView);
        this.notifyOnViewHolderSelectionChanged(this.mSelectedView, true);
    }

    public void addSelectionChangeListener(SelectionChangeListener selectionChangeListener) {
        if (selectionChangeListener != null && !this.mSelectionChangeListeners.contains(selectionChangeListener)) {
            this.mSelectionChangeListeners.add(selectionChangeListener);
        }
    }

    public void attachToRecyclerView(RecyclerView recyclerView) {
        this.attachToRecyclerViewImmersiveMode(recyclerView, -1);
    }

    public void attachToRecyclerViewImmersiveMode(RecyclerView recyclerView, int n2) {
        this.mRecyclerView = recyclerView;
        this.mRecyclerView.setChildDrawingOrderCallback(this.mChildDrawingOrderCallback);
        this.mRecyclerView.addOnItemTouchListener(this.mOnItemTouchListener);
        this.mRecyclerView.addOnScrollListener(this.mOnScrollListener);
        if (n2 == -1) {
            this.mMaskItemDecoration = new MaskItemDecoration();
            this.mRecyclerView.addItemDecoration(this.mMaskItemDecoration);
            return;
        }
        this.mMaskItemDecoration = new MaskItemDecoration(255, true);
        this.mRecyclerView.addItemDecoration(this.mMaskItemDecoration);
        this.restoreImmersiveMode(n2);
    }

    protected float calculateImmersiveTranslationY(View view) {
        float f2 = (float)((View)view.getParent()).getHeight() / 2.0f;
        float f3 = (float)view.getHeight() / 2.0f;
        f2 = f3 = f2 - ((float)view.getTop() + f3);
        if (this.mImmersiveTransitionCallback != null) {
            f2 = this.mImmersiveTransitionCallback.onGetImmersiveTranslationY(this.getSelectedViewHolder(), f3);
        }
        return f2;
    }

    public void detachFromRecyclerView() {
        if (this.mAnimatorSet != null) {
            this.mAnimatorSet.cancel();
            this.mAnimatorSet = null;
        }
        if (this.mRecyclerView != null) {
            this.mRecyclerView.setChildDrawingOrderCallback(null);
            this.mRecyclerView.removeItemDecoration(this.mMaskItemDecoration);
            this.mRecyclerView.removeOnItemTouchListener(this.mOnItemTouchListener);
            this.mRecyclerView.removeOnScrollListener(this.mOnScrollListener);
            this.mRecyclerView = null;
        }
        this.mSelectedView = null;
        this.mSelectedIndex = -1;
        this.mMaskItemDecoration = null;
    }

    @Nullable
    public RecyclerView.ViewHolder getSelectedViewHolder() {
        if (this.mSelectedView != null && this.mRecyclerView != null) {
            return this.mRecyclerView.getChildViewHolder(this.mSelectedView);
        }
        return null;
    }

    public boolean isAnimating() {
        if (this.mAnimatorSet != null && (this.mAnimatorSet.isRunning() || this.mAnimatorSet.isStarted())) {
            return true;
        }
        return false;
    }

    public boolean isImmersiveMode() {
        if (this.mCurState == State.IMMERSIVE_MODE || this.mCurState == State.ENTERING_IMMERSIVE_MODE) {
            return true;
        }
        return false;
    }

    @CallSuper
    protected void onCreateAnimators(RecyclerView.ViewHolder viewHolder, boolean bl, List<Animator> list) {
        if (this.mImmersiveTransitionCallback != null) {
            this.mImmersiveTransitionCallback.onCreateAnimators(viewHolder, bl, list);
        }
    }

    @CallSuper
    protected void onViewHolderSelectionChanged(RecyclerView.ViewHolder viewHolder, boolean bl) {
        Iterator<SelectionChangeListener> iterator = this.mSelectionChangeListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onViewHolderSelectionChanged(viewHolder, bl);
        }
    }

    public void removeSelectionChangeListener(SelectionChangeListener selectionChangeListener) {
        if (selectionChangeListener != null) {
            this.mSelectionChangeListeners.remove(selectionChangeListener);
        }
    }

    public void selectPosition(int n2) {
        if (this.mRecyclerView == null || n2 < 0 || this.isAnimating()) {
            LogUtil.w(TAG, "Could not select position " + n2);
            return;
        }
        RecyclerView.ViewHolder viewHolder = this.mRecyclerView.findViewHolderForAdapterPosition(n2);
        if (viewHolder != null && viewHolder.itemView != null) {
            this.selectView(viewHolder.itemView);
            return;
        }
        LogUtil.w(TAG, "Could not select position " + n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void selectView(View view) {
        if (this.mRecyclerView == null || view == null || this.isAnimating()) {
            LogUtil.w(TAG, "Could not select view");
            return;
        }
        if (this.isImmersiveMode()) {
            if (this.mSelectedView != view) return;
            {
                this.onViewSelectionChanged(this.mSelectedView, this.mSelectedIndex, false);
                return;
            }
        }
        int n2 = this.mRecyclerView.indexOfChild(view);
        if (n2 >= 0) {
            this.onViewSelectionChanged(view, n2, true);
            return;
        }
        LogUtil.w(TAG, "Could not select view");
    }

    public void setImmersiveModeListener(ImmersiveTransitionCallback immersiveTransitionCallback) {
        this.mImmersiveTransitionCallback = immersiveTransitionCallback;
    }

    public static interface ImmersiveTransitionCallback {
        public void onCreateAnimators(RecyclerView.ViewHolder var1, boolean var2, List<Animator> var3);

        public float onGetImmersiveTranslationY(RecyclerView.ViewHolder var1, float var2);
    }

    private class InternalChildDrawingOrderCallback
    implements RecyclerView.ChildDrawingOrderCallback {
        private int mNextChildIndexToRender;

        private InternalChildDrawingOrderCallback() {
        }

        @Override
        public int onGetChildDrawingOrder(int n2, int n3) {
            if (ImmersiveModeHelper.this.mCurState == State.NORMAL) {
                return n3;
            }
            if (n3 == n2 - 1) {
                this.mNextChildIndexToRender = 0;
                return ImmersiveModeHelper.this.mSelectedIndex;
            }
            if (this.mNextChildIndexToRender == ImmersiveModeHelper.this.mSelectedIndex) {
                ++this.mNextChildIndexToRender;
            }
            n2 = this.mNextChildIndexToRender;
            this.mNextChildIndexToRender = n2 + 1;
            return n2;
        }
    }

    private class InternalOnItemTouchListener
    implements RecyclerView.OnItemTouchListener {
        private InternalOnItemTouchListener() {
        }

        private boolean isViewHit(View view, MotionEvent motionEvent) {
            float f2 = motionEvent.getX();
            float f3 = motionEvent.getY();
            float f4 = ViewCompat.getTranslationX(view);
            float f5 = ViewCompat.getTranslationY(view);
            if (f2 >= (float)view.getLeft() + f4 && f2 <= (float)view.getRight() + f4 && f3 >= (float)view.getTop() + f5 && f3 <= (float)view.getBottom() + f5) {
                return true;
            }
            return false;
        }

        @Override
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            if (ImmersiveModeHelper.this.mCurState != State.NORMAL) {
                ImmersiveModeHelper.this.mRecyclerView.requestDisallowInterceptTouchEvent(true);
                if (!this.isViewHit(ImmersiveModeHelper.this.mSelectedView, motionEvent)) {
                    return true;
                }
            } else {
                ImmersiveModeHelper.this.mRecyclerView.requestDisallowInterceptTouchEvent(false);
            }
            return false;
        }

        @Override
        public void onRequestDisallowInterceptTouchEvent(boolean bl) {
        }

        @Override
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        }
    }

    private class InternalScrollListener
    extends RecyclerView.OnScrollListener {
        private InternalScrollListener() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int n2) {
            if (n2 != 0 && ImmersiveModeHelper.this.isImmersiveMode() && ImmersiveModeHelper.this.mSelectedView != null) {
                ImmersiveModeHelper.this.onViewSelectionChanged(ImmersiveModeHelper.this.mSelectedView, ImmersiveModeHelper.this.mSelectedIndex, false);
            }
        }
    }

    public static interface SelectionChangeListener {
        public void onViewHolderSelectionChanged(RecyclerView.ViewHolder var1, boolean var2);
    }

    private static enum State {
        NORMAL,
        ENTERING_IMMERSIVE_MODE,
        EXITING_IMMERSIVE_MODE,
        IMMERSIVE_MODE;
        

        private State() {
        }
    }

}

