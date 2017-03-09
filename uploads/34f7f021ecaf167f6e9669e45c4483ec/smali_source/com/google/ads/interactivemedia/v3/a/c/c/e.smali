.class public Lcom/google/ads/interactivemedia/v3/a/c/c/e;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:[B


# instance fields
.field private final c:I

.field private final d:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final g:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final h:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final i:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final j:[B

.field private final k:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:J

.field private o:I

.field private p:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private q:J

.field private r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/google/ads/interactivemedia/v3/a/c/g;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-string v0, "seig"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a:I

    .line 73
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->b:[B

    return-void

    :array_12
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;-><init>(I)V

    .line 120
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;-><init>(ILcom/google/ads/interactivemedia/v3/a/c/c/i;)V

    .line 127
    return-void
.end method

.method public constructor <init>(ILcom/google/ads/interactivemedia/v3/a/c/c/i;)V
    .registers 7

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x4

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->d:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    .line 136
    if-eqz p2, :cond_43

    move v0, v1

    :goto_b
    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->c:I

    .line 137
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 138
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/k;->a:[B

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 139
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 140
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 141
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->j:[B

    .line 142
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->k:Ljava/util/Stack;

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    .line 144
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a()V

    .line 145
    return-void

    .line 136
    :cond_43
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 989
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    .line 990
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->l:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 991
    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/c;->a:I

    .line 992
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->n:Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    if-eqz v4, :cond_38

    .line 993
    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->n:Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    .line 995
    :goto_f
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/j;->b:I

    .line 996
    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->j:[Z

    iget v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->e:I

    aget-boolean v2, v0, v2

    .line 1000
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    if-eqz v2, :cond_3f

    const/16 v0, 0x80

    :goto_1f
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    .line 1001
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1002
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 1003
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->h:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v5, 0x1

    invoke-interface {v0, v1, v5}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 1005
    invoke-interface {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 1007
    if-nez v2, :cond_41

    .line 1008
    add-int/lit8 v0, v4, 0x1

    .line 1015
    :goto_37
    return v0

    .line 994
    :cond_38
    iget-object v4, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->c:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->l:[Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    aget-object v0, v4, v0

    goto :goto_f

    :cond_3f
    move v0, v1

    .line 1000
    goto :goto_1f

    .line 1011
    :cond_41
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v1

    .line 1012
    const/4 v2, -0x2

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 1013
    mul-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x2

    .line 1014
    invoke-interface {v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 1015
    add-int/lit8 v0, v4, 0x1

    add-int/2addr v0, v1

    goto :goto_37
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 387
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 388
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 389
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v2

    .line 390
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v3

    .line 391
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v4

    .line 393
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v5, Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/c/c/c;-><init>(IIII)V

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/a/b/a$a;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/a/b/a$a;"
        }
    .end annotation

    .prologue
    .line 1020
    const/4 v1, 0x0

    .line 1021
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 1022
    const/4 v0, 0x0

    move v2, v0

    :goto_7
    if-ge v2, v3, :cond_41

    .line 1023
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    .line 1024
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aM:I

    sget v5, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->T:I

    if-ne v4, v5, :cond_2d

    .line 1025
    if-nez v1, :cond_1c

    .line 1026
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/b/a$a;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/a/b/a$a;-><init>()V

    .line 1028
    :cond_1c
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 1029
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/g;->a([B)Ljava/util/UUID;

    move-result-object v4

    .line 1030
    if-nez v4, :cond_31

    .line 1031
    const-string v0, "FragmentedMp4Extractor"

    const-string v4, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 1033
    :cond_31
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/g;->a([B)Ljava/util/UUID;

    move-result-object v4

    new-instance v5, Lcom/google/ads/interactivemedia/v3/a/b/a$b;

    const-string/jumbo v6, "video/mp4"

    invoke-direct {v5, v6, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a$b;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v1, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/b/a$a;->a(Ljava/util/UUID;Lcom/google/ads/interactivemedia/v3/a/b/a$b;)V

    goto :goto_2d

    .line 1038
    :cond_41
    return-object v1
.end method

.method private static a(Landroid/util/SparseArray;)Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;"
        }
    .end annotation

    .prologue
    .line 961
    const/4 v1, 0x0

    .line 962
    const-wide v2, 0x7fffffffffffffffL

    .line 964
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 965
    const/4 v0, 0x0

    move v6, v0

    :goto_c
    if-ge v6, v7, :cond_31

    .line 966
    invoke-virtual {p0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    .line 967
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->e:I

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->d:I

    if-ne v4, v5, :cond_26

    move-wide v9, v2

    move-object v2, v1

    move-wide v0, v9

    .line 965
    :goto_1f
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-wide v9, v0

    move-object v1, v2

    move-wide v2, v9

    goto :goto_c

    .line 970
    :cond_26
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    iget-wide v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->b:J

    .line 971
    cmp-long v8, v4, v2

    if-gez v8, :cond_32

    move-object v2, v0

    move-wide v0, v4

    .line 973
    goto :goto_1f

    .line 977
    :cond_31
    return-object v1

    :cond_32
    move-wide v9, v2

    move-object v2, v1

    move-wide v0, v9

    goto :goto_1f
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;Landroid/util/SparseArray;I)Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;",
            ">;I)",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;"
        }
    .end annotation

    .prologue
    .line 546
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 547
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 548
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->b(I)I

    move-result v5

    .line 549
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 550
    and-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_1f

    :goto_15
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    .line 551
    if-nez v0, :cond_21

    .line 552
    const/4 v0, 0x0

    .line 572
    :goto_1e
    return-object v0

    .line 550
    :cond_1f
    const/4 v0, 0x0

    goto :goto_15

    .line 554
    :cond_21
    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_31

    .line 555
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->u()J

    move-result-wide v2

    .line 556
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    iput-wide v2, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->b:J

    .line 557
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    iput-wide v2, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->c:J

    .line 560
    :cond_31
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->d:Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    .line 561
    and-int/lit8 v1, v5, 0x2

    if-eqz v1, :cond_62

    .line 563
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    .line 564
    :goto_3e
    and-int/lit8 v1, v5, 0x8

    if-eqz v1, :cond_66

    .line 565
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v1

    move v3, v1

    .line 566
    :goto_47
    and-int/lit8 v1, v5, 0x10

    if-eqz v1, :cond_6a

    .line 567
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v1

    move v2, v1

    .line 568
    :goto_50
    and-int/lit8 v1, v5, 0x20

    if-eqz v1, :cond_6e

    .line 569
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v1

    .line 570
    :goto_58
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    invoke-direct {v6, v4, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/c;-><init>(IIII)V

    iput-object v6, v5, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    goto :goto_1e

    .line 563
    :cond_62
    iget v1, v6, Lcom/google/ads/interactivemedia/v3/a/c/c/c;->a:I

    move v4, v1

    goto :goto_3e

    .line 565
    :cond_66
    iget v1, v6, Lcom/google/ads/interactivemedia/v3/a/c/c/c;->b:I

    move v3, v1

    goto :goto_47

    .line 567
    :cond_6a
    iget v1, v6, Lcom/google/ads/interactivemedia/v3/a/c/c/c;->c:I

    move v2, v1

    goto :goto_50

    .line 569
    :cond_6e
    iget v1, v6, Lcom/google/ads/interactivemedia/v3/a/c/c/c;->d:I

    goto :goto_58
.end method

.method private a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->l:I

    .line 204
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->o:I

    .line 205
    return-void
.end method

.method private a(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 291
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aN:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_22

    .line 292
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)V

    goto :goto_0

    .line 294
    :cond_22
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a()V

    .line 295
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 310
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aM:I

    sget v1, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->A:I

    if-ne v0, v1, :cond_a

    .line 311
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->b(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)V

    .line 317
    :cond_9
    :goto_9
    return-void

    .line 312
    :cond_a
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aM:I

    sget v1, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->J:I

    if-ne v0, v1, :cond_14

    .line 313
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->c(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)V

    goto :goto_9

    .line 314
    :cond_14
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 315
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)V

    goto :goto_9
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;Landroid/util/SparseArray;I[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 410
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1f

    .line 411
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    .line 412
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aM:I

    sget v4, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->K:I

    if-ne v3, v4, :cond_1b

    .line 413
    invoke-static {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->b(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;Landroid/util/SparseArray;I[B)V

    .line 410
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 416
    :cond_1f
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 299
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;)V

    .line 307
    :cond_13
    :goto_13
    return-void

    .line 300
    :cond_14
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aM:I

    sget v1, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->z:I

    if-ne v0, v1, :cond_29

    .line 301
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;J)Lcom/google/ads/interactivemedia/v3/a/c/a;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->v:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->w:Z

    goto :goto_13

    .line 304
    :cond_29
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aM:I

    sget v1, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aE:I

    if-ne v0, v1, :cond_13

    .line 305
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V

    goto :goto_13
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;JILcom/google/ads/interactivemedia/v3/a/f/m;)V
    .registers 34

    .prologue
    .line 599
    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 600
    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    .line 601
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->b(I)I

    move-result v3

    .line 603
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->c:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    move-object/from16 v21, v0

    .line 605
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    move-object/from16 v22, v0

    .line 607
    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v23

    .line 608
    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_35

    .line 609
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->b:J

    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->b:J

    .line 612
    :cond_35
    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_102

    const/4 v2, 0x1

    move v8, v2

    .line 613
    :goto_3b
    move-object/from16 v0, v22

    iget v14, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/c;->d:I

    .line 614
    if-eqz v8, :cond_45

    .line 615
    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v14

    .line 618
    :cond_45
    and-int/lit16 v2, v3, 0x100

    if-eqz v2, :cond_106

    const/4 v2, 0x1

    move/from16 v20, v2

    .line 619
    :goto_4c
    and-int/lit16 v2, v3, 0x200

    if-eqz v2, :cond_10b

    const/4 v2, 0x1

    move/from16 v19, v2

    .line 620
    :goto_53
    and-int/lit16 v2, v3, 0x400

    if-eqz v2, :cond_110

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 621
    :goto_5a
    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_115

    const/4 v2, 0x1

    move v9, v2

    .line 626
    :goto_60
    const-wide/16 v2, 0x0

    .line 630
    iget-object v4, v12, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->m:[J

    if-eqz v4, :cond_142

    iget-object v4, v12, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->m:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_142

    iget-object v4, v12, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->m:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_142

    .line 632
    iget-object v2, v12, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->n:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x3e8

    iget-wide v6, v12, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->h:J

    invoke-static/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(JJJ)J

    move-result-wide v2

    move-wide v10, v2

    .line 635
    :goto_85
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->a(I)V

    .line 636
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->e:[I

    move-object/from16 v24, v0

    .line 637
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->f:[I

    move-object/from16 v25, v0

    .line 638
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->g:[J

    move-object/from16 v26, v0

    .line 639
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->h:[Z

    move-object/from16 v27, v0

    .line 641
    iget-wide v6, v12, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->h:J

    .line 643
    iget v2, v12, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->g:I

    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->a:I

    if-ne v2, v3, :cond_119

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_119

    const/4 v2, 0x1

    move v12, v2

    .line 645
    :goto_b2
    const/4 v2, 0x0

    move/from16 v17, v2

    move-wide/from16 v2, p1

    :goto_b7
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_13d

    .line 647
    if-eqz v20, :cond_11c

    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v4

    move/from16 v16, v4

    .line 649
    :goto_c5
    if-eqz v19, :cond_123

    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v4

    move v15, v4

    .line 650
    :goto_cc
    if-nez v17, :cond_129

    if-eqz v8, :cond_129

    move v13, v14

    .line 652
    :goto_d1
    if-eqz v9, :cond_137

    .line 658
    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v4

    .line 659
    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v25, v17

    .line 663
    :goto_de
    const-wide/16 v4, 0x3e8

    .line 664
    invoke-static/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(JJJ)J

    move-result-wide v4

    sub-long/2addr v4, v10

    aput-wide v4, v26, v17

    .line 665
    aput v15, v24, v17

    .line 666
    shr-int/lit8 v4, v13, 0x10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_13b

    if-eqz v12, :cond_f3

    if-nez v17, :cond_13b

    :cond_f3
    const/4 v4, 0x1

    :goto_f4
    aput-boolean v4, v27, v17

    .line 668
    move/from16 v0, v16

    int-to-long v4, v0

    add-long p1, v2, v4

    .line 645
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    move-wide/from16 v2, p1

    goto :goto_b7

    .line 612
    :cond_102
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_3b

    .line 618
    :cond_106
    const/4 v2, 0x0

    move/from16 v20, v2

    goto/16 :goto_4c

    .line 619
    :cond_10b
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_53

    .line 620
    :cond_110
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_5a

    .line 621
    :cond_115
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_60

    .line 643
    :cond_119
    const/4 v2, 0x0

    move v12, v2

    goto :goto_b2

    .line 648
    :cond_11c
    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/c;->b:I

    move/from16 v16, v4

    goto :goto_c5

    .line 649
    :cond_123
    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/c;->c:I

    move v15, v4

    goto :goto_cc

    .line 651
    :cond_129
    if-eqz v18, :cond_131

    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v4

    move v13, v4

    goto :goto_d1

    :cond_131
    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/c;->d:I

    move v13, v4

    goto :goto_d1

    .line 661
    :cond_137
    const/4 v4, 0x0

    aput v4, v25, v17

    goto :goto_de

    .line 666
    :cond_13b
    const/4 v4, 0x0

    goto :goto_f4

    .line 670
    :cond_13d
    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->o:J

    .line 671
    return-void

    :cond_142
    move-wide v10, v2

    goto/16 :goto_85
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/c/c/j;Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/c/c/k;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 479
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/j;->b:I

    .line 480
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 481
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 482
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->b(I)I

    move-result v0

    .line 483
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_18

    .line 484
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 486
    :cond_18
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    .line 488
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v6

    .line 489
    iget v3, p2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->d:I

    if-eq v6, v3, :cond_4b

    .line 490
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    iget v1, p2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->d:I

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length mismatch: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_4b
    if-nez v0, :cond_65

    .line 495
    iget-object v7, p2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->j:[Z

    move v3, v2

    move v0, v2

    .line 496
    :goto_51
    if-ge v3, v6, :cond_6e

    .line 497
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v8

    .line 498
    add-int v4, v0, v8

    .line 499
    if-le v8, v5, :cond_63

    move v0, v1

    :goto_5c
    aput-boolean v0, v7, v3

    .line 496
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_51

    :cond_63
    move v0, v2

    .line 499
    goto :goto_5c

    .line 502
    :cond_65
    if-le v0, v5, :cond_72

    .line 503
    :goto_67
    mul-int/2addr v0, v6

    add-int/2addr v0, v2

    .line 504
    iget-object v3, p2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->j:[Z

    invoke-static {v3, v2, v6, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 506
    :cond_6e
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->b(I)V

    .line 507
    return-void

    :cond_72
    move v1, v2

    .line 502
    goto :goto_67
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;ILcom/google/ads/interactivemedia/v3/a/c/c/k;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 695
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 696
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 697
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->b(I)I

    move-result v0

    .line 699
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1a

    .line 701
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_1a
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    .line 705
    :goto_1f
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v2

    .line 706
    iget v3, p2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->d:I

    if-eq v2, v3, :cond_50

    .line 707
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    iget v1, p2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->d:I

    const/16 v3, 0x29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Length mismatch: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    move v0, v1

    .line 704
    goto :goto_1f

    .line 710
    :cond_50
    iget-object v3, p2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->j:[Z

    invoke-static {v3, v1, v2, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 711
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->b(I)V

    .line 712
    invoke-virtual {p2, p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)V

    .line 713
    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/c/c/k;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 516
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 517
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 518
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->b(I)I

    move-result v1

    .line 519
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 520
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 523
    :cond_15
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v1

    .line 524
    if-eq v1, v2, :cond_36

    .line 526
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected saio entry count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_36
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a(I)I

    move-result v0

    .line 530
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->c:J

    if-nez v0, :cond_46

    .line 531
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v0

    :goto_42
    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->c:J

    .line 532
    return-void

    .line 531
    :cond_46
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->u()J

    move-result-wide v0

    goto :goto_42
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/c/c/k;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 675
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 679
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->b:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_14

    .line 687
    :goto_13
    return-void

    .line 686
    :cond_14
    invoke-static {p0, v1, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;ILcom/google/ads/interactivemedia/v3/a/c/c/k;)V

    goto :goto_13
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/c/c/k;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 717
    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 718
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 719
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v3

    sget v4, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a:I

    if-eq v3, v4, :cond_16

    .line 758
    :cond_15
    :goto_15
    return-void

    .line 723
    :cond_16
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_1f

    .line 724
    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 726
    :cond_1f
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    if-eq v0, v1, :cond_2d

    .line 727
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_2d
    invoke-virtual {p1, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 731
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 732
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v3

    sget v4, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a:I

    if-ne v3, v4, :cond_15

    .line 736
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a(I)I

    move-result v0

    .line 737
    if-ne v0, v1, :cond_54

    .line 738
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_59

    .line 739
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_54
    if-lt v0, v8, :cond_59

    .line 742
    invoke-virtual {p1, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 744
    :cond_59
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6b

    .line 745
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_6b
    invoke-virtual {p1, v8}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 749
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    if-ne v0, v1, :cond_8d

    move v0, v1

    .line 750
    :goto_75
    if-eqz v0, :cond_15

    .line 753
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v3

    .line 754
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 755
    array-length v5, v4

    invoke-virtual {p1, v4, v2, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 756
    iput-boolean v1, p2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->i:Z

    .line 757
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    invoke-direct {v1, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/c/c/j;-><init>(ZI[B)V

    iput-object v1, p2, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->n:Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    goto :goto_15

    :cond_8d
    move v0, v2

    .line 749
    goto :goto_75
.end method

.method private static a(I)Z
    .registers 2

    .prologue
    .line 1043
    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->R:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->Q:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->B:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->z:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->S:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->v:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->w:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->N:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->x:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->y:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->T:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ab:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ac:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ag:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ad:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ae:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->af:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->P:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->M:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->aE:I

    if-ne p0, v0, :cond_52

    :cond_50
    const/4 v0, 0x1

    :goto_51
    return v0

    :cond_52
    const/4 v0, 0x0

    goto :goto_51
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/f/m;)J
    .registers 3

    .prologue
    .line 401
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 402
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 403
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a(I)I

    move-result v0

    .line 404
    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v0

    :goto_13
    return-wide v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->u()J

    move-result-wide v0

    goto :goto_13
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/f/m;J)Lcom/google/ads/interactivemedia/v3/a/c/a;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 769
    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v4

    .line 771
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a(I)I

    move-result v4

    .line 773
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v8

    .line 777
    if-nez v4, :cond_69

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v4

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v6

    add-long v6, v6, p1

    move-wide v10, v6

    .line 785
    :goto_26
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v16

    .line 788
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 789
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 790
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v19, v0

    .line 791
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v20, v0

    .line 794
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(JJJ)J

    move-result-wide v12

    .line 795
    const/4 v6, 0x0

    move-wide v14, v10

    move v10, v6

    move-wide v6, v4

    move-wide v4, v12

    :goto_54
    move/from16 v0, v16

    if-ge v10, v0, :cond_a3

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v11

    .line 798
    const/high16 v12, -0x80000000

    and-int/2addr v12, v11

    .line 799
    if-eqz v12, :cond_75

    .line 800
    new-instance v4, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v5, "Unhandled indirect reference"

    invoke-direct {v4, v5}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v4

    .line 781
    :cond_69
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->u()J

    move-result-wide v4

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->u()J

    move-result-wide v6

    add-long v6, v6, p1

    move-wide v10, v6

    goto :goto_26

    .line 802
    :cond_75
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v12

    .line 804
    const v21, 0x7fffffff

    and-int v11, v11, v21

    aput v11, v17, v10

    .line 805
    aput-wide v14, v18, v10

    .line 809
    aput-wide v4, v20, v10

    .line 810
    add-long v4, v6, v12

    .line 811
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(JJJ)J

    move-result-wide v12

    .line 812
    aget-wide v6, v20, v10

    sub-long v6, v12, v6

    aput-wide v6, v19, v10

    .line 814
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 815
    aget v6, v17, v10

    int-to-long v6, v6

    add-long/2addr v14, v6

    .line 795
    add-int/lit8 v6, v10, 0x1

    move v10, v6

    move-wide v6, v4

    move-wide v4, v12

    goto :goto_54

    .line 818
    :cond_a3
    new-instance v4, Lcom/google/ads/interactivemedia/v3/a/c/a;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/a;-><init>([I[J[J[J)V

    return-object v4
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)V
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->d:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    if-nez v0, :cond_56

    move v0, v1

    :goto_7
    const-string v3, "Unexpected moov box."

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(ZLjava/lang/Object;)V

    .line 322
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/a/b/a$a;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_19

    .line 324
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->v:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/b/a;)V

    .line 328
    :cond_19
    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->L:I

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->e(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    move-result-object v6

    .line 329
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 330
    const-wide/16 v4, -0x1

    .line 331
    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v3, v2

    .line 332
    :goto_2d
    if-ge v3, v8, :cond_65

    .line 333
    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    .line 334
    iget v9, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aM:I

    sget v10, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->x:I

    if-ne v9, v10, :cond_58

    .line 335
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Landroid/util/Pair;

    move-result-object v9

    .line 336
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    invoke-virtual {v7, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    :cond_52
    :goto_52
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2d

    :cond_56
    move v0, v2

    .line 320
    goto :goto_7

    .line 337
    :cond_58
    iget v9, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aM:I

    sget v10, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->M:I

    if-ne v9, v10, :cond_52

    .line 338
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;)J

    move-result-wide v4

    goto :goto_52

    .line 343
    :cond_65
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 344
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v3, v2

    .line 345
    :goto_71
    if-ge v3, v8, :cond_96

    .line 346
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aP:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    .line 347
    iget v9, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aM:I

    sget v10, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->C:I

    if-ne v9, v10, :cond_92

    .line 348
    sget v9, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->B:I

    invoke-virtual {p1, v9}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v9

    invoke-static {v0, v9, v4, v5, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/b;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;JZ)Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_92

    .line 351
    iget v9, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->f:I

    invoke-virtual {v6, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    :cond_92
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_71

    .line 355
    :cond_96
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 357
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_e8

    move v1, v2

    .line 359
    :goto_a3
    if-ge v1, v4, :cond_c1

    .line 360
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->f:I

    new-instance v5, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->v:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v8, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a3

    .line 362
    :cond_c1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->v:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->f()V

    :goto_c6
    move v3, v2

    .line 368
    :goto_c7
    if-ge v3, v4, :cond_f6

    .line 369
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    .line 370
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->f:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->f:I

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    invoke-virtual {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/i;Lcom/google/ads/interactivemedia/v3/a/c/c/c;)V

    .line 368
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_c7

    .line 364
    :cond_e8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v4, :cond_f4

    :goto_f0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    goto :goto_c6

    :cond_f4
    move v1, v2

    goto :goto_f0

    .line 372
    :cond_f6
    return-void
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;Landroid/util/SparseArray;I[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 423
    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->y:I

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->f(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 424
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Trun count in traf != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_11
    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->w:I

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v0

    .line 428
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;Landroid/util/SparseArray;I)Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    move-result-object v2

    .line 429
    if-nez v2, :cond_20

    .line 475
    :cond_1f
    return-void

    .line 433
    :cond_20
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    .line 434
    iget-wide v0, v3, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->o:J

    .line 435
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a()V

    .line 437
    sget v4, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->v:I

    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v4

    .line 438
    if-eqz v4, :cond_3f

    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_3f

    .line 439
    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->v:I

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->c(Lcom/google/ads/interactivemedia/v3/a/f/m;)J

    move-result-wide v0

    .line 442
    :cond_3f
    sget v4, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->y:I

    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v4

    .line 443
    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v2, v0, v1, p2, v4}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;JILcom/google/ads/interactivemedia/v3/a/f/m;)V

    .line 445
    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ab:I

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_61

    .line 447
    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->c:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->l:[Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    iget-object v2, v3, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/c;->a:I

    aget-object v1, v1, v2

    .line 449
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v1, v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/j;Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/c/c/k;)V

    .line 452
    :cond_61
    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ac:I

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_6e

    .line 454
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/c/c/k;)V

    .line 457
    :cond_6e
    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ag:I

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_7b

    .line 459
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/c/c/k;)V

    .line 462
    :cond_7b
    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ad:I

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v0

    .line 463
    sget v1, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->ae:I

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    move-result-object v1

    .line 464
    if-eqz v0, :cond_92

    if-eqz v1, :cond_92

    .line 465
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/c/c/k;)V

    .line 468
    :cond_92
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 469
    const/4 v0, 0x0

    move v1, v0

    :goto_9a
    if-ge v1, v2, :cond_1f

    .line 470
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    .line 471
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aM:I

    sget v5, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->af:I

    if-ne v4, v5, :cond_af

    .line 472
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-static {v0, v3, p3}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/c/c/k;[B)V

    .line 469
    :cond_af
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9a
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/f/m;Lcom/google/ads/interactivemedia/v3/a/c/c/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 690
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;ILcom/google/ads/interactivemedia/v3/a/c/c/k;)V

    .line 691
    return-void
.end method

.method private static b(I)Z
    .registers 2

    .prologue
    .line 1054
    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->A:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->C:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->D:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->E:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->F:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->J:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->K:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->L:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->O:I

    if-ne p0, v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0x7fffffff

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 208
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->o:I

    if-nez v0, :cond_2f

    .line 210
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v0, v1, v8, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    .line 276
    :goto_17
    return v0

    .line 213
    :cond_18
    iput v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->o:I

    .line 214
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 215
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->n:J

    .line 216
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->m:I

    .line 219
    :cond_2f
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->n:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4b

    .line 222
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v0, v8, v8}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 223
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->o:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->o:I

    .line 224
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->u()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->n:J

    .line 227
    :cond_4b
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v4

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->o:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 228
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->m:I

    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->J:I

    if-ne v0, v3, :cond_74

    .line 230
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v3, v1

    .line 231
    :goto_60
    if-ge v3, v6, :cond_74

    .line 232
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    .line 233
    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->c:J

    .line 234
    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->b:J

    .line 231
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_60

    .line 238
    :cond_74
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->m:I

    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->h:I

    if-ne v0, v3, :cond_93

    .line 239
    iput-object v9, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    .line 240
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->n:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->q:J

    .line 241
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->w:Z

    if-nez v0, :cond_8e

    .line 242
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->v:Lcom/google/ads/interactivemedia/v3/a/c/g;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/c/l;->f:Lcom/google/ads/interactivemedia/v3/a/c/l;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V

    .line 243
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->w:Z

    .line 245
    :cond_8e
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->l:I

    move v0, v2

    .line 246
    goto :goto_17

    .line 249
    :cond_93
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->m:I

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 250
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->n:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 251
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->k:Ljava/util/Stack;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->m:I

    invoke-direct {v4, v5, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;-><init>(IJ)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 252
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->n:J

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->o:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_c0

    .line 253
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(J)V

    :goto_bd
    move v0, v2

    .line 276
    goto/16 :goto_17

    .line 256
    :cond_c0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a()V

    goto :goto_bd

    .line 258
    :cond_c4
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->m:I

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 259
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->o:I

    if-eq v0, v8, :cond_d8

    .line 260
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_d8
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->n:J

    cmp-long v0, v4, v10

    if-lez v0, :cond_e6

    .line 263
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_e6
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->n:J

    long-to-int v3, v4

    invoke-direct {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->p:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 266
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->i:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->p:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-static {v0, v1, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->l:I

    goto :goto_bd

    .line 269
    :cond_fe
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->n:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_10c

    .line 270
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_10c
    iput-object v9, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->p:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 273
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->l:I

    goto :goto_bd
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/a/f/m;)J
    .registers 3

    .prologue
    .line 582
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 583
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 584
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a(I)I

    move-result v0

    .line 585
    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->u()J

    move-result-wide v0

    :goto_14
    return-wide v0

    :cond_15
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v0

    goto :goto_14
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->c:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->j:[B

    invoke-static {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;Landroid/util/SparseArray;I[B)V

    .line 376
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$a;->aO:Ljava/util/List;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/a/b/a$a;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_16

    .line 378
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->v:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->a(Lcom/google/ads/interactivemedia/v3/a/b/a;)V

    .line 380
    :cond_16
    return-void
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/a/c/f;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->n:J

    long-to-int v0, v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->o:I

    sub-int/2addr v0, v1

    .line 281
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->p:Lcom/google/ads/interactivemedia/v3/a/f/m;

    if-eqz v1, :cond_2b

    .line 282
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->p:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 283
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->m:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->p:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;-><init>(ILcom/google/ads/interactivemedia/v3/a/f/m;)V

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;J)V

    .line 287
    :goto_23
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(J)V

    .line 288
    return-void

    .line 285
    :cond_2b
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    goto :goto_23
.end method

.method private d(Lcom/google/ads/interactivemedia/v3/a/c/f;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 822
    const/4 v1, 0x0

    .line 823
    const-wide v2, 0x7fffffffffffffffL

    .line 824
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 825
    const/4 v0, 0x0

    move v4, v0

    :goto_e
    if-ge v4, v5, :cond_38

    .line 826
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    .line 827
    iget-boolean v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->m:Z

    if-eqz v6, :cond_57

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->c:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_57

    .line 829
    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->c:J

    .line 830
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    .line 825
    :goto_31
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-wide v8, v0

    move-object v1, v2

    move-wide v2, v8

    goto :goto_e

    .line 833
    :cond_38
    if-nez v1, :cond_3e

    .line 834
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->l:I

    .line 843
    :goto_3d
    return-void

    .line 837
    :cond_3e
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 838
    if-gez v0, :cond_4e

    .line 839
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Offset to encryption data was negative."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_4e
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 842
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)V

    goto :goto_3d

    :cond_57
    move-wide v8, v2

    move-object v2, v1

    move-wide v0, v8

    goto :goto_31
.end method

.method private e(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v0, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 860
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->l:I

    if-ne v1, v12, :cond_74

    .line 861
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    if-nez v1, :cond_4b

    .line 862
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Landroid/util/SparseArray;)Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    .line 863
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    if-nez v1, :cond_32

    .line 866
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->q:J

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 867
    if-gez v0, :cond_2b

    .line 868
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Offset to end of mdat was negative."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_2b
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 871
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a()V

    .line 953
    :goto_31
    return v6

    .line 875
    :cond_32
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->b:J

    .line 877
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v1, v2

    .line 878
    if-gez v1, :cond_48

    .line 879
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "Offset to sample data was negative."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_48
    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b(I)V

    .line 883
    :cond_4b
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->e:[I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->e:I

    aget v1, v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->s:I

    .line 885
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    iget-boolean v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->i:Z

    if-eqz v1, :cond_cd

    .line 886
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;)I

    move-result v1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->t:I

    .line 887
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->s:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->t:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->s:I

    .line 891
    :goto_70
    iput v11, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->l:I

    .line 892
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->u:I

    .line 895
    :cond_74
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    .line 896
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->c:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    .line 897
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 898
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget v4, v2, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->e:I

    .line 899
    iget v2, v5, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->o:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e2

    .line 902
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 903
    aput-byte v6, v2, v6

    .line 904
    aput-byte v6, v2, v8

    .line 905
    aput-byte v6, v2, v0

    .line 906
    iget v2, v5, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->o:I

    .line 907
    iget v3, v5, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->o:I

    rsub-int/lit8 v3, v3, 0x4

    .line 911
    :goto_99
    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->t:I

    iget v10, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->s:I

    if-ge v7, v10, :cond_f7

    .line 912
    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->u:I

    if-nez v7, :cond_d0

    .line 914
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p1, v7, v3, v2}, Lcom/google/ads/interactivemedia/v3/a/c/f;->b([BII)V

    .line 915
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v7, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 916
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->g:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v7

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->u:I

    .line 918
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v7, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 919
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->f:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-interface {v1, v7, v11}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 920
    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->t:I

    add-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->t:I

    .line 921
    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->s:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->s:I

    goto :goto_99

    .line 889
    :cond_cd
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->t:I

    goto :goto_70

    .line 924
    :cond_d0
    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->u:I

    invoke-interface {v1, p1, v7, v6}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;IZ)I

    move-result v7

    .line 925
    iget v10, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->t:I

    add-int/2addr v10, v7

    iput v10, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->t:I

    .line 926
    iget v10, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->u:I

    sub-int v7, v10, v7

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->u:I

    goto :goto_99

    .line 930
    :cond_e2
    :goto_e2
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->t:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->s:I

    if-ge v2, v3, :cond_f7

    .line 931
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->s:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->t:I

    sub-int/2addr v2, v3

    invoke-interface {v1, p1, v2, v6}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;IZ)I

    move-result v2

    .line 932
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->t:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->t:I

    goto :goto_e2

    .line 936
    :cond_f7
    invoke-virtual {v9, v4}, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->c(I)J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v2, v10

    .line 937
    iget-boolean v7, v9, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->i:Z

    if-eqz v7, :cond_139

    :goto_102
    iget-object v7, v9, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->h:[Z

    aget-boolean v4, v7, v4

    if-eqz v4, :cond_13b

    move v4, v8

    .line 938
    :goto_109
    or-int/2addr v4, v0

    .line 939
    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/c;->a:I

    .line 940
    const/4 v7, 0x0

    .line 941
    iget-boolean v10, v9, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->i:Z

    if-eqz v10, :cond_11c

    .line 942
    iget-object v7, v9, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->n:Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    if-eqz v7, :cond_13d

    .line 943
    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->n:Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/j;->c:[B

    :goto_11b
    move-object v7, v0

    .line 946
    :cond_11c
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->s:I

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    .line 948
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->e:I

    .line 949
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->e:I

    iget v1, v9, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->d:I

    if-ne v0, v1, :cond_134

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->r:Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    .line 952
    :cond_134
    iput v12, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->l:I

    move v6, v8

    .line 953
    goto/16 :goto_31

    :cond_139
    move v0, v6

    .line 937
    goto :goto_102

    :cond_13b
    move v4, v6

    .line 938
    goto :goto_109

    .line 944
    :cond_13d
    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->l:[Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    aget-object v0, v5, v0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/c/j;->c:[B

    goto :goto_11b
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 182
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->l:I

    packed-switch v0, :pswitch_data_1e

    .line 195
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 184
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->b(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, -0x1

    goto :goto_c

    .line 189
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->c(Lcom/google/ads/interactivemedia/v3/a/c/f;)V

    goto :goto_0

    .line 192
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->d(Lcom/google/ads/interactivemedia/v3/a/c/f;)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_15
        :pswitch_19
    .end packed-switch
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 154
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->v:Lcom/google/ads/interactivemedia/v3/a/c/g;

    .line 155
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->d:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    if-eqz v0, :cond_24

    .line 156
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    invoke-interface {p1, v3}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 157
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->d:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/google/ads/interactivemedia/v3/a/c/c/c;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a(Lcom/google/ads/interactivemedia/v3/a/c/c/i;Lcom/google/ads/interactivemedia/v3/a/c/c/c;)V

    .line 158
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->v:Lcom/google/ads/interactivemedia/v3/a/c/g;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->f()V

    .line 161
    :cond_24
    return-void
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/a/f/m;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 762
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/c/c/h;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 166
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 167
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a()V

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 169
    :cond_19
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 170
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e;->a()V

    .line 171
    return-void
.end method

.method public final c()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method
