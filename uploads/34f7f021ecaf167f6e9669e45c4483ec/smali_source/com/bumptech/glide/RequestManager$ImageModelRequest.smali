.class public final Lcom/bumptech/glide/RequestManager$ImageModelRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImageModelRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final loader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "this":Lcom/bumptech/glide/RequestManager$ImageModelRequest;, "Lcom/bumptech/glide/RequestManager$ImageModelRequest<TT;>;"
    .local p2, "loader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TT;Ljava/io/InputStream;>;"
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-object p2, p0, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->loader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 675
    return-void
.end method


# virtual methods
.method public from(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 684
    .local p0, "this":Lcom/bumptech/glide/RequestManager$ImageModelRequest;, "Lcom/bumptech/glide/RequestManager$ImageModelRequest<TT;>;"
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    # getter for: Lcom/bumptech/glide/RequestManager;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;
    invoke-static {v0}, Lcom/bumptech/glide/RequestManager;->access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v9

    new-instance v0, Lcom/bumptech/glide/DrawableTypeRequest;

    iget-object v2, p0, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->loader:Lcom/bumptech/glide/load/model/ModelLoader;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    # getter for: Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/bumptech/glide/RequestManager;->access$100(Lcom/bumptech/glide/RequestManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    # getter for: Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;
    invoke-static {v1}, Lcom/bumptech/glide/RequestManager;->access$200(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/Glide;

    move-result-object v5

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    # getter for: Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;
    invoke-static {v1}, Lcom/bumptech/glide/RequestManager;->access$300(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/RequestTracker;

    move-result-object v6

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    # getter for: Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;
    invoke-static {v1}, Lcom/bumptech/glide/RequestManager;->access$400(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/Lifecycle;

    move-result-object v7

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    # getter for: Lcom/bumptech/glide/RequestManager;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;
    invoke-static {v1}, Lcom/bumptech/glide/RequestManager;->access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v8

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, "this":Lcom/bumptech/glide/RequestManager$ImageModelRequest;, "Lcom/bumptech/glide/RequestManager$ImageModelRequest<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    # invokes: Lcom/bumptech/glide/RequestManager;->getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;
    invoke-static {p1}, Lcom/bumptech/glide/RequestManager;->access$000(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->from(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method
