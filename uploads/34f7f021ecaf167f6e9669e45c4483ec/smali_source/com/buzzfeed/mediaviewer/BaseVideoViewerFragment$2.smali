.class Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$2;
.super Ljava/lang/Object;
.source "BaseVideoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onSetupFooter(Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

.field final synthetic val$recipeClickIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$2;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iput-object p2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$2;->val$recipeClickIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$2;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$2;->val$recipeClickIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->startActivity(Landroid/content/Intent;)V

    .line 299
    return-void
.end method
