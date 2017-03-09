.class public Lcom/google/ads/interactivemedia/v3/impl/b/e;
.super Landroid/widget/RelativeLayout;
.source "IMASDK"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/ads/interactivemedia/v3/impl/ab$e;
.implements Lcom/google/ads/interactivemedia/v3/impl/af$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/b/e$b;,
        Lcom/google/ads/interactivemedia/v3/impl/b/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/impl/b/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:F

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/ab;

.field private f:Z

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Lcom/google/ads/interactivemedia/v3/impl/b/e$b;

.field private j:Lcom/google/ads/interactivemedia/v3/impl/b/b;

.field private k:Lcom/google/ads/interactivemedia/v3/impl/b/d;

.field private l:Lcom/google/ads/interactivemedia/v3/impl/b/a;

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/b/d;Lcom/google/ads/interactivemedia/v3/impl/ab;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/b/e;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/b/d;Lcom/google/ads/interactivemedia/v3/impl/ab;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/b/a;Lcom/google/ads/interactivemedia/v3/impl/b/b;)V

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/b/d;Lcom/google/ads/interactivemedia/v3/impl/ab;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/b/a;Lcom/google/ads/interactivemedia/v3/impl/b/b;)V
    .registers 8

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->b:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->f:Z

    .line 83
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->e:Lcom/google/ads/interactivemedia/v3/impl/ab;

    .line 84
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->d:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->k:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    .line 86
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->l:Lcom/google/ads/interactivemedia/v3/impl/b/a;

    .line 87
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->j:Lcom/google/ads/interactivemedia/v3/impl/b/b;

    .line 88
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->c:F

    .line 90
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->d(Landroid/content/Context;)V

    .line 91
    iget-boolean v0, p2, Lcom/google/ads/interactivemedia/v3/impl/b/d;->b:Z

    if-eqz v0, :cond_2d

    .line 92
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->c(Landroid/content/Context;)V

    .line 94
    :cond_2d
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->f:Z

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a(Z)V

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/b/e;)Ljava/util/List;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->f:Z

    if-nez v0, :cond_a

    .line 174
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->l:Lcom/google/ads/interactivemedia/v3/impl/b/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/b/a;->a(Ljava/lang/String;)V

    .line 180
    :goto_9
    return-void

    .line 175
    :cond_a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 176
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->l:Lcom/google/ads/interactivemedia/v3/impl/b/a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->h:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00bb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/b/a;->a(Ljava/lang/String;)V

    goto :goto_9

    .line 178
    :cond_4b
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->l:Lcom/google/ads/interactivemedia/v3/impl/b/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/b/a;->a(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->l:Lcom/google/ads/interactivemedia/v3/impl/b/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/b/a;->b(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a(Landroid/content/Context;)V

    .line 131
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a:Landroid/widget/FrameLayout;

    .line 132
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->j:Lcom/google/ads/interactivemedia/v3/impl/b/b;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->k:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->r:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->c:F

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/b/c;->a(IF)I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v0, v4, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 138
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 143
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->k:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/impl/b/d;->s:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->c:F

    .line 146
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/b/c;->a(IF)I

    move-result v1

    .line 145
    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 147
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->addView(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->b(Landroid/content/Context;)V

    .line 158
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->l:Lcom/google/ads/interactivemedia/v3/impl/b/a;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->l:Lcom/google/ads/interactivemedia/v3/impl/b/a;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/b/e$1;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/b/e$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/b/e;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/b/a;->a(Lcom/google/ads/interactivemedia/v3/impl/b/a$a;)V

    .line 170
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 1

    .prologue
    .line 98
    return-object p0
.end method

.method protected a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 272
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/b/b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->k:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/b/b;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/b/d;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->j:Lcom/google/ads/interactivemedia/v3/impl/b/b;

    .line 273
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 199
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->m:I

    .line 200
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->n:I

    .line 201
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->k:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->m:Z

    if-eqz v0, :cond_37

    .line 203
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->k:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->b(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->e:Lcom/google/ads/interactivemedia/v3/impl/ab;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->i18n:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->learnMore:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 206
    :cond_37
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 207
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/b/e$b;->b:Lcom/google/ads/interactivemedia/v3/impl/b/e$b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->i:Lcom/google/ads/interactivemedia/v3/impl/b/e$b;

    .line 208
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 209
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 210
    const-string v1, "seconds"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->e:Lcom/google/ads/interactivemedia/v3/impl/ab;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->i18n:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->preSkipButton:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 219
    :cond_66
    :goto_66
    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->setVisibility(I)V

    .line 220
    return-void

    .line 214
    :cond_6a
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/b/e$b;->a:Lcom/google/ads/interactivemedia/v3/impl/b/e$b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->i:Lcom/google/ads/interactivemedia/v3/impl/b/e$b;

    .line 215
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_66

    .line 216
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_66
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 224
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_d

    .line 252
    :cond_c
    :goto_c
    return-void

    .line 227
    :cond_d
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v2

    sub-float v2, v0, v2

    .line 228
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->g:F

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_94

    move v0, v1

    .line 229
    :goto_28
    if-eqz v0, :cond_6f

    .line 230
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 231
    const-string v4, "minutes"

    float-to-int v5, v2

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v4, "seconds"

    float-to-int v5, v2

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v4, "adPosition"

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->m:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v4, "totalAds"

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->n:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->e:Lcom/google/ads/interactivemedia/v3/impl/ab;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->i18n:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->adRemainingTime:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 238
    :cond_6f
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->g:F

    .line 239
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->i:Lcom/google/ads/interactivemedia/v3/impl/b/e$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/b/e$b;->b:Lcom/google/ads/interactivemedia/v3/impl/b/e$b;

    if-ne v2, v3, :cond_c

    .line 242
    const/high16 v2, 0x40a00000

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v3

    sub-float/2addr v2, v3

    .line 243
    cmpg-float v3, v2, v9

    if-gtz v3, :cond_96

    .line 244
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->e:Lcom/google/ads/interactivemedia/v3/impl/ab;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->i18n:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->skipButton:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    goto/16 :goto_c

    .line 228
    :cond_94
    const/4 v0, 0x0

    goto :goto_28

    .line 246
    :cond_96
    if-eqz v0, :cond_c

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 248
    const-string v1, "seconds"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->e:Lcom/google/ads/interactivemedia/v3/impl/ab;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->i18n:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->preSkipButton:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    goto/16 :goto_c
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 107
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/b/e$2;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 127
    :cond_b
    :goto_b
    return-void

    .line 109
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 112
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->b(Ljava/lang/String;)V

    goto :goto_b

    .line 115
    :pswitch_14
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->j:Lcom/google/ads/interactivemedia/v3/impl/b/b;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/b/b;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 118
    :pswitch_1a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->j:Lcom/google/ads/interactivemedia/v3/impl/b/b;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/b/b;->a(Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/b/e$b;->c:Lcom/google/ads/interactivemedia/v3/impl/b/e$b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->i:Lcom/google/ads/interactivemedia/v3/impl/b/e$b;

    .line 120
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/b/e$a;

    .line 121
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/b/e$a;->b()V

    goto :goto_29

    .line 107
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/b/e$a;)V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->f:Z

    .line 256
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 259
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->setVisibility(I)V

    .line 260
    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 276
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/b/a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->k:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/b/a;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/b/d;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->l:Lcom/google/ads/interactivemedia/v3/impl/b/a;

    .line 277
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->i:Lcom/google/ads/interactivemedia/v3/impl/b/e$b;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/b/e$b;->c:Lcom/google/ads/interactivemedia/v3/impl/b/e$b;

    if-ne v0, v1, :cond_20

    .line 265
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/b/e$a;

    .line 266
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/b/e$a;->a()V

    goto :goto_10

    .line 269
    :cond_20
    return-void
.end method
