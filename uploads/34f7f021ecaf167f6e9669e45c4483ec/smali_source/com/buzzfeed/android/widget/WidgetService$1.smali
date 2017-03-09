.class final Lcom/buzzfeed/android/widget/WidgetService$1;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/widget/WidgetService;->updateWidgetInternal(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$appWidgetId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$widgetServiceFeed:Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 212
    iput-object p1, p0, Lcom/buzzfeed/android/widget/WidgetService$1;->val$TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/buzzfeed/android/widget/WidgetService$1;->val$widgetServiceFeed:Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    iput-object p3, p0, Lcom/buzzfeed/android/widget/WidgetService$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/buzzfeed/android/widget/WidgetService$1;->val$appWidgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 216
    const-wide/32 v0, 0xea60

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_1f

    .line 219
    :goto_7
    iget-object v0, p0, Lcom/buzzfeed/android/widget/WidgetService$1;->val$TAG:Ljava/lang/String;

    const-string v1, "Refreshing widget..."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/buzzfeed/android/widget/WidgetService$1;->val$widgetServiceFeed:Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    iget-object v0, v0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->widgetLoader:Lcom/buzzfeed/android/data/loader/WidgetLoader;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/android/widget/WidgetService$1$1;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/widget/WidgetService$1$1;-><init>(Lcom/buzzfeed/android/widget/WidgetService$1;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/buzzfeed/android/data/loader/WidgetLoader;->loadPage(Ljava/lang/Boolean;ILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V

    .line 231
    return-void

    .line 217
    :catch_1f
    move-exception v0

    goto :goto_7
.end method
