.class public final Lcom/bumptech/glide/request/GenericRequest;
.super Ljava/lang/Object;
.source "GenericRequest.java"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/ResourceCallback;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/GenericRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/Request;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
        "Lcom/bumptech/glide/request/ResourceCallback;"
    }
.end annotation


# static fields
.field private static final REQUEST_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/request/GenericRequest",
            "<****>;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GenericRequest"

.field private static final TO_MEGABYTE:D = 9.5367431640625E-7


# instance fields
.field private animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private engine:Lcom/bumptech/glide/load/engine/Engine;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResourceId:I

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackResourceId:I

.field private isMemoryCacheable:Z

.field private loadProvider:Lcom/bumptech/glide/provider/LoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

.field private loadedFromMemoryCache:Z

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderResourceId:I

.field private priority:Lcom/bumptech/glide/Priority;

.field private requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

.field private requestListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;"
        }
    .end annotation
.end field

.field private resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/Key;

.field private sizeMultiplier:F

.field private startTime:J

.field private status:Lcom/bumptech/glide/request/GenericRequest$Status;

.field private final tag:Ljava/lang/String;

.field private target:Lcom/bumptech/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 147
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->tag:Ljava/lang/String;

    .line 149
    return-void
.end method

.method private canNotifyStatusChanged()Z
    .registers 2

    .prologue
    .line 462
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private canSetResource()Z
    .registers 2

    .prologue
    .line 458
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 246
    if-nez p1, :cond_20

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "message":Ljava/lang/StringBuilder;
    const-string v1, " must not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    if-eqz p2, :cond_16

    .line 250
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_16
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    .end local v0    # "message":Ljava/lang/StringBuilder;
    :cond_20
    return-void
.end method

