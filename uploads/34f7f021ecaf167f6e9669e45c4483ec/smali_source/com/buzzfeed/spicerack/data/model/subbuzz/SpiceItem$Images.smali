.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;
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
    name = "Images"
.end annotation


# instance fields
.field big:Ljava/lang/String;

.field dblbig:Ljava/lang/String;

.field dblwide:Ljava/lang/String;

.field small:Ljava/lang/String;

.field standard:Ljava/lang/String;

.field wide:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBig()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->big:Ljava/lang/String;

    return-object v0
.end method

.method public getDblbig()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->dblbig:Ljava/lang/String;

    return-object v0
.end method

.method public getDblwide()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->dblwide:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->small:Ljava/lang/String;

    return-object v0
.end method

.method public getStandard()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->standard:Ljava/lang/String;

    return-object v0
.end method

.method public getWide()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->wide:Ljava/lang/String;

    return-object v0
.end method
