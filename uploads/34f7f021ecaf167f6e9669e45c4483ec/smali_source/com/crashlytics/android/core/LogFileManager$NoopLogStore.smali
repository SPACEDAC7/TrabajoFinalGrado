.class final Lcom/crashlytics/android/core/LogFileManager$NoopLogStore;
.super Ljava/lang/Object;
.source "LogFileManager.java"

# interfaces
.implements Lcom/crashlytics/android/core/FileLogStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/LogFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopLogStore"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/core/LogFileManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/crashlytics/android/core/LogFileManager$1;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/crashlytics/android/core/LogFileManager$NoopLogStore;-><init>()V

    return-void
.end method


# virtual methods
.method public closeLogFile()V
    .registers 1

    .prologue
    .line 148
    return-void
.end method

.method public deleteLogFile()V
    .registers 1

    .prologue
    .line 151
    return-void
.end method

.method public getLogAsByteString()Lcom/crashlytics/android/core/ByteString;
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToLog(JLjava/lang/String;)V
    .registers 4
    .param p1, "timestamp"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 140
    return-void
.end method
