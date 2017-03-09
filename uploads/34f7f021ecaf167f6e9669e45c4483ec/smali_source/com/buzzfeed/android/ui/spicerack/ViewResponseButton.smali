.class public Lcom/buzzfeed/android/ui/spicerack/ViewResponseButton;
.super Landroid/widget/RelativeLayout;
.source "ViewResponseButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/spicerack/ViewResponseButton;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/spicerack/ViewResponseButton;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/spicerack/ViewResponseButton;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/buzzfeed/android/activity/SpicyActivity;Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "context"    # Lcom/buzzfeed/android/activity/SpicyActivity;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/spicerack/ViewResponseButton;->init()V

    .line 33
    const v0, 0x7f1101cd

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/spicerack/ViewResponseButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method init()V
    .registers 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/spicerack/ViewResponseButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300a9

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/android/ui/spicerack/ViewResponseButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    return-void
.end method
