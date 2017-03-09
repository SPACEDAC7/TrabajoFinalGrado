.class final Lcom/buzzfeed/android/experiment/DummyABTest$2;
.super Ljava/util/HashMap;
.source "DummyABTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/experiment/DummyABTest;->shouldDoSomething()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$abVariantBlockFallback:Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;


# direct methods
.method constructor <init>(Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;)V
    .registers 4

    .prologue
    .line 54
    iput-object p1, p0, Lcom/buzzfeed/android/experiment/DummyABTest$2;->val$abVariantBlockFallback:Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 56
    const-string v0, "control"

    iget-object v1, p0, Lcom/buzzfeed/android/experiment/DummyABTest$2;->val$abVariantBlockFallback:Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/experiment/DummyABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v0, "turn_on"

    new-instance v1, Lcom/buzzfeed/android/experiment/DummyABTest$2$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/experiment/DummyABTest$2$1;-><init>(Lcom/buzzfeed/android/experiment/DummyABTest$2;)V

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/experiment/DummyABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method
