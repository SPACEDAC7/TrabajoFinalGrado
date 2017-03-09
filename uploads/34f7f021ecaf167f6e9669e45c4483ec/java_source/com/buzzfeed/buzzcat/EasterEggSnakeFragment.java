/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.os.Bundle
 *  android.view.GestureDetector
 *  android.view.GestureDetector$OnGestureListener
 *  android.view.LayoutInflater
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$OnTouchListener
 *  android.view.ViewGroup
 *  android.widget.RelativeLayout
 *  android.widget.TextView
 */
package com.buzzfeed.buzzcat;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.buzzfeed.buzzcat.JoystickDirection;
import com.buzzfeed.buzzcat.R;
import com.buzzfeed.buzzcat.SnakeGameBoardView;
import com.buzzfeed.buzzcat.SnakeGameController;
import com.buzzfeed.buzzcat.SnakePointerView;
import com.buzzfeed.buzzcat.SwipeGameControllerPad;

public class EasterEggSnakeFragment
extends Fragment
implements SnakeGameController.SnakeControllerStateParent {
    private SnakeGameController mController;
    private TextView mCurrentScoreView;
    private SwipeGameControllerPad mGamePad;
    private SnakeGameBoardView mGameboard;
    private GestureDetector mGestureDetector;
    private View.OnTouchListener mGestureListener;
    private TextView mHighScoreView;
    private SnakeGameController.SnakeControllerParent mParent;
    private SnakePointerView mPointerView;
    private CatStyleParent mStyleParent;
    private RelativeLayout mTopBarView;

    @Override
    public boolean isStateValid() {
        return this.isAdded();
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        this.mParent = (SnakeGameController.SnakeControllerParent)context;
        this.mStyleParent = (CatStyleParent)context;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(R.layout.fragment_easter_egg_snake, viewGroup, false);
        this.mGameboard = (SnakeGameBoardView)layoutInflater.findViewById(R.id.fragment_snake_gameboard);
        this.mPointerView = (SnakePointerView)layoutInflater.findViewById(R.id.fragment_snake_pointer);
        this.mTopBarView = (RelativeLayout)layoutInflater.findViewById(R.id.fragment_snake_top_bar);
        this.mHighScoreView = (TextView)layoutInflater.findViewById(R.id.fragment_snake_high_score);
        this.mCurrentScoreView = (TextView)layoutInflater.findViewById(R.id.fragment_snake_current_score);
        if (this.mTopBarView != null) {
            this.mTopBarView.setBackgroundResource(this.mStyleParent.getTopBarColorResource());
        }
        this.mController = new SnakeGameController(this.getActivity(), this.mParent, this, this.mGameboard, this.mPointerView, this.mHighScoreView, this.mCurrentScoreView);
        this.mGamePad = new SwipeGameControllerPad(new SwipeGameControllerPad.OnDirectionCallback(){

            @Override
            public void onDown() {
                EasterEggSnakeFragment.this.mController.changeDirection(JoystickDirection.Down);
            }

            @Override
            public void onLeft() {
                EasterEggSnakeFragment.this.mController.changeDirection(JoystickDirection.Left);
            }

            @Override
            public void onRight() {
                EasterEggSnakeFragment.this.mController.changeDirection(JoystickDirection.Right);
            }

            @Override
            public void onUp() {
                EasterEggSnakeFragment.this.mController.changeDirection(JoystickDirection.Up);
            }
        });
        this.mGestureDetector = new GestureDetector((Context)this.getActivity(), (GestureDetector.OnGestureListener)this.mGamePad);
        this.mGestureListener = new View.OnTouchListener(){

            public boolean onTouch(View view, MotionEvent motionEvent) {
                EasterEggSnakeFragment.this.mGestureDetector.onTouchEvent(motionEvent);
                return true;
            }
        };
        layoutInflater.setOnTouchListener(this.mGestureListener);
        return layoutInflater;
    }

    @Override
    public void onDirectionPadUsed(JoystickDirection joystickDirection) {
        this.mGamePad.directionPadUsed(joystickDirection);
    }

    @Override
    public void onNewGame() {
        this.mGamePad.resetJoystick();
    }

    @Override
    public void onPause() {
        super.onPause();
        this.mController.pauseGame();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.mController.resumeGame();
    }

    public static interface CatStyleParent {
        public int getTopBarColorResource();
    }

}

