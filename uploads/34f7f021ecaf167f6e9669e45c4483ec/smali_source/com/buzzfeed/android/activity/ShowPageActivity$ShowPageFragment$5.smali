.class Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$5;
.super Ljava/lang/Object;
.source "ShowPageActivity.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;

.field final synthetic val$content:Lcom/buzzfeed/toolkit/content/VideoContent;

.field final synthetic val$positionInFeed:I

.field final synthetic val$videoContentUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;Lcom/buzzfeed/toolkit/content/VideoContent;Ljava/lang/String;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$5;->this$0:Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$5;->val$content:Lcom/buzzfeed/toolkit/content/VideoContent;

    iput-object p3, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$5;->val$videoContentUri:Ljava/lang/String;

    iput p4, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$5;->val$positionInFeed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareAction(Ljava/lang/String;)V
    .registers 6
    .param p1, "shareApplication"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 271
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$5;->this$0:Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;

    # getter for: Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->access$100(Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;)Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$5;->val$content:Lcom/buzzfeed/toolkit/content/VideoContent;

    .line 272
    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$5;->val$videoContentUri:Ljava/lang/String;

    iget v3, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$5;->val$positionInFeed:I

    .line 271
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->trackVideoShareAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    return-void
.end method
