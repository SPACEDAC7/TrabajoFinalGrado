.class Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$3;
.super Lcom/google/android/gms/ads/AdListener;
.source "BuffetNativeAdLoader.java"


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

.field final synthetic val$listener:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

.field final synthetic val$position:I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;J)V
    .registers 6
    .param p1, "this$0"    # Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$3;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iput p2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$3;->val$position:I

    iput-object p3, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$3;->val$listener:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

    iput-wide p4, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$3;->val$startTime:J

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .registers 6
    .param p1, "errorCode"    # I

    .prologue
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onAdFailedToLoad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load native ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$3;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iget v2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$3;->val$position:I

    iget-object v3, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$3;->val$listener:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->loadAdFromBackfill(ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V

    .line 158
    return-void
.end method

.method public onAdLoaded()V
    .registers 9

    .prologue
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".onAdLoaded"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "TAG":Ljava/lang/String;
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$3;->val$startTime:J

    sub-long v2, v4, v6

    .line 165
    .local v2, "estimatedTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time to load: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public onAdOpened()V
    .registers 4

    .prologue
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onAdOpened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "TAG":Ljava/lang/String;
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 172
    const-string v1, "Ad Opened"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method
