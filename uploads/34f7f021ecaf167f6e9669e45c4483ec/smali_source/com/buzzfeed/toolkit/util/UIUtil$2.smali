.class final Lcom/buzzfeed/toolkit/util/UIUtil$2;
.super Ljava/lang/Object;
.source "UIUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/UIUtil;->fadeOutViewsWithDelay(JJ[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 369
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/UIUtil$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/UIUtil$2;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    return-void
.end method
