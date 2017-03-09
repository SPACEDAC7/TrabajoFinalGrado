.class public abstract Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BasePackageOverflowCard.java"


# instance fields
.field private mPackageItemClickListener:Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    return-void
.end method


# virtual methods
.method getPackageItemClickListener()Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;->mPackageItemClickListener:Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;

    return-object v0
.end method

.method public setPackageItemClickListener(Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;->mPackageItemClickListener:Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;

    .line 25
    return-void
.end method
