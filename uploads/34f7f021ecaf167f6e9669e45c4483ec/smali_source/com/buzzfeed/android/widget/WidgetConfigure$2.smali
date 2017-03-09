.class Lcom/buzzfeed/android/widget/WidgetConfigure$2;
.super Ljava/lang/Object;
.source "WidgetConfigure.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/widget/WidgetConfigure;->buildFeedListBuzzFeedAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/widget/WidgetConfigure;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/widget/WidgetConfigure;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/widget/WidgetConfigure;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure$2;->this$0:Lcom/buzzfeed/android/widget/WidgetConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/buzzfeed/android/widget/WidgetConfigure$2;->this$0:Lcom/buzzfeed/android/widget/WidgetConfigure;

    invoke-virtual {v0}, Lcom/buzzfeed/android/widget/WidgetConfigure;->finish()V

    .line 208
    return-void
.end method
