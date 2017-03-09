.class public La/a/a/a/a;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static final a:[Ljava/lang/Object;

.field public static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final c:[Ljava/lang/String;

.field public static final d:[J

.field public static final e:[Ljava/lang/Long;

.field public static final f:[I

.field public static final g:[Ljava/lang/Integer;

.field public static final h:[S

.field public static final i:[Ljava/lang/Short;

.field public static final j:[B

.field public static final k:[Ljava/lang/Byte;

.field public static final l:[D

.field public static final m:[Ljava/lang/Double;

.field public static final n:[F

.field public static final o:[Ljava/lang/Float;

.field public static final p:[Z

.field public static final q:[Ljava/lang/Boolean;

.field public static final r:[C

.field public static final s:[Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 51
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, La/a/a/a/a;->a:[Ljava/lang/Object;

    .line 55
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, La/a/a/a/a;->b:[Ljava/lang/Class;

    .line 59
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, La/a/a/a/a;->c:[Ljava/lang/String;

    .line 63
    new-array v0, v1, [J

    sput-object v0, La/a/a/a/a;->d:[J

    .line 67
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, La/a/a/a/a;->e:[Ljava/lang/Long;

    .line 71
    new-array v0, v1, [I

    sput-object v0, La/a/a/a/a;->f:[I

    .line 75
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, La/a/a/a/a;->g:[Ljava/lang/Integer;

    .line 79
    new-array v0, v1, [S

    sput-object v0, La/a/a/a/a;->h:[S

    .line 83
    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, La/a/a/a/a;->i:[Ljava/lang/Short;

    .line 87
    new-array v0, v1, [B

    sput-object v0, La/a/a/a/a;->j:[B

    .line 91
    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, La/a/a/a/a;->k:[Ljava/lang/Byte;

    .line 95
    new-array v0, v1, [D

    sput-object v0, La/a/a/a/a;->l:[D

    .line 99
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, La/a/a/a/a;->m:[Ljava/lang/Double;

    .line 103
    new-array v0, v1, [F

    sput-object v0, La/a/a/a/a;->n:[F

    .line 107
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, La/a/a/a/a;->o:[Ljava/lang/Float;

    .line 111
    new-array v0, v1, [Z

    sput-object v0, La/a/a/a/a;->p:[Z

    .line 115
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, La/a/a/a/a;->q:[Ljava/lang/Boolean;

    .line 119
    new-array v0, v1, [C

    sput-object v0, La/a/a/a/a;->r:[C

    .line 123
    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, La/a/a/a/a;->s:[Ljava/lang/Character;

    return-void
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1887
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, La/a/a/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 1905
    if-nez p0, :cond_5

    move v0, v1

    .line 1924
    :cond_4
    :goto_4
    return v0

    .line 1908
    :cond_5
    if-gez p2, :cond_32

    .line 1909
    const/4 v0, 0x0

    .line 1911
    :goto_8
    if-nez p1, :cond_14

    .line 1912
    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_30

    .line 1913
    aget-object v2, p0, v0

    if-eqz v2, :cond_4

    .line 1912
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1917
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1918
    :goto_22
    array-length v2, p0

    if-ge v0, v2, :cond_30

    .line 1919
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1918
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_30
    move v0, v1

    .line 1924
    goto :goto_4

    :cond_32
    move v0, p2

    goto :goto_8
.end method

.method public static b([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 1990
    invoke-static {p0, p1}, La/a/a/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
