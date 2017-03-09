.class Lcom/buzzfeed/android/widget/WidgetService$1$1;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/widget/WidgetService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/widget/WidgetService$1;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/widget/WidgetService$1;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/widget/WidgetService$1;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/buzzfeed/android/widget/WidgetService$1$1;->this$0:Lcom/buzzfeed/android/widget/WidgetService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 229
    return-void
.end method

.method public onLoadComplete()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/buzzfeed/android/widget/WidgetService$1$1;->this$0:Lcom/buzzfeed/android/widget/WidgetService$1;

    iget-object v0, v0, Lcom/buzzfeed/android/widget/WidgetService$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/buzzfeed/android/widget/WidgetService$1$1;->this$0:Lcom/buzzfeed/android/widget/WidgetService$1;

    iget v1, v1, Lcom/buzzfeed/android/widget/WidgetService$1;->val$appWidgetId:I

    # invokes: Lcom/buzzfeed/android/widget/WidgetService;->updateWidget(Landroid/content/Context;I)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/widget/WidgetService;->access$000(Landroid/content/Context;I)V

    .line 224
    return-void
.end method
