.class public Lcom/google/ads/interactivemedia/v3/impl/a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/ab$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/a$a;,
        Lcom/google/ads/interactivemedia/v3/impl/a$c;,
        Lcom/google/ads/interactivemedia/v3/impl/a$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/impl/ab;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Lcom/google/ads/interactivemedia/v3/impl/a$b;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

.field private f:Landroid/app/Activity;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 105
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a$c;-><init>(Lcom/google/ads/interactivemedia/v3/impl/a$1;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/a;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/impl/a$b;)V

    .line 106
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/impl/a$b;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->b:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    .line 116
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    .line 117
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->d:Lcom/google/ads/interactivemedia/v3/impl/a$b;

    .line 118
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->f:Landroid/app/Activity;

    .line 119
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->g:Z

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/a;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/a;Landroid/app/Activity;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->f:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/impl/a;)Lcom/google/ads/interactivemedia/v3/impl/ab;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/impl/a;)Landroid/app/Application;
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->i()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/impl/a;)Lcom/google/ads/interactivemedia/v3/impl/a$a;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

    return-object v0
.end method

.method private i()Landroid/app/Application;
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 137
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_11

    .line 138
    check-cast v0, Landroid/app/Application;

    .line 140
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;
    .registers 13

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->g()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->h()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v1

    .line 217
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->f()Z

    move-result v2

    .line 218
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->e()D

    move-result-wide v4

    .line 219
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->d:Lcom/google/ads/interactivemedia/v3/impl/a$b;

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/impl/a$b;->a()J

    move-result-wide v6

    .line 221
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->queryId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->eventId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    .line 222
    invoke-interface {v3, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->vastEvent(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    invoke-interface {v3, p4}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->appState(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    invoke-interface {v3, v6, v7}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeTime(J)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeVolume(D)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    .line 223
    invoke-interface {v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeViewHidden(Z)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeViewBounds(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v0

    .line 224
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeViewVisibleBounds(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->build()Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object v0

    .line 226
    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$a;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 230
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->viewability:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 233
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 236
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->viewability:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 239
    return-void
.end method

.method protected a(Z)V
    .registers 2

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->g:Z

    .line 130
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public c()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->g:Z

    if-eqz v0, :cond_1c

    .line 154
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->i()Landroid/app/Application;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1c

    .line 156
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/a$a;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/a$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/a;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

    .line 157
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 160
    :cond_1c
    return-void
.end method

.method public d()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_15

    .line 165
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->i()Landroid/app/Application;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

    if-eqz v1, :cond_15

    .line 167
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 170
    :cond_15
    return-void
.end method

.method public e()D
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 176
    const-wide/16 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    .line 178
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 179
    if-eqz v0, :cond_20

    .line 180
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 181
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 182
    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 184
    :goto_1f
    return-wide v0

    :cond_20
    move-wide v0, v2

    goto :goto_1f
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 190
    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public g()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
    .registers 5

    .prologue
    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 195
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 196
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 196
    invoke-static {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->create(IIII)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 201
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 202
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    .line 203
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    .line 204
    :goto_15
    if-eqz v3, :cond_21

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_24

    .line 205
    :cond_21
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 207
    :cond_24
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 208
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 207
    invoke-static {v0, v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->create(IIII)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    return-object v0

    :cond_35
    move v0, v1

    .line 203
    goto :goto_15
.end method
