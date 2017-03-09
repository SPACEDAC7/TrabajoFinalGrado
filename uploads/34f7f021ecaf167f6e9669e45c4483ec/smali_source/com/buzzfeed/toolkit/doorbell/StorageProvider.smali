.class public Lcom/buzzfeed/toolkit/doorbell/StorageProvider;
.super Ljava/lang/Object;
.source "StorageProvider.java"


# instance fields
.field private mIdentifier:Ljava/lang/String;

.field private mStorageProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/doorbell/PoundStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->mStorageProviders:Ljava/util/List;

    .line 19
    iget-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->mStorageProviders:Ljava/util/List;

    new-instance v1, Lcom/buzzfeed/toolkit/doorbell/PreferenceStorage;

    invoke-direct {v1, p1, p2}, Lcom/buzzfeed/toolkit/doorbell/PreferenceStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method private getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->mStorageProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 35
    iget-object v1, p0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->mStorageProviders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/doorbell/PoundStorage;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/doorbell/PoundStorage;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 36
    iget-object v1, p0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->mStorageProviders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/doorbell/PoundStorage;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/doorbell/PoundStorage;->getText()Ljava/lang/String;

    move-result-object v1

    .line 40
    :goto_23
    return-object v1

    .line 34
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :cond_27
    const/4 v1, 0x0

    goto :goto_23
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->mIdentifier:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 27
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->mIdentifier:Ljava/lang/String;

    .line 30
    :cond_a
    iget-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public saveText(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->mStorageProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 45
    iget-object v1, p0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->mStorageProviders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/doorbell/PoundStorage;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/doorbell/PoundStorage;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 46
    iget-object v1, p0, Lcom/buzzfeed/toolkit/doorbell/StorageProvider;->mStorageProviders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/doorbell/PoundStorage;

    invoke-interface {v1, p1}, Lcom/buzzfeed/toolkit/doorbell/PoundStorage;->saveText(Ljava/lang/String;)V

    .line 50
    :cond_22
    return-void

    .line 44
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
