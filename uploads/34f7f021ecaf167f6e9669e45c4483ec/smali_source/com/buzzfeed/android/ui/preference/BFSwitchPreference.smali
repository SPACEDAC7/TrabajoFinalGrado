.class public Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "BFSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;-><init>(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->mListener:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;

    .line 53
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->initialize()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;-><init>(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->mListener:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;

    .line 48
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->initialize()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;-><init>(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->mListener:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;

    .line 43
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->initialize()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 19
    new-instance v0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;-><init>(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->mListener:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;

    .line 38
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->initialize()V

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->onClick()V

    return-void
.end method

.method private initialize()V
    .registers 2

    .prologue
    .line 57
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->setLayoutResource(I)V

    .line 58
    const v0, 0x7f03008c

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->setWidgetLayoutResource(I)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 65
    const v1, 0x7f110197

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 66
    .local v0, "switchWidget":Landroid/support/v7/widget/SwitchCompat;
    if-eqz v0, :cond_2c

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->getSwitchTextOn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->getSwitchTextOff()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->mListener:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    :cond_2c
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 78
    new-instance v1, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;-><init>(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method
