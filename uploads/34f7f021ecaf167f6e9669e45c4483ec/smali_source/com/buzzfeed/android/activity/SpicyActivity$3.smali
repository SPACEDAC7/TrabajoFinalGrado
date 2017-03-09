.class Lcom/buzzfeed/android/activity/SpicyActivity$3;
.super Ljava/lang/Object;
.source "SpicyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SpicyActivity;->createNativeResponseButton()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/SpicyActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SpicyActivity$3;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SpicyActivity$3;->this$0:Lcom/buzzfeed/android/activity/SpicyActivity;

    # invokes: Lcom/buzzfeed/android/activity/SpicyActivity;->openResponseView()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->access$100(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    .line 373
    return-void
.end method
