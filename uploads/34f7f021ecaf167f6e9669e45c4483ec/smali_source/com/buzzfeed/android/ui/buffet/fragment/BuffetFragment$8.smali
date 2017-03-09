.class Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$8;
.super Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;
.source "BuffetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->refocusViewHolderOnUpdateIfNeeded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Landroid/support/v7/widget/RecyclerView;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "position"    # I

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$8;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-direct {p0, p2, p3}, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;-><init>(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method


# virtual methods
.method public onItemUpdated(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$8;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$1100(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->requestFocus(I)Z

    .line 1076
    return-void
.end method
