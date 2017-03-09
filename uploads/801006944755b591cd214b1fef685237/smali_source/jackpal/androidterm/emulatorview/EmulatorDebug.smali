.class Ljackpal/androidterm/emulatorview/EmulatorDebug;
.super Ljava/lang/Object;
.source "EmulatorDebug.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final LOG_CHARACTERS_FLAG:Z = false

.field public static final LOG_IME:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "EmulatorView"

.field public static final LOG_UNKNOWN_ESCAPE_SEQUENCES:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToString([BII)Ljava/lang/String;
    .registers 10
    .param p0, "data"    # [B
    .param p1, "base"    # I
    .param p2, "length"    # I

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, p2, :cond_2f

    .line 56
    add-int v3, p1, v2

    aget-byte v0, p0, v3

    .line 57
    .local v0, "b":B
    const/16 v3, 0x20

    if-lt v0, v3, :cond_14

    const/16 v3, 0x7e

    if-le v0, v3, :cond_2a

    .line 58
    :cond_14
    const-string v3, "\\x%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 60
    :cond_2a
    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 63
    .end local v0    # "b":B
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
