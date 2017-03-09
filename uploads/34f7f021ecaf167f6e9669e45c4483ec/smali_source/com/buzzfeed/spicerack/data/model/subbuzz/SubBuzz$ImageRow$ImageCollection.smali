.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection;
.super Ljava/lang/Object;
.source "SubBuzz.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection$Crop;
    }
.end annotation


# instance fields
.field attribution:Ljava/lang/String;

.field crop:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection$Crop;

.field description:Ljava/lang/String;

.field images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribution()Ljava/lang/String;
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection;->attribution:Ljava/lang/String;

    return-object v0
.end method

.method public getCrop()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection$Crop;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection;->crop:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection$Crop;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;

    return-object v0
.end method
