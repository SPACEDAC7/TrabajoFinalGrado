.class Lcom/google/android/exoplayer/util/ManifestFetcher$3;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/util/ManifestFetcher;->notifyManifestError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Ljava/io/IOException;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/exoplayer/util/ManifestFetcher;

    .prologue
    .line 340
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher$3;, "Lcom/google/android/exoplayer/util/ManifestFetcher$3;"
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$3;->this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iput-object p2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$3;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 343
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher$3;, "Lcom/google/android/exoplayer/util/ManifestFetcher$3;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$3;->this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;

    # getter for: Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->access$000(Lcom/google/android/exoplayer/util/ManifestFetcher;)Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$3;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;->onManifestError(Ljava/io/IOException;)V

    .line 344
    return-void
.end method
