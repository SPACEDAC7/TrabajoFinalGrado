.class Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$3;
.super Ljava/lang/Object;
.source "UATestPushPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

.field final synthetic val$values:[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$3;->val$values:[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$3;->val$values:[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    aget-object v1, v1, p3

    # invokes: Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->onTestPushSelected(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->access$100(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;)V

    .line 109
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    # getter for: Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->access$000(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 110
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    # getter for: Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->access$000(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 112
    :cond_1a
    return-void
.end method
