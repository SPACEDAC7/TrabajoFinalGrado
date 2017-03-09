.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;
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
    name = "Format"
.end annotation


# instance fields
.field pageType:Ljava/lang/String;

.field pageWidth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;->pageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPageWidth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;->pageWidth:Ljava/lang/String;

    return-object v0
.end method
