.class public Lcom/buzzfeed/toolkit/util/UIUtil;
.super Ljava/lang/Object;
.source "UIUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/util/UIUtil$URLSpanNoUnderline;
    }
.end annotation


# static fields
.field public static final PROXIMA_NOVA_SEMI_BOLD_FONT_NAME:Ljava/lang/String; = "fonts/ProximaNova-Sbold.ttf"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/buzzfeed/toolkit/util/UIUtil;->removeOnGlobalLayoutListenerApi14(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static alignViewAbove(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "baseView"    # Landroid/view/View;
    .param p2, "viewToAlign"    # Landroid/view/View;

    .prologue
    .line 594
    invoke-static {p0, p1}, Lcom/buzzfeed/toolkit/util/UIUtil;->getTopOffset(Landroid/app/Activity;Landroid/view/View;)I

    move-result v1

    int-to-float v0, v1

    .line 595
    .local v0, "baseTop":F
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 596
    return-void
.end method

.method public static alignViewBelow(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "baseView"    # Landroid/view/View;
    .param p2, "viewToAlign"    # Landroid/view/View;

    .prologue
    .line 605
    invoke-static {p0, p1}, Lcom/buzzfeed/toolkit/util/UIUtil;->getBottomOffset(Landroid/app/Activity;Landroid/view/View;)I

    move-result v1

    int-to-float v0, v1

    .line 606
    .local v0, "baseBottom":F
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 607
    return-void
.end method

.method public static alignViewBottom(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "baseView"    # Landroid/view/View;
    .param p2, "viewToAlign"    # Landroid/view/View;

    .prologue
    .line 583
    invoke-static {p0, p1}, Lcom/buzzfeed/toolkit/util/UIUtil;->getBottomOffset(Landroid/app/Activity;Landroid/view/View;)I

    move-result v1

    int-to-float v0, v1

    .line 584
    .local v0, "baseBottom":F
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setY(F)V

    .line 585
    return-void
.end method

.method public static alignViewTop(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "baseView"    # Landroid/view/View;
    .param p2, "viewToAlign"    # Landroid/view/View;

    .prologue
    .line 572
    invoke-static {p0, p1}, Lcom/buzzfeed/toolkit/util/UIUtil;->getTopOffset(Landroid/app/Activity;Landroid/view/View;)I

    move-result v1

    int-to-float v0, v1

    .line 573
    .local v0, "baseTop":F
    invoke-virtual {p2, v0}, Landroid/view/View;->setY(F)V

    .line 574
    return-void
.end method

.method public static areViewsOverlapping(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)Z
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view1"    # Landroid/view/View;
    .param p2, "view2"    # Landroid/view/View;

    .prologue
    .line 629
    const/4 v0, 0x5

    .line 630
    .local v0, "fudgeFactor":I
    invoke-static {p0, p1}, Lcom/buzzfeed/toolkit/util/UIUtil;->getBottomOffset(Landroid/app/Activity;Landroid/view/View;)I

    move-result v2

    invoke-static {p0, p2}, Lcom/buzzfeed/toolkit/util/UIUtil;->getTopOffset(Landroid/app/Activity;Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 631
    .local v1, "overlappingPx":I
    if-le v1, v0, :cond_f

    const/4 v2, 0x1

    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static blurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "blurRadius"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    return-object p1
.end method

.method public static blurView(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "v"    # Landroid/view/View;
    .param p1, "blurRadius"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_32

    const/16 v3, 0x19

    if-gt p1, v3, :cond_32

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, p1}, Lcom/buzzfeed/toolkit/util/UIUtil;->blurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 236
    .local v1, "blurredBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "blurredBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :goto_31
    return-object v1

    :cond_32
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public static varargs cancelAnimation([Landroid/view/View;)V
    .registers 5
    .param p0, "views"    # [Landroid/view/View;

    .prologue
    .line 326
    array-length v2, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_10

    aget-object v0, p0, v1

    .line 327
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    .end local v0    # "view":Landroid/view/View;
    :cond_10
    return-void
.end method

.method public static convertDpToPx(Landroid/content/Context;F)F
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 71
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 72
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000

    div-float/2addr v3, v4

    mul-float v1, p1, v3

    .line 73
    .local v1, "px":F
    return v1
.end method

.method public static convertPxToDp(Landroid/content/Context;F)F
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # F

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 85
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 86
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000

    div-float/2addr v3, v4

    div-float v0, p1, v3

    .line 87
    .local v0, "dp":F
    return v0
.end method

.method public static createColorBitmap(III)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "resourceId"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 283
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 285
    return-object v0
.end method

.method public static enableRotation(Landroid/app/Activity;Z)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "enable"    # Z

    .prologue
    .line 455
    if-eqz p1, :cond_d

    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/UIUtil;->isSystemRotationSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 456
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 460
    :goto_c
    return-void

    .line 458
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_c
.end method

.method public static varargs fadeInViews(J[Landroid/view/View;)V
    .registers 11
    .param p0, "fadeInDuration"    # J
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 386
    array-length v3, p2

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_24

    aget-object v0, p2, v1

    .line 387
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000

    .line 389
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x0

    .line 390
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 391
    invoke-virtual {v4, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 392
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 394
    .end local v0    # "view":Landroid/view/View;
    :cond_24
    return-void
.end method

.method public static varargs fadeInViewsFor(JJ[Landroid/view/View;)V
    .registers 15
    .param p0, "fadeInDuration"    # J
    .param p2, "duration"    # J
    .param p4, "views"    # [Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 339
    array-length v9, p4

    move v7, v8

    :goto_3
    if-ge v7, v9, :cond_2f

    aget-object v6, p4, v7

    .line 340
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 341
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000

    .line 342
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 343
    invoke-virtual {v1, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 344
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 345
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    new-instance v1, Lcom/buzzfeed/toolkit/util/UIUtil$1;

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/buzzfeed/toolkit/util/UIUtil$1;-><init>(JJLandroid/view/View;)V

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->withEndActionApi14(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)V

    .line 351
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 339
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_3

    .line 353
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    .end local v6    # "view":Landroid/view/View;
    :cond_2f
    return-void
.end method

.method public static varargs fadeOutViews(J[Landroid/view/View;)V
    .registers 11
    .param p0, "fadeOutDuration"    # J
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 403
    array-length v3, p2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_27

    aget-object v1, p2, v2

    .line 404
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    .line 405
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x0

    .line 406
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 407
    invoke-virtual {v4, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 408
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    new-instance v4, Lcom/buzzfeed/toolkit/util/UIUtil$3;

    invoke-direct {v4, v1}, Lcom/buzzfeed/toolkit/util/UIUtil$3;-><init>(Landroid/view/View;)V

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/UIUtil;->withEndActionApi14(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)V

    .line 414
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 416
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "view":Landroid/view/View;
    :cond_27
    return-void
.end method

.method public static varargs fadeOutViewsWithDelay(JJ[Landroid/view/View;)V
    .registers 11
    .param p0, "fadeOutDuration"    # J
    .param p2, "delay"    # J
    .param p4, "views"    # [Landroid/view/View;

    .prologue
    .line 363
    array-length v3, p4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_25

    aget-object v1, p4, v2

    .line 364
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    .line 365
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 366
    invoke-virtual {v4, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 367
    invoke-virtual {v4, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 369
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    new-instance v4, Lcom/buzzfeed/toolkit/util/UIUtil$2;

    invoke-direct {v4, v1}, Lcom/buzzfeed/toolkit/util/UIUtil$2;-><init>(Landroid/view/View;)V

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/UIUtil;->withEndActionApi14(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)V

    .line 375
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 377
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "view":Landroid/view/View;
    :cond_25
    return-void
.end method

.method public static findFrag(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static findView(Landroid/app/Activity;I)Landroid/view/View;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static findView(Landroid/view/View;I)Landroid/view/View;
    .registers 3
    .param p0, "enclosingView"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getActionBarHeight(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 171
    .local v1, "tv":Landroid/util/TypedValue;
    const/4 v0, 0x0

    .line 172
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 173
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 175
    :cond_22
    return v0
.end method

.method public static getBottomOffset(Landroid/app/Activity;Landroid/view/View;)I
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 498
    invoke-static {p0, p1}, Lcom/buzzfeed/toolkit/util/UIUtil;->getTopOffset(Landroid/app/Activity;Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getContentHeight(Landroid/app/Activity;)I
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 509
    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 510
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 511
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 512
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 513
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 514
    .local v1, "height":I
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/UIUtil;->isWindowFullscreen(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 515
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v1, v4

    .line 517
    :cond_22
    return v1
.end method

.method public static getContentWidth(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 526
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 527
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 528
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 529
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 530
    iget v3, v1, Landroid/graphics/Point;->x:I

    return v3
.end method

.method public static getLeftOffset(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 489
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 490
    .local v0, "locInWindow":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 491
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public static getNavBarHeight(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, "resourceId":I
    if-lez v1, :cond_19

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 205
    :cond_19
    return v0
.end method

.method public static getRealScreenHeight(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 553
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public static getRealScreenWidth(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 561
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public static getScreenDensityDpi()F
    .registers 1

    .prologue
    .line 124
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenDensityDpi(Landroid/content/res/Resources;)F

    move-result v0

    return v0
.end method

.method public static getScreenDensityDpi(Landroid/content/res/Resources;)F
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 129
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    return v1
.end method

.method public static getScreenHeight()I
    .registers 1

    .prologue
    .line 110
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenHeight(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getScreenHeight(Landroid/content/res/Resources;)I
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 115
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 540
    const-string/jumbo v3, "window"

    .line 541
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 542
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 543
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 544
    .local v1, "screenResolution":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 545
    return-object v1
.end method

.method public static getScreenWidth()I
    .registers 1

    .prologue
    .line 96
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenWidth(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getScreenWidth(Landroid/content/res/Resources;)I
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 101
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, "resourceId":I
    if-lez v1, :cond_1a

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 190
    :cond_1a
    return v0
.end method

.method public static getTopOffset(Landroid/app/Activity;Landroid/view/View;)I
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 440
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 441
    .local v0, "locInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 442
    const/4 v2, 0x1

    aget v1, v0, v2

    .line 443
    .local v1, "top":I
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/UIUtil;->isWindowFullscreen(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 444
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 446
    :cond_14
    return v1
.end method

.method public static getVisibleHeight(Landroid/app/Activity;)F
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 613
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/UIUtil;->isWindowFullscreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 614
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    .line 616
    :goto_d
    return v0

    :cond_e
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/UIUtil;->getContentHeight(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_d
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isSystemRotationSettingEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method public static isWindowFullscreen(Landroid/app/Activity;)Z
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 480
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_27

    move v1, v2

    .line 481
    .local v1, "fullScreen":Z
    :goto_13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_29

    move v0, v2

    .line 482
    .local v0, "forceNotFullScreen":Z
    :goto_22
    if-eqz v1, :cond_2b

    if-nez v0, :cond_2b

    :goto_26
    return v2

    .end local v0    # "forceNotFullScreen":Z
    .end local v1    # "fullScreen":Z
    :cond_27
    move v1, v3

    .line 480
    goto :goto_13

    .restart local v1    # "fullScreen":Z
    :cond_29
    move v0, v3

    .line 481
    goto :goto_22

    .restart local v0    # "forceNotFullScreen":Z
    :cond_2b
    move v2, v3

    .line 482
    goto :goto_26
.end method

.method private static removeOnGlobalLayoutListenerApi14(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 653
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasJellyBean()Z

    move-result v0

    if-nez v0, :cond_e

    .line 654
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 658
    :goto_d
    return-void

    .line 656
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_d
.end method

.method public static runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 642
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 643
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/buzzfeed/toolkit/util/UIUtil$6;

    invoke-direct {v1, p1, p0}, Lcom/buzzfeed/toolkit/util/UIUtil$6;-><init>(Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 650
    return-void
.end method

.method public static setBackgroundOfView(Landroid/view/View;I)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawableID"    # I

    .prologue
    .line 140
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasJellyBean()Z

    move-result v0

    if-nez v0, :cond_12

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :goto_11
    return-void

    .line 143
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11
.end method

.method public static setMenuItemVisiblity(Landroid/view/MenuItem;Z)V
    .registers 2
    .param p0, "menuItem"    # Landroid/view/MenuItem;
    .param p1, "show"    # Z

    .prologue
    .line 314
    if-eqz p0, :cond_8

    .line 315
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 316
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 318
    :cond_8
    return-void
.end method

.method public static stripUnderlines(Landroid/widget/TextView;)V
    .registers 11
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v7, 0x0

    .line 153
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 154
    .local v1, "s":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v8, Landroid/text/style/URLSpan;

    invoke-interface {v1, v7, v6, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/URLSpan;

    .line 155
    .local v4, "spans":[Landroid/text/style/URLSpan;
    array-length v8, v4

    move v6, v7

    :goto_18
    if-ge v6, v8, :cond_36

    aget-object v2, v4, v6

    .line 156
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {v1, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 157
    .local v5, "start":I
    invoke-interface {v1, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 158
    .local v0, "end":I
    invoke-interface {v1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 159
    new-instance v3, Lcom/buzzfeed/toolkit/util/UIUtil$URLSpanNoUnderline;

    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/buzzfeed/toolkit/util/UIUtil$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 160
    .end local v2    # "span":Landroid/text/style/URLSpan;
    .local v3, "span":Landroid/text/style/URLSpan;
    invoke-interface {v1, v3, v5, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 155
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 162
    .end local v0    # "end":I
    .end local v3    # "span":Landroid/text/style/URLSpan;
    .end local v5    # "start":I
    :cond_36
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method public static tintProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;
    .param p2, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 666
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_9

    .line 672
    :cond_8
    :goto_8
    return-void

    .line 670
    :cond_9
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 671
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_8
.end method

.method private static withEndActionApi14(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "animator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 419
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasJellyBean()Z

    move-result v0

    if-nez v0, :cond_f

    .line 420
    new-instance v0, Lcom/buzzfeed/toolkit/util/UIUtil$4;

    invoke-direct {v0, p1}, Lcom/buzzfeed/toolkit/util/UIUtil$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 434
    :goto_e
    return-void

    .line 427
    :cond_f
    new-instance v0, Lcom/buzzfeed/toolkit/util/UIUtil$5;

    invoke-direct {v0, p1}, Lcom/buzzfeed/toolkit/util/UIUtil$5;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_e
.end method
