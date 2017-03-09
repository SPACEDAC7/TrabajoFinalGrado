.class public Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;
.super Ljava/lang/Object;
.source "SpicyGlideUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_PLACEHOLDER_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    sget v0, Lcom/buzzfeed/nativecontent/R$color;->buzzfeed_light_gray:I

    sput v0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->DEFAULT_PLACEHOLDER_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFinalHeight(ILcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;)I
    .registers 5
    .param p0, "width"    # I
    .param p1, "image"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    .prologue
    .line 211
    int-to-float v1, p0

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 212
    .local v0, "ratio":F
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public static getTransitionDuration(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/buzzfeed/nativecontent/R$integer;->transition_long_duration_millis:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private static isGif(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 207
    if-eqz p0, :cond_c

    const-string v0, ".gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Landroid/widget/ImageView;

    .prologue
    .line 112
    invoke-static {p0, p1, p2}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadWithColor(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 113
    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Landroid/widget/ImageView;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 116
    invoke-static {p0, p1, p2, p3, p4}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadWithColor(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 117
    return-void
.end method

.method public static loadGif(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Landroid/widget/ImageView;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadGif(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V

    .line 146
    return-void
.end method

.method public static loadGif(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Landroid/widget/ImageView;
    .param p3, "listener"    # Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 122
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget v1, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->DEFAULT_PLACEHOLDER_COLOR:I

    .line 123
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const v1, 0x3e99999a

    .line 124
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const v1, 0x3f333333

    .line 125
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 126
    invoke-static {p0}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->getTransitionDuration(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$6;

    invoke-direct {v1, p2, p2, p3}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$6;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V

    .line 127
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 142
    return-void
.end method

.method public static loadImageSpice(Ljava/util/Stack;ILandroid/widget/ImageView;)V
    .registers 10
    .param p1, "imageWidth"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;",
            ">;I",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "images":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;>;"
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-static {p2}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 61
    :goto_9
    return-void

    .line 30
    :cond_a
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    .line 31
    .local v6, "image":Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;
    invoke-virtual {v6}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 32
    invoke-static {p1, v6}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->getFinalHeight(ILcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;)I

    move-result v4

    .line 33
    .local v4, "finalHeight":I
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$1;-><init>(Ljava/util/Stack;ILandroid/widget/ImageView;)V

    invoke-static {v0, v1, p2, v2}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadGif(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V

    goto :goto_9

    .line 42
    .end local v4    # "finalHeight":I
    :cond_35
    invoke-static {p1, v6}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->getFinalHeight(ILcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;)I

    move-result v4

    .line 43
    .restart local v4    # "finalHeight":I
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    if-lez p1, :cond_56

    if-lez v4, :cond_56

    .line 45
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$2;

    invoke-direct {v5, p0, p1, p2}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$2;-><init>(Ljava/util/Stack;ILandroid/widget/ImageView;)V

    move-object v2, p2

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadWithColor(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V

    goto :goto_9

    .line 53
    :cond_56
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$3;-><init>(Ljava/util/Stack;ILandroid/widget/ImageView;)V

    invoke-static {v0, v1, p2, v2}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadWithColor(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V

    goto :goto_9
.end method

.method public static loadImageStack(Ljava/util/Stack;Landroid/widget/ImageView;I)V
    .registers 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/ImageView;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "images":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 92
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 109
    :goto_9
    return-void

    .line 95
    :cond_a
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, "currentUrl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$5;-><init>(Ljava/util/Stack;Landroid/widget/ImageView;I)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 108
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_9
.end method

.method public static loadSpiceHeader(Ljava/util/Stack;IILandroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Landroid/widget/ImageView;",
            "Lcom/bumptech/glide/request/RequestListener",
            "<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "images":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p4, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<Ljava/lang/String;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 65
    invoke-static {p3}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 88
    :goto_9
    return-void

    .line 68
    :cond_a
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 69
    .local v6, "headerUrl":Ljava/lang/String;
    invoke-static {v6, p1}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getDownsizeWidthUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-virtual {p3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    new-instance v0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$4;-><init>(Ljava/util/Stack;Lcom/bumptech/glide/request/RequestListener;IILandroid/widget/ImageView;)V

    invoke-virtual {v7, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 86
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_9
.end method

.method public static loadWithColor(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Landroid/widget/ImageView;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadWithColor(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V

    .line 200
    return-void
.end method

.method public static loadWithColor(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Landroid/widget/ImageView;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 172
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadWithColor(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V

    .line 173
    return-void
.end method

.method public static loadWithColor(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Landroid/widget/ImageView;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "listener"    # Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;

    .prologue
    .line 149
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 150
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget v1, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->DEFAULT_PLACEHOLDER_COLOR:I

    .line 152
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p3, p4}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 154
    invoke-static {p0}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->getTransitionDuration(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$7;

    invoke-direct {v1, p2, p5}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$7;-><init>(Landroid/widget/ImageView;Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V

    .line 155
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 169
    return-void
.end method

.method public static loadWithColor(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Landroid/widget/ImageView;
    .param p3, "listener"    # Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;

    .prologue
    .line 177
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 178
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget v1, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->DEFAULT_PLACEHOLDER_COLOR:I

    .line 180
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 181
    invoke-static {p0}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->getTransitionDuration(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$8;

    invoke-direct {v1, p2, p3}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$8;-><init>(Landroid/widget/ImageView;Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;)V

    .line 182
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 196
    return-void
.end method
