.class public Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
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
    name = "Thumbnail"
.end annotation


# instance fields
.field private sizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->sizes:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->sizes:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getSizes()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->sizes:Ljava/util/HashMap;

    return-object v0
.end method
