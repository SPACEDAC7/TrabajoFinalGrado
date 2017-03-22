.class public Lhecticman/jsterm/compat/FileCompat;
.super Ljava/lang/Object;
.source "FileCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhecticman/jsterm/compat/FileCompat$Api8OrEarlier;,
        Lhecticman/jsterm/compat/FileCompat$Api9OrLater;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canExecute(Ljava/io/File;)Z
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 44
    sget v0, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_b

    .line 45
    invoke-static {p0}, Lhecticman/jsterm/compat/FileCompat$Api8OrEarlier;->canExecute(Ljava/io/File;)Z

    move-result v0

    .line 47
    :goto_a
    return v0

    :cond_b
    invoke-static {p0}, Lhecticman/jsterm/compat/FileCompat$Api9OrLater;->canExecute(Ljava/io/File;)Z

    move-result v0

    goto :goto_a
.end method
