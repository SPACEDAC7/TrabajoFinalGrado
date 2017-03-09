.class Lcom/buzzfeed/android/vcr/util/SystemUiHelper$HideRunnable;
.super Ljava/lang/Object;
.source "SystemUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/util/SystemUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/util/SystemUiHelper;)V
    .registers 2

    .prologue
    .line 288
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$HideRunnable;->this$0:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/util/SystemUiHelper;Lcom/buzzfeed/android/vcr/util/SystemUiHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/util/SystemUiHelper;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/util/SystemUiHelper$1;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$HideRunnable;-><init>(Lcom/buzzfeed/android/vcr/util/SystemUiHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$HideRunnable;->this$0:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->hide()V

    .line 292
    return-void
.end method
