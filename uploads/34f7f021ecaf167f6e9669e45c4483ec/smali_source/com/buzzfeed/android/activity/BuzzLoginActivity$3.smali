.class Lcom/buzzfeed/android/activity/BuzzLoginActivity$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BuzzLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuzzLoginActivity;->setupArrowAnimation(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$3;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$3;->mCanceled:Z

    .line 409
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$3;->mCanceled:Z

    if-nez v0, :cond_7

    .line 414
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 416
    :cond_7
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$3;->mCanceled:Z

    .line 404
    return-void
.end method
