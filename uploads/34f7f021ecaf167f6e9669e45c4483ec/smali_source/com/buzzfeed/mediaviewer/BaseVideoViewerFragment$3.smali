.class Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$3;
.super Ljava/lang/Object;
.source "BaseVideoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onSetupButtons(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$3;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$3;->this$0:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 323
    return-void
.end method
