.class Lcom/buzzfeed/android/data/BuzzFeedApplication$1;
.super Ljava/lang/Object;
.source "BuzzFeedApplication.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/sharmo/ShareManager$PoundEnabledProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/BuzzFeedApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/BuzzFeedApplication;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/BuzzFeedApplication;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/BuzzFeedApplication;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$1;->this$0:Lcom/buzzfeed/android/data/BuzzFeedApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isOptOut()Z
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$1;->this$0:Lcom/buzzfeed/android/data/BuzzFeedApplication;

    invoke-static {v0}, Lcom/buzzfeed/android/util/BuzzUtils;->isPoundEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
