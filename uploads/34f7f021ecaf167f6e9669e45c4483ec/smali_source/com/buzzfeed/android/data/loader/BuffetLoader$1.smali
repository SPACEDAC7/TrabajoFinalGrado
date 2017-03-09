.class Lcom/buzzfeed/android/data/loader/BuffetLoader$1;
.super Ljava/lang/Object;
.source "BuffetLoader.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/loader/BuffetLoader;->loadNextPage(Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/loader/BuffetLoader;

.field final synthetic val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/loader/BuffetLoader;Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/loader/BuffetLoader;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    iput-object p2, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader$1;->val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    # operator-- for: Lcom/buzzfeed/android/data/loader/BuffetLoader;->mCurrentPage:I
    invoke-static {v0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->access$010(Lcom/buzzfeed/android/data/loader/BuffetLoader;)I

    .line 104
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader$1;->val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-interface {v0, p1}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onError(Ljava/lang/Exception;)V

    .line 105
    return-void
.end method

.method public onLoadComplete()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BuffetLoader$1;->val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    .line 99
    return-void
.end method
