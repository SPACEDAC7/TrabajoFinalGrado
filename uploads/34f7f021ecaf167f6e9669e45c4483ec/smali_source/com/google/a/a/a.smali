.class Lcom/google/a/a/a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/a/a/i;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BZ)Ljava/lang/String;
    .registers 4

    .prologue
    .line 20
    if-eqz p2, :cond_9

    const/16 v0, 0xb

    .line 22
    :goto_4
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :cond_9
    const/4 v0, 0x2

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Z)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 27
    if-eqz p2, :cond_9

    const/16 v0, 0xb

    .line 29
    :goto_4
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0

    .line 27
    :cond_9
    const/4 v0, 0x2

    goto :goto_4
.end method
