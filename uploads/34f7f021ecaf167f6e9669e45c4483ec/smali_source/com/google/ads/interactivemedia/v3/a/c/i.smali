.class public final Lcom/google/ads/interactivemedia/v3/a/c/i;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/c/i;->c:Ljava/util/regex/Pattern;

    .line 27
    return-void
.end method

.method private constructor <init>(II)V
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/i;->a:I

    .line 85
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/i;->b:I

    .line 86
    return-void
.end method

.method public static a(I)Lcom/google/ads/interactivemedia/v3/a/c/i;
    .registers 4

    .prologue
    .line 62
    shr-int/lit8 v1, p0, 0xc

    .line 63
    and-int/lit16 v2, p0, 0xfff

    .line 64
    if-nez v1, :cond_a

    if-nez v2, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 65
    :cond_a
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/i;

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/i;-><init>(II)V

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/c/i;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 38
    const-string v1, "iTunSMPB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 52
    :cond_9
    :goto_9
    return-object v0

    .line 41
    :cond_a
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/c/i;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 44
    const/4 v2, 0x1

    :try_start_17
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 45
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 46
    if-nez v2, :cond_30

    if-eqz v3, :cond_9

    .line 47
    :cond_30
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/c/i;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/i;-><init>(II)V
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_35} :catch_37

    move-object v0, v1

    goto :goto_9

    .line 48
    :catch_37
    move-exception v1

    goto :goto_9
.end method
