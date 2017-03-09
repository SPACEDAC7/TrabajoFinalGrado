.class public final Lcom/google/ads/interactivemedia/v3/a/c/e/o;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/e/o$b;,
        Lcom/google/ads/interactivemedia/v3/a/c/e/o$c;,
        Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;,
        Lcom/google/ads/interactivemedia/v3/a/c/e/o$d;
    }
.end annotation


# static fields
.field private static final d:J

.field private static final e:J

.field private static final f:J


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/e/o$d;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseBooleanArray;

.field c:Lcom/google/ads/interactivemedia/v3/a/c/e/i;

.field private final g:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

.field private final h:I

.field private final i:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final j:Lcom/google/ads/interactivemedia/v3/a/f/l;

.field private final k:Landroid/util/SparseIntArray;

.field private l:Lcom/google/ads/interactivemedia/v3/a/c/g;

.field private m:Z

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 65
    const-string v0, "AC-3"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->d:J

    .line 66
    const-string v0, "EAC3"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->e:J

    .line 67
    const-string v0, "HEVC"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->f:J

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 87
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/e/m;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/e/m;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/e/m;)V
    .registers 3

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/e/m;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/e/m;I)V
    .registers 5

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    .line 96
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->h:I

    .line 97
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0x3ac

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 98
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->j:Lcom/google/ads/interactivemedia/v3/a/f/l;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->a:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->b:Landroid/util/SparseBooleanArray;

    .line 101
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->k:Landroid/util/SparseIntArray;

    .line 102
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->f()V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/c/e/o;)I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->h:I

    return v0
.end method

.method static synthetic a()J
    .registers 2

    .prologue
    .line 38
    sget-wide v0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->d:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/c/e/o;Z)Z
    .registers 2

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/a/c/e/o;)I
    .registers 3

    .prologue
    .line 38
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->n:I

    return v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/a/c/e/o;)Lcom/google/ads/interactivemedia/v3/a/c/e/m;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    return-object v0
.end method

.method static synthetic d()J
    .registers 2

    .prologue
    .line 38
    sget-wide v0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/a/c/e/o;)Z
    .registers 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->m:Z

    return v0
.end method

.method static synthetic e()J
    .registers 2

    .prologue
    .line 38
    sget-wide v0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->f:J

    return-wide v0
.end method

.method private f()V
    .registers 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 234
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 235
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;

    invoke-direct {v2, p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/e/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->c:Lcom/google/ads/interactivemedia/v3/a/c/e/i;

    .line 237
    const/16 v0, 0x2000

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->n:I

    .line 238
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xbc

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 150
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v4

    rsub-int v4, v4, 0x3ac

    if-ge v4, v7, :cond_29

    .line 151
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v4

    .line 152
    if-lez v4, :cond_24

    .line 153
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v5

    invoke-static {v3, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    :cond_24
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v5, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    .line 158
    :cond_29
    :goto_29
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v4

    if-ge v4, v7, :cond_48

    .line 159
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v4

    .line 160
    rsub-int v5, v4, 0x3ac

    invoke-interface {p1, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a([BII)I

    move-result v5

    .line 161
    if-ne v5, v0, :cond_41

    move v2, v0

    .line 227
    :cond_40
    :goto_40
    return v2

    .line 164
    :cond_41
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    add-int/2addr v4, v5

    invoke-virtual {v6, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    goto :goto_29

    .line 169
    :cond_48
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v4

    .line 170
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v0

    .line 171
    :goto_54
    if-ge v0, v4, :cond_5f

    aget-byte v5, v3, v0

    const/16 v6, 0x47

    if-eq v5, v6, :cond_5f

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 174
    :cond_5f
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 176
    add-int/lit16 v5, v0, 0xbc

    .line 177
    if-gt v5, v4, :cond_40

    .line 181
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 182
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->j:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v6, 0x3

    invoke-virtual {v0, v3, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/l;I)V

    .line 183
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->j:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 185
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    goto :goto_40

    .line 188
    :cond_83
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->j:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v6

    .line 189
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->j:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 190
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->j:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v0

    .line 191
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->j:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 192
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->j:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v7

    .line 193
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->j:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v8

    .line 195
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->j:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v3

    .line 196
    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->k:Landroid/util/SparseIntArray;

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v9, v0, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 197
    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->k:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 198
    if-ne v9, v3, :cond_c5

    .line 200
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    goto/16 :goto_40

    .line 202
    :cond_c5
    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0x10

    if-eq v3, v9, :cond_110

    move v3, v1

    .line 207
    :goto_cc
    if-eqz v7, :cond_d9

    .line 208
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v7

    .line 209
    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v9, v7}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 213
    :cond_d9
    if-eqz v8, :cond_107

    .line 214
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/e/o$d;

    .line 215
    if-eqz v0, :cond_107

    .line 216
    if-eqz v3, :cond_ea

    .line 217
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$d;->a()V

    .line 219
    :cond_ea
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v3, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 220
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->l:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-virtual {v0, v3, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/c/e/o$d;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;ZLcom/google/ads/interactivemedia/v3/a/c/g;)V

    .line 221
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v0

    if-gt v0, v5, :cond_10e

    move v0, v1

    :goto_ff
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 222
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 226
    :cond_107
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    goto/16 :goto_40

    :cond_10e
    move v0, v2

    .line 221
    goto :goto_ff

    :cond_110
    move v3, v2

    goto :goto_cc
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 3

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->l:Lcom/google/ads/interactivemedia/v3/a/c/g;

    .line 128
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/l;->f:Lcom/google/ads/interactivemedia/v3/a/c/l;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 129
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 110
    const/16 v1, 0x3ac

    invoke-interface {p1, v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    move v2, v0

    .line 111
    :goto_b
    const/16 v1, 0xbc

    if-ge v2, v1, :cond_17

    move v1, v0

    .line 113
    :goto_10
    const/4 v4, 0x5

    if-ne v1, v4, :cond_18

    .line 114
    invoke-interface {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 115
    const/4 v0, 0x1

    .line 122
    :cond_17
    return v0

    .line 117
    :cond_18
    mul-int/lit16 v4, v1, 0xbc

    add-int/2addr v4, v2

    aget-byte v4, v3, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_25

    .line 111
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b

    .line 112
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method public b()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/m;->a()V

    .line 134
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 135
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->k:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 137
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/o;->f()V

    .line 138
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 143
    return-void
.end method
