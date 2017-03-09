.class Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder$1;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod$LinkClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkClicked(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->getSpicyEventListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 59
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->getSpicyEventListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;->onUrlClicked(Ljava/lang/String;Z)Z

    .line 61
    :cond_12
    return-void
.end method
