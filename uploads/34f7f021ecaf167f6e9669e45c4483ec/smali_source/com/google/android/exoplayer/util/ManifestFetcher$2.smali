.class Lcom/google/android/exoplayer/util/ManifestFetcher$2;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/util/ManifestFetcher;->notifyManifestRefreshed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/exoplayer/util/ManifestFetcher;

    .prologue
    .line 329
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher$2;, "Lcom/google/android/exoplayer/util/ManifestFetcher$2;"
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$2;->this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 332
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher$2;, "Lcom/google/android/exoplayer/util/ManifestFetcher$2;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$2;->this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;

    # getter for: Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->access$000(Lcom/google/android/exoplayer/util/ManifestFetcher;)Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;->onManifestRefreshed()V

    .line 333
    return-void
.end method
