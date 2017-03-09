.class Lcom/buzzfeed/mediaviewer/VideoViewerFragment$7;
.super Ljava/lang/Object;
.source "VideoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onSetupButtons(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$7;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$7;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 223
    return-void
.end method
