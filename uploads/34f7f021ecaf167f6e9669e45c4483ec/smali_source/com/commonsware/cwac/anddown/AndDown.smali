.class public Lcom/commonsware/cwac/anddown/AndDown;
.super Ljava/lang/Object;
.source "AndDown.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const-string v0, "anddown"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native markdownToHtml(Ljava/lang/String;)Ljava/lang/String;
.end method
