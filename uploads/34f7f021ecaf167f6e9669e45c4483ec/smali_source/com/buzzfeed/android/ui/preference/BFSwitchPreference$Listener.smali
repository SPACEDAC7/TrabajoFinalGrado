.class Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "BFSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;->this$0:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;
    .param p2, "x1"    # Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;-><init>(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 24
    iget-object v0, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;->this$0:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->access$100(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 27
    if-nez p2, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 32
    :goto_12
    return-void

    .line 27
    :cond_13
    const/4 v0, 0x0

    goto :goto_f

    .line 31
    :cond_15
    iget-object v0, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$Listener;->this$0:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->setChecked(Z)V

    goto :goto_12
.end method
