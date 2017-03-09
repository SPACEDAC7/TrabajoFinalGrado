.class public Lcom/buzzfeed/toolkit/content/WeaverItem$Stats;
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
    name = "Stats"
.end annotation


# instance fields
.field private impressions:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImpressions()J
    .registers 3

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Stats;->impressions:J

    return-wide v0
.end method
