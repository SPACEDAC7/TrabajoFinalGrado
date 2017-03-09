.class final Lcom/google/ads/interactivemedia/v3/a/c/h$c;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:[Lcom/google/ads/interactivemedia/v3/a/c/e;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/c/g;

.field private c:Lcom/google/ads/interactivemedia/v3/a/c/e;


# direct methods
.method public constructor <init>([Lcom/google/ads/interactivemedia/v3/a/c/e;Lcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 3

    .prologue
    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->a:[Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 868
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->b:Lcom/google/ads/interactivemedia/v3/a/c/g;

    .line 869
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Lcom/google/ads/interactivemedia/v3/a/c/e;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/c/h$e;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->c:Lcom/google/ads/interactivemedia/v3/a/c/e;

    if-eqz v0, :cond_7

    .line 883
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->c:Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 901
    :goto_6
    return-object v0

    .line 885
    :cond_7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->a:[Lcom/google/ads/interactivemedia/v3/a/c/e;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1a

    aget-object v3, v1, v0

    .line 887
    :try_start_f
    invoke-interface {v3, p1}, Lcom/google/ads/interactivemedia/v3/a/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 888
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->c:Lcom/google/ads/interactivemedia/v3/a/c/e;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_17} :catch_2c
    .catchall {:try_start_f .. :try_end_17} :catchall_31

    .line 894
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 897
    :cond_1a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->c:Lcom/google/ads/interactivemedia/v3/a/c/e;

    if-nez v0, :cond_36

    .line 898
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/h$e;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->a:[Lcom/google/ads/interactivemedia/v3/a/c/e;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/h$e;-><init>([Lcom/google/ads/interactivemedia/v3/a/c/e;)V

    throw v0

    .line 894
    :cond_26
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 885
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 891
    :catch_2c
    move-exception v3

    .line 894
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    goto :goto_29

    :catchall_31
    move-exception v0

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    throw v0

    .line 900
    :cond_36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->c:Lcom/google/ads/interactivemedia/v3/a/c/e;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->b:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/g;)V

    .line 901
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->c:Lcom/google/ads/interactivemedia/v3/a/c/e;

    goto :goto_6
.end method

.method public a()V
    .registers 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->c:Lcom/google/ads/interactivemedia/v3/a/c/e;

    if-eqz v0, :cond_c

    .line 906
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->c:Lcom/google/ads/interactivemedia/v3/a/c/e;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e;->c()V

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->c:Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 909
    :cond_c
    return-void
.end method
