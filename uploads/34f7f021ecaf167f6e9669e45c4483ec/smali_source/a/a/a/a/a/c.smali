.class public La/a/a/a/a/c;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "La/a/a/a/a/d;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 119
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, La/a/a/a/a/c;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 536
    const/16 v0, 0x25

    iput v0, p0, La/a/a/a/a/c;->b:I

    .line 537
    const/16 v0, 0x11

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 538
    return-void
.end method

.method public constructor <init>(II)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput v2, p0, La/a/a/a/a/c;->c:I

    .line 558
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_23

    move v0, v1

    :goto_c
    const-string v3, "HashCodeBuilder requires an odd initial value"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, La/a/a/a/c;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 559
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_25

    :goto_17
    const-string v0, "HashCodeBuilder requires an odd multiplier"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, La/a/a/a/c;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 560
    iput p2, p0, La/a/a/a/a/c;->b:I

    .line 561
    iput p1, p0, La/a/a/a/a/c;->c:I

    .line 562
    return-void

    :cond_23
    move v0, v2

    .line 558
    goto :goto_c

    :cond_25
    move v1, v2

    .line 559
    goto :goto_17
.end method

.method public static varargs a(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;Z",
            "Ljava/lang/Class",
            "<-TT;>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 349
    if-nez p2, :cond_a

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The object to build a hash code for must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_a
    new-instance v1, La/a/a/a/a/c;

    invoke-direct {v1, p0, p1}, La/a/a/a/a/c;-><init>(II)V

    .line 353
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 354
    invoke-static {p2, v0, v1, p3, p5}, La/a/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;La/a/a/a/a/c;Z[Ljava/lang/String;)V

    .line 355
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_26

    if-eq v0, p4, :cond_26

    .line 356
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 357
    invoke-static {p2, v0, v1, p3, p5}, La/a/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;La/a/a/a/a/c;Z[Ljava/lang/String;)V

    goto :goto_16

    .line 359
    :cond_26
    invoke-virtual {v1}, La/a/a/a/a/c;->b()I

    move-result v0

    return v0
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 8

    .prologue
    .line 473
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, La/a/a/a/a/c;->a(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static a()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "La/a/a/a/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    sget-object v0, La/a/a/a/a/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;La/a/a/a/a/c;Z[Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "La/a/a/a/a/c;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p0}, La/a/a/a/a/c;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 209
    :goto_6
    return-void

    .line 188
    :cond_7
    :try_start_7
    invoke-static {p0}, La/a/a/a/a/c;->b(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 190
    const/4 v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 191
    array-length v2, v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v2, :cond_5d

    aget-object v3, v1, v0

    .line 192
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, La/a/a/a/a;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 193
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4c

    if-nez p3, :cond_3b

    .line 194
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 195
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_58

    move-result v4

    if-nez v4, :cond_4c

    .line 197
    :try_start_45
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 198
    invoke-virtual {p2, v3}, La/a/a/a/a/c;->d(Ljava/lang/Object;)La/a/a/a/a/c;
    :try_end_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_4c} :catch_4f
    .catchall {:try_start_45 .. :try_end_4c} :catchall_58

    .line 191
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 199
    :catch_4f
    move-exception v0

    .line 202
    :try_start_50
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unexpected IllegalAccessException"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_58

    .line 207
    :catchall_58
    move-exception v0

    invoke-static {p0}, La/a/a/a/a/c;->c(Ljava/lang/Object;)V

    throw v0

    :cond_5d
    invoke-static {p0}, La/a/a/a/a/c;->c(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method static a(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 162
    invoke-static {}, La/a/a/a/a/c;->a()Ljava/util/Set;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_13

    new-instance v1, La/a/a/a/a/d;

    invoke-direct {v1, p0}, La/a/a/a/a/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static b(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 486
    const-class v1, La/a/a/a/a/c;

    monitor-enter v1

    .line 487
    :try_start_3
    invoke-static {}, La/a/a/a/a/c;->a()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_13

    .line 488
    sget-object v0, La/a/a/a/a/c;->a:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 490
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_21

    .line 491
    invoke-static {}, La/a/a/a/a/c;->a()Ljava/util/Set;

    move-result-object v0

    new-instance v1, La/a/a/a/a/d;

    invoke-direct {v1, p0}, La/a/a/a/a/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    return-void

    .line 490
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method static c(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 507
    invoke-static {}, La/a/a/a/a/c;->a()Ljava/util/Set;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_23

    .line 509
    new-instance v1, La/a/a/a/a/d;

    invoke-direct {v1, p0}, La/a/a/a/a/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 510
    const-class v1, La/a/a/a/a/c;

    monitor-enter v1

    .line 512
    :try_start_11
    invoke-static {}, La/a/a/a/a/c;->a()Ljava/util/Set;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 514
    sget-object v0, La/a/a/a/a/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 516
    :cond_22
    monitor-exit v1

    .line 518
    :cond_23
    return-void

    .line 516
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_24

    throw v0
.end method


# virtual methods
.method public a(B)La/a/a/a/a/c;
    .registers 4

    .prologue
    .line 622
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 623
    return-object p0
.end method

.method public a(C)La/a/a/a/a/c;
    .registers 4

    .prologue
    .line 658
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 659
    return-object p0
.end method

.method public a(D)La/a/a/a/a/c;
    .registers 6

    .prologue
    .line 692
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/a/c;->a(J)La/a/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(F)La/a/a/a/a/c;
    .registers 4

    .prologue
    .line 725
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 726
    return-object p0
.end method

.method public a(I)La/a/a/a/a/c;
    .registers 4

    .prologue
    .line 759
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 760
    return-object p0
.end method

.method public a(J)La/a/a/a/a/c;
    .registers 8

    .prologue
    .line 797
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p1, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 798
    return-object p0
.end method

.method public a(S)La/a/a/a/a/c;
    .registers 4

    .prologue
    .line 895
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 896
    return-object p0
.end method

.method public a(Z)La/a/a/a/a/c;
    .registers 4

    .prologue
    .line 586
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    :goto_8
    add-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 587
    return-object p0

    .line 586
    :cond_c
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public a([B)La/a/a/a/a/c;
    .registers 5

    .prologue
    .line 638
    if-nez p1, :cond_a

    .line 639
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 645
    :cond_9
    return-object p0

    .line 641
    :cond_a
    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_9

    aget-byte v2, p1, v0

    .line 642
    invoke-virtual {p0, v2}, La/a/a/a/a/c;->a(B)La/a/a/a/a/c;

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public a([C)La/a/a/a/a/c;
    .registers 5

    .prologue
    .line 672
    if-nez p1, :cond_a

    .line 673
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 679
    :cond_9
    return-object p0

    .line 675
    :cond_a
    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_9

    aget-char v2, p1, v0

    .line 676
    invoke-virtual {p0, v2}, La/a/a/a/a/c;->a(C)La/a/a/a/a/c;

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public a([D)La/a/a/a/a/c;
    .registers 6

    .prologue
    .line 705
    if-nez p1, :cond_a

    .line 706
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 712
    :cond_9
    return-object p0

    .line 708
    :cond_a
    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_9

    aget-wide v2, p1, v0

    .line 709
    invoke-virtual {p0, v2, v3}, La/a/a/a/a/c;->a(D)La/a/a/a/a/c;

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public a([F)La/a/a/a/a/c;
    .registers 5

    .prologue
    .line 739
    if-nez p1, :cond_a

    .line 740
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 746
    :cond_9
    return-object p0

    .line 742
    :cond_a
    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_9

    aget v2, p1, v0

    .line 743
    invoke-virtual {p0, v2}, La/a/a/a/a/c;->a(F)La/a/a/a/a/c;

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public a([I)La/a/a/a/a/c;
    .registers 5

    .prologue
    .line 773
    if-nez p1, :cond_a

    .line 774
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 780
    :cond_9
    return-object p0

    .line 776
    :cond_a
    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_9

    aget v2, p1, v0

    .line 777
    invoke-virtual {p0, v2}, La/a/a/a/a/c;->a(I)La/a/a/a/a/c;

    .line 776
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public a([J)La/a/a/a/a/c;
    .registers 6

    .prologue
    .line 811
    if-nez p1, :cond_a

    .line 812
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 818
    :cond_9
    return-object p0

    .line 814
    :cond_a
    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_9

    aget-wide v2, p1, v0

    .line 815
    invoke-virtual {p0, v2, v3}, La/a/a/a/a/c;->a(J)La/a/a/a/a/c;

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public a([Ljava/lang/Object;)La/a/a/a/a/c;
    .registers 5

    .prologue
    .line 875
    if-nez p1, :cond_a

    .line 876
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 882
    :cond_9
    return-object p0

    .line 878
    :cond_a
    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_9

    aget-object v2, p1, v0

    .line 879
    invoke-virtual {p0, v2}, La/a/a/a/a/c;->d(Ljava/lang/Object;)La/a/a/a/a/c;

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public a([S)La/a/a/a/a/c;
    .registers 5

    .prologue
    .line 909
    if-nez p1, :cond_a

    .line 910
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 916
    :cond_9
    return-object p0

    .line 912
    :cond_a
    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_9

    aget-short v2, p1, v0

    .line 913
    invoke-virtual {p0, v2}, La/a/a/a/a/c;->a(S)La/a/a/a/a/c;

    .line 912
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public a([Z)La/a/a/a/a/c;
    .registers 5

    .prologue
    .line 600
    if-nez p1, :cond_a

    .line 601
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 607
    :cond_9
    return-object p0

    .line 603
    :cond_a
    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_9

    aget-boolean v2, p1, v0

    .line 604
    invoke-virtual {p0, v2}, La/a/a/a/a/c;->a(Z)La/a/a/a/a/c;

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public b()I
    .registers 2

    .prologue
    .line 942
    iget v0, p0, La/a/a/a/a/c;->c:I

    return v0
.end method

.method public d(Ljava/lang/Object;)La/a/a/a/a/c;
    .registers 4

    .prologue
    .line 831
    if-nez p1, :cond_a

    .line 832
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 862
    :goto_9
    return-object p0

    .line 835
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 838
    instance-of v0, p1, [J

    if-eqz v0, :cond_20

    .line 839
    check-cast p1, [J

    check-cast p1, [J

    invoke-virtual {p0, p1}, La/a/a/a/a/c;->a([J)La/a/a/a/a/c;

    goto :goto_9

    .line 840
    :cond_20
    instance-of v0, p1, [I

    if-eqz v0, :cond_2c

    .line 841
    check-cast p1, [I

    check-cast p1, [I

    invoke-virtual {p0, p1}, La/a/a/a/a/c;->a([I)La/a/a/a/a/c;

    goto :goto_9

    .line 842
    :cond_2c
    instance-of v0, p1, [S

    if-eqz v0, :cond_38

    .line 843
    check-cast p1, [S

    check-cast p1, [S

    invoke-virtual {p0, p1}, La/a/a/a/a/c;->a([S)La/a/a/a/a/c;

    goto :goto_9

    .line 844
    :cond_38
    instance-of v0, p1, [C

    if-eqz v0, :cond_44

    .line 845
    check-cast p1, [C

    check-cast p1, [C

    invoke-virtual {p0, p1}, La/a/a/a/a/c;->a([C)La/a/a/a/a/c;

    goto :goto_9

    .line 846
    :cond_44
    instance-of v0, p1, [B

    if-eqz v0, :cond_50

    .line 847
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, La/a/a/a/a/c;->a([B)La/a/a/a/a/c;

    goto :goto_9

    .line 848
    :cond_50
    instance-of v0, p1, [D

    if-eqz v0, :cond_5c

    .line 849
    check-cast p1, [D

    check-cast p1, [D

    invoke-virtual {p0, p1}, La/a/a/a/a/c;->a([D)La/a/a/a/a/c;

    goto :goto_9

    .line 850
    :cond_5c
    instance-of v0, p1, [F

    if-eqz v0, :cond_68

    .line 851
    check-cast p1, [F

    check-cast p1, [F

    invoke-virtual {p0, p1}, La/a/a/a/a/c;->a([F)La/a/a/a/a/c;

    goto :goto_9

    .line 852
    :cond_68
    instance-of v0, p1, [Z

    if-eqz v0, :cond_74

    .line 853
    check-cast p1, [Z

    check-cast p1, [Z

    invoke-virtual {p0, p1}, La/a/a/a/a/c;->a([Z)La/a/a/a/a/c;

    goto :goto_9

    .line 856
    :cond_74
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, La/a/a/a/a/c;->a([Ljava/lang/Object;)La/a/a/a/a/c;

    goto :goto_9

    .line 859
    :cond_7c
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    goto :goto_9
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 968
    invoke-virtual {p0}, La/a/a/a/a/c;->b()I

    move-result v0

    return v0
.end method
