.class public Lcom/buzzfeed/analytics/Analytics$Configuration;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;
    }
.end annotation


# instance fields
.field private final mAppName:Ljava/lang/String;

.field private final mBuildEnvironment:Ljava/lang/String;

.field private final mEdition:Ljava/lang/String;

.field private final mIsProductionBuild:Z

.field private final mIsPushEnabled:Z

.field private final mLoginStatusProvider:Lcom/buzzfeed/analytics/provider/LoginStatusProvider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    # getter for: Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->loginStatusProvider:Lcom/buzzfeed/analytics/provider/LoginStatusProvider;
    invoke-static {p1}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->access$100(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)Lcom/buzzfeed/analytics/provider/LoginStatusProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration;->mLoginStatusProvider:Lcom/buzzfeed/analytics/provider/LoginStatusProvider;

    .line 139
    # getter for: Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->edition:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->access$200(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration;->mEdition:Ljava/lang/String;

    .line 140
    # getter for: Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->buildEnvironment:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->access$300(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration;->mBuildEnvironment:Ljava/lang/String;

    .line 141
    # getter for: Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->isProductionBuild:Z
    invoke-static {p1}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->access$400(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration;->mIsProductionBuild:Z

    .line 142
    # getter for: Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->isPushEnabled:Z
    invoke-static {p1}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->access$500(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration;->mIsPushEnabled:Z

    .line 143
    # getter for: Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->appName:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->access$600(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration;->mAppName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;Lcom/buzzfeed/analytics/Analytics$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;
    .param p2, "x1"    # Lcom/buzzfeed/analytics/Analytics$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/buzzfeed/analytics/Analytics$Configuration;-><init>(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildEnvironment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration;->mBuildEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getEdition()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration;->mEdition:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginStatusProvider()Lcom/buzzfeed/analytics/provider/LoginStatusProvider;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration;->mLoginStatusProvider:Lcom/buzzfeed/analytics/provider/LoginStatusProvider;

    return-object v0
.end method

.method public isProductionBuild()Z
    .registers 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration;->mIsProductionBuild:Z

    return v0
.end method

.method public isPushEnabled()Z
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration;->mIsPushEnabled:Z

    return v0
.end method
