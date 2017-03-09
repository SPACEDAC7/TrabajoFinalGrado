.class final Lcom/buzzfeed/android/vcr/player/RendererBuilderFactory;
.super Ljava/lang/Object;
.source "RendererBuilderFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/buzzfeed/android/vcr/player/RendererBuilderFactory;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/player/RendererBuilderFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRendererBuilder(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;)Lcom/buzzfeed/android/vcr/player/RendererBuilder;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Ljava/lang/String;
    .param p2, "contentType"    # Lcom/buzzfeed/android/vcr/model/VideoType;

    .prologue
    .line 27
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/buzzfeed/android/vcr/player/RendererBuilderFactory;->getRendererBuilder(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;J)Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static getRendererBuilder(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;J)Lcom/buzzfeed/android/vcr/player/RendererBuilder;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Ljava/lang/String;
    .param p2, "contentType"    # Lcom/buzzfeed/android/vcr/model/VideoType;
    .param p3, "peakBitrate"    # J

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentUri cant be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_e
    sget v0, Lcom/buzzfeed/android/vcr/R$string;->module_title:I

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "userAgent":Ljava/lang/String;
    sget-object v0, Lcom/buzzfeed/android/vcr/player/RendererBuilderFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generating RendererBuilder: uri="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with contentType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", peakBitrate="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/buzzfeed/android/vcr/player/RendererBuilderFactory$1;->$SwitchMap$com$buzzfeed$android$vcr$model$VideoType:[I

    invoke-virtual {p2}, Lcom/buzzfeed/android/vcr/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8a

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :pswitch_76
    new-instance v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 58
    :goto_7e
    return-object v0

    :pswitch_7f
    new-instance v0, Lcom/buzzfeed/android/vcr/player/ExtractorRendererBuilder;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/buzzfeed/android/vcr/player/ExtractorRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_7e

    .line 54
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_76
        :pswitch_7f
    .end packed-switch
.end method
