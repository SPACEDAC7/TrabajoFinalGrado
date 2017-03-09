/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ActivityNotFoundException
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnCancelListener
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.content.res.Resources
 *  android.view.View
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.TextView
 */
package com.buzzfeed.buzzcat;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import com.buzzfeed.buzzcat.JoystickDirection;
import com.buzzfeed.buzzcat.R;
import com.buzzfeed.buzzcat.SnakeGameBoardView;
import com.buzzfeed.buzzcat.SnakePointerView;
import com.buzzfeed.toolkit.sharmo.ShareManager;
import com.buzzfeed.toolkit.util.LogUtil;

public class SnakeGameController
implements SnakePointerView.SnakePointerViewParent,
SnakeGameBoardView.SnakeGameBoardParent {
    private static final String CAT_PREFS = "buzzcat";
    public static final String DIALOG_GAME_OVER = "game_over";
    public static final String DIALOG_START = "start_menu";
    private static final String HIGH_SCORE = "high_score";
    private static final String TAG = SnakeGameController.class.getSimpleName();
    private Activity mActivity;
    private int mCurrentScore = 0;
    private TextView mCurrentScoreView;
    private SnakeGameBoardView mGameBoard;
    private TextView mHighScoreView;
    private SnakePointerView mJoystick;
    private SnakeControllerParent mParent;
    private SharedPreferences mPrefs;
    private SnakeControllerStateParent mStateParent;

    public SnakeGameController(Activity activity, SnakeControllerParent snakeControllerParent, SnakeControllerStateParent snakeControllerStateParent, SnakeGameBoardView snakeGameBoardView, SnakePointerView snakePointerView, TextView textView, TextView textView2) {
        this.mGameBoard = snakeGameBoardView;
        this.mJoystick = snakePointerView;
        this.mHighScoreView = textView;
        this.mCurrentScoreView = textView2;
        this.mJoystick.setListener(this);
        this.mGameBoard.setListener(this);
        this.mActivity = activity;
        this.mParent = snakeControllerParent;
        this.mStateParent = snakeControllerStateParent;
        this.mPrefs = activity.getSharedPreferences("buzzcat", 0);
        this.updateHighScore();
        this.startGame();
    }

    private boolean isStateValid() {
        if (this.mStateParent != null && this.mStateParent.isStateValid()) {
            return true;
        }
        return false;
    }

    private void shareScore() {
        String string2 = TAG + ".shareScore";
        Intent intent = ShareManager.buildShareIntent((Context)this.mActivity, String.format(this.mActivity.getString(R.string.buzzcat_share_score_title), this.mCurrentScore), String.format(this.mActivity.getString(R.string.buzzcat_share_score_subject), this.mCurrentScore, "http://bzfd.it/bfmobileapps"), null);
        try {
            this.mActivity.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException var2_3) {
            LogUtil.e(string2, "No activity found on device to handle type 'text/plain': " + var2_3.getMessage(), (Throwable)var2_3);
            return;
        }
    }

    private void showGameOverDialog() {
        if (!this.isStateValid()) {
            return;
        }
        this.mParent.showListDialog("game_over", String.format(this.mActivity.getString(R.string.buzzcat_your_score), this.mCurrentScore), this.mActivity.getResources().getStringArray(R.array.buzzcat_game_over_options), new AdapterView.OnItemClickListener(){

            /*
             * Enabled aggressive block sorting
             */
            public void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
                if (n2 == 0) {
                    SnakeGameController.this.shareScore();
                    return;
                } else {
                    if (n2 == 1) {
                        SnakeGameController.this.startGame();
                        return;
                    }
                    if (n2 != 2) return;
                    {
                        SnakeGameController.this.mActivity.finish();
                        return;
                    }
                }
            }
        }, new DialogInterface.OnCancelListener(){

            public void onCancel(DialogInterface dialogInterface) {
                SnakeGameController.this.mParent.quit();
            }
        });
    }

    private void showResumeGameDialog() {
        if (!this.isStateValid()) {
            return;
        }
        this.mParent.showSingleButtonDialog(this.mActivity.getString(R.string.buzzcat_resume_game), this.mActivity.getString(R.string.buzzcat_resume), new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                SnakeGameController.this.mGameBoard.resume();
            }
        }, new DialogInterface.OnCancelListener(){

            public void onCancel(DialogInterface dialogInterface) {
                SnakeGameController.this.mGameBoard.resume();
            }
        });
    }

    private void showStartGameDialog() {
        if (!this.isStateValid()) {
            return;
        }
        this.mParent.showListDialog("start_menu", this.mActivity.getString(R.string.buzzcat_select_difficulty), this.mActivity.getResources().getStringArray(R.array.buzzcat_level_difficulty), new AdapterView.OnItemClickListener(){

            public void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
                SnakeGameController.this.mJoystick.reset();
                SnakeGameController.this.mGameBoard.startGame(n2);
                SnakeGameController.this.mStateParent.onNewGame();
            }
        }, new DialogInterface.OnCancelListener(){

            public void onCancel(DialogInterface dialogInterface) {
                SnakeGameController.this.mParent.quit();
            }
        });
    }

    private void updateHighScore() {
        if (!this.isStateValid()) {
            return;
        }
        int n2 = this.mPrefs.getInt("high_score", 0);
        if (this.mCurrentScore > n2) {
            this.mPrefs.edit().putInt("high_score", this.mCurrentScore).apply();
        }
        this.mHighScoreView.setText((CharSequence)String.format(this.mActivity.getString(R.string.buzzcat_high_score), this.mPrefs.getInt("high_score", 0)));
    }

    @Override
    public void changeDirection(JoystickDirection joystickDirection) {
        this.mGameBoard.onDirectionChanged(joystickDirection);
        this.mStateParent.onDirectionPadUsed(joystickDirection);
    }

    @Override
    public void gameOver() {
        this.updateHighScore();
        this.mJoystick.disable();
        this.showGameOverDialog();
    }

    public void pauseGame() {
        this.mGameBoard.pause();
    }

    public void resumeGame() {
        if (this.mGameBoard.isGameRunning()) {
            this.showResumeGameDialog();
        }
    }

    public void startGame() {
        this.showStartGameDialog();
    }

    @Override
    public void updateScore(int n2) {
        this.mCurrentScore = n2;
        this.mCurrentScoreView.setText((CharSequence)String.valueOf(this.mCurrentScore));
        this.updateHighScore();
    }

    public static interface SnakeControllerParent {
        public void quit();

        public void showListDialog(String var1, String var2, String[] var3, AdapterView.OnItemClickListener var4, DialogInterface.OnCancelListener var5);

        public void showSingleButtonDialog(String var1, String var2, DialogInterface.OnClickListener var3, DialogInterface.OnCancelListener var4);
    }

    public static interface SnakeControllerStateParent {
        public boolean isStateValid();

        public void onDirectionPadUsed(JoystickDirection var1);

        public void onNewGame();
    }

}

