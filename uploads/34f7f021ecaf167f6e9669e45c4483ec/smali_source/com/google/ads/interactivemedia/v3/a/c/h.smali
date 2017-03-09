.class public final Lcom/google/ads/interactivemedia/v3/a/c/h;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/g;
.implements Lcom/google/ads/interactivemedia/v3/a/e/l$a;
.implements Lcom/google/ads/interactivemedia/v3/a/t$a;
.implements Lcom/google/ads/interactivemedia/v3/a/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/h$c;,
        Lcom/google/ads/interactivemedia/v3/a/c/h$b;,
        Lcom/google/ads/interactivemedia/v3/a/c/h$d;,
        Lcom/google/ads/interactivemedia/v3/a/c/h$e;,
        Lcom/google/ads/interactivemedia/v3/a/c/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/ads/interactivemedia/v3/a/c/e;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:J

.field private B:J

.field private C:Lcom/google/ads/interactivemedia/v3/a/e/l;

.field private D:Lcom/google/ads/interactivemedia/v3/a/c/h$b;

.field private E:Ljava/io/IOException;

.field private F:I

.field private G:J

.field private H:Z

.field private I:I

.field private J:I

.field private final b:Lcom/google/ads/interactivemedia/v3/a/c/h$c;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/e/b;

.field private final d:I

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:Landroid/net/Uri;

.field private final h:Lcom/google/ads/interactivemedia/v3/a/e/e;

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/google/ads/interactivemedia/v3/a/c/h$a;

.field private final k:I

.field private volatile l:Z

.field private volatile m:Lcom/google/ads/interactivemedia/v3/a/c/l;

.field private volatile n:Lcom/google/ads/interactivemedia/v3/a/b/a;

.field private o:Z

.field private p:I

