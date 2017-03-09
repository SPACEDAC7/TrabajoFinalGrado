.class public Lcom/buzzfeed/toolkit/tenderizer/InterpolatedPound;
.super Ljava/lang/Object;
.source "InterpolatedPound.java"


# static fields
.field private static final POUND_PATH_SEGMENT:Ljava/lang/String; = "p"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInterpolatedPound(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;
    .registers 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "pound"    # Ljava/lang/String;
    .param p2, "optOut"    # Z

    .prologue
    .line 59
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 60
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 61
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 62
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 64
    .local v2, "poundUriBuilder":Landroid/net/Uri$Builder;
    if-nez p2, :cond_27

    .line 65
    const-string v4, "p"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 70
    :cond_27
    const/4 v0, 0x0

    .line 71
    .local v0, "hasExistingPound":Z
    invoke-static {p0}, Lcom/buzzfeed/toolkit/tenderizer/InterpolatedPound;->isInterpolatedPound(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 72
    const/4 v0, 0x1

    .line 75
    :cond_2f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_50

    .line 77
    if-eqz v0, :cond_42

    const/4 v4, 0x2

    if-ge v1, v4, :cond_42

    .line 75
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 81
    :cond_42
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3f

    .line 84
    :cond_50
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 85
    .local v3, "queryParam":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_58

    .line 87
    .end local v3    # "queryParam":Ljava/lang/String;
    :cond_6c
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method public static getInterpolatedPoundId(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 28
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/buzzfeed/toolkit/tenderizer/InterpolatedPound;->isInterpolatedPound(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 32
    :cond_b
    :goto_b
    return-object v1

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_b

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_b
.end method

.method public static isInterpolatedPound(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 19
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/buzzfeed/toolkit/tenderizer/InterpolatedPound;->isInterpolatedPound(Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method private static isInterpolatedPound(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 23
    if-eqz p0, :cond_19

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method

.method public static stripInterpolatedPound(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/buzzfeed/toolkit/tenderizer/InterpolatedPound;->isInterpolatedPound(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 49
    .end local p0    # "uri":Landroid/net/Uri;
    :goto_6
    return-object p0

    .line 40
    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 41
    .local v2, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 43
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 45
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_27

    .line 46
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 49
    :cond_27
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto :goto_6
.end method
