.class Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager$1;
.super Ljava/lang/Object;
.source "BuffetViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->setInitialPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager$1;->this$0:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    iput p2, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager$1;->val$item:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager$1;->this$0:Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;

    iget v1, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager$1;->val$item:I

    # invokes: Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->dispatchOnPageSelected(I)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->access$000(Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;I)V

    .line 54
    return-void
.end method
