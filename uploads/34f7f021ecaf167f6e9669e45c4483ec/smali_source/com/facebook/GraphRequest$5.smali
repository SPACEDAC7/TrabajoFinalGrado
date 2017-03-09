.class final Lcom/facebook/GraphRequest$5;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacks:Ljava/util/ArrayList;

.field final synthetic val$requests:Lcom/facebook/GraphRequestBatch;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/GraphRequestBatch;)V
    .registers 3

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/facebook/GraphRequest$5;->val$callbacks:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/facebook/GraphRequest$5;->val$requests:Lcom/facebook/GraphRequestBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1242
    iget-object v4, p0, Lcom/facebook/GraphRequest$5;->val$callbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1243
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/GraphRequest$Callback;Lcom/facebook/GraphResponse;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/GraphRequest$Callback;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/GraphResponse;

    invoke-interface {v4, v5}, Lcom/facebook/GraphRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    goto :goto_6

    .line 1246
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/GraphRequest$Callback;Lcom/facebook/GraphResponse;>;"
    :cond_1e
    iget-object v4, p0, Lcom/facebook/GraphRequest$5;->val$requests:Lcom/facebook/GraphRequestBatch;

    invoke-virtual {v4}, Lcom/facebook/GraphRequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v1

    .line 1247
    .local v1, "batchCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphRequestBatch$Callback;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequestBatch$Callback;

    .line 1248
    .local v0, "batchCallback":Lcom/facebook/GraphRequestBatch$Callback;
    iget-object v4, p0, Lcom/facebook/GraphRequest$5;->val$requests:Lcom/facebook/GraphRequestBatch;

    invoke-interface {v0, v4}, Lcom/facebook/GraphRequestBatch$Callback;->onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V

    goto :goto_28

    .line 1250
    .end local v0    # "batchCallback":Lcom/facebook/GraphRequestBatch$Callback;
    :cond_3a
    return-void
.end method
