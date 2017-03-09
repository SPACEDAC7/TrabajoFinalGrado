.class public Lcom/buzzfeed/spicerack/data/supported/VideoComplexSupportedSubbuzz;
.super Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;
.source "VideoComplexSupportedSubbuzz.java"


# static fields
.field private static final FORM:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->VIDEO:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/data/supported/VideoComplexSupportedSubbuzz;->FORM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/spicerack/data/supported/VideoComplexSupportedSubbuzz;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public getForm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    sget-object v0, Lcom/buzzfeed/spicerack/data/supported/VideoComplexSupportedSubbuzz;->FORM:Ljava/lang/String;

    return-object v0
.end method

.method public getSpicyViewState(Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .registers 3
    .param p1, "subBuzz"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/supported/VideoComplexSupportedSubbuzz;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/buzzfeed/spicerack/ui/utils/SpicyUtil;->isYoutubeSubbuzzAndYoutubeAvailable(Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Native:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    goto :goto_a
.end method
