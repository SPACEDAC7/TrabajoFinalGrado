.class public Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedElementUtils;
.super Ljava/lang/Object;
.source "SharedElementUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prepareViewForAnimation(Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;Landroid/view/View;)Ljava/util/List;
    .registers 6
    .param p0, "sender"    # Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;
    .param p1, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 12
    .local v0, "locationOnScreen":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 13
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {p0, p1, v1, v2, v3}, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedElementUtils;->prepareViewForAnimation(Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;Landroid/view/View;III)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static prepareViewForAnimation(Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;Landroid/view/View;III)Ljava/util/List;
    .registers 20
    .param p0, "sender"    # Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "locationOnScreenX"    # I
    .param p3, "locationOnScreenY"    # I
    .param p4, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;",
            "Landroid/view/View;",
            "III)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->getXLocationOnScreen()I

    move-result v3

    .line 18
    .local v3, "senderLeft":I
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->getYLocationOnScreen()I

    move-result v4

    .line 20
    .local v4, "senderTop":I
    sub-int v2, v3, p2

    .line 21
    .local v2, "leftDelta":I
    sub-int v5, v4, p3

    .line 23
    .local v5, "topDelta":I
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v8, v11, v12

    .line 24
    .local v8, "widthScale":F
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->getHeight()I

    move-result v11

    int-to-float v11, v11

    move/from16 v0, p4

    int-to-float v12, v0

    div-float v1, v11, v12

    .line 26
    .local v1, "heightScale":F
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setPivotX(F)V

    .line 27
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setPivotY(F)V

    .line 28
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 29
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 30
    int-to-float v11, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 31
    int-to-float v11, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 33
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 34
    const-string v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v8, v12, v13

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000

    aput v14, v12, v13

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 35
    .local v9, "xScale":Landroid/animation/ObjectAnimator;
    const-string v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v1, v12, v13

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000

    aput v14, v12, v13

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 37
    .local v10, "yScale":Landroid/animation/ObjectAnimator;
    const-string/jumbo v11, "translationX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 38
    .local v6, "transX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v11, "translationY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 40
    .local v7, "transY":Landroid/animation/ObjectAnimator;
    const/4 v11, 0x4

    new-array v11, v11, [Landroid/animation/ObjectAnimator;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v6, v11, v12

    const/4 v12, 0x3

    aput-object v7, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    return-object v11
.end method
