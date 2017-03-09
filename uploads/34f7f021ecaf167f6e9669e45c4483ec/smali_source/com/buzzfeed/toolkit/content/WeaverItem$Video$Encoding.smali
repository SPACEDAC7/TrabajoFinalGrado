.class public Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;
.super Ljava/lang/Object;
.source "WeaverItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoding"
.end annotation


# instance fields
.field encoding:Ljava/lang/String;

.field height:I

.field url:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;->width:I

    return v0
.end method
