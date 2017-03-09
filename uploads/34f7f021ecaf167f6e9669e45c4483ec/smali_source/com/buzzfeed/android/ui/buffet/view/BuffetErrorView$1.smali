.class Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$1;
.super Ljava/lang/Object;
.source "BuffetErrorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->setSignInClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$1;->this$0:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$1;->this$0:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    # getter for: Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mErrorListener:Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->access$000(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;)Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;->onBuffetSignIn()V

    .line 91
    return-void
.end method
