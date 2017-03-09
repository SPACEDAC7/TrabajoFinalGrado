.class Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$4;
.super Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$LoadAdBackfillTask;
.source "BuffetNativeAdLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->startLoadBackfillTask(ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

.field final synthetic val$listener:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;Landroid/content/Context;ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V
    .registers 5
    .param p1, "this$0"    # Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$4;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iput p3, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$4;->val$position:I

    iput-object p4, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$4;->val$listener:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$LoadAdBackfillTask;-><init>(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 285
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$4;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iget-object v0, v0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->adBackfillList:Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$4;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    iget v1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$4;->val$position:I

    iget-object v2, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$4;->val$listener:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->loadAdFromBackfill(ILcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;)V

    .line 289
    :cond_13
    return-void
.end method
