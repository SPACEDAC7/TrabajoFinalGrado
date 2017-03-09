.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;
.super Ljava/lang/Object;
.source "SubBuzz.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Images"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;
    }
.end annotation


# instance fields
.field gifPreview:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

.field mobile:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

.field mp4:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

.field original:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

.field standard:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

.field wide:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGifPreview()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;->gifPreview:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    return-object v0
.end method

.method public getMobile()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;->mobile:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    return-object v0
.end method

.method public getMp4()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;->mp4:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    return-object v0
.end method

.method public getOriginal()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;->original:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    return-object v0
.end method

.method public getStandard()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;->standard:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    return-object v0
.end method

.method public getWide()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;
    .registers 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;->wide:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    return-object v0
.end method
