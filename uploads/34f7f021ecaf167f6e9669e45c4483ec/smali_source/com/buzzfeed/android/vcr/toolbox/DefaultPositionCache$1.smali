.class Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache$1;
.super Ljava/util/LinkedHashMap;
.source "DefaultPositionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;IFZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;
    .param p2, "x0"    # I
    .param p3, "x1"    # F
    .param p4, "x2"    # Z

    .prologue
    .line 28
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache$1;->this$0:Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache$1;->this$0:Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->mMaxItemCount:I
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;->access$000(Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;)I

    move-result v1

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
