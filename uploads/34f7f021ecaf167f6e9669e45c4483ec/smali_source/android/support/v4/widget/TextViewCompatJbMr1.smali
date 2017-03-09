.class Landroid/support/v4/widget/TextViewCompatJbMr1;
.super Ljava/lang/Object;
.source "TextViewCompatJbMr1.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v5

    if-ne v5, v2, :cond_18

    .line 51
    .local v2, "rtl":Z
    :goto_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    .local v0, "compounds":[Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_17

    .line 54
    aget-object v3, v0, v6

    .line 55
    .local v3, "start":Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v4

    .line 56
    .local v1, "end":Landroid/graphics/drawable/Drawable;
    aput-object v3, v0, v4

    .line 57
    aput-object v1, v0, v6

    .line 59
    .end local v1    # "end":Landroid/graphics/drawable/Drawable;
    .end local v3    # "start":Landroid/graphics/drawable/Drawable;
    :cond_17
    return-object v0

    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "rtl":Z
    :cond_18
    move v2, v4

    .line 50
    goto :goto_9
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 31
    .local v0, "rtl":Z
    :goto_7
    if-eqz v0, :cond_12

    move-object v1, p3

    :goto_a
    if-eqz v0, :cond_14

    .end local p1    # "start":Landroid/graphics/drawable/Drawable;
    :goto_c
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void

    .line 30
    .end local v0    # "rtl":Z
    .restart local p1    # "start":Landroid/graphics/drawable/Drawable;
    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    .restart local v0    # "rtl":Z
    :cond_12
    move-object v1, p1

    .line 31
    goto :goto_a

    :cond_14
    move-object p1, p3

    goto :goto_c
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .registers 7
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 45
    .local v0, "rtl":Z
    :goto_7
    if-eqz v0, :cond_12

    move v1, p3

    :goto_a
    if-eqz v0, :cond_14

    .end local p1    # "start":I
    :goto_c
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 47
    return-void

    .line 44
    .end local v0    # "rtl":Z
    .restart local p1    # "start":I
    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    .restart local v0    # "rtl":Z
    :cond_12
    move v1, p1

    .line 45
    goto :goto_a

    :cond_14
    move p1, p3

    goto :goto_c
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 38
    .local v0, "rtl":Z
    :goto_7
    if-eqz v0, :cond_12

    move-object v1, p3

    :goto_a
    if-eqz v0, :cond_14

    .end local p1    # "start":Landroid/graphics/drawable/Drawable;
    :goto_c
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void

    .line 37
    .end local v0    # "rtl":Z
    .restart local p1    # "start":Landroid/graphics/drawable/Drawable;
    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    .restart local v0    # "rtl":Z
    :cond_12
    move-object v1, p1

    .line 38
    goto :goto_a

    :cond_14
    move-object p1, p3

    goto :goto_c
.end method