.method private getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 408
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    if-lez v0, :cond_16

    .line 409
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 411
    :cond_16
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 386
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    if-lez v0, :cond_16

    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 389
    :cond_16
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 415
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    if-lez v0, :cond_16

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 418
    :cond_16
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private init(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V
    .registers 28
    .param p3, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "priority"    # Lcom/bumptech/glide/Priority;
    .param p7, "sizeMultiplier"    # F
    .param p8, "placeholderDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p9, "placeholderResourceId"    # I
    .param p10, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p11, "errorResourceId"    # I
    .param p12, "fallbackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p13, "fallbackResourceId"    # I
    .param p15, "requestCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
    .param p16, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
    .param p19, "isMemoryCacheable"    # Z
    .param p21, "overrideWidth"    # I
    .param p22, "overrideHeight"    # I
    .param p23, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/Key;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    .local p1, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    .local p2, "model":Ljava/lang/Object;, "TA;"
    .local p6, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    .local p14, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TA;TR;>;"
    .local p17, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    .local p18, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p20, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
    iput-object p1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    .line 194
    iput-object p2, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    .line 195
    iput-object p3, p0, Lcom/bumptech/glide/request/GenericRequest;->signature:Lcom/bumptech/glide/load/Key;

    .line 196
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    move/from16 v0, p13

    iput v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    .line 198
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    .line 199
    iput-object p5, p0, Lcom/bumptech/glide/request/GenericRequest;->priority:Lcom/bumptech/glide/Priority;

    .line 200
    iput-object p6, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 201
    iput p7, p0, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    .line 202
    iput-object p8, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    iput p9, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    .line 204
    iput-object p10, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    iput p11, p0, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    .line 206
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 207
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 208
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 209
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 210
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    .line 211
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->isMemoryCacheable:Z

    .line 212
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 213
    move/from16 v0, p21

    iput v0, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    .line 214
    move/from16 v0, p22

    iput v0, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    .line 215
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 216
    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->PENDING:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 220
    if-eqz p2, :cond_ae

    .line 221
    const-string v1, "ModelLoader"

    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2

    const-string/jumbo v3, "try .using(ModelLoader)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    const-string v1, "Transcoder"

    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v2

    const-string/jumbo v3, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    const-string v1, "Transformation"

    const-string/jumbo v2, "try .transform(UnitTransformation.get())"

    move-object/from16 v0, p17

    invoke-static {v1, v0, v2}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 225
    const-string v1, "SourceEncoder"

    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v2

    const-string/jumbo v3, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    :goto_84
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-nez v1, :cond_90

    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 235
    :cond_90
    const-string v1, "CacheDecoder"

    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    const-string/jumbo v3, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :cond_9c
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 239
    const-string v1, "Encoder"

    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v2

    const-string/jumbo v3, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    :cond_ae
    return-void

    .line 228
    :cond_af
    const-string v1, "SourceDecoder"

    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    const-string/jumbo v3, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_84
.end method

.method private isFirstReadyResource()Z
    .registers 2

    .prologue
    .line 466
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private logV(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 553
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const-string v0, "GenericRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method private notifyLoadSuccess()V
    .registers 2

    .prologue
    .line 470
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_9

    .line 471
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    .line 473
    :cond_9
    return-void
.end method

.method public static obtain(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;
    .registers 47
    .param p2, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "priority"    # Lcom/bumptech/glide/Priority;
    .param p6, "sizeMultiplier"    # F
    .param p7, "placeholderDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p8, "placeholderResourceId"    # I
    .param p9, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p10, "errorResourceId"    # I
    .param p11, "fallbackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p12, "fallbackResourceId"    # I
    .param p14, "requestCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
    .param p15, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
    .param p18, "isMemoryCacheable"    # Z
    .param p20, "overrideWidth"    # I
    .param p21, "overrideHeight"    # I
    .param p22, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/Key;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/request/GenericRequest",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    .local p1, "model":Ljava/lang/Object;, "TA;"
    .local p5, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    .local p13, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TA;TR;>;"
    .local p16, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    .local p17, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p19, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
    sget-object v1, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/GenericRequest;

    .line 118
    .local v0, "request":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    if-nez v0, :cond_f

    .line 119
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest;

    .end local v0    # "request":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-direct {v0}, Lcom/bumptech/glide/request/GenericRequest;-><init>()V

    .restart local v0    # "request":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    :cond_f
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, p22

    .line 121
    invoke-direct/range {v0 .. v23}, Lcom/bumptech/glide/request/GenericRequest;->init(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V

    .line 144
    return-object v0
.end method

.method private onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;TR;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    .local p2, "result":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    move-result v5

    .line 519
    .local v5, "isFirstResource":Z
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 520
    iput-object p1, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 522
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    iget-boolean v4, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 524
    :cond_1d
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    iget-boolean v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    invoke-interface {v0, v1, v5}, Lcom/bumptech/glide/request/animation/GlideAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v6

    .line 525
    .local v6, "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v0, p2, v6}, Lcom/bumptech/glide/request/target/Target;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 528
    .end local v6    # "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
    :cond_2a
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->notifyLoadSuccess()V

    .line 530
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource ready in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v8, 0x3eb0000000000000L

    mul-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fromCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 534
    :cond_70
    return-void
.end method

.method private releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 3
    .param p1, "resource"    # Lcom/bumptech/glide/load/engine/Resource;

    .prologue
    .line 341
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/Engine;->release(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 343
    return-void
.end method

.method private setErrorPlaceholder(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 393
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v1

    if-nez v1, :cond_7

    .line 405
    :goto_6
    return-void

    .line 397
    :cond_7
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    if-nez v1, :cond_21

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 398
    .local v0, "error":Landroid/graphics/drawable/Drawable;
    :goto_f
    if-nez v0, :cond_15

    .line 399
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getErrorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 401
    :cond_15
    if-nez v0, :cond_1b

    .line 402
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 404
    :cond_1b
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v1, p1, v0}, Lcom/bumptech/glide/request/target/Target;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 397
    .end local v0    # "error":Landroid/graphics/drawable/Drawable;
    :cond_21
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public begin()V
    .registers 5

    .prologue
    .line 262
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    .line 263
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 281
    :cond_e
    :goto_e
    return-void

    .line 268
    :cond_f
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 269
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 270
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/GenericRequest;->onSizeReady(II)V

    .line 275
    :goto_24
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->isComplete()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->isFailed()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 276
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_3f
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    goto :goto_e

    .line 272
    :cond_65
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/target/Target;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    goto :goto_24
.end method

.method cancel()V
    .registers 2

    .prologue
    .line 294
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 295
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    if-eqz v0, :cond_10

    .line 296
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cancel()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 299
    :cond_10
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 313
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 314
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_a

    .line 327
    :goto_9
    return-void

    .line 317
    :cond_a
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->cancel()V

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v0, :cond_16

    .line 320
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 322
    :cond_16
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 323
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_25
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    goto :goto_9
.end method

.method public isCancelled()Z
    .registers 3

    .prologue
    .line 374
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isComplete()Z
    .registers 3

    .prologue
    .line 358
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFailed()Z
    .registers 3

    .prologue
    .line 382
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPaused()Z
    .registers 3

    .prologue
    .line 331
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isResourceSet()Z
    .registers 2

    .prologue
    .line 366
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->isComplete()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .registers 3

    .prologue
    .line 350
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onException(Ljava/lang/Exception;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 541
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const-string v0, "GenericRequest"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 542
    const-string v0, "GenericRequest"

    const-string v1, "load failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    :cond_10
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 547
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bumptech/glide/request/RequestListener;->onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 548
    :cond_28
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->setErrorPlaceholder(Ljava/lang/Exception;)V

    .line 550
    :cond_2b
    return-void
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    if-nez p1, :cond_26

    .line 482
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inside, but instead got null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 508
    :goto_25
    return-void

    .line 487
    :cond_26
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    .line 488
    .local v0, "received":Ljava/lang/Object;
    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 489
    :cond_38
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 490
    new-instance v2, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but instead got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_94

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_5a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " inside Resource{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_97

    const-string v1, ""

    :goto_85
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    goto :goto_25

    :cond_94
    const-string v1, ""

    goto :goto_5a

    :cond_97
    const-string v1, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_85

    .line 500
    :cond_9a
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canSetResource()Z

    move-result v1

    if-nez v1, :cond_a9

    .line 501
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 503
    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    goto/16 :goto_25

    .line 507
    :cond_a9
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/GenericRequest;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V

    goto/16 :goto_25
.end method

.method public onSizeReady(II)V
    .registers 16
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 426
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 429
    :cond_25
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_2c

    .line 455
    :cond_2b
    :goto_2b
    return-void

    .line 432
    :cond_2c
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 434
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 435
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 437
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v12

    .line 438
    .local v12, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    invoke-interface {v12, v0, p1, p2}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v4

    .line 440
    .local v4, "dataFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
    if-nez v4, :cond_72

    .line 441
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load model: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    goto :goto_2b

    .line 444
    :cond_72
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v7

    .line 445
    .local v7, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 448
    :cond_9d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 449
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v5, p0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    iget-object v6, p0, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    iget-object v8, p0, Lcom/bumptech/glide/request/GenericRequest;->priority:Lcom/bumptech/glide/Priority;

    iget-boolean v9, p0, Lcom/bumptech/glide/request/GenericRequest;->isMemoryCacheable:Z

    iget-object v10, p0, Lcom/bumptech/glide/request/GenericRequest;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move v2, p1

    move v3, p2

    move-object v11, p0

    invoke-virtual/range {v0 .. v11}, Lcom/bumptech/glide/load/engine/Engine;->load(Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 451
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v0, :cond_e5

    const/4 v0, 0x1

    :goto_bc
    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 452
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 451
    :cond_e5
    const/4 v0, 0x0

    goto :goto_bc
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 336
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->clear()V

    .line 337
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 338
    return-void
.end method

.method public recycle()V
    .registers 3

    .prologue
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    .line 154
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    .line 155
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    .line 156
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 157
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 160
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 161
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 162
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 163
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 165
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 166
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method
