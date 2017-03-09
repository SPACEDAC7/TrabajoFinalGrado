.class public Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;
.super Ljava/lang/Object;
.source "ShareBarContent.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/Content;


# instance fields
.field private mLocation:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

.field private mShareItemTypes:[Lcom/buzzfeed/toolkit/util/ShareItemType;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;[Lcom/buzzfeed/toolkit/util/ShareItemType;)V
    .registers 3
    .param p1, "location"    # Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;
    .param p2, "itemTypes"    # [Lcom/buzzfeed/toolkit/util/ShareItemType;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->mLocation:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    .line 18
    iput-object p2, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->mShareItemTypes:[Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 51
    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    .line 58
    :cond_4
    :goto_4
    return v1

    .line 52
    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_4

    move-object v0, p1

    .line 54
    check-cast v0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;

    .line 56
    .local v0, "that":Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;
    iget-object v2, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->mLocation:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    iget-object v3, v0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->mLocation:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    if-ne v2, v3, :cond_4

    .line 58
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->mShareItemTypes:[Lcom/buzzfeed/toolkit/util/ShareItemType;

    iget-object v2, v0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->mShareItemTypes:[Lcom/buzzfeed/toolkit/util/ShareItemType;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public getFlowId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->mLocation:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    return-object v0
.end method

.method public getShareItemTypes()[Lcom/buzzfeed/toolkit/util/ShareItemType;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->mShareItemTypes:[Lcom/buzzfeed/toolkit/util/ShareItemType;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->mLocation:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->mLocation:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->hashCode()I

    move-result v0

    .line 65
    .local v0, "result":I
    :goto_a
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->mShareItemTypes:[Lcom/buzzfeed/toolkit/util/ShareItemType;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 66
    return v0

    .line 64
    .end local v0    # "result":I
    :cond_15
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "contentFactory"    # Lcom/buzzfeed/toolkit/content/ContentFactory;

    .prologue
    .line 24
    return-void
.end method
