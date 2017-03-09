.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLoaderCallback"
.end annotation


# static fields
.field public static final MSG_CLEAR:I = 0x2

.field public static final MSG_DELAY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    .param p2, "x1"    # Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$1;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 133
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_f

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 135
    .local v0, "target":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->onFrameReady(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V

    .line 141
    .end local v0    # "target":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    :goto_e
    return v1

    .line 137
    :cond_f
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 139
    .restart local v0    # "target":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 141
    .end local v0    # "target":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_e
.end method
