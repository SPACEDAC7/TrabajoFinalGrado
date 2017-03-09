.class Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener$1;
.super Ljava/lang/Object;
.source "DebouncingOnClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener$1;->this$0:Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener$1;->this$0:Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;

    const/4 v1, 0x1

    # setter for: Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;->mEnabled:Z
    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;->access$002(Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;Z)Z

    .line 22
    return-void
.end method
