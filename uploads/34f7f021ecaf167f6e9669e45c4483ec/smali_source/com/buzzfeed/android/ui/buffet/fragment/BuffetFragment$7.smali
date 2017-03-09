.class Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$7;
.super Ljava/lang/Object;
.source "BuffetFragment.java"

# interfaces
.implements Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader$AdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onBuffetAdReady(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$7;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iput p2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$7;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(ILcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "ad"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$7;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$7;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1b

    .line 1053
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$7;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    iget v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$7;->val$index:I

    invoke-virtual {v0, v1, p2}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->updateItemAt(ILcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 1055
    :cond_1b
    return-void
.end method
