.class Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$5;
.super Ljava/lang/Object;
.source "BFBookmarkManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->syncBookmarksWithJson(Lcom/buzzfeed/toolkit/content/FlowList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/buzzfeed/toolkit/content/FlowItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$5;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/buzzfeed/toolkit/content/FlowItem;Lcom/buzzfeed/toolkit/content/FlowItem;)I
    .registers 13
    .param p1, "f1"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "f2"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    const-wide/16 v8, 0x0

    .line 735
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$5;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isTypeBuzz(Lcom/buzzfeed/toolkit/content/FlowItem;)Z
    invoke-static {v4, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$700(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$5;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isTypeBuzz(Lcom/buzzfeed/toolkit/content/FlowItem;)Z
    invoke-static {v4, p2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$700(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 736
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 737
    .local v0, "b1":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {p2}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 738
    .local v1, "b2":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/Buzz;->getBookmarked()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/Buzz;->getBookmarked()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 739
    .local v2, "diff":J
    cmp-long v4, v2, v8

    if-gez v4, :cond_2e

    const/4 v4, -0x1

    .line 742
    .end local v0    # "b1":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v1    # "b2":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v2    # "diff":J
    :goto_2d
    return v4

    .line 740
    .restart local v0    # "b1":Lcom/buzzfeed/toolkit/content/Buzz;
    .restart local v1    # "b2":Lcom/buzzfeed/toolkit/content/Buzz;
    .restart local v2    # "diff":J
    :cond_2e
    cmp-long v4, v2, v8

    if-lez v4, :cond_34

    const/4 v4, 0x1

    goto :goto_2d

    .line 742
    .end local v0    # "b1":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v1    # "b2":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v2    # "diff":J
    :cond_34
    const/4 v4, 0x0

    goto :goto_2d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 732
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    check-cast p2, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$5;->compare(Lcom/buzzfeed/toolkit/content/FlowItem;Lcom/buzzfeed/toolkit/content/FlowItem;)I

    move-result v0

    return v0
.end method
