.class public Lcom/buzzfeed/toolkit/doorbell/Doorbell;
.super Ljava/lang/Object;
.source "Doorbell.java"


# static fields
.field private static final POUND_RANGE:J = 0xb2d05e00L

.field private static final POUND_START:J = 0x51f4d5c00L

.field private static sRandom:Ljava/util/Random;


# instance fields
.field private mPoundStorageProvider:Lcom/buzzfeed/toolkit/doorbell/StorageProvider;

.field private mUserStorageProvider:Lcom/buzzfeed/toolkit/doorbell/StorageProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->mUserStorageProvider:Lcom/buzzfeed/toolkit/doorbell/StorageProvider;

    .line 18
    new-instance v0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pound"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->mPoundStorageProvider:Lcom/buzzfeed/toolkit/doorbell/StorageProvider;

    .line 19
    return-void
.end method

.method private static generatePoundId()Ljava/lang/String;
    .registers 6

    .prologue
    const-wide v4, 0xb2d05e00L

    .line 51
    sget-object v2, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    rem-long/2addr v2, v4

    add-long/2addr v2, v4

    rem-long v0, v2, v4

    .line 52
    .local v0, "poundId":J
    const-wide v2, 0x51f4d5c00L

    add-long/2addr v0, v2

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static generateUserIdentifier()Ljava/lang/String;
    .registers 1

    .prologue
    .line 57
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSavedPoundIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->mPoundStorageProvider:Lcom/buzzfeed/toolkit/doorbell/StorageProvider;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSavedUserIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->mUserStorageProvider:Lcom/buzzfeed/toolkit/doorbell/StorageProvider;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private storeUserIdentifier(Ljava/lang/String;)V
    .registers 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->mUserStorageProvider:Lcom/buzzfeed/toolkit/doorbell/StorageProvider;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->saveText(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private storeUserPoundIdentifier(Ljava/lang/String;)V
    .registers 3
    .param p1, "poundId"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->mPoundStorageProvider:Lcom/buzzfeed/toolkit/doorbell/StorageProvider;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->saveText(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getUserIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->getSavedUserIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "userIdentifier":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 42
    invoke-static {}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->generateUserIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->storeUserIdentifier(Ljava/lang/String;)V

    .line 46
    :cond_d
    return-object v0
.end method

.method public getUserPoundIdentifier()J
    .registers 5

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->getSavedPoundIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "pound":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 28
    invoke-static {}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->generatePoundId()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->storeUserPoundIdentifier(Ljava/lang/String;)V

    .line 32
    :cond_d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method
