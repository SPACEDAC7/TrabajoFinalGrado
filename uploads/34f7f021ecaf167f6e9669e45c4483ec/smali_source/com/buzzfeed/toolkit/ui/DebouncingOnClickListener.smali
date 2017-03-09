.class public abstract Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;
.super Ljava/lang/Object;
.source "DebouncingOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final ENABLE_AGAIN:Ljava/lang/Runnable;

.field private mDelayedTime:I

.field private mEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;->mEnabled:Z

    .line 17
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;->mDelayedTime:I

    .line 19
    new-instance v0, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener$1;-><init>(Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;->ENABLE_AGAIN:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;->mEnabled:Z

    return p1
.end method


# virtual methods
.method public abstract doClick(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;->mEnabled:Z

    if-eqz v0, :cond_12

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;->mEnabled:Z

    .line 28
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;->ENABLE_AGAIN:Ljava/lang/Runnable;

    iget v1, p0, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;->mDelayedTime:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;->doClick(Landroid/view/View;)V

    .line 31
    :cond_12
    return-void
.end method
