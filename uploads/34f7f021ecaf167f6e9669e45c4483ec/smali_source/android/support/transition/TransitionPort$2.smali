.class Landroid/support/transition/TransitionPort$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TransitionPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/TransitionPort;->animate(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/TransitionPort;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionPort;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 943
    iput-object p1, p0, Landroid/support/transition/TransitionPort$2;->this$0:Landroid/support/transition/TransitionPort;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 946
    iget-object v0, p0, Landroid/support/transition/TransitionPort$2;->this$0:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->end()V

    .line 947
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 948
    return-void
.end method
