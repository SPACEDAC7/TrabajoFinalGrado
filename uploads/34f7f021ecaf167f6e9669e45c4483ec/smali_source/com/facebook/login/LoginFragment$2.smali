.class Lcom/facebook/login/LoginFragment$2;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/facebook/login/LoginClient$BackgroundProcessingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/LoginFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/facebook/login/LoginFragment;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 92
    iput-object p1, p0, Lcom/facebook/login/LoginFragment$2;->this$0:Lcom/facebook/login/LoginFragment;

    iput-object p2, p0, Lcom/facebook/login/LoginFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundProcessingStarted()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/login/LoginFragment$2;->val$view:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public onBackgroundProcessingStopped()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/login/LoginFragment$2;->val$view:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void
.end method
