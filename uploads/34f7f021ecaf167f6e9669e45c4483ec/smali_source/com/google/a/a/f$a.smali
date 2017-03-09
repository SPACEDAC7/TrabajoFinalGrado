.class Lcom/google/a/a/f$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/a/f;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/a/a/f;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/a/a/f$a;->a:Lcom/google/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/google/a/a/f$a;->b:Ljava/lang/String;

    .line 33
    iput-boolean p3, p0, Lcom/google/a/a/f$a;->c:Z

    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/a/a/f$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/a/a/f$a;->c:Z

    return v0
.end method
