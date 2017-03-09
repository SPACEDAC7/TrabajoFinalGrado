.class public Lcom/google/ads/interactivemedia/v3/impl/y;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/y$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/ads/interactivemedia/v3/impl/y$a;

.field public static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;->d:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/y;->a:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    .line 44
    const-string v0, "https://imasdk.googleapis.com/native/sdkloader/native_sdk_v3.html"

    .line 45
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/y;->b:Landroid/net/Uri;

    .line 44
    return-void
.end method
