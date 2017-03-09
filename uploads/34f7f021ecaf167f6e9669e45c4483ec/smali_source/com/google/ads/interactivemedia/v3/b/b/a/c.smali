.class public final Lcom/google/ads/interactivemedia/v3/b/b/a/c;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/ads/interactivemedia/v3/b/w;


# instance fields
.field private final b:Ljava/text/DateFormat;

.field private final c:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/c$1;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/c$1;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/c;->a:Lcom/google/ads/interactivemedia/v3/b/w;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 41
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    .line 49
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 50
    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/c;->b:Ljava/text/DateFormat;

    .line 52
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/c;->c:Ljava/text/DateFormat;

    .line 51
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/c;->c:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_24

    move-result-object v0

    .line 72
    :goto_7
    monitor-exit p0

    return-object v0

    .line 65
    :catch_9
    move-exception v0

    .line 68
    :try_start_a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/c;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_f} :catch_11
    .catchall {:try_start_a .. :try_end_f} :catchall_24

    move-result-object v0

    goto :goto_7

    .line 69
    :catch_11
    move-exception v0

    .line 72
    :try_start_12
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_1b
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_1b} :catch_1d
    .catchall {:try_start_12 .. :try_end_1b} :catchall_24

    move-result-object v0

    goto :goto_7

    .line 73
    :catch_1d
    move-exception v0

    .line 74
    :try_start_1e
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-direct {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_24

    .line 64
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/b;->i:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-ne v0, v1, :cond_d

    .line 56
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->j()V

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_c
.end method

.method public declared-synchronized a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/util/Date;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    if-nez p2, :cond_8

    .line 80
    :try_start_3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 85
    :goto_6
    monitor-exit p0

    return-void

    .line 83
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/c;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_12

    goto :goto_6

    .line 79
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/c;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public synthetic write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/c;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/util/Date;)V

    return-void
.end method
