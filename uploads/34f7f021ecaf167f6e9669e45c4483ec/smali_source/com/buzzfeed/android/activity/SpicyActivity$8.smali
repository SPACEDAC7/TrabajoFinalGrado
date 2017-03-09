.class Lcom/buzzfeed/android/activity/SpicyActivity$8;
.super Lcom/buzzfeed/toolkit/util/TransitionListener;
.source "SpicyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SpicyActivity;->setUpSharedElementTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/SpicyActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$8;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$8;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    if-eqz v0, :cond_d

    .line 493
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$8;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->onSharedElementTransitionEnd()V

    .line 495
    :cond_d
    return-void
.end method
