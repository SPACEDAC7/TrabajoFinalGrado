.class public Lcom/google/ads/searchads/SearchAdRequest;
.super Lcom/google/ads/AdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/searchads/SearchAdRequest$BorderType;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 22
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 284
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRequestMap(Landroid/content/Context;)Ljava/util/Map;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0xff

    .line 220
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-virtual {p0, v0}, Lcom/google/ads/searchads/SearchAdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 222
    if-nez v0, :cond_14

    .line 223
    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>()V

    .line 224
    invoke-virtual {p0, v0}, Lcom/google/ads/searchads/SearchAdRequest;->setNetworkExtras(Lcom/google/ads/mediation/NetworkExtras;)Lcom/google/ads/AdRequest;

    .line 227
    :cond_14
    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->a:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 228
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "q"

    iget-object v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_23
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_3a

    .line 232
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bgcolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_3a
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v4, :cond_68

    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v4, :cond_68

    .line 237
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "gradientfrom"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "gradientto"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_68
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->e:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_7f

    .line 242
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "hcolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->e:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_7f
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->f:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_96

    .line 246
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "dcolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->f:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_96
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->g:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_ad

    .line 251
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "acolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->g:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_ad
    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->h:Ljava/lang/String;

    if-eqz v1, :cond_bc

    .line 255
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "font"

    iget-object v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_bc
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "headersize"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->j:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_e2

    .line 261
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bcolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->j:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_e2
    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->k:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    if-eqz v1, :cond_f5

    .line 265
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "btype"

    iget-object v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->k:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    invoke-virtual {v3}, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_f5
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bthick"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->m:Ljava/lang/String;

    if-eqz v1, :cond_113

    .line 271
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel"

    iget-object v2, p0, Lcom/google/ads/searchads/SearchAdRequest;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_113
    invoke-super {p0, p1}, Lcom/google/ads/AdRequest;->getRequestMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setAnchorTextColor(I)V
    .registers 2
    .param p1, "anchorTextColor"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->g:I

    .line 160
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 5
    .param p1, "backgroundColor"    # I

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_f

    .line 102
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:I

    .line 103
    iput v2, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:I

    .line 104
    iput v2, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    .line 108
    :cond_f
    return-void
.end method

.method public setBackgroundGradient(II)V
    .registers 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 120
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ne v0, v2, :cond_19

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ne v0, v2, :cond_19

    .line 121
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:I

    .line 122
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:I

    .line 123
    iput p2, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    .line 127
    :cond_19
    return-void
.end method

.method public setBorderColor(I)V
    .registers 2
    .param p1, "borderColor"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->j:I

    .line 190
    return-void
.end method

.method public setBorderThickness(I)V
    .registers 2
    .param p1, "borderThickness"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->l:I

    .line 208
    return-void
.end method

.method public setBorderType(Lcom/google/ads/searchads/SearchAdRequest$BorderType;)V
    .registers 2
    .param p1, "borderType"    # Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->k:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    .line 198
    return-void
.end method

.method public setCustomChannels(Ljava/lang/String;)V
    .registers 2
    .param p1, "channelIds"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->m:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setDescriptionTextColor(I)V
    .registers 2
    .param p1, "descriptionTextColor"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->f:I

    .line 149
    return-void
.end method

.method public setFontFace(Ljava/lang/String;)V
    .registers 2
    .param p1, "fontFace"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->h:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setHeaderTextColor(I)V
    .registers 2
    .param p1, "headerTextColor"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->e:I

    .line 138
    return-void
.end method

.method public setHeaderTextSize(I)V
    .registers 2
    .param p1, "headerTextSize"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->i:I

    .line 179
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .registers 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->a:Ljava/lang/String;

    .line 92
    return-void
.end method
