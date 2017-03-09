.class public Lcom/twitter/sdk/android/core/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/AuthToken;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final authToken:Lcom/twitter/sdk/android/core/AuthToken;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auth_token"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/AuthToken;J)V
    .registers 4
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/twitter/sdk/android/core/Session;, "Lcom/twitter/sdk/android/core/Session<TT;>;"
    .local p1, "authToken":Lcom/twitter/sdk/android/core/AuthToken;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    .line 35
    iput-wide p2, p0, Lcom/twitter/sdk/android/core/Session;->id:J

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/twitter/sdk/android/core/Session;, "Lcom/twitter/sdk/android/core/Session<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    if-ne p0, p1, :cond_5

    .line 58
    :cond_4
    :goto_4
    return v1

    .line 49
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/twitter/sdk/android/core/Session;

    .line 53
    .local v0, "session":Lcom/twitter/sdk/android/core/Session;
    iget-wide v4, p0, Lcom/twitter/sdk/android/core/Session;->id:J

    iget-wide v6, v0, Lcom/twitter/sdk/android/core/Session;->id:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_20

    move v1, v2

    goto :goto_4

    .line 54
    :cond_20
    iget-object v3, p0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2e
    move v1, v2

    .line 55
    goto :goto_4

    .line 54
    :cond_30
    iget-object v3, v0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    if-eqz v3, :cond_4

    goto :goto_2e
.end method

.method public getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/twitter/sdk/android/core/Session;, "Lcom/twitter/sdk/android/core/Session<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 43
    .local p0, "this":Lcom/twitter/sdk/android/core/Session;, "Lcom/twitter/sdk/android/core/Session<TT;>;"
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/Session;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 63
    .local p0, "this":Lcom/twitter/sdk/android/core/Session;, "Lcom/twitter/sdk/android/core/Session<TT;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/twitter/sdk/android/core/Session;->authToken:Lcom/twitter/sdk/android/core/AuthToken;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 64
    .local v0, "result":I
    :goto_a
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/twitter/sdk/android/core/Session;->id:J

    iget-wide v4, p0, Lcom/twitter/sdk/android/core/Session;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 65
    return v0

    .line 63
    .end local v0    # "result":I
    :cond_18
    const/4 v0, 0x0

    goto :goto_a
.end method
