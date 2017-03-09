.class final Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:J

.field private final e:Z

.field private final f:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final g:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/f/m;Z)V
    .registers 7

    .prologue
    const/16 v2, 0xc

    const/4 v0, 0x1

    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1153
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 1154
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 1155
    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->e:Z

    .line 1156
    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1157
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->a:I

    .line 1158
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1159
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->i:I

    .line 1160
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v1

    if-ne v1, v0, :cond_2d

    :goto_24
    const-string v1, "first_chunk must be 1"

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(ZLjava/lang/Object;)V

    .line 1161
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->b:I

    .line 1162
    return-void

    .line 1160
    :cond_2d
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public a()Z
    .registers 3

    .prologue
    .line 1165
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->b:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->a:I

    if-ne v0, v1, :cond_c

    .line 1166
    const/4 v0, 0x0

    .line 1176
    :goto_b
    return v0

    .line 1168
    :cond_c
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->e:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->u()J

    move-result-wide v0

    .line 1169
    :goto_16
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->d:J

    .line 1170
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->b:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->h:I

    if-ne v0, v1, :cond_3e

    .line 1171
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->c:I

    .line 1172
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 1173
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->i:I

    if-lez v0, :cond_47

    .line 1174
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3c
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->h:I

    .line 1176
    :cond_3e
    const/4 v0, 0x1

    goto :goto_b

    .line 1169
    :cond_40
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$b;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v0

    goto :goto_16

    .line 1174
    :cond_47
    const/4 v0, -0x1

    goto :goto_3c
.end method
