.class public Landroid/support/design/widget/CheckableImageButton;
.super Landroid/support/v7/widget/AppCompatImageButton;
.source "CheckableImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DRAWABLE_STATE_CHECKED:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/widget/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    sget v0, Landroid/support/v7/appcompat/R$attr;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Landroid/support/design/widget/CheckableImageButton$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CheckableImageButton$1;-><init>(Landroid/support/design/widget/CheckableImageButton;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 69
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/support/design/widget/CheckableImageButton;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/support/design/widget/CheckableImageButton;->mChecked:Z

    if-eqz v0, :cond_13

    .line 94
    sget-object v0, Landroid/support/design/widget/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    array-length v0, v0

    add-int/2addr v0, p1

    .line 95
    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    .line 94
    invoke-static {v0, v1}, Landroid/support/design/widget/CheckableImageButton;->mergeDrawableStates([I[I)[I

    move-result-object v0

    .line 98
    :goto_12
    return-object v0

    :cond_13
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_12
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/support/design/widget/CheckableImageButton;->mChecked:Z

    if-eq v0, p1, :cond_e

    .line 74
    iput-boolean p1, p0, Landroid/support/design/widget/CheckableImageButton;->mChecked:Z

    .line 75
    invoke-virtual {p0}, Landroid/support/design/widget/CheckableImageButton;->refreshDrawableState()V

    .line 76
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CheckableImageButton;->sendAccessibilityEvent(I)V

    .line 79
    :cond_e
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/support/design/widget/CheckableImageButton;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    .line 89
    return-void

    .line 88
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
