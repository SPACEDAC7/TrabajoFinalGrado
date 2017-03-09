.class Landroid/support/transition/FadePort;
.super Landroid/support/transition/VisibilityPort;
.source "FadePort.java"


# static fields
.field private static DBG:Z = false

.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_SCREEN_X:Ljava/lang/String; = "android:fade:screenX"

.field private static final PROPNAME_SCREEN_Y:Ljava/lang/String; = "android:fade:screenY"


# instance fields
.field private mFadingMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/transition/FadePort;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/transition/FadePort;-><init>(I)V

    .line 89
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "fadingMode"    # I

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/transition/VisibilityPort;-><init>()V

    .line 99
    iput p1, p0, Landroid/support/transition/FadePort;->mFadingMode:I

    .line 100
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .registers 6
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 126
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 127
    .local v0, "loc":[I
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 128
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:screenX"

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:screenY"

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method private createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    const/4 v0, 0x0

    .line 107
    cmpl-float v1, p2, p3

    if-nez v1, :cond_b

    .line 109
    if-eqz p4, :cond_a

    .line 110
    invoke-virtual {p4, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 122
    :cond_a
    :goto_a
    return-object v0

    .line 114
    :cond_b
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 116
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-boolean v1, Landroid/support/transition/FadePort;->DBG:Z

    if-eqz v1, :cond_36

    .line 117
    const-string v1, "Fade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created animator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_36
    if-eqz p4, :cond_a

    .line 120
    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_a
.end method


# virtual methods
.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/support/transition/VisibilityPort;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 135
    invoke-direct {p0, p1}, Landroid/support/transition/FadePort;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 136
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 14
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 142
    iget v4, p0, Landroid/support/transition/FadePort;->mFadingMode:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    if-nez p4, :cond_c

    .line 182
    :cond_b
    :goto_b
    return-object v3

    .line 145
    :cond_c
    iget-object v0, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 146
    .local v0, "endView":Landroid/view/View;
    sget-boolean v4, Landroid/support/transition/FadePort;->DBG:Z

    if-eqz v4, :cond_4c

    .line 147
    if-eqz p2, :cond_5e

    iget-object v1, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 148
    .local v1, "startView":Landroid/view/View;
    :goto_16
    const-string v4, "Fade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fade.onAppear: startView, startVis, endView, endVis = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v1    # "startView":Landroid/view/View;
    :cond_4c
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 152
    new-instance v2, Landroid/support/transition/FadePort$1;

    invoke-direct {v2, p0, v0}, Landroid/support/transition/FadePort$1;-><init>(Landroid/support/transition/FadePort;Landroid/view/View;)V

    .line 181
    .local v2, "transitionListener":Landroid/support/transition/TransitionPort$TransitionListener;
    invoke-virtual {p0, v2}, Landroid/support/transition/FadePort;->addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 182
    const/high16 v4, 0x3f800000

    invoke-direct {p0, v0, v7, v4, v3}, Landroid/support/transition/FadePort;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v3

    goto :goto_b

    .end local v2    # "transitionListener":Landroid/support/transition/TransitionPort$TransitionListener;
    :cond_5e
    move-object v1, v3

    .line 147
    goto :goto_16
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 29
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 189
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/transition/FadePort;->mFadingMode:I

    and-int/lit8 v3, v3, 0x2

    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v3, v0, :cond_e

    .line 190
    const/4 v3, 0x0

    .line 347
    :goto_d
    return-object v3

    .line 192
    :cond_e
    const/16 v19, 0x0

    .line 193
    .local v19, "view":Landroid/view/View;
    if-eqz p2, :cond_e8

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v18, v0

    .line 194
    .local v18, "startView":Landroid/view/View;
    :goto_18
    if-eqz p4, :cond_ec

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 195
    .local v10, "endView":Landroid/view/View;
    :goto_1e
    sget-boolean v3, Landroid/support/transition/FadePort;->DBG:Z

    if-eqz v3, :cond_68

    .line 196
    const-string v3, "Fade"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Fade.onDisappear: startView, startVis, endView, endVis = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_68
    const/4 v13, 0x0

    .line 200
    .local v13, "overlayView":Landroid/view/View;
    const/16 v20, 0x0

    .line 201
    .local v20, "viewToKeep":Landroid/view/View;
    if-eqz v10, :cond_73

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_130

    .line 202
    :cond_73
    if-eqz v10, :cond_ef

    .line 204
    move-object v13, v10

    move-object/from16 v19, v10

    .line 240
    :cond_78
    :goto_78
    move/from16 v6, p5

    .line 242
    .local v6, "finalVisibility":I
    if-eqz v13, :cond_14b

    .line 244
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v21, "android:fade:screenX"

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 245
    .local v14, "screenX":I
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v21, "android:fade:screenY"

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 246
    .local v15, "screenY":I
    const/4 v3, 0x2

    new-array v12, v3, [I

    .line 247
    .local v12, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 248
    const/4 v3, 0x0

    aget v3, v12, v3

    sub-int v3, v14, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v21

    sub-int v3, v3, v21

    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 249
    const/4 v3, 0x1

    aget v3, v12, v3

    sub-int v3, v15, v3

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v3, v3, v21

    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 250
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewGroupOverlay;->createFrom(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlay;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/support/transition/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 253
    const/high16 v16, 0x3f800000

    .line 254
    .local v16, "startAlpha":F
    const/4 v9, 0x0

    .line 255
    .local v9, "endAlpha":F
    move-object/from16 v4, v19

    .line 256
    .local v4, "finalView":Landroid/view/View;
    move-object v7, v13

    .line 257
    .local v7, "finalOverlayView":Landroid/view/View;
    move-object/from16 v5, v20

    .line 258
    .local v5, "finalViewToKeep":Landroid/view/View;
    move-object/from16 v8, p1

    .line 259
    .local v8, "finalSceneRoot":Landroid/view/ViewGroup;
    new-instance v2, Landroid/support/transition/FadePort$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/support/transition/FadePort$2;-><init>(Landroid/support/transition/FadePort;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 287
    .local v2, "endListener":Landroid/animation/AnimatorListenerAdapter;
    const/high16 v3, 0x3f800000

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3, v9, v2}, Landroid/support/transition/FadePort;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v3

    goto/16 :goto_d

    .line 193
    .end local v2    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    .end local v4    # "finalView":Landroid/view/View;
    .end local v5    # "finalViewToKeep":Landroid/view/View;
    .end local v6    # "finalVisibility":I
    .end local v7    # "finalOverlayView":Landroid/view/View;
    .end local v8    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v9    # "endAlpha":F
    .end local v10    # "endView":Landroid/view/View;
    .end local v12    # "loc":[I
    .end local v13    # "overlayView":Landroid/view/View;
    .end local v14    # "screenX":I
    .end local v15    # "screenY":I
    .end local v16    # "startAlpha":F
    .end local v18    # "startView":Landroid/view/View;
    .end local v20    # "viewToKeep":Landroid/view/View;
    :cond_e8
    const/16 v18, 0x0

    goto/16 :goto_18

    .line 194
    .restart local v18    # "startView":Landroid/view/View;
    :cond_ec
    const/4 v10, 0x0

    goto/16 :goto_1e

    .line 205
    .restart local v10    # "endView":Landroid/view/View;
    .restart local v13    # "overlayView":Landroid/view/View;
    .restart local v20    # "viewToKeep":Landroid/view/View;
    :cond_ef
    if-eqz v18, :cond_78

    .line 209
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_fd

    .line 211
    move-object/from16 v13, v18

    move-object/from16 v19, v18

    goto/16 :goto_78

    .line 212
    :cond_fd
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_78

    .line 213
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_78

    .line 214
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 215
    .local v17, "startParent":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    move-result v11

    .line 216
    .local v11, "id":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_78

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_78

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/transition/FadePort;->mCanRemoveViews:Z

    if-eqz v3, :cond_78

    .line 220
    move-object/from16 v13, v18

    move-object/from16 v19, v18

    goto/16 :goto_78

    .line 226
    .end local v11    # "id":I
    .end local v17    # "startParent":Landroid/view/View;
    :cond_130
    const/4 v3, 0x4

    move/from16 v0, p5

    if-ne v0, v3, :cond_13b

    .line 227
    move-object/from16 v19, v10

    .line 228
    move-object/from16 v20, v19

    goto/16 :goto_78

    .line 231
    :cond_13b
    move-object/from16 v0, v18

    if-ne v0, v10, :cond_145

    .line 232
    move-object/from16 v19, v10

    .line 233
    move-object/from16 v20, v19

    goto/16 :goto_78

    .line 235
    :cond_145
    move-object/from16 v19, v18

    .line 236
    move-object/from16 v13, v19

    goto/16 :goto_78

    .line 289
    .restart local v6    # "finalVisibility":I
    :cond_14b
    if-eqz v20, :cond_170

    .line 292
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 294
    const/high16 v16, 0x3f800000

    .line 295
    .restart local v16    # "startAlpha":F
    const/4 v9, 0x0

    .line 296
    .restart local v9    # "endAlpha":F
    move-object/from16 v4, v19

    .line 297
    .restart local v4    # "finalView":Landroid/view/View;
    move-object v7, v13

    .line 298
    .restart local v7    # "finalOverlayView":Landroid/view/View;
    move-object/from16 v5, v20

    .line 299
    .restart local v5    # "finalViewToKeep":Landroid/view/View;
    move-object/from16 v8, p1

    .line 300
    .restart local v8    # "finalSceneRoot":Landroid/view/ViewGroup;
    new-instance v2, Landroid/support/transition/FadePort$3;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/support/transition/FadePort$3;-><init>(Landroid/support/transition/FadePort;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 345
    .restart local v2    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    const/high16 v3, 0x3f800000

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3, v9, v2}, Landroid/support/transition/FadePort;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v3

    goto/16 :goto_d

    .line 347
    .end local v2    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    .end local v4    # "finalView":Landroid/view/View;
    .end local v5    # "finalViewToKeep":Landroid/view/View;
    .end local v7    # "finalOverlayView":Landroid/view/View;
    .end local v8    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v9    # "endAlpha":F
    .end local v16    # "startAlpha":F
    :cond_170
    const/4 v3, 0x0

    goto/16 :goto_d
.end method
