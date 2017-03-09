.class Lcom/buzzfeed/android/activity/SpicyActivity$9;
.super Ljava/lang/Object;
.source "SpicyActivity.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;


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
    .line 497
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$9;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start()Z
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$9;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->supportStartPostponedEnterTransition()V

    .line 501
    const/4 v0, 0x1

    return v0
.end method
