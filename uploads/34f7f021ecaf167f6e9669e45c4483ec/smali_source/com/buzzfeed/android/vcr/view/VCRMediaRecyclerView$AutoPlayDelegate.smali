.class public interface abstract Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;
.super Ljava/lang/Object;
.source "VCRMediaRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutoPlayDelegate"
.end annotation


# virtual methods
.method public abstract getContentUri(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/lang/String;
.end method

.method public abstract getTextureView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/TextureView;
.end method

.method public abstract hasVideoContent(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method
