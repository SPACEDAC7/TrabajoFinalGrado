.class final Lcom/google/ads/interactivemedia/v3/impl/data/d$a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/data/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private appState:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private nativeTime:Ljava/lang/Long;

.field private nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

.field private nativeViewHidden:Ljava/lang/Boolean;

.field private nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

.field private nativeVolume:Ljava/lang/Double;

.field private queryId:Ljava/lang/String;

.field private vastEvent:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/data/a;)V
    .registers 4

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->queryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->queryId:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->eventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->eventId:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->vastEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->vastEvent:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->appState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->appState:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeTime:Ljava/lang/Long;

    .line 162
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeVolume()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeVolume:Ljava/lang/Double;

    .line 163
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeViewHidden()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeViewHidden:Ljava/lang/Boolean;

    .line 164
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeViewBounds()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    .line 165
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeViewVisibleBounds()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    .line 166
    return-void
.end method


# virtual methods
.method public appState(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->appState:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public build()Lcom/google/ads/interactivemedia/v3/impl/data/a;
    .registers 15

    .prologue
    .line 214
    const-string v0, ""

    .line 215
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->queryId:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 216
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " queryId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_10
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->eventId:Ljava/lang/String;

    if-nez v1, :cond_1e

    .line 219
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " eventId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_1e
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->vastEvent:Ljava/lang/String;

    if-nez v1, :cond_2c

    .line 222
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " vastEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_2c
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->appState:Ljava/lang/String;

    if-nez v1, :cond_3a

    .line 225
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " appState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_3a
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeTime:Ljava/lang/Long;

    if-nez v1, :cond_48

    .line 228
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " nativeTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_48
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeVolume:Ljava/lang/Double;

    if-nez v1, :cond_56

    .line 231
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " nativeVolume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_56
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeViewHidden:Ljava/lang/Boolean;

    if-nez v1, :cond_64

    .line 234
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " nativeViewHidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_64
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    if-nez v1, :cond_72

    .line 237
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " nativeViewBounds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_72
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    if-nez v1, :cond_80

    .line 240
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " nativeViewVisibleBounds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_80
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a2

    .line 243
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_98
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_98

    .line 245
    :cond_a2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/data/d;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->queryId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->eventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->vastEvent:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->appState:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeTime:Ljava/lang/Long;

    .line 250
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeVolume:Ljava/lang/Double;

    .line 251
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeViewHidden:Ljava/lang/Boolean;

    .line 252
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    iget-object v12, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Lcom/google/ads/interactivemedia/v3/impl/data/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JDZLcom/google/ads/interactivemedia/v3/impl/data/a$a;Lcom/google/ads/interactivemedia/v3/impl/data/a$a;Lcom/google/ads/interactivemedia/v3/impl/data/d$1;)V

    .line 245
    return-object v1
.end method

.method public eventId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->eventId:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public nativeTime(J)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;
    .registers 4

    .prologue
    .line 189
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeTime:Ljava/lang/Long;

    .line 190
    return-object p0
.end method

.method public nativeViewBounds(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;
    .registers 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    .line 205
    return-object p0
.end method

.method public nativeViewHidden(Z)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;
    .registers 3

    .prologue
    .line 199
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeViewHidden:Ljava/lang/Boolean;

    .line 200
    return-object p0
.end method

.method public nativeViewVisibleBounds(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;
    .registers 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    .line 210
    return-object p0
.end method

.method public nativeVolume(D)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;
    .registers 4

    .prologue
    .line 194
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->nativeVolume:Ljava/lang/Double;

    .line 195
    return-object p0
.end method

.method public queryId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->queryId:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public vastEvent(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d$a;->vastEvent:Ljava/lang/String;

    .line 180
    return-object p0
.end method
