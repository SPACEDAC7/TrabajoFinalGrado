.class Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;
.super Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;
.source "BuffetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .line 1268
    invoke-direct {p0, p2}, Lcom/buzzfeed/android/ui/buffet/fragment/AbstractAdHelper;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 1269
    return-void
.end method


# virtual methods
.method public loadAdForViewHolder(Lcom/buzzfeed/buffet/ui/holder/BaseCard;)V
    .registers 5
    .param p1, "card"    # Lcom/buzzfeed/buffet/ui/holder/BaseCard;

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$AdHelper;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {p1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->getAdapterPosition()I

    move-result v1

    instance-of v2, p1, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onBuffetAdReady(IZ)V

    .line 1274
    return-void
.end method
