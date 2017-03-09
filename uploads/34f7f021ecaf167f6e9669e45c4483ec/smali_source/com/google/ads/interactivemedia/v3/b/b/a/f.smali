.class public final Lcom/google/ads/interactivemedia/v3/b/b/a/f;
.super Lcom/google/ads/interactivemedia/v3/b/d/c;
.source "IMASDK"


# static fields
.field private static final a:Ljava/io/Writer;

.field private static final b:Lcom/google/ads/interactivemedia/v3/b/q;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/l;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/google/ads/interactivemedia/v3/b/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/f$1;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f$1;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->a:Ljava/io/Writer;

    .line 46
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/q;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->b:Lcom/google/ads/interactivemedia/v3/b/q;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->a:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;-><init>(Ljava/io/Writer;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    .line 55
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/n;->a:Lcom/google/ads/interactivemedia/v3/b/n;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->e:Lcom/google/ads/interactivemedia/v3/b/l;

    .line 59
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/b/l;)V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 77
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/l;->j()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 78
    :cond_10
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->j()Lcom/google/ads/interactivemedia/v3/b/l;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/o;

    .line 79
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/l;)V

    .line 81
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->d:Ljava/lang/String;

    .line 92
    :goto_1e
    return-void

    .line 82
    :cond_1f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 83
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->e:Lcom/google/ads/interactivemedia/v3/b/l;

    goto :goto_1e

    .line 85
    :cond_2a
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->j()Lcom/google/ads/interactivemedia/v3/b/l;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/b/i;

    if-eqz v1, :cond_38

    .line 87
    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/i;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/i;->a(Lcom/google/ads/interactivemedia/v3/b/l;)V

    goto :goto_1e

    .line 89
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private j()Lcom/google/ads/interactivemedia/v3/b/l;
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/l;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/google/ads/interactivemedia/v3/b/d/c;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/q;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->a(Lcom/google/ads/interactivemedia/v3/b/l;)V

    .line 180
    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/b/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    if-nez p1, :cond_7

    .line 164
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    move-result-object p0

    .line 167
    :goto_6
    return-object p0

    .line 166
    :cond_7
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/q;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->a(Lcom/google/ads/interactivemedia/v3/b/l;)V

    goto :goto_6
.end method

.method public a(Ljava/lang/Number;)Lcom/google/ads/interactivemedia/v3/b/d/c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    if-nez p1, :cond_7

    .line 185
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    move-result-object p0

    .line 196
    :goto_6
    return-object p0

    .line 188
    :cond_7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_36

    .line 189
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 191
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_36
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/q;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->a(Lcom/google/ads/interactivemedia/v3/b/l;)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 134
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 136
    :cond_12
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->j()Lcom/google/ads/interactivemedia/v3/b/l;

    move-result-object v0

    .line 137
    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/b/o;

    if-eqz v0, :cond_1d

    .line 138
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->d:Ljava/lang/String;

    .line 139
    return-object p0

    .line 141
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Z)Lcom/google/ads/interactivemedia/v3/b/d/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/q;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->a(Lcom/google/ads/interactivemedia/v3/b/l;)V

    .line 159
    return-object p0
.end method

.method public a()Lcom/google/ads/interactivemedia/v3/b/l;
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_23
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->e:Lcom/google/ads/interactivemedia/v3/b/l;

    return-object v0
.end method

.method public b()Lcom/google/ads/interactivemedia/v3/b/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/i;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/i;-><init>()V

    .line 96
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->a(Lcom/google/ads/interactivemedia/v3/b/l;)V

    .line 97
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    if-nez p1, :cond_7

    .line 146
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    move-result-object p0

    .line 149
    :goto_6
    return-object p0

    .line 148
    :cond_7
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->a(Lcom/google/ads/interactivemedia/v3/b/l;)V

    goto :goto_6
.end method

.method public c()Lcom/google/ads/interactivemedia/v3/b/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 103
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 105
    :cond_12
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->j()Lcom/google/ads/interactivemedia/v3/b/l;

    move-result-object v0

    .line 106
    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/b/i;

    if-eqz v0, :cond_28

    .line 107
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    return-object p0

    .line 110
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 204
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_10
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->b:Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public d()Lcom/google/ads/interactivemedia/v3/b/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/o;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/o;-><init>()V

    .line 115
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->a(Lcom/google/ads/interactivemedia/v3/b/l;)V

    .line 116
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object p0
.end method

.method public e()Lcom/google/ads/interactivemedia/v3/b/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 122
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 124
    :cond_12
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->j()Lcom/google/ads/interactivemedia/v3/b/l;

    move-result-object v0

    .line 125
    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/b/o;

    if-eqz v0, :cond_28

    .line 126
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 127
    return-object p0

    .line 129
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public f()Lcom/google/ads/interactivemedia/v3/b/d/c;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/n;->a:Lcom/google/ads/interactivemedia/v3/b/n;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/f;->a(Lcom/google/ads/interactivemedia/v3/b/l;)V

    .line 154
    return-object p0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    return-void
.end method
