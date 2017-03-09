.class Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;
.super Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/i;->a(Lcom/google/ads/interactivemedia/v3/b/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/c/a;ZZ)Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Field;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/b/v;

.field final synthetic d:Lcom/google/ads/interactivemedia/v3/b/f;

.field final synthetic e:Lcom/google/ads/interactivemedia/v3/b/c/a;

.field final synthetic f:Z

.field final synthetic g:Lcom/google/ads/interactivemedia/v3/b/b/a/i;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/a/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/ads/interactivemedia/v3/b/v;Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;Z)V
    .registers 11

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->g:Lcom/google/ads/interactivemedia/v3/b/b/a/i;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->a:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->b:Z

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->c:Lcom/google/ads/interactivemedia/v3/b/v;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->d:Lcom/google/ads/interactivemedia/v3/b/f;

    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->e:Lcom/google/ads/interactivemedia/v3/b/c/a;

    iput-boolean p10, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->f:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/ads/interactivemedia/v3/b/d/a;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->c:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/v;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    if-nez v0, :cond_c

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->f:Z

    if-nez v1, :cond_11

    .line 131
    :cond_c
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :cond_11
    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 123
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->b:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->c:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 125
    :goto_c
    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/b/v;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V

    .line 126
    return-void

    .line 123
    :cond_10
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/m;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->d:Lcom/google/ads/interactivemedia/v3/b/f;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->c:Lcom/google/ads/interactivemedia/v3/b/v;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->e:Lcom/google/ads/interactivemedia/v3/b/c/a;

    .line 124
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/b/b/a/m;-><init>(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/v;Ljava/lang/reflect/Type;)V

    goto :goto_c
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->i:Z

    if-nez v1, :cond_6

    .line 137
    :cond_5
    :goto_5
    return v0

    .line 136
    :cond_6
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 137
    if-eq v1, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method
