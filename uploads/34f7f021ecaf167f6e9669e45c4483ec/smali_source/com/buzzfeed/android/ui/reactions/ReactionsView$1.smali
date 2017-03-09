.class Lcom/buzzfeed/android/ui/reactions/ReactionsView$1;
.super Ljava/lang/Object;
.source "ReactionsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/reactions/ReactionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$1;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$1;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->hide()V

    .line 140
    const/4 v0, 0x1

    return v0
.end method
