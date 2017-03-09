.class public interface abstract Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;
.super Ljava/lang/Object;
.source "PackageItemClickListener.java"


# virtual methods
.method public abstract onPackageItemClicked(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;IILandroid/widget/ImageView;Ljava/util/Stack;Z)V
    .param p1    # Lcom/buzzfeed/toolkit/content/PackageContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/buzzfeed/toolkit/content/PostContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Stack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/PackageContent;",
            "Lcom/buzzfeed/toolkit/content/PostContent;",
            "II",
            "Landroid/widget/ImageView;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method
