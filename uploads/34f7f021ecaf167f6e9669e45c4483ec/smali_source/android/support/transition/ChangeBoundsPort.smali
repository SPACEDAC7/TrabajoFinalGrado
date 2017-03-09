.class Landroid/support/transition/ChangeBoundsPort;
.super Landroid/support/transition/TransitionPort;
.source "ChangeBoundsPort.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static sRectEvaluator:Landroid/support/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field mReparent:Z

.field mResizeClip:Z

.field tempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/ChangeBoundsPort;->sTransitionProperties:[Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/support/transition/RectEvaluator;

    invoke-direct {v0}, Landroid/support/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroid/support/transition/ChangeBoundsPort;->sRectEvaluator:Landroid/support/transition/RectEvaluator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/support/transition/TransitionPort;-><init>()V

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    .line 63
    iput-boolean v1, p0, Landroid/support/transition/ChangeBoundsPort;->mResizeClip:Z

    .line 65
    iput-boolean v1, p0, Landroid/support/transition/ChangeBoundsPort;->mReparent:Z

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .registers 10
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 91
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 92
    .local v0, "view":Landroid/view/View;
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 96
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    iget-object v3, p0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    iget-object v3, p0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBoundsPort;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 108
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBoundsPort;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 103
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 55
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 113
    if-eqz p2, :cond_4

    if-nez p3, :cond_6

    .line 114
    :cond_4
    const/4 v5, 0x0

    .line 346
    :cond_5
    :goto_5
    return-object v5

    .line 116
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v34, v0

    .line 117
    .local v34, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 118
    .local v15, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v46, "android:changeBounds:parent"

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/view/ViewGroup;

    .line 119
    .local v33, "startParent":Landroid/view/ViewGroup;
    const-string v46, "android:changeBounds:parent"

    move-object/from16 v0, v46

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 120
    .local v14, "endParent":Landroid/view/ViewGroup;
    if-eqz v33, :cond_2a

    if-nez v14, :cond_2c

    .line 121
    :cond_2a
    const/4 v5, 0x0

    goto :goto_5

    .line 123
    :cond_2c
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v44, v0

    .line 124
    .local v44, "view":Landroid/view/View;
    move-object/from16 v0, v33

    if-eq v0, v14, :cond_44

    .line 125
    invoke-virtual/range {v33 .. v33}, Landroid/view/ViewGroup;->getId()I

    move-result v46

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getId()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_1ad

    :cond_44
    const/16 v24, 0x1

    .line 130
    .local v24, "parentsEqual":Z
    :goto_46
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/transition/ChangeBoundsPort;->mReparent:Z

    move/from16 v46, v0

    if-eqz v46, :cond_50

    if-eqz v24, :cond_2e3

    .line 131
    :cond_50
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v46, v0

    const-string v47, "android:changeBounds:bounds"

    invoke-interface/range {v46 .. v47}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/graphics/Rect;

    .line 132
    .local v29, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v46, v0

    const-string v47, "android:changeBounds:bounds"

    invoke-interface/range {v46 .. v47}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 133
    .local v10, "endBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    .line 134
    .local v32, "startLeft":I
    iget v13, v10, Landroid/graphics/Rect;->left:I

    .line 135
    .local v13, "endLeft":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    .line 136
    .local v36, "startTop":I
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 137
    .local v17, "endTop":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    .line 138
    .local v35, "startRight":I
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    .line 139
    .local v16, "endRight":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    .line 140
    .local v28, "startBottom":I
    iget v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 141
    .local v9, "endBottom":I
    sub-int v37, v35, v32

    .line 142
    .local v37, "startWidth":I
    sub-int v31, v28, v36

    .line 143
    .local v31, "startHeight":I
    sub-int v18, v16, v13

    .line 144
    .local v18, "endWidth":I
    sub-int v12, v9, v17

    .line 145
    .local v12, "endHeight":I
    const/16 v22, 0x0

    .line 146
    .local v22, "numChanges":I
    if-eqz v37, :cond_be

    if-eqz v31, :cond_be

    if-eqz v18, :cond_be

    if-eqz v12, :cond_be

    .line 147
    move/from16 v0, v32

    if-eq v0, v13, :cond_a8

    .line 148
    add-int/lit8 v22, v22, 0x1

    .line 150
    :cond_a8
    move/from16 v0, v36

    move/from16 v1, v17

    if-eq v0, v1, :cond_b0

    .line 151
    add-int/lit8 v22, v22, 0x1

    .line 153
    :cond_b0
    move/from16 v0, v35

    move/from16 v1, v16

    if-eq v0, v1, :cond_b8

    .line 154
    add-int/lit8 v22, v22, 0x1

    .line 156
    :cond_b8
    move/from16 v0, v28

    if-eq v0, v9, :cond_be

    .line 157
    add-int/lit8 v22, v22, 0x1

    .line 160
    :cond_be
    if-lez v22, :cond_439

    .line 161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/transition/ChangeBoundsPort;->mResizeClip:Z

    move/from16 v46, v0

    if-nez v46, :cond_1b1

    .line 162
    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v25, v0

    .line 163
    .local v25, "pvh":[Landroid/animation/PropertyValuesHolder;
    const/16 v26, 0x0

    .line 164
    .local v26, "pvhIndex":I
    move/from16 v0, v32

    if-eq v0, v13, :cond_db

    .line 165
    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    .line 167
    :cond_db
    move/from16 v0, v36

    move/from16 v1, v17

    if-eq v0, v1, :cond_e8

    .line 168
    move-object/from16 v0, v44

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 170
    :cond_e8
    move/from16 v0, v35

    move/from16 v1, v16

    if-eq v0, v1, :cond_f5

    .line 171
    move-object/from16 v0, v44

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    .line 173
    :cond_f5
    move/from16 v0, v28

    if-eq v0, v9, :cond_100

    .line 174
    move-object/from16 v0, v44

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    .line 176
    :cond_100
    move/from16 v0, v32

    if-eq v0, v13, :cond_448

    .line 177
    add-int/lit8 v27, v26, 0x1

    .end local v26    # "pvhIndex":I
    .local v27, "pvhIndex":I
    const-string v46, "left"

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v32, v47, v48

    const/16 v48, 0x1

    aput v13, v47, v48

    invoke-static/range {v46 .. v47}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v46

    aput-object v46, v25, v26

    .line 179
    :goto_11e
    move/from16 v0, v36

    move/from16 v1, v17

    if-eq v0, v1, :cond_141

    .line 180
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    const-string/jumbo v46, "top"

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v36, v47, v48

    const/16 v48, 0x1

    aput v17, v47, v48

    invoke-static/range {v46 .. v47}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v46

    aput-object v46, v25, v27

    move/from16 v27, v26

    .line 182
    .end local v26    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    :cond_141
    move/from16 v0, v35

    move/from16 v1, v16

    if-eq v0, v1, :cond_163

    .line 183
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    const-string v46, "right"

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v35, v47, v48

    const/16 v48, 0x1

    aput v16, v47, v48

    invoke-static/range {v46 .. v47}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v46

    aput-object v46, v25, v27

    move/from16 v27, v26

    .line 186
    .end local v26    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    :cond_163
    move/from16 v0, v28

    if-eq v0, v9, :cond_444

    .line 187
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    const-string v46, "bottom"

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput v28, v47, v48

    const/16 v48, 0x1

    aput v9, v47, v48

    invoke-static/range {v46 .. v47}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v46

    aput-object v46, v25, v27

    .line 190
    :goto_181
    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 191
    .local v5, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v46

    move-object/from16 v0, v46

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v46, v0

    if-eqz v46, :cond_5

    .line 192
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 194
    .local v23, "parent":Landroid/view/ViewGroup;
    new-instance v43, Landroid/support/transition/ChangeBoundsPort$1;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/transition/ChangeBoundsPort$1;-><init>(Landroid/support/transition/ChangeBoundsPort;)V

    .line 220
    .local v43, "transitionListener":Landroid/support/transition/TransitionPort$TransitionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/support/transition/ChangeBoundsPort;->addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    goto/16 :goto_5

    .line 125
    .end local v5    # "anim":Landroid/animation/ObjectAnimator;
    .end local v9    # "endBottom":I
    .end local v10    # "endBounds":Landroid/graphics/Rect;
    .end local v12    # "endHeight":I
    .end local v13    # "endLeft":I
    .end local v16    # "endRight":I
    .end local v17    # "endTop":I
    .end local v18    # "endWidth":I
    .end local v22    # "numChanges":I
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v24    # "parentsEqual":Z
    .end local v25    # "pvh":[Landroid/animation/PropertyValuesHolder;
    .end local v26    # "pvhIndex":I
    .end local v28    # "startBottom":I
    .end local v29    # "startBounds":Landroid/graphics/Rect;
    .end local v31    # "startHeight":I
    .end local v32    # "startLeft":I
    .end local v35    # "startRight":I
    .end local v36    # "startTop":I
    .end local v37    # "startWidth":I
    .end local v43    # "transitionListener":Landroid/support/transition/TransitionPort$TransitionListener;
    :cond_1ad
    const/16 v24, 0x0

    goto/16 :goto_46

    .line 224
    .restart local v9    # "endBottom":I
    .restart local v10    # "endBounds":Landroid/graphics/Rect;
    .restart local v12    # "endHeight":I
    .restart local v13    # "endLeft":I
    .restart local v16    # "endRight":I
    .restart local v17    # "endTop":I
    .restart local v18    # "endWidth":I
    .restart local v22    # "numChanges":I
    .restart local v24    # "parentsEqual":Z
    .restart local v28    # "startBottom":I
    .restart local v29    # "startBounds":Landroid/graphics/Rect;
    .restart local v31    # "startHeight":I
    .restart local v32    # "startLeft":I
    .restart local v35    # "startRight":I
    .restart local v36    # "startTop":I
    .restart local v37    # "startWidth":I
    :cond_1b1
    move/from16 v0, v37

    move/from16 v1, v18

    if-eq v0, v1, :cond_1c8

    .line 226
    move/from16 v0, v37

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v46

    add-int v46, v46, v13

    .line 225
    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    .line 228
    :cond_1c8
    move/from16 v0, v31

    if-eq v0, v12, :cond_1db

    .line 230
    move/from16 v0, v31

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v46

    add-int v46, v46, v17

    .line 229
    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    .line 233
    :cond_1db
    move/from16 v0, v32

    if-eq v0, v13, :cond_1ed

    .line 234
    sub-int v46, v32, v13

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 236
    :cond_1ed
    move/from16 v0, v36

    move/from16 v1, v17

    if-eq v0, v1, :cond_201

    .line 237
    sub-int v46, v36, v17

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 240
    :cond_201
    sub-int v46, v13, v32

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v41, v0

    .line 241
    .local v41, "transXDelta":F
    sub-int v46, v17, v36

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v42, v0

    .line 242
    .local v42, "transYDelta":F
    sub-int v45, v18, v37

    .line 243
    .local v45, "widthDelta":I
    sub-int v21, v12, v31

    .line 244
    .local v21, "heightDelta":I
    const/16 v22, 0x0

    .line 245
    const/16 v46, 0x0

    cmpl-float v46, v41, v46

    if-eqz v46, :cond_21d

    .line 246
    add-int/lit8 v22, v22, 0x1

    .line 248
    :cond_21d
    const/16 v46, 0x0

    cmpl-float v46, v42, v46

    if-eqz v46, :cond_225

    .line 249
    add-int/lit8 v22, v22, 0x1

    .line 251
    :cond_225
    if-nez v45, :cond_229

    if-eqz v21, :cond_22b

    .line 252
    :cond_229
    add-int/lit8 v22, v22, 0x1

    .line 254
    :cond_22b
    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v25, v0

    .line 255
    .restart local v25    # "pvh":[Landroid/animation/PropertyValuesHolder;
    const/16 v26, 0x0

    .line 256
    .restart local v26    # "pvhIndex":I
    const/16 v46, 0x0

    cmpl-float v46, v41, v46

    if-eqz v46, :cond_440

    .line 257
    add-int/lit8 v27, v26, 0x1

    .end local v26    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    const-string/jumbo v46, "translationX"

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [F

    move-object/from16 v47, v0

    const/16 v48, 0x0

    .line 258
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getTranslationX()F

    move-result v49

    aput v49, v47, v48

    const/16 v48, 0x1

    const/16 v49, 0x0

    aput v49, v47, v48

    .line 257
    invoke-static/range {v46 .. v47}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v46

    aput-object v46, v25, v26

    .line 260
    :goto_25a
    const/16 v46, 0x0

    cmpl-float v46, v42, v46

    if-eqz v46, :cond_43c

    .line 261
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    const-string/jumbo v46, "translationY"

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [F

    move-object/from16 v47, v0

    const/16 v48, 0x0

    .line 262
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getTranslationY()F

    move-result v49

    aput v49, v47, v48

    const/16 v48, 0x1

    const/16 v49, 0x0

    aput v49, v47, v48

    .line 261
    invoke-static/range {v46 .. v47}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v46

    aput-object v46, v25, v27

    .line 264
    :goto_281
    if-nez v45, :cond_285

    if-eqz v21, :cond_2a9

    .line 265
    :cond_285
    new-instance v40, Landroid/graphics/Rect;

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v37

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 266
    .local v40, "tempStartBounds":Landroid/graphics/Rect;
    new-instance v46, Landroid/graphics/Rect;

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 270
    .end local v40    # "tempStartBounds":Landroid/graphics/Rect;
    :cond_2a9
    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 271
    .restart local v5    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v46

    move-object/from16 v0, v46

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v46, v0

    if-eqz v46, :cond_2d3

    .line 272
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 274
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    new-instance v43, Landroid/support/transition/ChangeBoundsPort$2;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/transition/ChangeBoundsPort$2;-><init>(Landroid/support/transition/ChangeBoundsPort;)V

    .line 300
    .restart local v43    # "transitionListener":Landroid/support/transition/TransitionPort$TransitionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/support/transition/ChangeBoundsPort;->addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 302
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v43    # "transitionListener":Landroid/support/transition/TransitionPort$TransitionListener;
    :cond_2d3
    new-instance v46, Landroid/support/transition/ChangeBoundsPort$3;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/transition/ChangeBoundsPort$3;-><init>(Landroid/support/transition/ChangeBoundsPort;)V

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_5

    .line 312
    .end local v5    # "anim":Landroid/animation/ObjectAnimator;
    .end local v9    # "endBottom":I
    .end local v10    # "endBounds":Landroid/graphics/Rect;
    .end local v12    # "endHeight":I
    .end local v13    # "endLeft":I
    .end local v16    # "endRight":I
    .end local v17    # "endTop":I
    .end local v18    # "endWidth":I
    .end local v21    # "heightDelta":I
    .end local v22    # "numChanges":I
    .end local v25    # "pvh":[Landroid/animation/PropertyValuesHolder;
    .end local v26    # "pvhIndex":I
    .end local v28    # "startBottom":I
    .end local v29    # "startBounds":Landroid/graphics/Rect;
    .end local v31    # "startHeight":I
    .end local v32    # "startLeft":I
    .end local v35    # "startRight":I
    .end local v36    # "startTop":I
    .end local v37    # "startWidth":I
    .end local v41    # "transXDelta":F
    .end local v42    # "transYDelta":F
    .end local v45    # "widthDelta":I
    :cond_2e3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v46, v0

    const-string v47, "android:changeBounds:windowX"

    invoke-interface/range {v46 .. v47}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Integer;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 313
    .local v38, "startX":I
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v46, v0

    const-string v47, "android:changeBounds:windowY"

    invoke-interface/range {v46 .. v47}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Integer;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 314
    .local v39, "startY":I
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v46, v0

    const-string v47, "android:changeBounds:windowX"

    invoke-interface/range {v46 .. v47}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Integer;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 315
    .local v19, "endX":I
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v46, v0

    const-string v47, "android:changeBounds:windowY"

    invoke-interface/range {v46 .. v47}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Integer;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 317
    .local v20, "endY":I
    move/from16 v0, v38

    move/from16 v1, v19

    if-ne v0, v1, :cond_337

    move/from16 v0, v39

    move/from16 v1, v20

    if-eq v0, v1, :cond_439

    .line 318
    :cond_337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    move-object/from16 v46, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 319
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getWidth()I

    move-result v46

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getHeight()I

    move-result v47

    sget-object v48, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v46 .. v48}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 321
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    .local v7, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 323
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    .local v8, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v46, 0x4

    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewOverlay;->createFrom(Landroid/view/View;)Landroid/support/transition/ViewOverlay;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v8}, Landroid/support/transition/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 327
    new-instance v30, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget v46, v46, v47

    sub-int v46, v38, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    move-object/from16 v47, v0

    const/16 v48, 0x1

    aget v47, v47, v48

    sub-int v47, v39, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aget v48, v48, v49

    sub-int v48, v38, v48

    .line 328
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getWidth()I

    move-result v49

    add-int v48, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    move-object/from16 v49, v0

    const/16 v50, 0x1

    aget v49, v49, v50

    sub-int v49, v39, v49

    .line 329
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getHeight()I

    move-result v50

    add-int v49, v49, v50

    move-object/from16 v0, v30

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 330
    .local v30, "startBounds1":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget v46, v46, v47

    sub-int v46, v19, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    move-object/from16 v47, v0

    const/16 v48, 0x1

    aget v47, v47, v48

    sub-int v47, v20, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aget v48, v48, v49

    sub-int v48, v19, v48

    .line 331
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getWidth()I

    move-result v49

    add-int v48, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/transition/ChangeBoundsPort;->tempLocation:[I

    move-object/from16 v49, v0

    const/16 v50, 0x1

    aget v49, v49, v50

    sub-int v49, v20, v49

    .line 332
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getHeight()I

    move-result v50

    add-int v49, v49, v50

    move/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 333
    .local v11, "endBounds1":Landroid/graphics/Rect;
    const-string v46, "bounds"

    sget-object v47, Landroid/support/transition/ChangeBoundsPort;->sRectEvaluator:Landroid/support/transition/RectEvaluator;

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput-object v30, v48, v49

    const/16 v49, 0x1

    aput-object v11, v48, v49

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-static {v8, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 335
    .restart local v5    # "anim":Landroid/animation/ObjectAnimator;
    new-instance v46, Landroid/support/transition/ChangeBoundsPort$4;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v8, v3}, Landroid/support/transition/ChangeBoundsPort$4;-><init>(Landroid/support/transition/ChangeBoundsPort;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_5

    .line 346
    .end local v5    # "anim":Landroid/animation/ObjectAnimator;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "endBounds1":Landroid/graphics/Rect;
    .end local v19    # "endX":I
    .end local v20    # "endY":I
    .end local v30    # "startBounds1":Landroid/graphics/Rect;
    .end local v38    # "startX":I
    .end local v39    # "startY":I
    :cond_439
    const/4 v5, 0x0

    goto/16 :goto_5

    .restart local v9    # "endBottom":I
    .restart local v10    # "endBounds":Landroid/graphics/Rect;
    .restart local v12    # "endHeight":I
    .restart local v13    # "endLeft":I
    .restart local v16    # "endRight":I
    .restart local v17    # "endTop":I
    .restart local v18    # "endWidth":I
    .restart local v21    # "heightDelta":I
    .restart local v22    # "numChanges":I
    .restart local v25    # "pvh":[Landroid/animation/PropertyValuesHolder;
    .restart local v27    # "pvhIndex":I
    .restart local v28    # "startBottom":I
    .restart local v29    # "startBounds":Landroid/graphics/Rect;
    .restart local v31    # "startHeight":I
    .restart local v32    # "startLeft":I
    .restart local v35    # "startRight":I
    .restart local v36    # "startTop":I
    .restart local v37    # "startWidth":I
    .restart local v41    # "transXDelta":F
    .restart local v42    # "transYDelta":F
    .restart local v45    # "widthDelta":I
    :cond_43c
    move/from16 v26, v27

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    goto/16 :goto_281

    :cond_440
    move/from16 v27, v26

    .end local v26    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    goto/16 :goto_25a

    .end local v21    # "heightDelta":I
    .end local v41    # "transXDelta":F
    .end local v42    # "transYDelta":F
    .end local v45    # "widthDelta":I
    :cond_444
    move/from16 v26, v27

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    goto/16 :goto_181

    :cond_448
    move/from16 v27, v26

    .end local v26    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    goto/16 :goto_11e
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    sget-object v0, Landroid/support/transition/ChangeBoundsPort;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .registers 2
    .param p1, "reparent"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/support/transition/ChangeBoundsPort;->mReparent:Z

    .line 88
    return-void
.end method

.method public setResizeClip(Z)V
    .registers 2
    .param p1, "resizeClip"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/support/transition/ChangeBoundsPort;->mResizeClip:Z

    .line 74
    return-void
.end method
