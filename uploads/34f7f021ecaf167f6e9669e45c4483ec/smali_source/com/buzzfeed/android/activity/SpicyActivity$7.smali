.class Lcom/buzzfeed/android/activity/SpicyActivity$7;
.super Landroid/support/v4/app/SharedElementCallback;
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
    .line 470
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$7;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {p0}, Landroid/support/v4/app/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$7;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-boolean v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mIsReturning:Z

    if-eqz v1, :cond_16

    .line 474
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$7;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyView:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->getHeaderImageIfOnScreen()Landroid/widget/ImageView;

    move-result-object v0

    .line 475
    .local v0, "sharedElement":Landroid/widget/ImageView;
    if-nez v0, :cond_17

    .line 476
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 477
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 485
    .end local v0    # "sharedElement":Landroid/widget/ImageView;
    :cond_16
    :goto_16
    return-void

    .line 479
    .restart local v0    # "sharedElement":Landroid/widget/ImageView;
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 480
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 482
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16
.end method
