.class final Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$1;
.super Ljava/lang/Object;
.source "SpicyGlideUtils.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$GlideFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadImageSpice(Ljava/util/Stack;ILandroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$imageWidth:I

.field final synthetic val$images:Ljava/util/Stack;


# direct methods
.method constructor <init>(Ljava/util/Stack;ILandroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 34
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$1;->val$images:Ljava/util/Stack;

    iput p2, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$1;->val$imageWidth:I

    iput-object p3, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$1;->val$images:Ljava/util/Stack;

    iget v1, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$1;->val$imageWidth:I

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils$1;->val$imageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/buzzfeed/spicerack/ui/utils/SpicyGlideUtils;->loadImageSpice(Ljava/util/Stack;ILandroid/widget/ImageView;)V

    .line 38
    return-void
.end method
