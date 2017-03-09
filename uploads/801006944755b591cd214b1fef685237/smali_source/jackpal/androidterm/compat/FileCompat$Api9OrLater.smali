.class Ljackpal/androidterm/compat/FileCompat$Api9OrLater;
.super Ljava/lang/Object;
.source "FileCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/compat/FileCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api9OrLater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canExecute(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 27
    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result v0

    return v0
.end method
