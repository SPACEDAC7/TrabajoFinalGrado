.class Lcom/buzzfeed/android/activity/SplashActivity$2;
.super Lcom/buzzfeed/toolkit/util/AnimatorListener;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SplashActivity;->loadAndPlayAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/SplashActivity;

.field final synthetic val$badgeImageView:Landroid/widget/ImageView;

.field final synthetic val$badgeOutAnimatorSet:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SplashActivity;Landroid/widget/ImageView;Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/SplashActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SplashActivity$2;->this$0:Lcom/buzzfeed/android/activity/SplashActivity;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/SplashActivity$2;->val$badgeImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/buzzfeed/android/activity/SplashActivity$2;->val$badgeOutAnimatorSet:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SplashActivity$2;->val$badgeImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SplashActivity$2;->val$badgeOutAnimatorSet:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 160
    return-void
.end method
