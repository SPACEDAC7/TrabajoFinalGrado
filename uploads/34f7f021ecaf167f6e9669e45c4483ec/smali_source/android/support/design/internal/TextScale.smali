.class public Landroid/support/design/internal/TextScale;
.super Landroid/support/transition/Transition;
.source "TextScale.java"


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .registers 6
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 45
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_19

    .line 46
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, "textview":Landroid/widget/TextView;
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:textscale:scale"

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v0    # "textview":Landroid/widget/TextView;
    :cond_19
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/design/internal/TextScale;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 42
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/design/internal/TextScale;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 37
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    const/4 v0, 0x0

    const/high16 v7, 0x3f800000

    .line 54
    if-eqz p2, :cond_13

    if-eqz p3, :cond_13

    iget-object v6, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_13

    iget-object v6, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/TextView;

    if-nez v6, :cond_14

    .line 79
    :cond_13
    :goto_13
    return-object v0

    .line 58
    :cond_14
    iget-object v5, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    .line 59
    .local v5, "view":Landroid/widget/TextView;
    iget-object v4, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 60
    .local v4, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 61
    .local v2, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "android:textscale:scale"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5e

    const-string v6, "android:textscale:scale"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 63
    .local v3, "startSize":F
    :goto_30
    const-string v6, "android:textscale:scale"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_60

    const-string v6, "android:textscale:scale"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 65
    .local v1, "endSize":F
    :goto_44
    cmpl-float v6, v3, v1

    if-eqz v6, :cond_13

    .line 69
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 71
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/support/design/internal/TextScale$1;

    invoke-direct {v6, p0, v5}, Landroid/support/design/internal/TextScale$1;-><init>(Landroid/support/design/internal/TextScale;Landroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_13

    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "endSize":F
    .end local v3    # "startSize":F
    :cond_5e
    move v3, v7

    .line 61
    goto :goto_30

    .restart local v3    # "startSize":F
    :cond_60
    move v1, v7

    .line 63
    goto :goto_44
.end method
