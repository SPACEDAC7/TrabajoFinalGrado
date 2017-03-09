.class Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener$1;
.super Ljava/lang/Object;
.source "OneTimeOnItemUpdatedListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->onItemUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener$1;->this$0:Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener$1;->this$0:Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener$1;->this$0:Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;

    # getter for: Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mUpdatePosition:I
    invoke-static {v1}, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->access$000(Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->onItemUpdated(I)V

    .line 51
    return-void
.end method
