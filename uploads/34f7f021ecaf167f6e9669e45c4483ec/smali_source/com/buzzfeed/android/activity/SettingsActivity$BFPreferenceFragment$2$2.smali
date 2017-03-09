.class Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$2;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 270
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 271
    return-void
.end method
