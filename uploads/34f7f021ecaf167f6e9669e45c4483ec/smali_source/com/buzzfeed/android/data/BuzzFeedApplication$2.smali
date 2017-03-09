.class Lcom/buzzfeed/android/data/BuzzFeedApplication$2;
.super Ljava/lang/Object;
.source "BuzzFeedApplication.java"

# interfaces
.implements Lcom/buzzfeed/analytics/client/SubscriptionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/BuzzFeedApplication;->initializeAnalyticsModule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/BuzzFeedApplication;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/BuzzFeedApplication;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/BuzzFeedApplication;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$2;->this$0:Lcom/buzzfeed/android/data/BuzzFeedApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubscriptions()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 267
    new-instance v0, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;

    iget-object v1, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$2;->this$0:Lcom/buzzfeed/android/data/BuzzFeedApplication;

    invoke-direct {v0, v1}, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;->getShowSubscriptions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
