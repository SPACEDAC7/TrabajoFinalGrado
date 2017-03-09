.class final La/a/a/a/a/d;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, La/a/a/a/a/d;->b:I

    .line 45
    iput-object p1, p0, La/a/a/a/a/d;->a:Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 64
    instance-of v1, p1, La/a/a/a/a/d;

    if-nez v1, :cond_6

    .line 72
    :cond_5
    :goto_5
    return v0

    .line 67
    :cond_6
    check-cast p1, La/a/a/a/a/d;

    .line 68
    iget v1, p0, La/a/a/a/a/d;->b:I

    iget v2, p1, La/a/a/a/a/d;->b:I

    if-ne v1, v2, :cond_5

    .line 72
    iget-object v1, p0, La/a/a/a/a/d;->a:Ljava/lang/Object;

    iget-object v2, p1, La/a/a/a/a/d;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, La/a/a/a/a/d;->b:I

    return v0
.end method
