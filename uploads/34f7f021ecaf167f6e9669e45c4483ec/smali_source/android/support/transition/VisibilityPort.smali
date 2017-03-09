.class abstract Landroid/support/transition/VisibilityPort;
.super Landroid/support/transition/TransitionPort;
.source "VisibilityPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/VisibilityPort$VisibilityInfo;
    }
.end annotation


# static fields
.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/VisibilityPort;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/transition/TransitionPort;-><init>()V

    .line 216
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .registers 6
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 51
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 52
    .local v0, "visibility":I
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    iget-object v3, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method private getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/VisibilityPort$VisibilityInfo;
    .registers 10
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 93
    new-instance v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;

    invoke-direct {v0}, Landroid/support/transition/VisibilityPort$VisibilityInfo;-><init>()V

    .line 94
    .local v0, "visInfo":Landroid/support/transition/VisibilityPort$VisibilityInfo;
    iput-boolean v4, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->visibilityChange:Z

    .line 95
    iput-boolean v4, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->fadeIn:Z

    .line 96
    if-eqz p1, :cond_5a

    .line 97
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startVisibility:I

    .line 98
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    .line 103
    :goto_2b
    if-eqz p2, :cond_5f

    .line 104
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endVisibility:I

    .line 105
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    .line 110
    :goto_49
    if-eqz p1, :cond_72

    if-eqz p2, :cond_72

    .line 111
    iget v1, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endVisibility:I

    if-ne v1, v2, :cond_64

    iget-object v1, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_64

    .line 142
    :cond_59
    :goto_59
    return-object v0

    .line 100
    :cond_5a
    iput v5, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startVisibility:I

    .line 101
    iput-object v6, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_2b

    .line 107
    :cond_5f
    iput v5, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endVisibility:I

    .line 108
    iput-object v6, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_49

    .line 115
    :cond_64
    iget v1, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endVisibility:I

    if-eq v1, v2, :cond_82

    .line 116
    iget v1, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startVisibility:I

    if-nez v1, :cond_79

    .line 117
    iput-boolean v4, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->fadeIn:Z

    .line 118
    iput-boolean v3, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->visibilityChange:Z

    .line 135
    :cond_72
    :goto_72
    if-nez p1, :cond_9a

    .line 136
    iput-boolean v3, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->fadeIn:Z

    .line 137
    iput-boolean v3, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->visibilityChange:Z

    goto :goto_59

    .line 119
    :cond_79
    iget v1, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endVisibility:I

    if-nez v1, :cond_72

    .line 120
    iput-boolean v3, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->fadeIn:Z

    .line 121
    iput-boolean v3, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->visibilityChange:Z

    goto :goto_72

    .line 124
    :cond_82
    iget-object v1, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq v1, v2, :cond_72

    .line 125
    iget-object v1, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_91

    .line 126
    iput-boolean v4, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->fadeIn:Z

    .line 127
    iput-boolean v3, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->visibilityChange:Z

    goto :goto_72

    .line 128
    :cond_91
    iget-object v1, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_72

    .line 129
    iput-boolean v3, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->fadeIn:Z

    .line 130
    iput-boolean v3, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->visibilityChange:Z

    goto :goto_72

    .line 138
    :cond_9a
    if-nez p2, :cond_59

    .line 139
    iput-boolean v4, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->fadeIn:Z

    .line 140
    iput-boolean v3, v0, Landroid/support/transition/VisibilityPort$VisibilityInfo;->visibilityChange:Z

    goto :goto_59
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/support/transition/VisibilityPort;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 64
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/transition/VisibilityPort;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 59
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 16
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p2, p3}, Landroid/support/transition/VisibilityPort;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/VisibilityPort$VisibilityInfo;

    move-result-object v11

    .line 149
    .local v11, "visInfo":Landroid/support/transition/VisibilityPort$VisibilityInfo;
    iget-boolean v1, v11, Landroid/support/transition/VisibilityPort$VisibilityInfo;->visibilityChange:Z

    if-eqz v1, :cond_58

    .line 152
    const/4 v8, 0x0

    .line 153
    .local v8, "isTarget":Z
    iget-object v1, p0, Landroid/support/transition/VisibilityPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1b

    iget-object v1, p0, Landroid/support/transition/VisibilityPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3e

    .line 154
    :cond_1b
    if-eqz p2, :cond_59

    iget-object v10, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 155
    .local v10, "startView":Landroid/view/View;
    :goto_1f
    if-eqz p3, :cond_5b

    iget-object v7, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 156
    .local v7, "endView":Landroid/view/View;
    :goto_23
    if-eqz v10, :cond_5d

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v9

    .line 157
    .local v9, "startId":I
    :goto_29
    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v6

    .line 158
    .local v6, "endId":I
    :cond_2f
    int-to-long v2, v9

    invoke-virtual {p0, v10, v2, v3}, Landroid/support/transition/VisibilityPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_3d

    int-to-long v2, v6

    invoke-virtual {p0, v7, v2, v3}, Landroid/support/transition/VisibilityPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v1

    if-eqz v1, :cond_5f

    :cond_3d
    const/4 v8, 0x1

    .line 160
    .end local v6    # "endId":I
    .end local v7    # "endView":Landroid/view/View;
    .end local v9    # "startId":I
    .end local v10    # "startView":Landroid/view/View;
    :cond_3e
    :goto_3e
    if-nez v8, :cond_48

    iget-object v1, v11, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_48

    iget-object v1, v11, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_58

    .line 161
    :cond_48
    iget-boolean v0, v11, Landroid/support/transition/VisibilityPort$VisibilityInfo;->fadeIn:Z

    if-eqz v0, :cond_61

    .line 162
    iget v3, v11, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startVisibility:I

    iget v5, v11, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/VisibilityPort;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    .line 171
    .end local v8    # "isTarget":Z
    :cond_58
    :goto_58
    return-object v0

    .restart local v8    # "isTarget":Z
    :cond_59
    move-object v10, v0

    .line 154
    goto :goto_1f

    .restart local v10    # "startView":Landroid/view/View;
    :cond_5b
    move-object v7, v0

    .line 155
    goto :goto_23

    .restart local v7    # "endView":Landroid/view/View;
    :cond_5d
    move v9, v6

    .line 156
    goto :goto_29

    .line 158
    .restart local v6    # "endId":I
    .restart local v9    # "startId":I
    :cond_5f
    const/4 v8, 0x0

    goto :goto_3e

    .line 165
    .end local v6    # "endId":I
    .end local v7    # "endView":Landroid/view/View;
    .end local v9    # "startId":I
    .end local v10    # "startView":Landroid/view/View;
    :cond_61
    iget v3, v11, Landroid/support/transition/VisibilityPort$VisibilityInfo;->startVisibility:I

    iget v5, v11, Landroid/support/transition/VisibilityPort$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/VisibilityPort;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_58
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Landroid/support/transition/VisibilityPort;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .registers 7
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    const/4 v3, 0x0

    .line 82
    if-nez p1, :cond_4

    .line 88
    :goto_3
    return v3

    .line 85
    :cond_4
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 86
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:parent"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 88
    .local v0, "parent":Landroid/view/View;
    if-nez v1, :cond_23

    if-eqz v0, :cond_23

    const/4 v2, 0x1

    :goto_21
    move v3, v2

    goto :goto_3

    :cond_23
    move v2, v3

    goto :goto_21
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method
