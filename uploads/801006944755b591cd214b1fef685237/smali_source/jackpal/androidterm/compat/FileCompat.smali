.class public Ljackpal/androidterm/compat/FileCompat;
.super Ljava/lang/Object;
.source "FileCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/compat/FileCompat$Api8OrEarlier;,
        Ljackpal/androidterm/compat/FileCompat$Api9OrLater;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static canExecute(Ljava/io/File;)Z
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 44
    sget v0, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_b

    .line 45
    invoke-static {p0}, Ljackpal/androidterm/compat/FileCompat$Api8OrEarlier;->canExecute(Ljava/io/File;)Z

    move-result v0

    .line 47
    :goto_a
    return v0

    :cond_b
    invoke-static {p0}, Ljackpal/androidterm/compat/FileCompat$Api9OrLater;->canExecute(Ljava/io/File;)Z

    move-result v0

    goto :goto_a
.end method
