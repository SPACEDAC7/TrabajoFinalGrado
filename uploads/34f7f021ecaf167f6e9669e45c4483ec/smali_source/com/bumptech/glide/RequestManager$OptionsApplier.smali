.class Lcom/bumptech/glide/RequestManager$OptionsApplier;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionsApplier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;)V
    .registers 2

    .prologue
    .line 779
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$OptionsApplier;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TA;***>;>(TX;)TX;"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, "builder":Lcom/bumptech/glide/GenericRequestBuilder;, "TX;"
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$OptionsApplier;->this$0:Lcom/bumptech/glide/RequestManager;

    # getter for: Lcom/bumptech/glide/RequestManager;->options:Lcom/bumptech/glide/RequestManager$DefaultOptions;
    invoke-static {v0}, Lcom/bumptech/glide/RequestManager;->access$800(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 783
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$OptionsApplier;->this$0:Lcom/bumptech/glide/RequestManager;

    # getter for: Lcom/bumptech/glide/RequestManager;->options:Lcom/bumptech/glide/RequestManager$DefaultOptions;
    invoke-static {v0}, Lcom/bumptech/glide/RequestManager;->access$800(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bumptech/glide/RequestManager$DefaultOptions;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 785
    :cond_11
    return-object p1
.end method
