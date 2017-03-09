/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.ImageButton
 *  android.widget.RelativeLayout
 */
package com.buzzfeed.buzzcat;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import com.buzzfeed.buzzcat.JoystickDirection;
import com.buzzfeed.buzzcat.R;

public class SnakePointerView
extends RelativeLayout
implements View.OnClickListener {
    private static final float IMAGE_ALPHA = 0.54f;
    private ImageButton mBottom;
    private View[] mButtons;
    private JoystickDirection mLastDirection;
    private ImageButton mLeft;
    private SnakePointerViewParent mParent;
    private ImageButton mRight;
    private ImageButton mTop;

    public SnakePointerView(Context context) {
        super(context);
        this.init();
    }

    public SnakePointerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.init();
    }

    public SnakePointerView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.init();
    }

    private void changeDirectionIfNecessary(JoystickDirection joystickDirection) {
        if (this.mParent != null && this.isValidDirectionChange(joystickDirection)) {
            this.mParent.changeDirection(joystickDirection);
            this.mLastDirection = joystickDirection;
        }
    }

    private void init() {
        SnakePointerView.inflate((Context)this.getContext(), (int)R.layout.view_snake_pointer_view, (ViewGroup)this);
        this.mTop = (ImageButton)this.findViewById(R.id.view_snake_pointer_view_up);
        this.mBottom = (ImageButton)this.findViewById(R.id.view_snake_pointer_view_down);
        this.mLeft = (ImageButton)this.findViewById(R.id.view_snake_pointer_view_left);
        this.mRight = (ImageButton)this.findViewById(R.id.view_snake_pointer_view_right);
        this.mButtons = new View[]{this.mTop, this.mBottom, this.mLeft, this.mRight};
        this.initButtons();
        this.mLastDirection = JoystickDirection.Right;
    }

    private void initButtons() {
        for (int i2 = 0; i2 < this.mButtons.length; ++i2) {
            this.mButtons[i2].setAlpha(0.54f);
            this.mButtons[i2].setOnClickListener((View.OnClickListener)this);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean isValidDirectionChange(JoystickDirection joystickDirection) {
        JoystickDirection joystickDirection2 = this.mLastDirection;
        if (joystickDirection == joystickDirection2 || joystickDirection == JoystickDirection.Down && joystickDirection2 == JoystickDirection.Up || joystickDirection == JoystickDirection.Up && joystickDirection2 == JoystickDirection.Down || joystickDirection == JoystickDirection.Left && joystickDirection2 == JoystickDirection.Right || joystickDirection == JoystickDirection.Right && joystickDirection2 == JoystickDirection.Left) {
            return false;
        }
        return true;
    }

    private void setButtonEnabledness(boolean bl) {
        for (int i2 = 0; i2 < this.mButtons.length; ++i2) {
            this.mButtons[i2].setEnabled(bl);
        }
    }

    public void disable() {
        this.setButtonEnabledness(false);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onClick(View view) {
        if (view == this.mTop) {
            this.changeDirectionIfNecessary(JoystickDirection.Up);
            return;
        } else {
            if (view == this.mLeft) {
                this.changeDirectionIfNecessary(JoystickDirection.Left);
                return;
            }
            if (view == this.mRight) {
                this.changeDirectionIfNecessary(JoystickDirection.Right);
                return;
            }
            if (view != this.mBottom) return;
            {
                this.changeDirectionIfNecessary(JoystickDirection.Down);
                return;
            }
        }
    }

    public void reset() {
        this.mLastDirection = JoystickDirection.Right;
        this.setButtonEnabledness(true);
    }

    public void setListener(SnakePointerViewParent snakePointerViewParent) {
        this.mParent = snakePointerViewParent;
    }

    public static interface SnakePointerViewParent {
        public void changeDirection(JoystickDirection var1);
    }

}

