.class public Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;
.source "YouTubeSpiceViewHolder.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

.field private mVideoSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/YoutubeSpice;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    const-class v0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->TAG:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;)Lcom/buzzfeed/spicerack/data/model/subbuzz/YoutubeSpice;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->mVideoSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/YoutubeSpice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    return-object v0
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 6
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".populateFrom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "TAG":Ljava/lang/String;
    check-cast p1, Lcom/buzzfeed/spicerack/data/model/subbuzz/YoutubeSpice;

    .end local p1    # "content":Lcom/buzzfeed/toolkit/content/Content;
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->mVideoSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/YoutubeSpice;

    .line 34
    const-string v2, "Initializing YouTube player"

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/buzzfeed/nativecontent/R$id;->spice_youtube_video_thumbnail:I

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 37
    .local v1, "thumbnailImage":Landroid/widget/ImageView;
    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$1;

    invoke-direct {v2, p0, v1}, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$1;-><init>(Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 44
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/buzzfeed/nativecontent/R$id;->spice_youtube_click_container:I

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$2;

    invoke-direct {v3, p0}, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$2;-><init>(Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
