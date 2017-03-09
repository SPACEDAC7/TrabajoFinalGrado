.class Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2$1;
.super Ljava/lang/Object;
.source "OptOutSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2$1;->this$1:Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2$1;->this$1:Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/OptOutSettingsActivity$2;->this$0:Lcom/buzzfeed/android/activity/OptOutSettingsActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->finish()V

    .line 80
    return-void
.end method
