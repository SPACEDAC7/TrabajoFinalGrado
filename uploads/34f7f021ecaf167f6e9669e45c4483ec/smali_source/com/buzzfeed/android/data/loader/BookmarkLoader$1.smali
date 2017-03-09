.class Lcom/buzzfeed/android/data/loader/BookmarkLoader$1;
.super Ljava/lang/Object;
.source "BookmarkLoader.java"

# interfaces
.implements Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/loader/BookmarkLoader;->load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/loader/BookmarkLoader;

.field final synthetic val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/loader/BookmarkLoader;Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/loader/BookmarkLoader;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/BookmarkLoader;

    iput-object p2, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader$1;->val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookmarkSyncCompleted()V
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/BookmarkLoader;

    # getter for: Lcom/buzzfeed/android/data/loader/BookmarkLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;
    invoke-static {v0}, Lcom/buzzfeed/android/data/loader/BookmarkLoader;->access$000(Lcom/buzzfeed/android/data/loader/BookmarkLoader;)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowList;->clear()V

    .line 33
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/BookmarkLoader;

    # getter for: Lcom/buzzfeed/android/data/loader/BookmarkLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;
    invoke-static {v0}, Lcom/buzzfeed/android/data/loader/BookmarkLoader;->access$200(Lcom/buzzfeed/android/data/loader/BookmarkLoader;)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/BookmarkLoader;

    # getter for: Lcom/buzzfeed/android/data/loader/BookmarkLoader;->mBookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    invoke-static {v1}, Lcom/buzzfeed/android/data/loader/BookmarkLoader;->access$100(Lcom/buzzfeed/android/data/loader/BookmarkLoader;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getBookmarks()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/content/FlowList;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader$1;->val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    .line 35
    return-void
.end method

.method public onBookmarkSyncError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader$1;->val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onError(Ljava/lang/Exception;)V

    .line 40
    return-void
.end method
