.class Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;
.super Ljava/lang/Object;
.source "BuffetNativeAdLoader.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->loadAd(ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$listener:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;Ljava/lang/String;Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iput-object p2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$TAG:Ljava/lang/String;

    iput-object p3, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$listener:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

    iput p4, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V
    .registers 7
    .param p1, "ad"    # Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    .prologue
    .line 108
    invoke-interface {p1}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;->recordImpression()V

    .line 109
    const-string v2, "ad_buzz_url"

    invoke-interface {p1, v2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, "userWidget":Ljava/lang/String;
    iget-object v2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->val$TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    if-eqz v1, :cond_31

    .line 112
    new-instance v0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;

    invoke-direct {v0, p0, p1}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1$1;-><init>(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    .line 138
    .local v0, "safeCallback":Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
    iget-object v2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$1;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iget-object v2, v2, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->mAdServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;

    invoke-virtual {v2, v1, v0}, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;->loadAdUrl(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 141
    .end local v0    # "safeCallback":Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
    :cond_31
    return-void
.end method
