.class Lcom/google/ads/interactivemedia/v3/a/h$1;
.super Landroid/os/Handler;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/h;-><init>(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/h;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/h;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/h$1;->a:Lcom/google/ads/interactivemedia/v3/a/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h$1;->a:Lcom/google/ads/interactivemedia/v3/a/h;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/h;->a(Landroid/os/Message;)V

    .line 66
    return-void
.end method
