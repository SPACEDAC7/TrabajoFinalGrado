.class Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$2;
.super Ljava/lang/Object;
.source "PlayerControlFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->configureListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$2;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$2;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    # invokes: Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->onPlayPauseClicked()V
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->access$100(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)V

    .line 140
    return-void
.end method
