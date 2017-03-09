/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.Point
 *  android.os.Handler
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.animation.Animation
 *  android.view.animation.AnimationUtils
 *  android.widget.ImageView
 *  android.widget.RelativeLayout
 *  android.widget.RelativeLayout$LayoutParams
 */
package com.buzzfeed.buzzcat;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.buzzfeed.buzzcat.JoystickDirection;
import com.buzzfeed.buzzcat.R;
import com.buzzfeed.buzzcat.RainbowPainter;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Random;
import java.util.concurrent.ArrayBlockingQueue;

public class SnakeGameBoardView
extends RelativeLayout {
    private static final int INSANE_LEVEL_SPEED_INCREASE = 10;
    private static final int INSANE_LEVEL_UP_DIFFICULTY_MOD = 5;
    private static final int MAX_PENDING_POINTS = 5;
    private static Random mRandom = new Random();
    private final int INITIAL_TAIL = 7;
    private int mBottomMax;
    private int mCurrentScore = 0;
    private Point mCurrentTargetPoint;
    private Handler mHandler;
    private boolean mIsGameOver = true;
    private boolean mIsInitialized = false;
    private boolean mIsInsaneLevel = false;
    private boolean mIsPaused = false;
    private int mPadding;
    private RainbowPainter mPainter;
    private SnakeGameBoardParent mParent;
    private LimitedQueue<PointAndDirection> mPastPoints;
    private Queue<JoystickDirection> mPendingPoints;
    private int mRightMax;
    private ImageView mSnake;
    private int mSpeed = 0;
    private int[] mSpeedDifficulties;
    Runnable mStatusChecker;
    private ImageView mTarget;

    public SnakeGameBoardView(Context context) {
        super(context);
        this.mStatusChecker = new Runnable(){

            @Override
            public void run() {
                if (SnakeGameBoardView.this.mIsGameOver || SnakeGameBoardView.this.mIsPaused) {
                    return;
                }
                SnakeGameBoardView.this.onUpdate();
                SnakeGameBoardView.this.mHandler.postDelayed(SnakeGameBoardView.this.mStatusChecker, (long)SnakeGameBoardView.this.mSpeed);
            }
        };
        this.init();
    }

    public SnakeGameBoardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mStatusChecker = new ;
        this.init();
    }

    public SnakeGameBoardView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.mStatusChecker = new ;
        this.init();
    }

    private void checkScore() {
        PointAndDirection pointAndDirection = this.mPastPoints.peek();
        if (this.didCollideWithTarget(pointAndDirection.getPoint().x, pointAndDirection.getPoint().y)) {
            ++this.mCurrentScore;
            this.mParent.updateScore(this.mCurrentScore);
            this.onScoreUp();
            this.moveTarget();
            if (this.mIsInsaneLevel && this.mCurrentScore % 5 == 0) {
                this.mSpeed -= 10;
            }
        }
    }

    private boolean didCollideWithBorder(int n2, int n3) {
        if (n2 < 0 || n2 > this.mRightMax || n3 < 0 || n3 > this.mBottomMax) {
            return true;
        }
        return false;
    }

    private boolean didCollideWithTail(int n2, int n3) {
        for (PointAndDirection pointAndDirection : this.mPastPoints) {
            if (pointAndDirection.getPoint().x != n2 || pointAndDirection.getPoint().y != n3) continue;
            return true;
        }
        return false;
    }

    private boolean didCollideWithTarget(int n2, int n3) {
        if (this.mCurrentTargetPoint != null && this.mCurrentTargetPoint.x == n2 && this.mCurrentTargetPoint.y == n3) {
            return true;
        }
        return false;
    }

    private void drawTail(Canvas canvas) {
        for (PointAndDirection pointAndDirection : this.mPastPoints) {
            canvas.drawRect((float)pointAndDirection.getPoint().x, (float)pointAndDirection.getPoint().y, (float)(pointAndDirection.getPoint().x + this.mPadding), (float)(pointAndDirection.getPoint().y + this.mPadding), this.mPainter.getPaint(pointAndDirection.getPaintIndex()));
        }
    }

    private void gameOver() {
        if (this.mIsGameOver) {
            return;
        }
        this.mIsGameOver = true;
        this.mHandler.removeCallbacks(this.mStatusChecker);
        this.mSnake.startAnimation(AnimationUtils.loadAnimation((Context)this.getContext(), (int)R.anim.snake_shake));
        this.mParent.gameOver();
    }

    private Point generateNewTargetPoint() {
        int n2 = mRandom.nextInt(this.mRightMax);
        int n3 = mRandom.nextInt(this.mBottomMax);
        return new Point(this.roundToPosition(n2, this.mPadding), this.roundToPosition(n3, this.mPadding));
    }

    private int getTailSize() {
        return this.mCurrentScore + 7;
    }

    private void init() {
        SnakeGameBoardView.inflate((Context)this.getContext(), (int)R.layout.view_snake_game_board, (ViewGroup)this);
        this.setWillNotDraw(false);
        this.mSnake = (ImageView)this.findViewById(R.id.fragment_snake_gameboard_snake);
        this.mTarget = (ImageView)this.findViewById(R.id.fragment_snake_gameboard_mouse);
        this.mPadding = this.getContext().getResources().getDimensionPixelSize(R.dimen.cat_block_size);
        this.mSpeedDifficulties = this.getResources().getIntArray(R.array.cat_difficulty_speeds);
        this.mHandler = new Handler();
        this.mPastPoints = new LimitedQueue(7);
        this.mPendingPoints = new ArrayBlockingQueue<JoystickDirection>(5);
        this.mPainter = new RainbowPainter(this.getContext());
    }

    private void initSnake() {
        Point point = new Point(0, 0);
        this.mPastPoints.add(new PointAndDirection(point, 0, JoystickDirection.Right));
        this.moveSnake(point.x, point.y);
        this.mSnake.setVisibility(0);
    }

    private boolean isDaredevelLevel(int n2) {
        if (n2 == 3) {
            return true;
        }
        return false;
    }

    private void moveSnake(int n2, int n3) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams)this.mSnake.getLayoutParams();
        layoutParams.setMargins(n2, n3, 0, 0);
        this.mSnake.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void moveSnake(JoystickDirection joystickDirection) {
        PointAndDirection pointAndDirection = this.mPastPoints.peek();
        int n2 = pointAndDirection.getPoint().x;
        int n3 = pointAndDirection.getPoint().y;
        switch (.$SwitchMap$com$buzzfeed$buzzcat$JoystickDirection[joystickDirection.ordinal()]) {
            case 1: {
                n3 += this.mPadding;
                break;
            }
            case 2: {
                n3 -= this.mPadding;
                break;
            }
            case 3: {
                n2 -= this.mPadding;
                break;
            }
            case 4: {
                n2 += this.mPadding;
            }
        }
        Point point = new Point(n2, n3);
        if (this.didCollideWithBorder(point.x, point.y) || this.didCollideWithTail(point.x, point.y)) {
            this.gameOver();
            return;
        }
        this.mPastPoints.add(new PointAndDirection(point, this.mPainter.getNextIndex(pointAndDirection.getPaintIndex()), joystickDirection));
        this.moveSnake(point.x, point.y);
    }

    private void moveTarget() {
        do {
            this.mCurrentTargetPoint = this.generateNewTargetPoint();
        } while (this.didCollideWithTail(this.mCurrentTargetPoint.x, this.mCurrentTargetPoint.y));
        this.moveTarget(this.mCurrentTargetPoint.x, this.mCurrentTargetPoint.y);
        this.mTarget.setVisibility(0);
    }

    private void moveTarget(int n2, int n3) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams)this.mTarget.getLayoutParams();
        layoutParams.setMargins(n2, n3, 0, 0);
        this.mTarget.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    }

    private void onScoreUp() {
        this.mPastPoints.setLimit(this.getTailSize());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onUpdate() {
        if (this.mRightMax <= 0 && this.mBottomMax <= 0) {
            return;
        }
        if (this.mPendingPoints.size() > 0) {
            Iterator<JoystickDirection> iterator = this.mPendingPoints.iterator();
            while (iterator.hasNext()) {
                this.moveSnake(iterator.next());
            }
            this.mPendingPoints.clear();
        } else {
            this.moveSnake(this.mPastPoints.peek().getDirection());
        }
        this.checkScore();
        this.invalidate();
    }

    private int roundToPosition(int n2, int n3) {
        return Math.round(n2 / n3) * n3;
    }

    public boolean isGameRunning() {
        if (!this.mIsGameOver) {
            return true;
        }
        return false;
    }

    public void onDirectionChanged(JoystickDirection joystickDirection) {
        if (this.mPendingPoints.size() < 5) {
            this.mPendingPoints.add(joystickDirection);
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mPastPoints == null) {
            return;
        }
        this.drawTail(canvas);
    }

    protected void onMeasure(int n2, int n3) {
        super.onMeasure(n2, n2);
    }

    protected void onSizeChanged(int n2, int n3, int n4, int n5) {
        super.onSizeChanged(n2, n3, n4, n5);
        if (this.mIsInitialized) {
            return;
        }
        while (n2 % this.mPadding != 0) {
            --this.mPadding;
        }
        this.mIsInitialized = true;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams)this.mSnake.getLayoutParams();
        layoutParams.height = this.mPadding;
        layoutParams.width = this.mPadding;
        this.mSnake.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        layoutParams = (RelativeLayout.LayoutParams)this.mTarget.getLayoutParams();
        layoutParams.height = this.mPadding;
        layoutParams.width = this.mPadding;
        this.mTarget.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        this.mRightMax = n2 - this.mPadding;
        this.mBottomMax = n3 - this.mPadding;
    }

    public void pause() {
        this.mIsPaused = true;
        this.mHandler.removeCallbacks(this.mStatusChecker);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void resume() {
        if (this.mIsGameOver) {
            return;
        }
        this.mIsPaused = false;
        if (!this.mIsInitialized) return;
        this.mStatusChecker.run();
    }

    public void setListener(SnakeGameBoardParent snakeGameBoardParent) {
        this.mParent = snakeGameBoardParent;
    }

    public void startGame(int n2) {
        this.mSpeed = this.mSpeedDifficulties[n2];
        this.mIsInsaneLevel = this.isDaredevelLevel(n2);
        this.mIsGameOver = false;
        this.mIsPaused = false;
        this.mCurrentScore = 0;
        this.mParent.updateScore(this.mCurrentScore);
        this.mPastPoints.clear();
        this.mPastPoints.setLimit(7);
        this.mPendingPoints.clear();
        this.initSnake();
        this.moveTarget();
        this.mStatusChecker.run();
    }

    public class LimitedQueue<E>
    extends LinkedList<E> {
        private int limit;

        public LimitedQueue(int n2) {
            this.limit = n2;
        }

        @Override
        public boolean add(E e2) {
            super.addFirst(e2);
            while (this.size() > this.limit) {
                super.removeLast();
            }
            return true;
        }

        public void setLimit(int n2) {
            this.limit = n2;
        }
    }

    private class PointAndDirection {
        private JoystickDirection Direction;
        private int PaintIndex;
        private Point Point;

        public PointAndDirection(Point point, int n2, JoystickDirection joystickDirection) {
            this.PaintIndex = -1;
            this.setPoint(point);
            this.setPaintIndex(n2);
            this.setDirection(joystickDirection);
        }

        public JoystickDirection getDirection() {
            return this.Direction;
        }

        public int getPaintIndex() {
            return this.PaintIndex;
        }

        public Point getPoint() {
            return this.Point;
        }

        public void setDirection(JoystickDirection joystickDirection) {
            this.Direction = joystickDirection;
        }

        public void setPaintIndex(int n2) {
            this.PaintIndex = n2;
        }

        public void setPoint(Point point) {
            this.Point = point;
        }
    }

    public static interface SnakeGameBoardParent {
        public void gameOver();

        public void updateScore(int var1);
    }

}

