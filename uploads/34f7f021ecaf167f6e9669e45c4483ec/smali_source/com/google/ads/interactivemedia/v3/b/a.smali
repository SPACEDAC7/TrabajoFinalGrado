.class final Lcom/google/ads/interactivemedia/v3/b/a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/k;
.implements Lcom/google/ads/interactivemedia/v3/b/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/b/k",
        "<",
        "Ljava/util/Date;",
        ">;",
        "Lcom/google/ads/interactivemedia/v3/b/s",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/DateFormat;

.field private final b:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 45
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 46
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    .line 45
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 47
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    .prologue
    .line 58
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 59
    invoke-static {p1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/a;->a:Ljava/text/DateFormat;

    .line 64
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/a;->b:Ljava/text/DateFormat;

    .line 65
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/b/l;)Ljava/util/Date;
    .registers 6

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a;->b:Ljava/text/DateFormat;

    monitor-enter v1

    .line 98
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_c} :catch_f
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    move-result-object v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_1c

    .line 104
    :goto_e
    return-object v0

    .line 99
    :catch_f
    move-exception v0

    .line 101
    :try_start_10
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a;->a:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_19} :catch_1f
    .catchall {:try_start_10 .. :try_end_19} :catchall_1c

    move-result-object v0

    :try_start_1a
    monitor-exit v1

    goto :goto_e

    .line 108
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0

    .line 102
    :catch_1f
    move-exception v0

    .line 104
    :try_start_20
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/l;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_2d
    .catch Ljava/text/ParseException; {:try_start_20 .. :try_end_2d} :catch_30
    .catchall {:try_start_20 .. :try_end_2d} :catchall_1c

    move-result-object v0

    :try_start_2e
    monitor-exit v1

    goto :goto_e

    .line 105
    :catch_30
    move-exception v0

    .line 106
    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_1c
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/r;)Lcom/google/ads/interactivemedia/v3/b/l;
    .registers 5

    .prologue
    .line 37
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/b/a;->a(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/r;)Lcom/google/ads/interactivemedia/v3/b/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/r;)Lcom/google/ads/interactivemedia/v3/b/l;
    .registers 7

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a;->b:Ljava/text/DateFormat;

    monitor-enter v1

    .line 72
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a;->a:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/b/q;-><init>(Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 74
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/l;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/j;)Ljava/util/Date;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/b/p;
        }
    .end annotation

    .prologue
    .line 80
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/b/q;

    if-nez v0, :cond_c

    .line 81
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/p;

    const-string v1, "The date should be a string value"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/p;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/a;->a(Lcom/google/ads/interactivemedia/v3/b/l;)Ljava/util/Date;

    move-result-object v0

    .line 84
    const-class v1, Ljava/util/Date;

    if-ne p2, v1, :cond_15

    .line 89
    :goto_14
    return-object v0

    .line 86
    :cond_15
    const-class v1, Ljava/sql/Timestamp;

    if-ne p2, v1, :cond_24

    .line 87
    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    goto :goto_14

    .line 88
    :cond_24
    const-class v1, Ljava/sql/Date;

    if-ne p2, v1, :cond_33

    .line 89
    new-instance v1, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_14

    .line 91
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot deserialize to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(Lcom/google/ads/interactivemedia/v3/b/l;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/j;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/b/p;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/b/a;->a(Lcom/google/ads/interactivemedia/v3/b/l;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/j;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-class v1, Lcom/google/ads/interactivemedia/v3/b/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a;->b:Ljava/text/DateFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
