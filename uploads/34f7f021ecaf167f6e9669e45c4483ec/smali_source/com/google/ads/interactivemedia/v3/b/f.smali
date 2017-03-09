.class public final Lcom/google/ads/interactivemedia/v3/b/f;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/f$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/b/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<*>;",
            "Lcom/google/ads/interactivemedia/v3/b/f$a",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<*>;",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/w;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/ads/interactivemedia/v3/b/b/c;

.field private final f:Lcom/google/ads/interactivemedia/v3/b/b/d;

.field private final g:Lcom/google/ads/interactivemedia/v3/b/e;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Lcom/google/ads/interactivemedia/v3/b/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 112
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/f$1;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/f$1;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/f;->a:Lcom/google/ads/interactivemedia/v3/b/c/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/b/d;->a:Lcom/google/ads/interactivemedia/v3/b/b/d;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/d;->a:Lcom/google/ads/interactivemedia/v3/b/d;

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v11, Lcom/google/ads/interactivemedia/v3/b/u;->a:Lcom/google/ads/interactivemedia/v3/b/u;

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    move v10, v4

    .line 174
    invoke-direct/range {v0 .. v12}, Lcom/google/ads/interactivemedia/v3/b/f;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/d;Lcom/google/ads/interactivemedia/v3/b/e;Ljava/util/Map;ZZZZZZZLcom/google/ads/interactivemedia/v3/b/u;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/d;Lcom/google/ads/interactivemedia/v3/b/e;Ljava/util/Map;ZZZZZZZLcom/google/ads/interactivemedia/v3/b/u;Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/b/d;",
            "Lcom/google/ads/interactivemedia/v3/b/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/ads/interactivemedia/v3/b/h",
            "<*>;>;ZZZZZZZ",
            "Lcom/google/ads/interactivemedia/v3/b/u;",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->b:Ljava/lang/ThreadLocal;

    .line 125
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->c:Ljava/util/Map;

    .line 187
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/b/c;

    invoke-direct {v1, p3}, Lcom/google/ads/interactivemedia/v3/b/b/c;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->e:Lcom/google/ads/interactivemedia/v3/b/b/c;

    .line 188
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->f:Lcom/google/ads/interactivemedia/v3/b/b/d;

    .line 189
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/f;->g:Lcom/google/ads/interactivemedia/v3/b/e;

    .line 190
    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/b/f;->h:Z

    .line 191
    iput-boolean p6, p0, Lcom/google/ads/interactivemedia/v3/b/f;->j:Z

    .line 192
    iput-boolean p7, p0, Lcom/google/ads/interactivemedia/v3/b/f;->i:Z

    .line 193
    iput-boolean p8, p0, Lcom/google/ads/interactivemedia/v3/b/f;->k:Z

    .line 194
    iput-boolean p9, p0, Lcom/google/ads/interactivemedia/v3/b/f;->l:Z

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->Y:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/h;->a:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p12

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->D:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->m:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->g:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->i:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->k:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static/range {p11 .. p11}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/u;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v2

    .line 215
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    invoke-static {v3, v4, v2}, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/w;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    .line 217
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Z)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v5

    .line 216
    invoke-static {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/w;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    .line 219
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->b(Z)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v5

    .line 218
    invoke-static {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/w;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->x:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->o:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->q:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->a(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/w;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/b/f;->b(Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->a(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/w;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->s:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->z:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->F:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->H:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const-class v2, Ljava/math/BigDecimal;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->B:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->a(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/w;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-class v2, Ljava/math/BigInteger;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->C:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->a(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/w;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->J:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->L:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->P:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->R:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->W:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->N:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->d:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/c;->a:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->U:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/k;->a:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/j;->a:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->S:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/a;->a:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->b:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/b/a/b;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/f;->e:Lcom/google/ads/interactivemedia/v3/b/b/c;

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/b/b/a/b;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/b/a/g;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/f;->e:Lcom/google/ads/interactivemedia/v3/b/b/c;

    invoke-direct {v2, v3, p5}, Lcom/google/ads/interactivemedia/v3/b/b/a/g;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/c;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/b/a/d;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/f;->e:Lcom/google/ads/interactivemedia/v3/b/b/c;

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/b/b/a/d;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/c;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/f;->m:Lcom/google/ads/interactivemedia/v3/b/b/a/d;

    .line 250
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/f;->m:Lcom/google/ads/interactivemedia/v3/b/b/a/d;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->Z:Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/b/a/i;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/f;->e:Lcom/google/ads/interactivemedia/v3/b/b/c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/f;->m:Lcom/google/ads/interactivemedia/v3/b/b/a/d;

    invoke-direct {v2, v3, p2, p1, v4}, Lcom/google/ads/interactivemedia/v3/b/b/a/i;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/c;Lcom/google/ads/interactivemedia/v3/b/e;Lcom/google/ads/interactivemedia/v3/b/b/d;Lcom/google/ads/interactivemedia/v3/b/b/a/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->d:Ljava/util/List;

    .line 256
    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/b/u;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/u;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/u;->a:Lcom/google/ads/interactivemedia/v3/b/u;

    if-ne p0, v0, :cond_7

    .line 332
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->t:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 334
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/f$4;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/f$4;-><init>()V

    goto :goto_6
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/f$5;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/b/f$5;-><init>(Lcom/google/ads/interactivemedia/v3/b/v;)V

    .line 361
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/f$5;->nullSafe()Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p1, :cond_5

    .line 276
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->v:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 278
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/f$2;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/b/f$2;-><init>(Lcom/google/ads/interactivemedia/v3/b/f;)V

    goto :goto_4
.end method

.method static a(D)V
    .registers 6

    .prologue
    .line 323
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 324
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_2b
    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/b/d/a;)V
    .registers 4

    .prologue
    .line 859
    if-eqz p0, :cond_20

    :try_start_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/b;->j:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-eq v0, v1, :cond_20

    .line 860
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/m;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Lcom/google/ads/interactivemedia/v3/b/d/d; {:try_start_2 .. :try_end_12} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_19

    .line 862
    :catch_12
    move-exception v0

    .line 863
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 864
    :catch_19
    move-exception v0

    .line 865
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/m;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/m;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 867
    :cond_20
    return-void
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/f$6;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/b/f$6;-><init>(Lcom/google/ads/interactivemedia/v3/b/v;)V

    .line 388
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/f$6;->nullSafe()Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    if-eqz p1, :cond_5

    .line 300
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->u:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 302
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/f$3;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/b/f$3;-><init>(Lcom/google/ads/interactivemedia/v3/b/f;)V

    goto :goto_4
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Lcom/google/ads/interactivemedia/v3/b/d/a;
    .registers 4

    .prologue
    .line 728
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/d/a;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;-><init>(Ljava/io/Reader;)V

    .line 729
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->l:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(Z)V

    .line 730
    return-object v0
.end method

.method public a(Ljava/io/Writer;)Lcom/google/ads/interactivemedia/v3/b/d/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->j:Z

    if-eqz v0, :cond_9

    .line 714
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 716
    :cond_9
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/d/c;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;-><init>(Ljava/io/Writer;)V

    .line 717
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->k:Z

    if-eqz v1, :cond_17

    .line 718
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->c(Ljava/lang/String;)V

    .line 720
    :cond_17
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->h:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->d(Z)V

    .line 721
    return-object v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->c:Ljava/util/Map;

    if-nez p1, :cond_f

    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/f;->a:Lcom/google/ads/interactivemedia/v3/b/c/a;

    :goto_6
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/v;

    .line 400
    if-eqz v0, :cond_11

    .line 435
    :cond_e
    :goto_e
    return-object v0

    :cond_f
    move-object v0, p1

    .line 399
    goto :goto_6

    .line 404
    :cond_11
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 405
    const/4 v1, 0x0

    .line 406
    if-nez v0, :cond_89

    .line 407
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 408
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 409
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 413
    :goto_29
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/f$a;

    .line 414
    if-nez v0, :cond_e

    .line 419
    :try_start_31
    new-instance v3, Lcom/google/ads/interactivemedia/v3/b/f$a;

    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/b/f$a;-><init>()V

    .line 420
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/w;

    .line 423
    invoke-interface {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/b/w;->a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_3f

    .line 425
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/b/f$a;->a(Lcom/google/ads/interactivemedia/v3/b/v;)V

    .line 426
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/f;->c:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_31 .. :try_end_59} :catchall_7d

    .line 432
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    if-eqz v1, :cond_e

    .line 435
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_e

    .line 430
    :cond_64
    :try_start_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7d
    .catchall {:try_start_64 .. :try_end_7d} :catchall_7d

    .line 432
    :catchall_7d
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    if-eqz v1, :cond_88

    .line 435
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_88
    throw v0

    :cond_89
    move-object v2, v0

    goto :goto_29
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/w;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/b/w;",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 494
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->m:Lcom/google/ads/interactivemedia/v3/b/b/a/d;

    .line 497
    :cond_a
    const/4 v0, 0x0

    .line 498
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/w;

    .line 499
    if-nez v1, :cond_25

    .line 500
    if-ne v0, p1, :cond_12

    .line 501
    const/4 v0, 0x1

    move v1, v0

    goto :goto_12

    .line 506
    :cond_25
    invoke-interface {v0, p0, p2}, Lcom/google/ads/interactivemedia/v3/b/w;->a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_12

    .line 508
    return-object v0

    .line 511
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 521
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/b/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/b/m;,
            Lcom/google/ads/interactivemedia/v3/b/t;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 879
    .line 880
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->q()Z

    move-result v2

    .line 881
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(Z)V

    .line 883
    :try_start_8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    .line 884
    const/4 v1, 0x0

    .line 885
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object v0

    .line 886
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    .line 887
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/v;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_17} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_17} :catch_2f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_36
    .catchall {:try_start_8 .. :try_end_17} :catchall_2a

    move-result-object v0

    .line 904
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(Z)V

    :goto_1b
    return-object v0

    .line 889
    :catch_1c
    move-exception v0

    .line 894
    if-eqz v1, :cond_24

    .line 895
    const/4 v0, 0x0

    .line 904
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(Z)V

    goto :goto_1b

    .line 897
    :cond_24
    :try_start_24
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2a

    .line 904
    :catchall_2a
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(Z)V

    throw v0

    .line 898
    :catch_2f
    move-exception v0

    .line 899
    :try_start_30
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 900
    :catch_36
    move-exception v0

    .line 902
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_2a
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/b/m;,
            Lcom/google/ads/interactivemedia/v3/b/t;
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/io/Reader;)Lcom/google/ads/interactivemedia/v3/b/d/a;

    move-result-object v0

    .line 852
    invoke-virtual {p0, v0, p2}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 853
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/b/d/a;)V

    .line 854
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/b/t;
        }
    .end annotation

    .prologue
    .line 773
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 774
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/b/b/i;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/b/t;
        }
    .end annotation

    .prologue
    .line 797
    if-nez p1, :cond_4

    .line 798
    const/4 v0, 0x0

    .line 802
    :goto_3
    return-object v0

    .line 800
    :cond_4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0, v0, p2}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/l;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 687
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 688
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/l;Ljava/lang/Appendable;)V

    .line 689
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 580
    if-nez p1, :cond_9

    .line 581
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/n;->a:Lcom/google/ads/interactivemedia/v3/b/n;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/l;)Ljava/lang/String;

    move-result-object v0

    .line 583
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 602
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 603
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 604
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/l;Lcom/google/ads/interactivemedia/v3/b/d/c;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/b/m;
        }
    .end annotation

    .prologue
    .line 738
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/d/c;->g()Z

    move-result v1

    .line 739
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Z)V

    .line 740
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/d/c;->h()Z

    move-result v2

    .line 741
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->i:Z

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->c(Z)V

    .line 742
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/d/c;->i()Z

    move-result v3

    .line 743
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->h:Z

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->d(Z)V

    .line 745
    :try_start_1a
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/j;->a(Lcom/google/ads/interactivemedia/v3/b/l;Lcom/google/ads/interactivemedia/v3/b/d/c;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_27
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2e

    .line 749
    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Z)V

    .line 750
    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/b/d/c;->c(Z)V

    .line 751
    invoke-virtual {p2, v3}, Lcom/google/ads/interactivemedia/v3/b/d/c;->d(Z)V

    .line 753
    return-void

    .line 746
    :catch_27
    move-exception v0

    .line 747
    :try_start_28
    new-instance v4, Lcom/google/ads/interactivemedia/v3/b/m;

    invoke-direct {v4, v0}, Lcom/google/ads/interactivemedia/v3/b/m;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    .line 749
    :catchall_2e
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Z)V

    .line 750
    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/b/d/c;->c(Z)V

    .line 751
    invoke-virtual {p2, v3}, Lcom/google/ads/interactivemedia/v3/b/d/c;->d(Z)V

    throw v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/l;Ljava/lang/Appendable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/b/m;
        }
    .end annotation

    .prologue
    .line 702
    :try_start_0
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/b/b/j;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/io/Writer;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    move-result-object v0

    .line 703
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/l;Lcom/google/ads/interactivemedia/v3/b/d/c;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 707
    return-void

    .line 704
    :catch_c
    move-exception v0

    .line 705
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/m;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/m;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/d/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/b/m;
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    .line 662
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/b/d/c;->g()Z

    move-result v1

    .line 663
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Z)V

    .line 664
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/b/d/c;->h()Z

    move-result v2

    .line 665
    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/b/f;->i:Z

    invoke-virtual {p3, v3}, Lcom/google/ads/interactivemedia/v3/b/d/c;->c(Z)V

    .line 666
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/b/d/c;->i()Z

    move-result v3

    .line 667
    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/b/f;->h:Z

    invoke-virtual {p3, v4}, Lcom/google/ads/interactivemedia/v3/b/d/c;->d(Z)V

    .line 669
    :try_start_22
    invoke-virtual {v0, p3, p1}, Lcom/google/ads/interactivemedia/v3/b/v;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2f
    .catchall {:try_start_22 .. :try_end_25} :catchall_36

    .line 673
    invoke-virtual {p3, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Z)V

    .line 674
    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/b/d/c;->c(Z)V

    .line 675
    invoke-virtual {p3, v3}, Lcom/google/ads/interactivemedia/v3/b/d/c;->d(Z)V

    .line 677
    return-void

    .line 670
    :catch_2f
    move-exception v0

    .line 671
    :try_start_30
    new-instance v4, Lcom/google/ads/interactivemedia/v3/b/m;

    invoke-direct {v4, v0}, Lcom/google/ads/interactivemedia/v3/b/m;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_36

    .line 673
    :catchall_36
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Z)V

    .line 674
    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/b/d/c;->c(Z)V

    .line 675
    invoke-virtual {p3, v3}, Lcom/google/ads/interactivemedia/v3/b/d/c;->d(Z)V

    throw v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/b/m;
        }
    .end annotation

    .prologue
    .line 647
    :try_start_0
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/b/b/j;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/io/Writer;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    move-result-object v0

    .line 648
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/d/c;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 652
    return-void

    .line 649
    :catch_c
    move-exception v0

    .line 650
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/m;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/m;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->h:Z

    .line 983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    .line 985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->e:Lcom/google/ads/interactivemedia/v3/b/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
