.class public abstract enum Lcom/google/ads/interactivemedia/v3/b/d;
.super Ljava/lang/Enum;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/interactivemedia/v3/b/d;",
        ">;",
        "Lcom/google/ads/interactivemedia/v3/b/e;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/b/d;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/b/d;

.field public static final enum c:Lcom/google/ads/interactivemedia/v3/b/d;

.field public static final enum d:Lcom/google/ads/interactivemedia/v3/b/d;

.field public static final enum e:Lcom/google/ads/interactivemedia/v3/b/d;

.field private static final synthetic f:[Lcom/google/ads/interactivemedia/v3/b/d;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/d$1;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/d$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/d;->a:Lcom/google/ads/interactivemedia/v3/b/d;

    .line 53
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/d$2;

    const-string v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/b/d$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/d;->b:Lcom/google/ads/interactivemedia/v3/b/d;

    .line 72
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/d$3;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/b/d$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/d;->c:Lcom/google/ads/interactivemedia/v3/b/d;

    .line 90
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/d$4;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1, v5}, Lcom/google/ads/interactivemedia/v3/b/d$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/d;->d:Lcom/google/ads/interactivemedia/v3/b/d;

    .line 113
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/d$5;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1, v6}, Lcom/google/ads/interactivemedia/v3/b/d$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/d;->e:Lcom/google/ads/interactivemedia/v3/b/d;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/b/d;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d;->a:Lcom/google/ads/interactivemedia/v3/b/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d;->b:Lcom/google/ads/interactivemedia/v3/b/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d;->c:Lcom/google/ads/interactivemedia/v3/b/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d;->d:Lcom/google/ads/interactivemedia/v3/b/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d;->e:Lcom/google/ads/interactivemedia/v3/b/d;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/d;->f:[Lcom/google/ads/interactivemedia/v3/b/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/ads/interactivemedia/v3/b/d$1;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(CLjava/lang/String;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_1b
    return-object v0

    :cond_1c
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 143
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_18

    .line 144
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 152
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_2d

    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 160
    :cond_22
    :goto_22
    return-object p0

    .line 148
    :cond_23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_a

    .line 156
    :cond_2d
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_22

    .line 157
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/b/d;->a(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_22
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 127
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 128
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 132
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d;
    .registers 2

    .prologue
    .line 31
    const-class v0, Lcom/google/ads/interactivemedia/v3/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/d;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/b/d;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d;->f:[Lcom/google/ads/interactivemedia/v3/b/d;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/b/d;

    return-object v0
.end method
