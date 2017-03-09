.class public final Lcom/google/android/exoplayer/util/TraceUtil;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 3
    .param p0, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 34
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 35
    invoke-static {p0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSectionV18(Ljava/lang/String;)V

    .line 37
    :cond_9
    return-void
.end method

.method private static beginSectionV18(Ljava/lang/String;)V
    .registers 1
    .param p0, "sectionName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 52
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static endSection()V
    .registers 2

    .prologue
    .line 45
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 46
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSectionV18()V

    .line 48
    :cond_9
    return-void
.end method

.method private static endSectionV18()V
    .registers 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 58
    return-void
.end method
