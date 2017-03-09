.class public Lcom/buzzfeed/spicerack/data/provider/SpiceMill;
.super Ljava/lang/Object;
.source "SpiceMill.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSpicesRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpicyServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mContext:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;

    invoke-static {}, Lcom/buzzfeed/spicerack/data/constant/Environment;->getBFUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicyServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;

    .line 26
    return-void
.end method

.method static synthetic access$002(Lcom/buzzfeed/spicerack/data/provider/SpiceMill;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/data/provider/SpiceMill;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicesRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private executeRequest(Ljava/lang/String;Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicesRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    if-nez v0, :cond_11

    .line 80
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicyServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;

    new-instance v1, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$2;

    invoke-direct {v1, p0, p2}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$2;-><init>(Lcom/buzzfeed/spicerack/data/provider/SpiceMill;Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;->getSpiceContentByUrl(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicesRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 111
    :cond_11
    return-void
.end method


# virtual methods
.method public cancelRequests()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicesRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicesRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->cancel()V

    .line 115
    :cond_9
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSpicesById(Ljava/lang/String;Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicesRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    if-nez v0, :cond_15

    .line 36
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicyServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;

    invoke-static {p1}, Lcom/buzzfeed/spicerack/data/constant/Environment;->getSpiceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$1;

    invoke-direct {v2, p0, p2}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill$1;-><init>(Lcom/buzzfeed/spicerack/data/provider/SpiceMill;Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/helpers/SpicyServiceHelper;->getSpiceContentById(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->mSpicesRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 66
    :cond_15
    return-void
.end method

.method public getSpicesByUrl(Ljava/lang/String;Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/buzzfeed/spicerack/data/constant/Environment;->getSpiceUrlFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/buzzfeed/spicerack/data/provider/SpiceMill;->executeRequest(Ljava/lang/String;Lcom/buzzfeed/spicerack/data/provider/SpiceMill$SpiceMillListener;)V

    .line 76
    return-void
.end method
