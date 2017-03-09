.class Lcom/buzzfeed/android/activity/MenuActivity$2;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/MenuActivity;->showSignOutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/MenuActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/MenuActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/MenuActivity;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/buzzfeed/android/activity/MenuActivity$2;->this$0:Lcom/buzzfeed/android/activity/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/buzzfeed/android/activity/MenuActivity$2;->this$0:Lcom/buzzfeed/android/activity/MenuActivity;

    # invokes: Lcom/buzzfeed/android/activity/MenuActivity;->logout()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/MenuActivity;->access$000(Lcom/buzzfeed/android/activity/MenuActivity;)V

    .line 174
    iget-object v0, p0, Lcom/buzzfeed/android/activity/MenuActivity$2;->this$0:Lcom/buzzfeed/android/activity/MenuActivity;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/MenuActivity;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackSignOut()V

    .line 175
    iget-object v0, p0, Lcom/buzzfeed/android/activity/MenuActivity$2;->this$0:Lcom/buzzfeed/android/activity/MenuActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/MenuActivity;->supportInvalidateOptionsMenu()V

    .line 176
    return-void
.end method
