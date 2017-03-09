.class public Lcom/google/ads/interactivemedia/v3/impl/aa;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/aa$a;,
        Lcom/google/ads/interactivemedia/v3/impl/aa$c;,
        Lcom/google/ads/interactivemedia/v3/impl/aa$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/b/f;


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/ads/interactivemedia/v3/impl/aa$c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 131
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/g;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/g;-><init>()V

    const-class v1, Lcom/google/ads/interactivemedia/v3/api/UiElement;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/m;->GSON_TYPE_ADAPTER:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/g;

    move-result-object v0

    const-class v1, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/aa$1;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/impl/aa$1;-><init>()V

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/g;

    move-result-object v0

    new-instance v1, Lcom/google/b/c;

    invoke-direct {v1}, Lcom/google/b/c;-><init>()V

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/w;)Lcom/google/ads/interactivemedia/v3/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/g;->a()Lcom/google/ads/interactivemedia/v3/b/f;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    .line 175
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    .line 176
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Ljava/lang/String;

    .line 177
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/aa;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lcom/google/ads/interactivemedia/v3/b/t;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    const-string v2, "sid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    if-nez v2, :cond_1d

    .line 155
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Session id must be provided in message."

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1d
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/aa;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    move-result-object v1

    const-string/jumbo v3, "type"

    .line 159
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    move-result-object v3

    const-string v4, "sid"

    .line 160
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    const-string v6, "data"

    .line 161
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v6, Lcom/google/ads/interactivemedia/v3/impl/data/l;

    invoke-virtual {v5, v0, v6}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    return-object v2
.end method


# virtual methods
.method public a()Lcom/google/ads/interactivemedia/v3/impl/aa$b;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    return-object v0
.end method

.method public b()Lcom/google/ads/interactivemedia/v3/impl/aa$c;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 6

    .prologue
    .line 207
    new-instance v0, Lcom/google/c/b/n$a;

    invoke-direct {v0}, Lcom/google/c/b/n$a;-><init>()V

    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/google/c/b/n$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/n$a;

    move-result-object v0

    const-string v1, "sid"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/google/c/b/n$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/n$a;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Ljava/lang/Object;

    if-eqz v1, :cond_21

    .line 211
    const-string v1, "data"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/b/n$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/n$a;

    .line 213
    :cond_21
    invoke-virtual {v0}, Lcom/google/c/b/n$a;->a()Lcom/google/c/b/n;

    move-result-object v0

    .line 214
    const-string v1, "%s(\'%s\', %s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "javascript:adsense.mobileads.afmanotify.receiveMessage"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-virtual {v4, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 219
    if-ne p0, p1, :cond_5

    .line 241
    :cond_4
    :goto_4
    return v0

    .line 222
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 223
    goto :goto_4

    .line 225
    :cond_9
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    if-nez v2, :cond_f

    move v0, v1

    .line 226
    goto :goto_4

    .line 228
    :cond_f
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 229
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    if-eq v2, v3, :cond_19

    move v0, v1

    .line 230
    goto :goto_4

    .line 232
    :cond_19
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/c/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    move v0, v1

    .line 233
    goto :goto_4

    .line 235
    :cond_25
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/c/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    move v0, v1

    .line 236
    goto :goto_4

    .line 238
    :cond_31
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 239
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 246
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/c/a/e;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 251
    const-string v0, "JavaScriptMessage [command=%s, type=%s, sid=%s, data=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