.field private q:[Lcom/google/ads/interactivemedia/v3/a/p;

.field private r:J

.field private s:[Z

.field private t:[Z

.field private u:[Z

.field private v:I

.field private w:J

.field private x:J

.field private y:J

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    .line 123
    :try_start_7
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.a.c.g.f"

    .line 124
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_18} :catch_da

    .line 130
    :goto_18
    :try_start_18
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.a.c.c.e"

    .line 131
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_29} :catch_d7

    .line 137
    :goto_29
    :try_start_29
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.a.c.c.f"

    .line 138
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_3a} :catch_d4

    .line 144
    :goto_3a
    :try_start_3a
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.a.c.b.c"

    .line 145
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_4b} :catch_d1

    .line 151
    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.a.c.e.b"

    .line 152
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4b .. :try_end_5c} :catch_cf

    .line 158
    :goto_5c
    :try_start_5c
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.a.c.e.o"

    .line 159
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5c .. :try_end_6d} :catch_cd

    .line 165
    :goto_6d
    :try_start_6d
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.a.c.a.b"

    .line 166
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6d .. :try_end_7e} :catch_cb

    .line 172
    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.a.c.d.b"

    .line 173
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7e .. :try_end_8f} :catch_c9

    .line 179
    :goto_8f
    :try_start_8f
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.a.c.e.l"

    .line 180
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8f .. :try_end_a0} :catch_c7

    .line 186
    :goto_a0
    :try_start_a0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.a.c.f.a"

    .line 187
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 186
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a0 .. :try_end_b1} :catch_c5

    .line 193
    :goto_b1
    :try_start_b1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.exoplayer.ext.flac.FlacExtractor"

    .line 194
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b1 .. :try_end_c2} :catch_c3

    .line 199
    :goto_c2
    return-void

    .line 196
    :catch_c3
    move-exception v0

    goto :goto_c2

    .line 189
    :catch_c5
    move-exception v0

    goto :goto_b1

    .line 182
    :catch_c7
    move-exception v0

    goto :goto_a0

    .line 175
    :catch_c9
    move-exception v0

    goto :goto_8f

    .line 168
    :catch_cb
    move-exception v0

    goto :goto_7e

    .line 161
    :catch_cd
    move-exception v0

    goto :goto_6d

    .line 154
    :catch_cf
    move-exception v0

    goto :goto_5c

    .line 147
    :catch_d1
    move-exception v0

    goto/16 :goto_4b

    .line 140
    :catch_d4
    move-exception v0

    goto/16 :goto_3a

    .line 133
    :catch_d7
    move-exception v0

    goto/16 :goto_29

    .line 126
    :catch_da
    move-exception v0

    goto/16 :goto_18
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/a/e/e;Lcom/google/ads/interactivemedia/v3/a/e/b;IILandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/c/h$a;I[Lcom/google/ads/interactivemedia/v3/a/c/e;)V
    .registers 13

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->g:Landroid/net/Uri;

    .line 315
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->h:Lcom/google/ads/interactivemedia/v3/a/e/e;

    .line 316
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->j:Lcom/google/ads/interactivemedia/v3/a/c/h$a;

    .line 317
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->i:Landroid/os/Handler;

    .line 318
    iput p8, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->k:I

    .line 319
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->c:Lcom/google/ads/interactivemedia/v3/a/e/b;

    .line 320
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->d:I

    .line 321
    iput p5, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->f:I

    .line 322
    if-eqz p9, :cond_18

    array-length v0, p9

    if-nez v0, :cond_4b

    .line 323
    :cond_18
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array p9, v0, [Lcom/google/ads/interactivemedia/v3/a/c/e;

    .line 324
    const/4 v0, 0x0

    move v1, v0

    :goto_22
    array-length v0, p9

    if-ge v1, v0, :cond_4b

    .line 326
    :try_start_25
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/e;

    aput-object v0, p9, v1
    :try_end_35
    .catch Ljava/lang/InstantiationException; {:try_start_25 .. :try_end_35} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_35} :catch_42

    .line 324
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 327
    :catch_39
    move-exception v0

    .line 328
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating default extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 329
    :catch_42
    move-exception v0

    .line 330
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating default extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 334
    :cond_4b
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/h$c;

    invoke-direct {v0, p9, p0}, Lcom/google/ads/interactivemedia/v3/a/c/h$c;-><init>([Lcom/google/ads/interactivemedia/v3/a/c/e;Lcom/google/ads/interactivemedia/v3/a/c/g;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->b:Lcom/google/ads/interactivemedia/v3/a/c/h$c;

    .line 335
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    .line 336
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->y:J

    .line 337
    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/a/e/e;Lcom/google/ads/interactivemedia/v3/a/e/b;ILandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/c/h$a;I[Lcom/google/ads/interactivemedia/v3/a/c/e;)V
    .registers 19

    .prologue
    .line 275
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/a/c/h;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/a/e/e;Lcom/google/ads/interactivemedia/v3/a/e/b;IILandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/c/h$a;I[Lcom/google/ads/interactivemedia/v3/a/c/e;)V

    .line 277
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/c/h;)Lcom/google/ads/interactivemedia/v3/a/c/h$c;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->b:Lcom/google/ads/interactivemedia/v3/a/c/h$c;

    return-object v0
.end method

.method private a(Ljava/io/IOException;)V
    .registers 4

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->i:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->j:Lcom/google/ads/interactivemedia/v3/a/c/h$a;

    if-eqz v0, :cond_12

    .line 751
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->i:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/c/h$2;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/h$2;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/h;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    :cond_12
    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/a/c/h;)I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->k:I

    return v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/a/c/h;)Lcom/google/ads/interactivemedia/v3/a/c/h$a;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->j:Lcom/google/ads/interactivemedia/v3/a/c/h$a;

    return-object v0
.end method

.method private c(J)V
    .registers 4

    .prologue
    .line 625
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->y:J

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->H:Z

    .line 627
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->C:Lcom/google/ads/interactivemedia/v3/a/e/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/e/l;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 628
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->C:Lcom/google/ads/interactivemedia/v3/a/e/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/e/l;->b()V

    .line 633
    :goto_12
    return-void

    .line 630
    :cond_13
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->j()V

    .line 631
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->g()V

    goto :goto_12
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/a/c/h;)I
    .registers 3

    .prologue
    .line 69
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->I:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->I:I

    return v0
.end method

