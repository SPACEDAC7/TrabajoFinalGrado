.class public Lcom/buzzfeed/spicerack/data/supported/EmbedComplexSupportedSubbuzz;
.super Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;
.source "EmbedComplexSupportedSubbuzz.java"


# static fields
.field private static final FORM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->EMBED:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/data/supported/EmbedComplexSupportedSubbuzz;->FORM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;-><init>()V

    return-void
.end method


# virtual methods
.method public getForm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    sget-object v0, Lcom/buzzfeed/spicerack/data/supported/EmbedComplexSupportedSubbuzz;->FORM:Ljava/lang/String;

    return-object v0
.end method

.method public getSpicyViewState(Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .registers 3
    .param p1, "subBuzz"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->isInstagramEmbed()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->PartiallyNative:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    goto :goto_8
.end method
