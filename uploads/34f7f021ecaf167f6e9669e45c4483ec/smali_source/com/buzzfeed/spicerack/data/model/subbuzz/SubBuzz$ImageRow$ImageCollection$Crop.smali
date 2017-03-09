.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection$Crop;
.super Ljava/lang/Object;
.source "SubBuzz.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Crop"
.end annotation


# instance fields
.field cropHeight:Ljava/lang/String;

.field cropWidth:Ljava/lang/String;

.field cropX:Ljava/lang/String;

.field cropY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCropHeight()Ljava/lang/String;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection$Crop;->cropHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getCropWidth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection$Crop;->cropWidth:Ljava/lang/String;

    return-object v0
.end method

.method public getCropX()Ljava/lang/String;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection$Crop;->cropX:Ljava/lang/String;

    return-object v0
.end method

.method public getCropY()Ljava/lang/String;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection$Crop;->cropY:Ljava/lang/String;

    return-object v0
.end method
