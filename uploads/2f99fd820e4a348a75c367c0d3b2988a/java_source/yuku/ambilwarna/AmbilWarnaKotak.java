/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Canvas
 *  android.graphics.Color
 *  android.graphics.ComposeShader
 *  android.graphics.LinearGradient
 *  android.graphics.Paint
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.Shader
 *  android.graphics.Shader$TileMode
 *  android.util.AttributeSet
 *  android.view.View
 */
package yuku.ambilwarna;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;

public class AmbilWarnaKotak
extends View {
    final float[] color = new float[]{1.0f, 1.0f, 1.0f};
    Shader luar;
    Paint paint;

    public AmbilWarnaKotak(Context context) {
        this(context, null);
    }

    public AmbilWarnaKotak(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AmbilWarnaKotak(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.paint == null) {
            this.paint = new Paint();
            this.luar = new LinearGradient(0.0f, 0.0f, 0.0f, (float)this.getMeasuredHeight(), -1, -16777216, Shader.TileMode.CLAMP);
        }
        int n = Color.HSVToColor((float[])this.color);
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, (float)this.getMeasuredWidth(), 0.0f, -1, n, Shader.TileMode.CLAMP);
        linearGradient = new ComposeShader(this.luar, (Shader)linearGradient, PorterDuff.Mode.MULTIPLY);
        this.paint.setShader((Shader)linearGradient);
        canvas.drawRect(0.0f, 0.0f, (float)this.getMeasuredWidth(), (float)this.getMeasuredHeight(), this.paint);
    }

    void setHue(float f) {
        this.color[0] = f;
        this.invalidate();
    }
}

