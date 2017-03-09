.class public Lcom/buzzfeed/toolkit/util/GlideUtils;
.super Ljava/lang/Object;
.source "GlideUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;
    }
.end annotation


# static fields
.field private static final IMAGE_LOADED_TAG_ID:I

.field private static final LOADED:Ljava/lang/String; = "loaded"

.field private static final PLACEHOLDER_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    sget v0, Lcom/buzzfeed/toolkit/R$color;->buzzfeed_light_gray:I

    sput v0, Lcom/buzzfeed/toolkit/util/GlideUtils;->PLACEHOLDER_COLOR:I

    .line 27
    sget v0, Lcom/buzzfeed/toolkit/R$id;->image_loaded:I

    sput v0, Lcom/buzzfeed/toolkit/util/GlideUtils;->IMAGE_LOADED_TAG_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 23
    sget v0, Lcom/buzzfeed/toolkit/util/GlideUtils;->IMAGE_LOADED_TAG_ID:I

    return v0
.end method

.method private static dimensionsAreSet(II)Z
    .registers 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 105
    if-lez p0, :cond_6

    if-lez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getTransitionDuration(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/buzzfeed/toolkit/R$integer;->transition_long_duration_millis:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static isImageLoaded(Landroid/widget/ImageView;)Z
    .registers 3
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 206
    if-eqz p0, :cond_12

    const-string v0, "loaded"

    sget v1, Lcom/buzzfeed/toolkit/util/GlideUtils;->IMAGE_LOADED_TAG_ID:I

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static loadImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    sget v0, Lcom/buzzfeed/toolkit/util/GlideUtils;->PLACEHOLDER_COLOR:I

    invoke-static {p0, p1, p2, v0}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public static loadImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "placeholder"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 113
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 114
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 115
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/GlideUtils;->getTransitionDuration(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 118
    return-void
.end method

.method public static loadImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "placeholder"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p4, "listener"    # Lcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;

    .prologue
    .line 121
    sget v1, Lcom/buzzfeed/toolkit/util/GlideUtils;->IMAGE_LOADED_TAG_ID:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 122
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 123
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 125
    invoke-virtual {v1, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 127
    .local v0, "requestBuilder":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<Ljava/lang/String;>;"
    new-instance v1, Lcom/buzzfeed/toolkit/util/GlideUtils$2;

    invoke-direct {v1, p1, p1, p4}, Lcom/buzzfeed/toolkit/util/GlideUtils$2;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 144
    return-void
.end method

.method public static loadImageCenterCrop(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget v1, Lcom/buzzfeed/toolkit/util/GlideUtils;->PLACEHOLDER_COLOR:I

    .line 217
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 218
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 219
    return-void
.end method

.method public static loadImageRounded(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;F)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cornerRadius"    # F

    .prologue
    .line 186
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    sget v1, Lcom/buzzfeed/toolkit/util/GlideUtils;->PLACEHOLDER_COLOR:I

    .line 188
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 189
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/buzzfeed/toolkit/util/GlideUtils$4;

    invoke-direct {v1, p1, p0, p3, p1}, Lcom/buzzfeed/toolkit/util/GlideUtils$4;-><init>(Landroid/widget/ImageView;Landroid/content/Context;FLandroid/widget/ImageView;)V

    .line 190
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 199
    return-void
.end method

.method public static loadImageStack(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "urls":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 40
    invoke-static {p0, p1, p2, v0, v0}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStack(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;II)V

    .line 41
    return-void
.end method

.method public static loadImageStack(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;II)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "urls":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    sget v5, Lcom/buzzfeed/toolkit/util/GlideUtils;->PLACEHOLDER_COLOR:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStackWithCustomPlaceholderColor(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;III)V

    .line 51
    return-void
.end method

.method public static loadImageStackRounded(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;F)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p3, "cornerRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, "urls":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 150
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 182
    :goto_9
    return-void

    .line 154
    :cond_a
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 155
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 157
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v6

    new-instance v0, Lcom/buzzfeed/toolkit/util/GlideUtils$3;

    move-object v1, p1

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/toolkit/util/GlideUtils$3;-><init>(Landroid/widget/ImageView;Landroid/content/Context;FLandroid/widget/ImageView;Ljava/util/Stack;)V

    .line 158
    invoke-virtual {v6, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_9
.end method

.method public static loadImageStackWithCustomPlaceholderColor(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;III)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "placeholderColorId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "urls":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 69
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 102
    :goto_9
    return-void

    .line 73
    :cond_a
    sget v0, Lcom/buzzfeed/toolkit/util/GlideUtils;->IMAGE_LOADED_TAG_ID:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 74
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 75
    .local v9, "url":Ljava/lang/String;
    invoke-static {p3, p4}, Lcom/buzzfeed/toolkit/util/GlideUtils;->dimensionsAreSet(II)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {v9, p3}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getDownsizeWidthUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "imgUrl":Ljava/lang/String;
    :goto_20
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p5}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v8

    .line 83
    .local v8, "requestBuilder":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<Ljava/lang/String;>;"
    invoke-static {p3, p4}, Lcom/buzzfeed/toolkit/util/GlideUtils;->dimensionsAreSet(II)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {v8, p3, p4}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 85
    :cond_3d
    new-instance v0, Lcom/buzzfeed/toolkit/util/GlideUtils$1;

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/toolkit/util/GlideUtils$1;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/util/Stack;Landroid/content/Context;II)V

    invoke-virtual {v8, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_9

    .end local v7    # "imgUrl":Ljava/lang/String;
    .end local v8    # "requestBuilder":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<Ljava/lang/String;>;"
    :cond_4c
    move-object v7, v9

    .line 75
    goto :goto_20
.end method
