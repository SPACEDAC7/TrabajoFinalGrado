.class public final Lcom/google/ads/interactivemedia/v3/b/b/a/h;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/ads/interactivemedia/v3/b/w;


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/b/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/h$1;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/h$1;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/h;->a:Lcom/google/ads/interactivemedia/v3/b/w;

    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/f;)V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/h;->b:Lcom/google/ads/interactivemedia/v3/b/f;

    .line 52
    return-void
.end method


# virtual methods
.method public read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/b/a/h$2;->a:[I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/d/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_6a

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 58
    :pswitch_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a()V

    .line 60
    :goto_1d
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/h;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 63
    :cond_2b
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b()V

    .line 86
    :goto_2e
    return-object v0

    .line 67
    :pswitch_2f
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/b/g;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->c()V

    .line 69
    :goto_37
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 70
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/h;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 72
    :cond_49
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->d()V

    goto :goto_2e

    .line 76
    :pswitch_4d
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 79
    :pswitch_52
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_2e

    .line 82
    :pswitch_5b
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2e

    .line 85
    :pswitch_64
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->j()V

    .line 86
    const/4 v0, 0x0

    goto :goto_2e

    .line 56
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_2f
        :pswitch_4d
        :pswitch_52
        :pswitch_5b
        :pswitch_64
    .end packed-switch
.end method

.method public write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p2, :cond_6

    .line 96
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 108
    :goto_5
    return-void

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/h;->b:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/b/b/a/h;

    if-eqz v1, :cond_1b

    .line 102
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->d()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 103
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->e()Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto :goto_5

    .line 107
    :cond_1b
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/v;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V

    goto :goto_5
.end method
