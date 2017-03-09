.class public Lcom/google/a/a/k$a;
.super Ljava/lang/Exception;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/a/k;


# direct methods
.method public constructor <init>(Lcom/google/a/a/k;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/a/a/k$a;->a:Lcom/google/a/a/k;

    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/a/a/k;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/a/a/k$a;->a:Lcom/google/a/a/k;

    .line 56
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method
