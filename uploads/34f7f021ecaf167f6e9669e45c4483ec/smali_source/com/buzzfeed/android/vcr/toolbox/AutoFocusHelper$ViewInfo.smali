.class Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;
.super Ljava/lang/Object;
.source "AutoFocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewInfo"
.end annotation


# instance fields
.field offset:I

.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;

.field view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$1;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper$ViewInfo;-><init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusHelper;)V

    return-void
.end method
