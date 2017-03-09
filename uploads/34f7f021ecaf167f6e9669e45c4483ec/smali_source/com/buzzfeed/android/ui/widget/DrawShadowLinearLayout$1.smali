.class final Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout$1;
.super Landroid/util/Property;
.source "DrawShadowLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;)Ljava/lang/Float;
    .registers 3
    .param p1, "dsfl"    # Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;

    .prologue
    .line 112
    # getter for: Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mAlpha:F
    invoke-static {p1}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->access$000(Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 109
    check-cast p1, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout$1;->get(Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;Ljava/lang/Float;)V
    .registers 4
    .param p1, "dsfl"    # Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 117
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mAlpha:F
    invoke-static {p1, v0}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->access$002(Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;F)F

    .line 118
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 109
    check-cast p1, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout$1;->set(Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;Ljava/lang/Float;)V

    return-void
.end method
