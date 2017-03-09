.class public Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
.super Ljava/lang/Object;
.source "CalligraphyConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLES:Ljava/util/Map;
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

.field private static sInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;


# instance fields
.field private final mAttrId:I

.field private final mClassStyleAttributeMap:Ljava/util/Map;
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

.field private final mCustomViewCreation:Z

.field private final mFontPath:Ljava/lang/String;

.field private final mIsFontSet:Z

.field private final mReflection:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const v3, 0x101006b

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    .line 32
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/TextView;

    const v2, 0x1010084

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/Button;

    const v2, 0x1010048

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/EditText;

    const v2, 0x101006e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/AutoCompleteTextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x101006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x101007e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/ToggleButton;

    const v2, 0x101004b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method protected constructor <init>(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)V
    .registers 4
    .param p1, "builder"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    # getter for: Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->isFontSet:Z
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->access$000(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mIsFontSet:Z

    .line 92
    # getter for: Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->access$100(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mFontPath:Ljava/lang/String;

    .line 93
    # getter for: Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->attrId:I
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->access$200(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)I

    move-result v1

    iput v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mAttrId:I

    .line 94
    # getter for: Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->reflection:Z
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->access$300(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mReflection:Z

    .line 95
    # getter for: Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->customViewCreation:Z
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->access$400(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mCustomViewCreation:Z

    .line 96
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 97
    .local v0, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Landroid/widget/TextView;>;Ljava/lang/Integer;>;"
    # getter for: Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->mStyleClassMap:Ljava/util/Map;
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->access$500(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mClassStyleAttributeMap:Ljava/util/Map;

    .line 99
    return-void
.end method

.method public static get()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .registers 2

    .prologue
    .line 60
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->sInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    if-nez v0, :cond_10

    .line 61
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    new-instance v1, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    invoke-direct {v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;-><init>()V

    invoke-direct {v0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)V

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->sInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    .line 62
    :cond_10
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->sInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    return-object v0
.end method

.method public static initDefault(Luk/co/chrisjenx/calligraphy/CalligraphyConfig;)V
    .registers 1
    .param p0, "calligraphyConfig"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    .prologue
    .line 52
    sput-object p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->sInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    .line 53
    return-void
.end method


# virtual methods
.method public getAttrId()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mAttrId:I

    return v0
.end method

.method getClassStyles()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .prologue
    .line 124
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mClassStyleAttributeMap:Ljava/util/Map;

    return-object v0
.end method

.method public getFontPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mFontPath:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomViewCreation()Z
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mCustomViewCreation:Z

    return v0
.end method

.method isFontSet()Z
    .registers 2

    .prologue
    .line 112
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mIsFontSet:Z

    return v0
.end method

.method public isReflection()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mReflection:Z

    return v0
.end method
