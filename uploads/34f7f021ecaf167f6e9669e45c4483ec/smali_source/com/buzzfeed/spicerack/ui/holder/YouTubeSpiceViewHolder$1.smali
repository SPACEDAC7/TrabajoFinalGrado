.class Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$1;
.super Ljava/lang/Object;
.source "YouTubeSpiceViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

.field final synthetic val$thumbnailImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;Landroid/widget/ImageView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$1;->val$thumbnailImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

    # getter for: Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->mVideoSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/YoutubeSpice;
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->access$000(Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;)Lcom/buzzfeed/spicerack/data/model/subbuzz/YoutubeSpice;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/YoutubeSpice;->getYoutubeThumbnailUrls()Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$1;->val$thumbnailImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$1;->val$thumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadImageStack(Ljava/util/Stack;Landroid/widget/ImageView;I)V

    .line 41
    return-void
.end method
