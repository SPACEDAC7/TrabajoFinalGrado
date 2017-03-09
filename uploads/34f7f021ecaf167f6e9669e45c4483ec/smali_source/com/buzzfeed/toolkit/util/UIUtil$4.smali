.class final Lcom/buzzfeed/toolkit/util/UIUtil$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UIUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/UIUtil;->withEndActionApi14(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 420
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/UIUtil$4;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/UIUtil$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 424
    return-void
.end method
