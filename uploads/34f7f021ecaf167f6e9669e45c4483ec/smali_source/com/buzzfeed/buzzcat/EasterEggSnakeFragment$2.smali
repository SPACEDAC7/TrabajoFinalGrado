.class Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$2;
.super Ljava/lang/Object;
.source "EasterEggSnakeFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$2;->this$0:Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$2;->this$0:Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;

    # getter for: Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->access$100(Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 88
    const/4 v0, 0x1

    return v0
.end method
