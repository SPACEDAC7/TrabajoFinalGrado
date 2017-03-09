.class final Lcom/google/ads/interactivemedia/v3/a/h;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/g;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/i;

.field private final c:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/g$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[[Lcom/google/ads/interactivemedia/v3/a/p;

.field private final e:[I

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(III)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "ExoPlayerImpl"

    const-string v1, "Init 1.5.12"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->f:Z

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->g:I

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 60
    new-array v0, p1, [[Lcom/google/ads/interactivemedia/v3/a/p;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->d:[[Lcom/google/ads/interactivemedia/v3/a/p;

    .line 61
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->e:[I

    .line 62
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/h$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/a/h$1;-><init>(Lcom/google/ads/interactivemedia/v3/a/h;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->a:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/i;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/h;->a:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/h;->f:Z

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/h;->e:[I

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/i;-><init>(Landroid/os/Handler;Z[III)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->b:Lcom/google/ads/interactivemedia/v3/a/i;

    .line 70
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->g:I

    return v0
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->b:Lcom/google/ads/interactivemedia/v3/a/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/i;->a(J)V

    .line 146
    return-void
.end method

.method a(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_88

    .line 227
    :cond_6
    return-void

    .line 196
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/h;->d:[[Lcom/google/ads/interactivemedia/v3/a/p;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/h;->d:[[Lcom/google/ads/interactivemedia/v3/a/p;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->g:I

    .line 198
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/g$c;

    .line 199
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/h;->f:Z

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/h;->g:I

    invoke-interface {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/g$c;->a(ZI)V

    goto :goto_1b

    .line 204
    :pswitch_2f
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->g:I

    .line 205
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/g$c;

    .line 206
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/h;->f:Z

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/h;->g:I

    invoke-interface {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/g$c;->a(ZI)V

    goto :goto_39

    .line 211
    :pswitch_4d
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->h:I

    .line 212
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->h:I

    if-nez v0, :cond_6

    .line 213
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/g$c;

    .line 214
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/g$c;->a()V

    goto :goto_5d

    .line 220
    :pswitch_6d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/f;

    .line 221
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/h;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/a/g$c;

    .line 222
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/g$c;->a(Lcom/google/ads/interactivemedia/v3/a/f;)V

    goto :goto_77

    .line 194
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2f
        :pswitch_4d
        :pswitch_6d
    .end packed-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/g$a;ILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->b:Lcom/google/ads/interactivemedia/v3/a/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/g$a;ILjava/lang/Object;)V

    .line 162
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/g$c;)V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public a(Z)V
    .registers 5

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->f:Z

    if-eq v0, p1, :cond_29

    .line 124
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/a/h;->f:Z

    .line 125
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->h:I

    .line 126
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->b:Lcom/google/ads/interactivemedia/v3/a/i;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/i;->a(Z)V

    .line 127
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/g$c;

    .line 128
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/h;->g:I

    invoke-interface {v0, p1, v2}, Lcom/google/ads/interactivemedia/v3/a/g$c;->a(ZI)V

    goto :goto_17

    .line 131
    :cond_29
    return-void
.end method

.method public varargs a([Lcom/google/ads/interactivemedia/v3/a/w;)V
    .registers 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->d:[[Lcom/google/ads/interactivemedia/v3/a/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->b:Lcom/google/ads/interactivemedia/v3/a/i;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/i;->a([Lcom/google/ads/interactivemedia/v3/a/w;)V

    .line 96
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->b:Lcom/google/ads/interactivemedia/v3/a/i;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/i;->c()V

    .line 151
    return-void
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/a/g$a;ILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->b:Lcom/google/ads/interactivemedia/v3/a/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/i;->b(Lcom/google/ads/interactivemedia/v3/a/g$a;ILjava/lang/Object;)V

    .line 167
    return-void
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/a/g$c;)V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->b:Lcom/google/ads/interactivemedia/v3/a/i;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/i;->d()V

    .line 156
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public d()J
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->b:Lcom/google/ads/interactivemedia/v3/a/i;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/i;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/h;->b:Lcom/google/ads/interactivemedia/v3/a/i;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/i;->a()J

    move-result-wide v0

    return-wide v0
.end method
