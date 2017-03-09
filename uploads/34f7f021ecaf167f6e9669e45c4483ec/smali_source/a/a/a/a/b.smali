.class public La/a/a/a/b;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/b$a;
    }
.end annotation


# static fields
.field public static final a:La/a/a/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    new-instance v0, La/a/a/a/b$a;

    invoke-direct {v0}, La/a/a/a/b$a;-><init>()V

    sput-object v0, La/a/a/a/b;->a:La/a/a/a/b$a;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    if-ne p0, p1, :cond_4

    .line 158
    const/4 v0, 0x1

    .line 163
    :goto_3
    return v0

    .line 160
    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_a

    .line 161
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 163
    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method
