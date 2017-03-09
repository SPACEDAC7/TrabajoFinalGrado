.class Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed$3;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->updateWithFeed(Lcom/buzzfeed/android/data/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed$3;->this$0:Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 464
    return-void
.end method

.method public onLoadComplete()V
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed$3;->this$0:Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;

    # invokes: Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->updateWidget()V
    invoke-static {v0}, Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;->access$200(Lcom/buzzfeed/android/widget/WidgetService$WidgetServiceFeed;)V

    .line 459
    return-void
.end method
