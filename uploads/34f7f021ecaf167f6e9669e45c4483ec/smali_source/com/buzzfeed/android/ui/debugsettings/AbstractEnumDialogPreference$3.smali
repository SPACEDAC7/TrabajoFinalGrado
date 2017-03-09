.class Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;
.super Ljava/lang/Object;
.source "AbstractEnumDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

.field final synthetic val$values:[Ljava/lang/Enum;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;[Ljava/lang/Enum;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    .prologue
    .line 75
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;"
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;->val$values:[Ljava/lang/Enum;

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
    .line 79
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;->val$values:[Ljava/lang/Enum;

    aget-object v0, v1, p3

    .line 80
    .local v0, "selectedVal":Ljava/lang/Enum;, "TT;"
    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    # getter for: Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mPreference:Lcom/buzzfeed/android/data/preferences/BasePreference;
    invoke-static {v1}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->access$100(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;)Lcom/buzzfeed/android/data/preferences/BasePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/preferences/BasePreference;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_23

    .line 81
    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    # invokes: Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v1, v0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->access$200(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    # getter for: Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mPreference:Lcom/buzzfeed/android/data/preferences/BasePreference;
    invoke-static {v1}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->access$100(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;)Lcom/buzzfeed/android/data/preferences/BasePreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/buzzfeed/android/data/preferences/BasePreference;->setValue(Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    invoke-virtual {v1, v0}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->updateSummary(Ljava/lang/Enum;)V

    .line 85
    :cond_23
    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    # getter for: Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->access$000(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 86
    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    # getter for: Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->access$000(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 88
    :cond_34
    return-void
.end method
