.class public final Lcom/google/android/exoplayer/util/VerboseLogUtil;
.super Ljava/lang/Object;
.source "VerboseLogUtil.java"


# static fields
.field private static volatile enableAllTags:Z

.field private static volatile enabledTags:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areAllTagsEnabled()Z
    .registers 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/google/android/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    return v0
.end method

.method public static isTagEnabled(Ljava/lang/String;)Z
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 55
    sget-boolean v4, Lcom/google/android/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    if-eqz v4, :cond_7

    .line 69
    :cond_6
    :goto_6
    return v2

    .line 60
    :cond_7
    sget-object v1, Lcom/google/android/exoplayer/util/VerboseLogUtil;->enabledTags:[Ljava/lang/String;

    .line 61
    .local v1, "tags":[Ljava/lang/String;
    if-eqz v1, :cond_e

    array-length v4, v1

    if-nez v4, :cond_10

    :cond_e
    move v2, v3

    .line 62
    goto :goto_6

    .line 64
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v4, v1

    if-ge v0, v4, :cond_1f

    .line 65
    aget-object v4, v1, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    move v2, v3

    .line 69
    goto :goto_6
.end method

.method public static setEnableAllTags(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .prologue
    .line 45
    sput-boolean p0, Lcom/google/android/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    .line 46
    return-void
.end method

.method public static varargs setEnabledTags([Ljava/lang/String;)V
    .registers 2
    .param p0, "tags"    # [Ljava/lang/String;

    .prologue
    .line 34
    sput-object p0, Lcom/google/android/exoplayer/util/VerboseLogUtil;->enabledTags:[Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    .line 36
    return-void
.end method
