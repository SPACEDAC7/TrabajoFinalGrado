.class final Lcom/buzzfeed/toolkit/util/UIUtil$5;
.super Ljava/lang/Object;
.source "UIUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/UIUtil;->withEndActionApi14(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 427
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/UIUtil$5;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/UIUtil$5;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 431
    return-void
.end method
