.class public final Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final aa:Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

.field private final ab:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->aa:Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->aa:Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    return-object v0
.end method


# virtual methods
.method public addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->aa:Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    return-object p0
.end method

.method public addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->aa:Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    return-object p0
.end method

.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->aa:Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->aa:Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    iget-object v2, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    new-instance v0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$1;)V

    return-object v0
.end method

.method public setAdBorderSelectors(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_adBorderSelectors"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAdTest(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v2, "csa_adtest"

    if-eqz p1, :cond_c

    const-string v0, "on"

    :goto_8
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_c
    const-string v0, "off"

    goto :goto_8
.end method

.method public setAdjustableLineHeight(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_adjustableLineHeight"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAdvancedOptionValue(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAttributionSpacingBelow(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_attributionSpacingBelow"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBorderSelections(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_borderSelections"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_channel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setColorAdBorder(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_colorAdBorder"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setColorAdSeparator(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_colorAdSeparator"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setColorAnnotation(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_colorAnnotation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setColorAttribution(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_colorAttribution"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setColorBackground(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_colorBackground"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setColorBorder(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_colorBorder"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setColorDomainLink(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_colorDomainLink"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setColorText(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_colorText"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setColorTitleLink(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_colorTitleLink"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCssWidth(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_width"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDetailedAttribution(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_detailedAttribution"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFontFamily(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setFontFamily(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_fontFamily"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFontFamilyAttribution(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_fontFamilyAttribution"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFontSizeAnnotation(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_fontSizeAnnotation"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFontSizeAttribution(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_fontSizeAttribution"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFontSizeDescription(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_fontSizeDescription"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFontSizeDomainLink(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_fontSizeDomainLink"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFontSizeTitle(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_fontSizeTitle"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHostLanguage(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_hl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIsClickToCallEnabled(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_clickToCall"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIsLocationEnabled(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_location"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIsPlusOnesEnabled(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_plusOnes"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIsSellerRatingsEnabled(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_sellerRatings"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIsSiteLinksEnabled(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_siteLinks"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIsTitleBold(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_titleBold"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIsTitleUnderlined(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v2, "csa_noTitleUnderline"

    if-nez p1, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setLocationColor(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_colorLocation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLocationFontSize(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_fontSizeLocation"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLongerHeadlines(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_longerHeadlines"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNumber(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_number"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPage(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_adPage"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->aa:Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->setQuery(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;

    return-object p0
.end method

.method public setVerticalSpacing(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->ab:Landroid/os/Bundle;

    const-string v1, "csa_verticalSpacing"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