.method private d(J)Lcom/google/ads/interactivemedia/v3/a/c/h$b;
    .registers 12

    .prologue
    .line 707
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->h:Lcom/google/ads/interactivemedia/v3/a/e/e;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->b:Lcom/google/ads/interactivemedia/v3/a/c/h$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->c:Lcom/google/ads/interactivemedia/v3/a/e/b;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->d:I

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->m:Lcom/google/ads/interactivemedia/v3/a/c/l;

    .line 708
    invoke-interface {v6, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/l;->b(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/h$b;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/a/e/e;Lcom/google/ads/interactivemedia/v3/a/c/h$c;Lcom/google/ads/interactivemedia/v3/a/e/b;IJ)V

    .line 707
    return-object v0
.end method

.method private e(J)V
    .registers 6

    .prologue
    .line 721
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->u:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_1c

    .line 722
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->u:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_18

    .line 723
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->a(J)V

    .line 721
    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 726
    :cond_1c
    return-void
.end method

.method private f(J)J
    .registers 8

    .prologue
    .line 746
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private g()V
    .registers 11

    .prologue
    const-wide/16 v8, -0x1

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 636
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->H:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->C:Lcom/google/ads/interactivemedia/v3/a/e/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/e/l;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 699
    :cond_12
    :goto_12
    return-void

    .line 640
    :cond_13
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->E:Ljava/io/IOException;

    if-eqz v0, :cond_99

    .line 641
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->l()Z

    move-result v0

    if-nez v0, :cond_12

    .line 644
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->D:Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    if-eqz v0, :cond_54

    move v0, v1

    :goto_22
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 645
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->G:J

    sub-long/2addr v4, v6

    .line 646
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->F:I

    int-to-long v6, v0

    invoke-direct {p0, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/c/h;->f(J)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_12

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->E:Ljava/io/IOException;

    .line 648
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->o:Z

    if-nez v0, :cond_68

    .line 652
    :goto_3e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_56

    .line 653
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->a()V

    .line 652
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_54
    move v0, v2

    .line 644
    goto :goto_22

    .line 655
    :cond_56
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->h()Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->D:Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    .line 673
    :cond_5c
    :goto_5c
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->I:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->J:I

    .line 674
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->C:Lcom/google/ads/interactivemedia/v3/a/e/l;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->D:Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    invoke-virtual {v0, v1, p0}, Lcom/google/ads/interactivemedia/v3/a/e/l;->a(Lcom/google/ads/interactivemedia/v3/a/e/l$c;Lcom/google/ads/interactivemedia/v3/a/e/l$a;)V

    goto :goto_12

    .line 656
    :cond_68
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->m:Lcom/google/ads/interactivemedia/v3/a/c/l;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/c/l;->a()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->r:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_5c

    .line 661
    :goto_76
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_8c

    .line 662
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->a()V

    .line 661
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 664
    :cond_8c
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->h()Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->D:Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    .line 667
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->w:J

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->A:J

    .line 668
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->z:Z

    goto :goto_5c

    .line 682
    :cond_99
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->B:J

    .line 683
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->z:Z

    .line 685
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->o:Z

    if-nez v0, :cond_b6

    .line 686
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->h()Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->D:Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    .line 697
    :goto_a9
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->I:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->J:I

    .line 698
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->C:Lcom/google/ads/interactivemedia/v3/a/e/l;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->D:Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    invoke-virtual {v0, v1, p0}, Lcom/google/ads/interactivemedia/v3/a/e/l;->a(Lcom/google/ads/interactivemedia/v3/a/e/l$c;Lcom/google/ads/interactivemedia/v3/a/e/l$a;)V

    goto/16 :goto_12

    .line 688
    :cond_b6
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->k()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 689
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->r:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_d1

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->y:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->r:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_d1

    .line 690
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->H:Z

    .line 691
    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->y:J

    goto/16 :goto_12

    .line 694
    :cond_d1
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->y:J

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/h;->d(J)Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->D:Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    .line 695
    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->y:J

    goto :goto_a9
.end method

.method private h()Lcom/google/ads/interactivemedia/v3/a/c/h$b;
    .registers 9

    .prologue
    .line 702
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->h:Lcom/google/ads/interactivemedia/v3/a/e/e;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->b:Lcom/google/ads/interactivemedia/v3/a/c/h$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->c:Lcom/google/ads/interactivemedia/v3/a/e/b;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->d:I

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/h$b;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/a/e/e;Lcom/google/ads/interactivemedia/v3/a/c/h$c;Lcom/google/ads/interactivemedia/v3/a/e/b;IJ)V

    return-object v0
.end method

.method private i()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 712
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 713
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 717
    :goto_18
    return v2

    .line 712
    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 717
    :cond_1d
    const/4 v2, 0x1

    goto :goto_18
.end method

.method private j()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 729
    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1a

    .line 730
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->a()V

    .line 729
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 732
    :cond_1a
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->D:Lcom/google/ads/interactivemedia/v3/a/c/h$b;

    .line 733
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->E:Ljava/io/IOException;

    .line 734
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->F:I

    .line 735
    return-void
.end method

.method private k()Z
    .registers 5

    .prologue
    .line 738
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->y:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private l()Z
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->E:Ljava/io/IOException;

    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/h$e;

    return v0
.end method


# virtual methods
.method public a(IJLcom/google/ads/interactivemedia/v3/a/q;Lcom/google/ads/interactivemedia/v3/a/s;)I
    .registers 12

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 450
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->w:J

    .line 452
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->t:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->k()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    move v0, v2

    .line 480
    :goto_11
    return v0

    .line 456
    :cond_12
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;

    .line 457
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->s:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_30

    .line 458
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->c()Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    iput-object v0, p4, Lcom/google/ads/interactivemedia/v3/a/q;->a:Lcom/google/ads/interactivemedia/v3/a/p;

    .line 459
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->n:Lcom/google/ads/interactivemedia/v3/a/b/a;

    iput-object v0, p4, Lcom/google/ads/interactivemedia/v3/a/q;->b:Lcom/google/ads/interactivemedia/v3/a/b/a;

    .line 460
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->s:[Z

    aput-boolean v1, v0, p1

    .line 461
    const/4 v0, -0x4

    goto :goto_11

    .line 464
    :cond_30
    invoke-virtual {v0, p5}, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->a(Lcom/google/ads/interactivemedia/v3/a/s;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 465
    iget-wide v2, p5, Lcom/google/ads/interactivemedia/v3/a/s;->e:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->x:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_5e

    const/4 v0, 0x1

    .line 466
    :goto_3f
    iget v2, p5, Lcom/google/ads/interactivemedia/v3/a/s;->d:I

    if-eqz v0, :cond_60

    const/high16 v0, 0x8000000

    :goto_45
    or-int/2addr v0, v2

    iput v0, p5, Lcom/google/ads/interactivemedia/v3/a/s;->d:I

    .line 467
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->z:Z

    if-eqz v0, :cond_55

    .line 469
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->A:J

    iget-wide v4, p5, Lcom/google/ads/interactivemedia/v3/a/s;->e:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->B:J

    .line 470
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->z:Z

    .line 472
    :cond_55
    iget-wide v0, p5, Lcom/google/ads/interactivemedia/v3/a/s;->e:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->B:J

    add-long/2addr v0, v2

    iput-wide v0, p5, Lcom/google/ads/interactivemedia/v3/a/s;->e:J

    .line 473
    const/4 v0, -0x3

    goto :goto_11

    :cond_5e
    move v0, v1

    .line 465
    goto :goto_3f

    :cond_60
    move v0, v1

    .line 466
    goto :goto_45

    .line 476
    :cond_62
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->H:Z

    if-eqz v0, :cond_68

    .line 477
    const/4 v0, -0x1

    goto :goto_11

    :cond_68
    move v0, v2

    .line 480
    goto :goto_11
.end method

.method public a(I)Lcom/google/ads/interactivemedia/v3/a/p;
    .registers 3

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->o:Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 385
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->q:[Lcom/google/ads/interactivemedia/v3/a/p;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Lcom/google/ads/interactivemedia/v3/a/t$a;
    .registers 2

    .prologue
    .line 341
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->v:I

    .line 342
    return-object p0
.end method

.method public a(IJ)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 390
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->o:Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 391
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->u:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_39

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 392
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->p:I

    .line 393
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->u:[Z

    aput-boolean v1, v0, p1

    .line 394
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->s:[Z

    aput-boolean v1, v0, p1

    .line 395
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->t:[Z

    aput-boolean v2, v0, p1

    .line 396
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->p:I

    if-ne v0, v1, :cond_38

    .line 398
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->m:Lcom/google/ads/interactivemedia/v3/a/c/l;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/c/l;->a()Z

    move-result v0

    if-nez v0, :cond_31

    const-wide/16 p2, 0x0

    .line 399
    :cond_31
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->w:J

    .line 400
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->x:J

    .line 401
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/h;->c(J)V

    .line 403
    :cond_38
    return-void

    :cond_39
    move v0, v2

    .line 391
    goto :goto_e
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/b/a;)V
    .registers 2

    .prologue
    .line 619
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->n:Lcom/google/ads/interactivemedia/v3/a/b/a;

    .line 620
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/l;)V
    .registers 2

    .prologue
    .line 614
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->m:Lcom/google/ads/interactivemedia/v3/a/c/l;

    .line 615
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/e/l$c;)V
    .registers 3

    .prologue
    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->H:Z

    .line 573
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/e/l$c;Ljava/io/IOException;)V
    .registers 5

    .prologue
    .line 587
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->E:Ljava/io/IOException;

    .line 588
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->I:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->J:I

    if-le v0, v1, :cond_18

    const/4 v0, 0x1

    .line 589
    :goto_9
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->F:I

    .line 590
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->G:J

    .line 591
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/a/c/h;->a(Ljava/io/IOException;)V

    .line 592
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->g()V

    .line 593
    return-void

    .line 589
    :cond_18
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->F:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public a(J)Z
    .registers 13

    .prologue
    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 347
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->o:Z

    if-eqz v2, :cond_a

    move v0, v1

    .line 374
    :cond_9
    :goto_9
    return v0

    .line 350
    :cond_a
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->C:Lcom/google/ads/interactivemedia/v3/a/e/l;

    if-nez v2, :cond_17

    .line 351
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/e/l;

    const-string v3, "Loader:ExtractorSampleSource"

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/e/l;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->C:Lcom/google/ads/interactivemedia/v3/a/e/l;

    .line 354
    :cond_17
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->g()V

    .line 356
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->m:Lcom/google/ads/interactivemedia/v3/a/c/l;

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->l:Z

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->i()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 357
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 358
    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->u:[Z

    .line 359
    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->t:[Z

    .line 360
    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->s:[Z

    .line 361
    new-array v2, v3, [Lcom/google/ads/interactivemedia/v3/a/p;

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->q:[Lcom/google/ads/interactivemedia/v3/a/p;

    .line 362
    iput-wide v8, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->r:J

    move v2, v0

    .line 363
    :goto_41
    if-ge v2, v3, :cond_69

    .line 364
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->c()Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    .line 365
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->q:[Lcom/google/ads/interactivemedia/v3/a/p;

    aput-object v0, v4, v2

    .line 366
    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/p;->e:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_65

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/p;->e:J

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->r:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_65

    .line 367
    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/a/p;->e:J

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->r:J

    .line 363
    :cond_65
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_41

    .line 370
    :cond_69
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->o:Z

    move v0, v1

    .line 371
    goto :goto_9
.end method

.method public b(I)J
    .registers 4

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->t:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_e

    .line 441
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->t:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 442
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->x:J

    .line 444
    :goto_d
    return-wide v0

    :cond_e
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_d
.end method

.method public b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->E:Ljava/io/IOException;

    if-nez v0, :cond_5

    .line 502
    :cond_4
    return-void

    .line 488
    :cond_5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 489
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->E:Ljava/io/IOException;

    throw v0

    .line 492
    :cond_e
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 493
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->f:I

    .line 499
    :goto_15
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->F:I

    if-le v1, v0, :cond_4

    .line 500
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->E:Ljava/io/IOException;

    throw v0

    .line 495
    :cond_1c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->m:Lcom/google/ads/interactivemedia/v3/a/c/l;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->m:Lcom/google/ads/interactivemedia/v3/a/c/l;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/c/l;->a()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 496
    const/4 v0, 0x6

    goto :goto_15

    .line 497
    :cond_2a
    const/4 v0, 0x3

    goto :goto_15
.end method

.method public b(J)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 506
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->o:Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 507
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->p:I

    if-lez v0, :cond_2a

    move v0, v1

    :goto_c
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 509
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->m:Lcom/google/ads/interactivemedia/v3/a/c/l;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/c/l;->a()Z

    move-result v0

    if-nez v0, :cond_19

    const-wide/16 p1, 0x0

    .line 511
    :cond_19
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->k()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->y:J

    .line 512
    :goto_21
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->w:J

    .line 513
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->x:J

    .line 514
    cmp-long v0, v4, p1

    if-nez v0, :cond_2f

    .line 533
    :cond_29
    return-void

    :cond_2a
    move v0, v2

    .line 507
    goto :goto_c

    .line 511
    :cond_2c
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->w:J

    goto :goto_21

    .line 519
    :cond_2f
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->k()Z

    move-result v0

    if-nez v0, :cond_53

    move v0, v1

    :goto_36
    move v3, v2

    move v4, v0

    .line 520
    :goto_38
    if-eqz v4, :cond_55

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_55

    .line 521
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->b(J)Z

    move-result v0

    and-int/2addr v4, v0

    .line 520
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_38

    :cond_53
    move v0, v2

    .line 519
    goto :goto_36

    .line 525
    :cond_55
    if-nez v4, :cond_5a

    .line 526
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/h;->c(J)V

    .line 530
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->t:[Z

    array-length v0, v0

    if-ge v2, v0, :cond_29

    .line 531
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->t:[Z

    aput-boolean v1, v0, v2

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/a/e/l$c;)V
    .registers 4

    .prologue
    .line 577
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->p:I

    if-lez v0, :cond_a

    .line 578
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->y:J

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/h;->c(J)V

    .line 583
    :goto_9
    return-void

    .line 580
    :cond_a
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->j()V

    .line 581
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->c:Lcom/google/ads/interactivemedia/v3/a/e/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/e/b;->a(I)V

    goto :goto_9
.end method

.method public b(IJ)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->o:Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 425
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->u:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 426
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->w:J

    .line 427
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->w:J

    invoke-direct {p0, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/h;->e(J)V

    .line 428
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->H:Z

    if-eqz v0, :cond_1a

    .line 435
    :goto_19
    return v1

    .line 431
    :cond_1a
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->g()V

    .line 432
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->k()Z

    move-result v0

    if-eqz v0, :cond_25

    move v1, v2

    .line 433
    goto :goto_19

    .line 435
    :cond_25
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->e()Z

    move-result v0

    if-nez v0, :cond_36

    move v0, v1

    :goto_34
    move v1, v0

    goto :goto_19

    :cond_36
    move v0, v2

    goto :goto_34
.end method

.method public c()I
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->o:Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 408
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->u:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 409
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->p:I

    .line 410
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->u:[Z

    aput-boolean v2, v0, p1

    .line 411
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->p:I

    if-nez v0, :cond_2c

    .line 412
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->w:J

    .line 413
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->C:Lcom/google/ads/interactivemedia/v3/a/e/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/e/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 414
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->C:Lcom/google/ads/interactivemedia/v3/a/e/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/e/l;->b()V

    .line 420
    :cond_2c
    :goto_2c
    return-void

    .line 416
    :cond_2d
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->j()V

    .line 417
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->c:Lcom/google/ads/interactivemedia/v3/a/e/b;

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/e/b;->a(I)V

    goto :goto_2c
.end method

.method public d()J
    .registers 9

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    .line 537
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->H:Z

    if-eqz v0, :cond_9

    .line 538
    const-wide/16 v2, -0x3

    .line 547
    :cond_8
    :goto_8
    return-wide v2

    .line 539
    :cond_9
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->k()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 540
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->y:J

    goto :goto_8

    .line 543
    :cond_12
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_15
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 544
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    .line 545
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/h$d;->d()J

    move-result-wide v6

    .line 544
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 543
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 547
    :cond_31
    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->w:J

    goto :goto_8
.end method

.method public d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;
    .registers 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;

    .line 600
    if-nez v0, :cond_16

    .line 601
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/h$d;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->c:Lcom/google/ads/interactivemedia/v3/a/e/b;

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/h$d;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/h;Lcom/google/ads/interactivemedia/v3/a/e/b;)V

    .line 602
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    :cond_16
    return-object v0
.end method

.method public e()V
    .registers 3

    .prologue
    .line 554
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->v:I

    if-lez v0, :cond_22

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 555
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->v:I

    if-nez v0, :cond_21

    .line 556
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->C:Lcom/google/ads/interactivemedia/v3/a/e/l;

    if-eqz v0, :cond_21

    .line 557
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->C:Lcom/google/ads/interactivemedia/v3/a/e/l;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/c/h$1;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/a/c/h$1;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/h;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/e/l;->a(Ljava/lang/Runnable;)V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->C:Lcom/google/ads/interactivemedia/v3/a/e/l;

    .line 566
    :cond_21
    return-void

    .line 554
    :cond_22
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()V
    .registers 2

    .prologue
    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h;->l:Z

    .line 610
    return-void
.end method
