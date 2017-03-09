.class Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$2;
.super Ljava/lang/Object;
.source "BuffetNativeAdLoader.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;


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


# direct methods
.method constructor <init>(Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$2;->this$0:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomClick(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V
    .registers 3
    .param p1, "nativeCustomTemplateAd"    # Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 149
    return-void
.end method
