.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;
.super Ljava/lang/Object;
.source "SubBuzz.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation


# instance fields
.field height:I

.field url:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 445
    iget v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 453
    iget v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;->width:I

    return v0
.end method
