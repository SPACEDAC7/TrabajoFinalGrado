.class Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
.super Ljava/lang/Object;
.source "EngineJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineResourceFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/engine/Resource;Z)Lcom/bumptech/glide/load/engine/EngineResource;
    .registers 4
    .param p2, "isMemoryCacheable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;Z)",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;Z)V

    return-object v0
.end method
