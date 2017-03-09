.class Lcom/buzzfeed/android/activity/SpicyActivity$12;
.super Ljava/lang/Object;
.source "SpicyActivity.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SpicyActivity;->onImageShare(Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;)V
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
    .line 703
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$12;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareAction(Ljava/lang/String;)V
    .registers 4
    .param p1, "shareApplication"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 706
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$12;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpicyTracker:Lcom/buzzfeed/android/data/tracking/SpicyTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$12;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SpicyActivity;->mSpiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v0, v1, p1}, Lcom/buzzfeed/android/data/tracking/SpicyTracker;->trackSubBuzzShareActivityClicked(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V

    .line 707
    return-void
.end method
