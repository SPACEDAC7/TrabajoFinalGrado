.class public final Lcom/buzzfeed/ads/video/VideoAdTagBuilder;
.super Ljava/lang/Object;
.source "VideoAdTagBuilder.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "pubads.g.doubleclick.net"

.field private static final CORRELATOR_KEY:Ljava/lang/String; = "correlator"

.field private static final CUST_PARAMS_KEY:Ljava/lang/String; = "cust_params"

.field private static final CUST_PARAMS_VALUE:Ljava/lang/String; = "app="

.field private static final ENV_KEY:Ljava/lang/String; = "env"

.field private static final ENV_VALUE:Ljava/lang/String; = "vp"

.field private static final GDFP_REQ_KEY:Ljava/lang/String; = "gdfp_req"

.field private static final GDFP_REQ_VALUE:Ljava/lang/String; = "1"

.field private static final H1_KEY:Ljava/lang/String; = "h1"

.field private static final H1_VALUE:Ljava/lang/String; = "en"

.field private static final IMPL_KEY:Ljava/lang/String; = "impl"

.field private static final IMPL_VALUE:Ljava/lang/String; = "s"

.field private static final IU_KEY:Ljava/lang/String; = "iu"

.field private static final IU_STORY:Ljava/lang/String; = "/videostory"

.field private static final OUTPUT_KEY:Ljava/lang/String; = "output"

.field private static final OUTPUT_VALUE:Ljava/lang/String; = "vast"

.field private static final PATH:Ljava/lang/String; = "/gampad/ads"

.field private static final SCHEME:Ljava/lang/String; = "https"

.field private static final SZ_KEY:Ljava/lang/String; = "sz"

.field private static final SZ_VALUE:Ljava/lang/String; = "300x250"

.field private static final UNVIEWED_POSITION_START_KEY:Ljava/lang/String; = "unviewed_position_start"

.field private static final UNVIEWED_POSITION_START_VALUE:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "position"    # I
    .param p1, "appVersion"    # I
    .param p2, "adTag"    # Ljava/lang/String;
    .param p3, "edition"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/buzzfeed/ads/utils/AdConfig;->getTestAdType()I

    move-result v3

    invoke-static {v3}, Lcom/buzzfeed/ads/utils/AdUtils;->buildIuBody(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/buzzfeed/ads/utils/AdUtils;->getLanguagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/videostory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "iu":Ljava/lang/String;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 46
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v2, "https"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    const-string v2, "pubads.g.doubleclick.net"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    const-string v2, "/gampad/ads"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    const-string v2, "env"

    const-string/jumbo v3, "vp"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    const-string v2, "gdfp_req"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    const-string v2, "impl"

    const-string v3, "s"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    const-string v2, "output"

    const-string/jumbo v3, "vast"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    const-string/jumbo v2, "sz"

    const-string v3, "300x250"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 55
    const-string v2, "h1"

    const-string v3, "en"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    const-string v2, "cust_params"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    const-string/jumbo v2, "unviewed_position_start"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    const-string v2, "correlator"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
