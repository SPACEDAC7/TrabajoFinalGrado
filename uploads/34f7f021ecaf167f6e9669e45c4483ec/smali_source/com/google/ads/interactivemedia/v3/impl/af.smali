.class public abstract Lcom/google/ads/interactivemedia/v3/impl/af;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/af$a;,
        Lcom/google/ads/interactivemedia/v3/impl/af$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/impl/af$a;

.field protected final b:J

.field protected c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/impl/af$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(J)V
    .registers 4

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/af;-><init>(Lcom/google/ads/interactivemedia/v3/impl/af$a;J)V

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/af$a;J)V
    .registers 6

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->c:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->d:Ljava/util/List;

    .line 49
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->b:J

    .line 50
    if-eqz p1, :cond_15

    .line 51
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->a:Lcom/google/ads/interactivemedia/v3/impl/af$a;

    .line 55
    :goto_14
    return-void

    .line 53
    :cond_15
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/af$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/af$a;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->a:Lcom/google/ads/interactivemedia/v3/impl/af$a;

    goto :goto_14
.end method


# virtual methods
.method public abstract a()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/af$b;)V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 66
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->c:Z

    if-eqz v0, :cond_6

    .line 71
    :goto_5
    return-void

    .line 69
    :cond_6
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->c:Z

    .line 70
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->a:Lcom/google/ads/interactivemedia/v3/impl/af$a;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/af$a;->b(I)Z

    goto :goto_5
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/impl/af$b;)V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->c:Z

    if-eqz v0, :cond_d

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->c:Z

    .line 76
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->a:Lcom/google/ads/interactivemedia/v3/impl/af$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/af$a;->c(I)Z

    .line 78
    :cond_d
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 96
    :goto_6
    return v4

    .line 84
    :pswitch_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->a:Lcom/google/ads/interactivemedia/v3/impl/af$a;

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/af$a;->a(I)V

    goto :goto_6

    .line 87
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/af;->a()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v1

    .line 88
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/af$b;

    .line 89
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/af$b;->a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    goto :goto_17

    .line 91
    :cond_27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->a:Lcom/google/ads/interactivemedia/v3/impl/af$a;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/af;->b:J

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/af$a;->a(IJ)Z

    goto :goto_6

    .line 82
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_d
        :pswitch_7
    .end packed-switch
.end method
