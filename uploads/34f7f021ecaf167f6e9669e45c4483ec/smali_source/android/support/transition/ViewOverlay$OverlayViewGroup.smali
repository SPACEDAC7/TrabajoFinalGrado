.class Landroid/support/transition/ViewOverlay$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayViewGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ViewOverlay$OverlayViewGroup$TouchInterceptor;
    }
.end annotation


# static fields
.field static sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;


# instance fields
.field mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mHostView:Landroid/view/ViewGroup;

.field mRequestingView:Landroid/view/View;

.field mViewOverlay:Landroid/support/transition/ViewOverlay;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 147
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "invalidateChildInParentFast"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 152
    :goto_1c
    return-void

    .line 149
    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/ViewOverlay;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;
    .param p4, "viewOverlay"    # Landroid/support/transition/ViewOverlay;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 172
    iput-object p2, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    .line 173
    iput-object p3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 174
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->setRight(I)V

    .line 175
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->setBottom(I)V

    .line 176
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    iput-object p4, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mViewOverlay:Landroid/support/transition/ViewOverlay;

    .line 178
    return-void
.end method

.method private getOffset([I)V
    .registers 9
    .param p1, "offset"    # [I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 299
    new-array v0, v3, [I

    .line 300
    .local v0, "contentViewLocation":[I
    new-array v1, v3, [I

    .line 301
    .local v1, "hostViewLocation":[I
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 302
    .local v2, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 303
    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 304
    aget v3, v1, v5

    aget v4, v0, v5

    sub-int/2addr v3, v4

    aput v3, p1, v5

    .line 305
    aget v3, v1, v6

    aget v4, v0, v6

    sub-int/2addr v3, v4

    aput v3, p1, v6

    .line 306
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 191
    :cond_b
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 193
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 195
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 197
    :cond_22
    return-void
.end method

.method public add(Landroid/view/View;)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_43

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 215
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eq v1, v3, :cond_37

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 219
    new-array v2, v6, [I

    .line 220
    .local v2, "parentLocation":[I
    new-array v0, v6, [I

    .line 221
    .local v0, "hostViewLocation":[I
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 222
    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 223
    aget v3, v2, v4

    aget v4, v0, v4

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 224
    aget v3, v2, v5

    aget v4, v0, v5

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 226
    .end local v0    # "hostViewLocation":[I
    .end local v2    # "parentLocation":[I
    :cond_37
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 233
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 236
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_43
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-super {p0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 237
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->removeAllViews()V

    .line 248
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 249
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    :cond_c
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 268
    new-array v0, v5, [I

    .line 269
    .local v0, "contentViewLocation":[I
    new-array v1, v5, [I

    .line 270
    .local v1, "hostViewLocation":[I
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 271
    .local v4, "parent":Landroid/view/ViewGroup;
    iget-object v5, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 272
    iget-object v5, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 273
    aget v5, v1, v3

    aget v6, v0, v3

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aget v6, v1, v7

    aget v7, v0, v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 275
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 276
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v5, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 275
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 277
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 278
    iget-object v5, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v5, :cond_52

    .line 279
    .local v3, "numDrawables":I
    :goto_41
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    if-ge v2, v3, :cond_59

    .line 280
    iget-object v5, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 278
    .end local v2    # "i":I
    .end local v3    # "numDrawables":I
    :cond_52
    iget-object v5, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_41

    .line 282
    .restart local v2    # "i":I
    .restart local v3    # "numDrawables":I
    :cond_59
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 309
    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_22

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 314
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 315
    .local v2, "top":I
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 316
    .local v1, "offset":[I
    invoke-direct {p0, v1}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getOffset([I)V

    .line 321
    const/4 v3, 0x0

    aget v3, v1, v3

    add-int/2addr v3, v0

    const/4 v4, 0x1

    aget v4, v1, v4

    add-int/2addr v4, v2

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 322
    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 324
    .end local v0    # "left":I
    .end local v1    # "offset":[I
    .end local v2    # "top":I
    :cond_22
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 8
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 347
    iget-object v1, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2c

    .line 348
    aget v1, p1, v3

    aget v2, p1, v4

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 349
    iget-object v1, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_29

    .line 350
    aput v3, p1, v3

    .line 351
    aput v3, p1, v4

    .line 352
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 353
    .local v0, "offset":[I
    invoke-direct {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getOffset([I)V

    .line 354
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 355
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v1

    .line 361
    .end local v0    # "offset":[I
    :goto_28
    return-object v1

    .line 358
    :cond_29
    invoke-virtual {p0, p2}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 361
    :cond_2c
    const/4 v1, 0x0

    goto :goto_28
.end method

.method protected invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dirty"    # Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v2, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2b

    sget-object v2, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2b

    .line 333
    const/4 v2, 0x2

    :try_start_b
    new-array v1, v2, [I

    .line 334
    .local v1, "offset":[I
    invoke-direct {p0, v1}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getOffset([I)V

    .line 335
    sget-object v2, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_2b} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_2b} :catch_32

    .line 342
    .end local v1    # "offset":[I
    :cond_2b
    :goto_2b
    const/4 v2, 0x0

    return-object v2

    .line 336
    :catch_2d
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2b

    .line 338
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_32
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2b
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 264
    return-void
.end method

.method isEmpty()Z
    .registers 2

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 256
    :cond_12
    const/4 v0, 0x1

    .line 258
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 287
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 201
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 205
    :cond_14
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 242
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    :cond_e
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
