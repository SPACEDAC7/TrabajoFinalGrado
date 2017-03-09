.class public Lcom/buzzfeed/toolkit/content/WeaverEmbed;
.super Ljava/lang/Object;
.source "WeaverEmbed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;
    }
.end annotation


# instance fields
.field private shows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverEmbed;->shows:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getShows()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverEmbed;->shows:Ljava/util/List;

    return-object v0
.end method

.method public hasShows()Z
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverEmbed;->shows:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverEmbed;->shows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
