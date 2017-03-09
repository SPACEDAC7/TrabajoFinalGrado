.class final Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/ads/interactivemedia/v3/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/s",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/ads/interactivemedia/v3/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/k",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/b/c/a;ZLjava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/b/s;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/s;

    :goto_b
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->d:Lcom/google/ads/interactivemedia/v3/b/s;

    .line 137
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/b/k;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/google/ads/interactivemedia/v3/b/k;

    :goto_13
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->e:Lcom/google/ads/interactivemedia/v3/b/k;

    .line 140
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->d:Lcom/google/ads/interactivemedia/v3/b/s;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->e:Lcom/google/ads/interactivemedia/v3/b/k;

    if-eqz v0, :cond_2c

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/b/a;->a(Z)V

    .line 141
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->a:Lcom/google/ads/interactivemedia/v3/b/c/a;

    .line 142
    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->b:Z

    .line 143
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->c:Ljava/lang/Class;

    .line 144
    return-void

    :cond_28
    move-object v0, v1

    .line 134
    goto :goto_b

    :cond_2a
    move-object p1, v1

    .line 137
    goto :goto_13

    .line 140
    :cond_2c
    const/4 v0, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/b/f;",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->a:Lcom/google/ads/interactivemedia/v3/b/c/a;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->a:Lcom/google/ads/interactivemedia/v3/b/c/a;

    .line 150
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->b:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->a:Lcom/google/ads/interactivemedia/v3/b/c/a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2c

    :cond_1c
    const/4 v0, 0x1

    .line 152
    :goto_1d
    if-eqz v0, :cond_39

    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->d:Lcom/google/ads/interactivemedia/v3/b/s;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->e:Lcom/google/ads/interactivemedia/v3/b/k;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/b/b/a/l;-><init>(Lcom/google/ads/interactivemedia/v3/b/s;Lcom/google/ads/interactivemedia/v3/b/k;Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;Lcom/google/ads/interactivemedia/v3/b/w;)V

    :goto_2b
    return-object v0

    .line 150
    :cond_2c
    const/4 v0, 0x0

    goto :goto_1d

    :cond_2e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;->c:Ljava/lang/Class;

    .line 151
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_1d

    .line 152
    :cond_39
    const/4 v0, 0x0

    goto :goto_2b
.end method
