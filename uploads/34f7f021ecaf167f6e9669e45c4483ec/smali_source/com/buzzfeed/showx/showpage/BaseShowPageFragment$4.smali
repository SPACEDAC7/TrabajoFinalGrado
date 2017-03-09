.class Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$4;
.super Ljava/lang/Object;
.source "BaseShowPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->configureInstallAppView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$4;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$4;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->onInstantAppInstall()V

    .line 432
    return-void
.end method
