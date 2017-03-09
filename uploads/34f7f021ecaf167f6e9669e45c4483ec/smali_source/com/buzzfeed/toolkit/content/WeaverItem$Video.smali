.class public Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
.super Ljava/lang/Object;
.source "WeaverItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/content/WeaverItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;
    }
.end annotation


# instance fields
.field private aspectRatio:Ljava/lang/String;

.field private coverImageUrl:Ljava/lang/String;

.field private duration:J

.field private encodings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAspectRatio()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Video;->aspectRatio:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Video;->coverImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Video;->duration:J

    return-wide v0
.end method

.method public getEncodings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Video$Encoding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Video;->encodings:Ljava/util/List;

    return-object v0
.end method
