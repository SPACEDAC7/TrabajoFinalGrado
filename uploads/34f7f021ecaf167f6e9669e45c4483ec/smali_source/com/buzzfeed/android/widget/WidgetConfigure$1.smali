.class Lcom/buzzfeed/android/widget/WidgetConfigure$1;
.super Ljava/lang/Object;
.source "WidgetConfigure.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 193
    iput-object p1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure$1;->this$0:Lcom/buzzfeed/android/widget/WidgetConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure$1;->this$0:Lcom/buzzfeed/android/widget/WidgetConfigure;

    # getter for: Lcom/buzzfeed/android/widget/WidgetConfigure;->feedList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/buzzfeed/android/widget/WidgetConfigure;->access$000(Lcom/buzzfeed/android/widget/WidgetConfigure;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/Feed;

    .line 197
    .local v0, "feed":Lcom/buzzfeed/android/data/Feed;
    iget-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure$1;->this$0:Lcom/buzzfeed/android/widget/WidgetConfigure;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getWidgetImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->isBadge()Z

    move-result v5

    # invokes: Lcom/buzzfeed/android/widget/WidgetConfigure;->configureWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/buzzfeed/android/widget/WidgetConfigure;->access$100(Lcom/buzzfeed/android/widget/WidgetConfigure;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 198
    iget-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure$1;->this$0:Lcom/buzzfeed/android/widget/WidgetConfigure;

    # getter for: Lcom/buzzfeed/android/widget/WidgetConfigure;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1}, Lcom/buzzfeed/android/widget/WidgetConfigure;->access$200(Lcom/buzzfeed/android/widget/WidgetConfigure;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 199
    iget-object v1, p0, Lcom/buzzfeed/android/widget/WidgetConfigure$1;->this$0:Lcom/buzzfeed/android/widget/WidgetConfigure;

    # getter for: Lcom/buzzfeed/android/widget/WidgetConfigure;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1}, Lcom/buzzfeed/android/widget/WidgetConfigure;->access$200(Lcom/buzzfeed/android/widget/WidgetConfigure;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 201
    :cond_32
    return-void
.end method
