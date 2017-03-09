.class public Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
.super Ljava/lang/Object;
.source "CalligraphyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final INVALID_ATTR_ID:I = -0x1


# instance fields
.field private attrId:I

.field private customViewCreation:Z

.field private fontAssetPath:Ljava/lang/String;

.field private isFontSet:Z

.field private mStyleClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reflection:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_21

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->reflection:Z

    .line 146
    iput-boolean v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->customViewCreation:Z

    .line 150
    sget v0, Luk/co/chrisjenx/calligraphy/R$attr;->fontPath:I

    iput v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->attrId:I

    .line 154
    iput-boolean v2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->isFontSet:Z

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->mStyleClassMap:Ljava/util/Map;

    return-void

    :cond_21
    move v0, v2

    .line 142
    goto :goto_c
.end method

.method static synthetic access$000(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z
    .registers 2
    .param p0, "x0"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    .prologue
    .line 134
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->isFontSet:Z

    return v0
.end method

.method static synthetic access$100(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    .prologue
    .line 134
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)I
    .registers 2
    .param p0, "x0"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    .prologue
    .line 134
    iget v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->attrId:I

    return v0
.end method

.method static synthetic access$300(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z
    .registers 2
    .param p0, "x0"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    .prologue
    .line 134
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->reflection:Z

    return v0
.end method

.method static synthetic access$400(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z
    .registers 2
    .param p0, "x0"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    .prologue
    .line 134
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->customViewCreation:Z

    return v0
.end method

.method static synthetic access$500(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    .prologue
    .line 134
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->mStyleClassMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addCustomStyle(Ljava/lang/Class;I)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .registers 5
    .param p2, "styleResourceAttribute"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;I)",
            "Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/widget/TextView;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 257
    :cond_4
    :goto_4
    return-object p0

    .line 256
    :cond_5
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->mStyleClassMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public build()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->isFontSet:Z

    .line 262
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    invoke-direct {v0, p0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)V

    return-object v0

    .line 261
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public disableCustomViewInflation()Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->customViewCreation:Z

    .line 235
    return-object p0
.end method

.method public disablePrivateFactoryInjection()Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->reflection:Z

    .line 207
    return-object p0
.end method

.method public setDefaultFontPath(Ljava/lang/String;)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .registers 3
    .param p1, "defaultFontAssetPath"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->isFontSet:Z

    .line 184
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;

    .line 185
    return-object p0

    .line 183
    :cond_c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setFontAttrId(I)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .registers 3
    .param p1, "fontAssetAttrId"    # I

    .prologue
    const/4 v0, -0x1

    .line 171
    if-eq p1, v0, :cond_6

    .end local p1    # "fontAssetAttrId":I
    :goto_3
    iput p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->attrId:I

    .line 172
    return-object p0

    .restart local p1    # "fontAssetAttrId":I
    :cond_6
    move p1, v0

    .line 171
    goto :goto_3
.end method
