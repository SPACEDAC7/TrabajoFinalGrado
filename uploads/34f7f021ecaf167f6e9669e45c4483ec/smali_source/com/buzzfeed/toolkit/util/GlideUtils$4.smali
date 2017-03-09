.class final Lcom/buzzfeed/toolkit/util/GlideUtils$4;
.super Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
.source "GlideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageRounded(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cornerRadius:F

.field final synthetic val$image:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;FLandroid/widget/ImageView;)V
    .registers 5
    .param p1, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 190
    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$4;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$4;->val$cornerRadius:F

    iput-object p4, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$4;->val$image:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected setResource(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "resource"    # Landroid/graphics/Bitmap;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$4;->val$context:Landroid/content/Context;

    .line 194
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 195
    .local v0, "circularBitmapDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    const/4 v1, 0x1

    iget v2, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$4;->val$cornerRadius:F

    iget-object v3, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$4;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 196
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/GlideUtils$4;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 190
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/util/GlideUtils$4;->setResource(Landroid/graphics/Bitmap;)V

    return-void
.end method
