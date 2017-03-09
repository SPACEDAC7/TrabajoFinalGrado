.class Lcom/buzzfeed/toolkit/tenderizer/Pound;
.super Ljava/lang/Object;
.source "Pound.java"


# static fields
.field private static sRandom:Ljava/util/Random;


# instance fields
.field private mIdentifier:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/buzzfeed/toolkit/tenderizer/Pound;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "identifier"    # J

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/buzzfeed/toolkit/tenderizer/Pound;->mIdentifier:J

    .line 14
    return-void
.end method

.method private generateRandomCharacter()C
    .registers 3

    .prologue
    .line 44
    sget-object v0, Lcom/buzzfeed/toolkit/tenderizer/Pound;->sRandom:Ljava/util/Random;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    return v0
.end method


# virtual methods
.method public generateRandomSaltId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 35
    const-string v1, ""

    .line 36
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1e

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/tenderizer/Pound;->generateRandomCharacter()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 40
    :cond_1e
    return-object v1
.end method

.method public getHashedIdentifier()Ljava/lang/String;
    .registers 9

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/tenderizer/Pound;->generateRandomSaltId()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "saltId":Ljava/lang/String;
    new-instance v2, Lcom/buzzfeed/toolkit/util/Hashids;

    invoke-direct {v2, v1}, Lcom/buzzfeed/toolkit/util/Hashids;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/buzzfeed/toolkit/tenderizer/Pound;->mIdentifier:J

    aput-wide v6, v3, v4

    invoke-virtual {v2, v3}, Lcom/buzzfeed/toolkit/util/Hashids;->encode([J)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "hashedId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getIdentifier()J
    .registers 3

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/buzzfeed/toolkit/tenderizer/Pound;->mIdentifier:J

    return-wide v0
.end method
