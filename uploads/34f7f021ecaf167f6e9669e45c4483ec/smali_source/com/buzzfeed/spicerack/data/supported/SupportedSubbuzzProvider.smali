.class public Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;
.super Ljava/lang/Object;
.source "SupportedSubbuzzProvider.java"


# static fields
.field private static final SIMPLE_SUPPORTED_FORMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComplexSupportedForms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    const-class v0, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->TAG:Ljava/lang/String;

    .line 20
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->HEADER:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 21
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->LOADING:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 22
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->FALLBACK:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 23
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->EMPTY:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 24
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->SHARE_BAR:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 25
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->CUSTOM_BOTTOM:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 26
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->TEXT:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 27
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->IMAGE_ARTICLE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 28
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->IMAGE_LIST:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 29
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->LINK:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 30
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->CORRECTION:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 31
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->UPDATE:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 32
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->TWEET:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    .line 33
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->SIMPLE_SUPPORTED_FORMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->mComplexSupportedForms:Ljava/util/List;

    .line 38
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->mComplexSupportedForms:Ljava/util/List;

    new-instance v1, Lcom/buzzfeed/spicerack/data/supported/VideoComplexSupportedSubbuzz;

    invoke-direct {v1, p1}, Lcom/buzzfeed/spicerack/data/supported/VideoComplexSupportedSubbuzz;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->mComplexSupportedForms:Ljava/util/List;

    new-instance v1, Lcom/buzzfeed/spicerack/data/supported/EmbedComplexSupportedSubbuzz;

    invoke-direct {v1}, Lcom/buzzfeed/spicerack/data/supported/EmbedComplexSupportedSubbuzz;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method private getComplexForms()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "forms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->mComplexSupportedForms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;

    .line 99
    .local v1, "supportedForm":Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;
    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;->getForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 102
    .end local v1    # "supportedForm":Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;
    :cond_1f
    return-object v0
.end method

.method private getViewStateForSubbuzz(Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .registers 5
    .param p1, "subBuzz"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->isValid()Z

    move-result v1

    if-nez v1, :cond_9

    .line 79
    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    .line 93
    :goto_8
    return-object v1

    .line 82
    :cond_9
    sget-object v1, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->SIMPLE_SUPPORTED_FORMS:Ljava/util/List;

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 83
    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Native:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    goto :goto_8

    .line 86
    :cond_18
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->mComplexSupportedForms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;

    .line 87
    .local v0, "supportedForm":Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;->matchesForm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 88
    invoke-virtual {v0, p1}, Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;->getSpicyViewState(Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    move-result-object v1

    goto :goto_8

    .line 93
    .end local v0    # "supportedForm":Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;
    :cond_39
    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    goto :goto_8
.end method


# virtual methods
.method public getSpicyViewState(Ljava/util/List;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;",
            ">;)",
            "Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "subBuzzs":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;>;"
    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Native:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    .line 61
    .local v1, "state":Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;

    .line 62
    .local v2, "subBuzz":Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
    invoke-direct {p0, v2}, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->getViewStateForSubbuzz(Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    move-result-object v0

    .line 63
    .local v0, "current":Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    sget-object v4, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spicy view type for form: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getForm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v4, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->Fallback:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    if-ne v0, v4, :cond_45

    .line 74
    .end local v0    # "current":Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .end local v2    # "subBuzz":Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
    :goto_44
    return-object v0

    .line 68
    .restart local v0    # "current":Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .restart local v2    # "subBuzz":Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
    :cond_45
    sget-object v4, Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;->PartiallyNative:Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;

    if-ne v0, v4, :cond_6

    .line 70
    move-object v1, v0

    goto :goto_6

    .end local v0    # "current":Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
    .end local v2    # "subBuzz":Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
    :cond_4b
    move-object v0, v1

    .line 74
    goto :goto_44
.end method

.method public getUnsupportedSubbuzzs(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)Ljava/util/List;
    .registers 8
    .param p1, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v2, "unsupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getSubBuzzes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getSubBuzzes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_16

    .line 54
    :cond_15
    return-object v2

    .line 48
    :cond_16
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->getComplexForms()Ljava/util/List;

    move-result-object v0

    .line 49
    .local v0, "complexForms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getSubBuzzes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;

    .line 50
    .local v1, "subBuzz":Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
    sget-object v4, Lcom/buzzfeed/spicerack/data/supported/SupportedSubbuzzProvider;->SIMPLE_SUPPORTED_FORMS:Ljava/util/List;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getForm()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getForm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 51
    :cond_44
    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getForm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method
