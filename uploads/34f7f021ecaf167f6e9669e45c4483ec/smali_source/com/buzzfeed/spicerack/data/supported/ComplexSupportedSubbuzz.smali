.class public abstract Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;
.super Ljava/lang/Object;
.source "ComplexSupportedSubbuzz.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getForm()Ljava/lang/String;
.end method

.method abstract getSpicyViewState(Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;)Lcom/buzzfeed/spicerack/data/constant/SpicyViewState;
.end method

.method matchesForm(Ljava/lang/String;)Z
    .registers 3
    .param p1, "form"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/data/supported/ComplexSupportedSubbuzz;->getForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
