.class Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImmersiveModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$2;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$2;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # setter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$302(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 94
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$2;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$400(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->EXITING_IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    if-ne v0, v1, :cond_2b

    .line 95
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$2;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->NORMAL:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    # setter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mCurState:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$402(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;)Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    .line 96
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$2;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # setter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$502(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Landroid/view/View;)Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$2;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    const/4 v1, -0x1

    # setter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedIndex:I
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$602(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;I)I

    .line 98
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$2;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mMaskItemDecoration:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$700(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->setVisibleChild(Landroid/view/View;)V

    .line 100
    :cond_2b
    return-void
.end method
