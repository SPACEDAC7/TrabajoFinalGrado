.class public final Lhecticman/jsterm/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final APPEND_TO_PATH:Ljava/lang/String; = "hecticman.jsterm.permission.APPEND_TO_PATH"

.field public static final PREPEND_TO_PATH:Ljava/lang/String; = "hecticman.jsterm.permission.PREPEND_TO_PATH"

.field public static final RUN_SCRIPT:Ljava/lang/String; = "hecticman.jsterm.permission.RUN_SCRIPT"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
