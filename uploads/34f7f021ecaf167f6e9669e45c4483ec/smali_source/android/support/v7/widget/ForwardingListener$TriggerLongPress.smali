.class Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ForwardingListener;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
    .registers 2

    .prologue
    .line 360
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-virtual {v0}, Landroid/support/v7/widget/ForwardingListener;->onLongPress()V

    .line 366
    return-void
.end method
