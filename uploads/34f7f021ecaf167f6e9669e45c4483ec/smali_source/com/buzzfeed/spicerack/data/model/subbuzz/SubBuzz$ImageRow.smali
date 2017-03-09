.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow;
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
    name = "ImageRow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection;
    }
.end annotation


# instance fields
.field cells:I

.field content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection;",
            ">;"
        }
    .end annotation
.end field

.field heightName:Ljava/lang/String;

.field layout:Ljava/lang/String;

.field stacked:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCells()I
    .registers 2

    .prologue
    .line 426
    iget v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow;->cells:I

    return v0
.end method

.method public getContent()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow$ImageCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow;->content:Ljava/util/List;

    return-object v0
.end method

.method public getHeightName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow;->heightName:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()Ljava/lang/String;
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow;->layout:Ljava/lang/String;

    return-object v0
.end method

.method public isStacked()Z
    .registers 2

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow;->stacked:Z

    return v0
.end method
