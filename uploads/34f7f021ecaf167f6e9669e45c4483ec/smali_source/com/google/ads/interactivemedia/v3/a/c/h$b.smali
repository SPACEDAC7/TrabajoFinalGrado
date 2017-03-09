.class Lcom/google/ads/interactivemedia/v3/a/c/h$b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/e/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/e/e;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/c/h$c;

.field private final d:Lcom/google/ads/interactivemedia/v3/a/e/b;

.field private final e:I

.field private final f:Lcom/google/ads/interactivemedia/v3/a/c/j;

.field private volatile g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/a/e/e;Lcom/google/ads/interactivemedia/v3/a/c/h$c;Lcom/google/ads/interactivemedia/v3/a/e/b;IJ)V
    .registers 10

    .prologue
    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->a:Landroid/net/Uri;

    .line 797
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/e/e;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/e;

    .line 798
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->c:Lcom/google/ads/interactivemedia/v3/a/c/h$c;

    .line 799
    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/e/b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->d:Lcom/google/ads/interactivemedia/v3/a/e/b;

    .line 800
    iput p5, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->e:I

    .line 801
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/j;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c/j;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->f:Lcom/google/ads/interactivemedia/v3/a/c/j;

    .line 802
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->f:Lcom/google/ads/interactivemedia/v3/a/c/j;

    iput-wide p6, v0, Lcom/google/ads/interactivemedia/v3/a/c/j;->a:J

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->h:Z

    .line 804
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->g:Z

    .line 809
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->g:Z

    return v0
.end method

.method public c()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 818
    move v9, v7

    .line 819
    :goto_6
    if-nez v9, :cond_7e

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->g:Z

    if-nez v0, :cond_7e

    .line 822
    :try_start_c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->f:Lcom/google/ads/interactivemedia/v3/a/c/j;

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/j;->a:J

    .line 823
    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/e;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/e/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->a:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/a/e/f;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v10, v0}, Lcom/google/ads/interactivemedia/v3/a/e/e;->a(Lcom/google/ads/interactivemedia/v3/a/e/f;)J

    move-result-wide v4

    .line 824
    cmp-long v0, v4, v12

    if-eqz v0, :cond_25

    .line 825
    add-long/2addr v4, v2

    .line 827
    :cond_25
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/e;

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/c/b;-><init>(Lcom/google/ads/interactivemedia/v3/a/e/e;JJ)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_68

    .line 828
    :try_start_2c
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->c:Lcom/google/ads/interactivemedia/v3/a/c/h$c;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/h$c;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Lcom/google/ads/interactivemedia/v3/a/c/e;

    move-result-object v2

    .line 829
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->h:Z

    if-eqz v1, :cond_3c

    .line 830
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/a/c/e;->b()V

    .line 831
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->h:Z
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_7f

    :cond_3c
    move v1, v9

    .line 833
    :goto_3d
    if-nez v1, :cond_52

    :try_start_3f
    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->g:Z

    if-nez v3, :cond_52

    .line 834
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->d:Lcom/google/ads/interactivemedia/v3/a/e/b;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->e:I

    invoke-interface {v3, v4}, Lcom/google/ads/interactivemedia/v3/a/e/b;->b(I)V

    .line 835
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->f:Lcom/google/ads/interactivemedia/v3/a/c/j;

    invoke-interface {v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_85

    move-result v9

    move v1, v9

    goto :goto_3d

    .line 839
    :cond_52
    if-ne v1, v11, :cond_5c

    move v0, v7

    .line 844
    :goto_55
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/e;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/e/e;->a()V

    move v9, v0

    .line 846
    goto :goto_6

    .line 841
    :cond_5c
    if-eqz v0, :cond_66

    .line 842
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->f:Lcom/google/ads/interactivemedia/v3/a/c/j;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/ads/interactivemedia/v3/a/c/j;->a:J

    :cond_66
    move v0, v1

    goto :goto_55

    .line 839
    :catchall_68
    move-exception v0

    move-object v1, v8

    move v2, v9

    :goto_6b
    if-ne v2, v11, :cond_73

    .line 844
    :cond_6d
    :goto_6d
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/e;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/e/e;->a()V

    throw v0

    .line 841
    :cond_73
    if-eqz v1, :cond_6d

    .line 842
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;->f:Lcom/google/ads/interactivemedia/v3/a/c/j;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/ads/interactivemedia/v3/a/c/j;->a:J

    goto :goto_6d

    .line 847
    :cond_7e
    return-void

    .line 839
    :catchall_7f
    move-exception v1

    move v2, v9

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    goto :goto_6b

    :catchall_85
    move-exception v2

    move-object v14, v2

    move v2, v1

    move-object v1, v0

    move-object v0, v14

    goto :goto_6b
.end method
