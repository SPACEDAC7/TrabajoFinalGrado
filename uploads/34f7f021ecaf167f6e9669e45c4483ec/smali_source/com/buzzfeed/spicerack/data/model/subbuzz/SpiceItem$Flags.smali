.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;
.super Ljava/lang/Object;
.source "SpiceItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flags"
.end annotation


# instance fields
.field ad:Ljava/lang/String;

.field brandSafe:Ljava/lang/String;

.field commentsEnabled:Z

.field mobileSafe:Ljava/lang/String;

.field nsfw:Ljava/lang/String;

.field partner:Ljava/lang/String;

.field raw:Ljava/lang/String;

.field reactionsEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandSafe()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;->brandSafe:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsEnabled()Z
    .registers 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;->commentsEnabled:Z

    return v0
.end method

.method public getMobileSafe()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;->mobileSafe:Ljava/lang/String;

    return-object v0
.end method

.method public getNsfw()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;->nsfw:Ljava/lang/String;

    return-object v0
.end method

.method public getPartner()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;->partner:Ljava/lang/String;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getReactionsEnabled()Z
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;->reactionsEnabled:Z

    return v0
.end method
