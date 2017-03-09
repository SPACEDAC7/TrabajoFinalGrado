/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.GestureDetector
 *  android.view.GestureDetector$SimpleOnGestureListener
 *  android.view.MotionEvent
 */
package com.buzzfeed.buzzcat;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.buzzfeed.buzzcat.JoystickDirection;

class SwipeGameControllerPad
extends GestureDetector.SimpleOnGestureListener {
    private final OnDirectionCallback mCallback;
    private JoystickDirection mLastDirection = JoystickDirection.Right;

    public SwipeGameControllerPad(OnDirectionCallback onDirectionCallback) {
        this.mCallback = onDirectionCallback;
    }

    private int getSlope(float f2, float f3, float f4, float f5) {
        Double d2 = Math.toDegrees(Math.atan2(f3 - f5, f4 - f2));
        if (d2 > 45.0 && d2 <= 135.0) {
            return 1;
        }
        if (d2 >= 135.0 && d2 < 180.0 || d2 < -135.0 && d2 > -180.0) {
            return 2;
        }
        if (d2 < -45.0 && d2 >= -135.0) {
            return 3;
        }
        if (d2 > -45.0 && d2 <= 45.0) {
            return 4;
        }
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean isValidDirectionChange(JoystickDirection joystickDirection) {
        JoystickDirection joystickDirection2 = this.mLastDirection;
        this.mLastDirection = joystickDirection;
        if (joystickDirection == joystickDirection2 || joystickDirection == JoystickDirection.Down && joystickDirection2 == JoystickDirection.Up || joystickDirection == JoystickDirection.Up && joystickDirection2 == JoystickDirection.Down || joystickDirection == JoystickDirection.Left && joystickDirection2 == JoystickDirection.Right || joystickDirection == JoystickDirection.Right && joystickDirection2 == JoystickDirection.Left) {
            return false;
        }
        return true;
    }

    public void directionPadUsed(JoystickDirection joystickDirection) {
        this.mLastDirection = joystickDirection;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        boolean bl = true;
        switch (this.getSlope(motionEvent.getX(), motionEvent.getY(), motionEvent2.getX(), motionEvent2.getY())) {
            default: {
                return false;
            }
            case 1: {
                if (!this.isValidDirectionChange(JoystickDirection.Up)) return bl;
                this.mCallback.onUp();
                return true;
            }
            case 2: {
                if (!this.isValidDirectionChange(JoystickDirection.Left)) return bl;
                this.mCallback.onLeft();
                return true;
            }
            case 3: {
                if (!this.isValidDirectionChange(JoystickDirection.Down)) return bl;
                this.mCallback.onDown();
                return true;
            }
            case 4: 
        }
        if (!this.isValidDirectionChange(JoystickDirection.Right)) return bl;
        this.mCallback.onRight();
        return true;
    }

    public void resetJoystick() {
        this.mLastDirection = JoystickDirection.Right;
    }

    public static interface OnDirectionCallback {
        public void onDown();

        public void onLeft();

        public void onRight();

        public void onUp();
    }

}

