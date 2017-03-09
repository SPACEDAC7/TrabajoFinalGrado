.class Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;
.super Ljava/lang/Object;
.source "BFSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;->this$0:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;->this$0:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;

    # invokes: Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->onClick()V
    invoke-static {v0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->access$200(Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;)V

    .line 82
    iget-object v0, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;->this$0:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 83
    iget-object v0, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;->this$0:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/preference/BFSwitchPreference$1;->this$0:Lcom/buzzfeed/android/ui/preference/BFSwitchPreference;

    invoke-interface {v0, v1}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 85
    :cond_18
    return-void
.end method
