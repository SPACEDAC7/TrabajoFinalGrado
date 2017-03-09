.class public final Lcom/buzzfeed/toolkit/networking/NetworkService;
.super Ljava/lang/Object;
.source "NetworkService.java"


# static fields
.field private static sContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static sEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureInitialization()V
    .registers 2

    .prologue
    .line 81
    sget-object v0, Lcom/buzzfeed/toolkit/networking/NetworkService;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/buzzfeed/toolkit/networking/NetworkService;->sEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    if-nez v0, :cond_10

    .line 82
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NetworkService.initialize needs to be called before using NetworkService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_10
    return-void
.end method

.method public static getAdService()Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;
    .registers 2

    .prologue
    .line 56
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->ensureInitialization()V

    .line 57
    new-instance v0, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkService;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getAuthService()Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;
    .registers 3

    .prologue
    .line 51
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->ensureInitialization()V

    .line 52
    new-instance v0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkService;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/buzzfeed/toolkit/networking/NetworkService;->sEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    return-object v0
.end method

.method public static getBookmarkService()Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper;
    .registers 3

    .prologue
    .line 71
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->ensureInitialization()V

    .line 72
    new-instance v0, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper;

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkService;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/buzzfeed/toolkit/networking/NetworkService;->sEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/helpers/BookmarkServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    return-object v0
.end method

.method public static getBuzzService()Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper;
    .registers 2

    .prologue
    .line 34
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->ensureInitialization()V

    .line 35
    new-instance v0, Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper;

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkService;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/networking/helpers/BuzzServiceHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getCommentService()Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;
    .registers 3

    .prologue
    .line 61
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->ensureInitialization()V

    .line 62
    new-instance v0, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkService;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/buzzfeed/toolkit/networking/NetworkService;->sEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    return-object v0
.end method

.method public static getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->ensureInitialization()V

    .line 77
    sget-object v0, Lcom/buzzfeed/toolkit/networking/NetworkService;->sEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    return-object v0
.end method

.method public static getLegacyFeedService()Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;
    .registers 3

    .prologue
    .line 43
    new-instance v0, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkService;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/buzzfeed/toolkit/networking/NetworkService;->sEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyFeedServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    return-object v0
.end method

.method public static getLegacyMenuService()Lcom/buzzfeed/toolkit/networking/helpers/LegacyMenuServiceHelper;
    .registers 3

    .prologue
    .line 47
    new-instance v0, Lcom/buzzfeed/toolkit/networking/helpers/LegacyMenuServiceHelper;

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkService;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/buzzfeed/toolkit/networking/NetworkService;->sEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/helpers/LegacyMenuServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    return-object v0
.end method

.method public static getReactionsService()Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;
    .registers 3

    .prologue
    .line 66
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->ensureInitialization()V

    .line 67
    new-instance v0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkService;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/buzzfeed/toolkit/networking/NetworkService;->sEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    return-object v0
.end method

.method public static getWeaverService()Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;
    .registers 3

    .prologue
    .line 39
    new-instance v0, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;

    sget-object v1, Lcom/buzzfeed/toolkit/networking/NetworkService;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/buzzfeed/toolkit/networking/NetworkService;->sEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper;-><init>(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "environment"    # Lcom/buzzfeed/toolkit/networking/Environment;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context cant be null"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/buzzfeed/toolkit/networking/NetworkService;->sContext:Landroid/content/Context;

    .line 30
    const-string v0, "Environment cant be null"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/networking/Environment;

    sput-object v0, Lcom/buzzfeed/toolkit/networking/NetworkService;->sEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 31
    return-void
.end method
