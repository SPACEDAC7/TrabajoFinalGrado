.class public Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/analytics/Analytics$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final appName:Ljava/lang/String;

.field private buildEnvironment:Ljava/lang/String;

.field private edition:Ljava/lang/String;

.field private isProductionBuild:Z

.field private isPushEnabled:Z

.field private loginStatusProvider:Lcom/buzzfeed/analytics/provider/LoginStatusProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->loginStatusProvider:Lcom/buzzfeed/analytics/provider/LoginStatusProvider;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->edition:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->buildEnvironment:Ljava/lang/String;

    .line 100
    iput-boolean v1, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->isProductionBuild:Z

    .line 101
    iput-boolean v1, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->isPushEnabled:Z

    .line 104
    iput-object p1, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->appName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)Lcom/buzzfeed/analytics/provider/LoginStatusProvider;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->loginStatusProvider:Lcom/buzzfeed/analytics/provider/LoginStatusProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->edition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->buildEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->isProductionBuild:Z

    return v0
.end method

.method static synthetic access$500(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->isPushEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->appName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/buzzfeed/analytics/Analytics$Configuration;
    .registers 3

    .prologue
    .line 133
    new-instance v0, Lcom/buzzfeed/analytics/Analytics$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/analytics/Analytics$Configuration;-><init>(Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;Lcom/buzzfeed/analytics/Analytics$1;)V

    return-object v0
.end method

.method public withBuildEnvironment(Ljava/lang/String;)Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;
    .registers 2
    .param p1, "buildEnvironment"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->buildEnvironment:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public withEdition(Ljava/lang/String;)Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;
    .registers 2
    .param p1, "edition"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->edition:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public withLoginStatusProvider(Lcom/buzzfeed/analytics/provider/LoginStatusProvider;)Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;
    .registers 2
    .param p1, "loginStatusProvider"    # Lcom/buzzfeed/analytics/provider/LoginStatusProvider;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->loginStatusProvider:Lcom/buzzfeed/analytics/provider/LoginStatusProvider;

    .line 109
    return-object p0
.end method

.method public withProductionEnabled(Z)Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;
    .registers 2
    .param p1, "isProductionBuild"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->isProductionBuild:Z

    .line 124
    return-object p0
.end method

.method public withPushNotificationsEnabled(Z)Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;
    .registers 2
    .param p1, "isPushEnabled"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->isPushEnabled:Z

    .line 129
    return-object p0
.end method
