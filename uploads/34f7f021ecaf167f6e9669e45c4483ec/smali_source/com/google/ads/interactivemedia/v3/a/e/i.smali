.class public final Lcom/google/ads/interactivemedia/v3/a/e/i;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/e/n;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/e/n;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/e/n;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/e/n;

.field private final d:Lcom/google/ads/interactivemedia/v3/a/e/n;

.field private e:Lcom/google/ads/interactivemedia/v3/a/e/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/a/e/m;Lcom/google/ads/interactivemedia/v3/a/e/n;)V
    .registers 5

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/e/n;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->a:Lcom/google/ads/interactivemedia/v3/a/e/n;

    .line 109
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/e/j;

    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/a/e/j;-><init>(Lcom/google/ads/interactivemedia/v3/a/e/m;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->b:Lcom/google/ads/interactivemedia/v3/a/e/n;

    .line 110
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/e/c;

    invoke-direct {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/e/c;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/a/e/m;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->c:Lcom/google/ads/interactivemedia/v3/a/e/n;

    .line 111
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/e/d;

    invoke-direct {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/e/d;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/a/e/m;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->d:Lcom/google/ads/interactivemedia/v3/a/e/n;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/a/e/m;Ljava/lang/String;Z)V
    .registers 12

    .prologue
    const/16 v4, 0x1f40

    .line 93
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/e/h;

    const/4 v2, 0x0

    move-object v1, p3

    move-object v3, p2

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/a/e/h;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/f/n;Lcom/google/ads/interactivemedia/v3/a/e/m;IIZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/a/e/i;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/a/e/m;Lcom/google/ads/interactivemedia/v3/a/e/n;)V

    .line 97
    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->e:Lcom/google/ads/interactivemedia/v3/a/e/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/e/n;->a([BII)I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/e/f;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->e:Lcom/google/ads/interactivemedia/v3/a/e/n;

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 118
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 120
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/e/f;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 121
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->c:Lcom/google/ads/interactivemedia/v3/a/e/n;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->e:Lcom/google/ads/interactivemedia/v3/a/e/n;

    .line 133
    :goto_28
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->e:Lcom/google/ads/interactivemedia/v3/a/e/n;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/e/n;->a(Lcom/google/ads/interactivemedia/v3/a/e/f;)J

    move-result-wide v0

    return-wide v0

    .line 116
    :cond_2f
    const/4 v0, 0x0

    goto :goto_5

    .line 123
    :cond_31
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->b:Lcom/google/ads/interactivemedia/v3/a/e/n;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->e:Lcom/google/ads/interactivemedia/v3/a/e/n;

    goto :goto_28

    .line 125
    :cond_36
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 126
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->c:Lcom/google/ads/interactivemedia/v3/a/e/n;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->e:Lcom/google/ads/interactivemedia/v3/a/e/n;

    goto :goto_28

    .line 127
    :cond_43
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 128
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->d:Lcom/google/ads/interactivemedia/v3/a/e/n;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->e:Lcom/google/ads/interactivemedia/v3/a/e/n;

    goto :goto_28

    .line 130
    :cond_50
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->a:Lcom/google/ads/interactivemedia/v3/a/e/n;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->e:Lcom/google/ads/interactivemedia/v3/a/e/n;

    goto :goto_28
.end method

.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->e:Lcom/google/ads/interactivemedia/v3/a/e/n;

    if-eqz v0, :cond_c

    .line 150
    :try_start_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->e:Lcom/google/ads/interactivemedia/v3/a/e/n;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/n;->a()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    .line 152
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->e:Lcom/google/ads/interactivemedia/v3/a/e/n;

    .line 155
    :cond_c
    return-void

    .line 152
    :catchall_d
    move-exception v0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/i;->e:Lcom/google/ads/interactivemedia/v3/a/e/n;

    throw v0
.end method
