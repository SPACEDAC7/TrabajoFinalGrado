.class Lcom/buzzfeed/android/ui/reactions/ReactionsView$3;
.super Ljava/lang/Object;
.source "ReactionsView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/reactions/ReactionsView;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$3;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 237
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 241
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$3;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->setVisibility(I)V

    .line 233
    return-void
.end method
